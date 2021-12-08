<?xml version="1.0" encoding="UTF-8"?>
<sbml xmlns="http://www.sbml.org/sbml/level3/version1/core" level="3" version="1">
  <model metaid="all_pathways" id="all_pathways">
    <listOfFunctionDefinitions>
      <functionDefinition id="rate_law_one_s_one_p">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <lambda>
            <bvar>
              <ci> is_on </ci>
            </bvar>
            <bvar>
              <ci> E_conc </ci>
            </bvar>
            <bvar>
              <ci> k_cat </ci>
            </bvar>
            <bvar>
              <ci> conc_S </ci>
            </bvar>
            <bvar>
              <ci> conc_P </ci>
            </bvar>
            <bvar>
              <ci> k_S </ci>
            </bvar>
            <bvar>
              <ci> k_P </ci>
            </bvar>
            <bvar>
              <ci> dG0 </ci>
            </bvar>
            <bvar>
              <ci> R </ci>
            </bvar>
            <bvar>
              <ci> T </ci>
            </bvar>
            <apply>
              <divide/>
              <apply>
                <times/>
                <ci> is_on </ci>
                <ci> E_conc </ci>
                <ci> k_cat </ci>
                <apply>
                  <divide/>
                  <ci> conc_S </ci>
                  <ci> k_S </ci>
                </apply>
                <apply>
                  <minus/>
                  <cn type="integer"> 1 </cn>
                  <apply>
                    <divide/>
                    <apply>
                      <divide/>
                      <ci> conc_P </ci>
                      <ci> conc_S </ci>
                    </apply>
                    <apply>
                      <exp/>
                      <apply>
                        <divide/>
                        <apply>
                          <minus/>
                          <ci> dG0 </ci>
                        </apply>
                        <apply>
                          <times/>
                          <ci> R </ci>
                          <ci> T </ci>
                        </apply>
                      </apply>
                    </apply>
                  </apply>
                </apply>
              </apply>
              <apply>
                <plus/>
                <cn type="integer"> 1 </cn>
                <apply>
                  <divide/>
                  <ci> conc_S </ci>
                  <ci> k_S </ci>
                </apply>
                <apply>
                  <divide/>
                  <ci> conc_P </ci>
                  <ci> k_P </ci>
                </apply>
              </apply>
            </apply>
          </lambda>
        </math>
      </functionDefinition>
      <functionDefinition id="rate_law_two_s_one_p">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <lambda>
            <bvar>
              <ci> is_on </ci>
            </bvar>
            <bvar>
              <ci> E_conc </ci>
            </bvar>
            <bvar>
              <ci> k_cat </ci>
            </bvar>
            <bvar>
              <ci> conc_S1 </ci>
            </bvar>
            <bvar>
              <ci> conc_S2 </ci>
            </bvar>
            <bvar>
              <ci> conc_P </ci>
            </bvar>
            <bvar>
              <ci> k_S1 </ci>
            </bvar>
            <bvar>
              <ci> k_S2 </ci>
            </bvar>
            <bvar>
              <ci> k_P </ci>
            </bvar>
            <bvar>
              <ci> dG0 </ci>
            </bvar>
            <bvar>
              <ci> R </ci>
            </bvar>
            <bvar>
              <ci> T </ci>
            </bvar>
            <apply>
              <divide/>
              <apply>
                <times/>
                <ci> is_on </ci>
                <ci> E_conc </ci>
                <ci> k_cat </ci>
                <apply>
                  <divide/>
                  <ci> conc_S1 </ci>
                  <ci> k_S1 </ci>
                </apply>
                <apply>
                  <divide/>
                  <ci> conc_S2 </ci>
                  <ci> k_S2 </ci>
                </apply>
                <apply>
                  <minus/>
                  <cn type="integer"> 1 </cn>
                  <apply>
                    <divide/>
                    <apply>
                      <divide/>
                      <ci> conc_P </ci>
                      <apply>
                        <times/>
                        <ci> conc_S1 </ci>
                        <ci> conc_S2 </ci>
                      </apply>
                    </apply>
                    <apply>
                      <exp/>
                      <apply>
                        <divide/>
                        <apply>
                          <minus/>
                          <ci> dG0 </ci>
                        </apply>
                        <apply>
                          <times/>
                          <ci> R </ci>
                          <ci> T </ci>
                        </apply>
                      </apply>
                    </apply>
                  </apply>
                </apply>
              </apply>
              <apply>
                <plus/>
                <cn type="integer"> 1 </cn>
                <apply>
                  <divide/>
                  <ci> conc_S1 </ci>
                  <ci> k_S1 </ci>
                </apply>
                <apply>
                  <divide/>
                  <ci> conc_S2 </ci>
                  <ci> k_S2 </ci>
                </apply>
                <apply>
                  <divide/>
                  <ci> conc_P </ci>
                  <ci> k_P </ci>
                </apply>
              </apply>
            </apply>
          </lambda>
        </math>
      </functionDefinition>
      <functionDefinition id="rate_law_one_s_two_p">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <lambda>
            <bvar>
              <ci> is_on </ci>
            </bvar>
            <bvar>
              <ci> E_conc </ci>
            </bvar>
            <bvar>
              <ci> k_cat </ci>
            </bvar>
            <bvar>
              <ci> conc_S </ci>
            </bvar>
            <bvar>
              <ci> conc_P1 </ci>
            </bvar>
            <bvar>
              <ci> conc_P2 </ci>
            </bvar>
            <bvar>
              <ci> k_S </ci>
            </bvar>
            <bvar>
              <ci> k_P1 </ci>
            </bvar>
            <bvar>
              <ci> k_P2 </ci>
            </bvar>
            <bvar>
              <ci> dG0 </ci>
            </bvar>
            <bvar>
              <ci> R </ci>
            </bvar>
            <bvar>
              <ci> T </ci>
            </bvar>
            <apply>
              <divide/>
              <apply>
                <times/>
                <ci> is_on </ci>
                <ci> E_conc </ci>
                <ci> k_cat </ci>
                <apply>
                  <divide/>
                  <ci> conc_S </ci>
                  <ci> k_S </ci>
                </apply>
                <apply>
                  <minus/>
                  <cn type="integer"> 1 </cn>
                  <apply>
                    <divide/>
                    <apply>
                      <divide/>
                      <apply>
                        <times/>
                        <ci> conc_P1 </ci>
                        <ci> conc_P2 </ci>
                      </apply>
                      <ci> conc_S </ci>
                    </apply>
                    <apply>
                      <exp/>
                      <apply>
                        <divide/>
                        <apply>
                          <minus/>
                          <ci> dG0 </ci>
                        </apply>
                        <apply>
                          <times/>
                          <ci> R </ci>
                          <ci> T </ci>
                        </apply>
                      </apply>
                    </apply>
                  </apply>
                </apply>
              </apply>
              <apply>
                <plus/>
                <cn type="integer"> 1 </cn>
                <apply>
                  <divide/>
                  <ci> conc_S </ci>
                  <ci> k_S </ci>
                </apply>
                <apply>
                  <divide/>
                  <ci> conc_P1 </ci>
                  <ci> k_P1 </ci>
                </apply>
                <apply>
                  <divide/>
                  <ci> conc_P2 </ci>
                  <ci> k_P2 </ci>
                </apply>
              </apply>
            </apply>
          </lambda>
        </math>
      </functionDefinition>
      <functionDefinition id="dG">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <lambda>
            <bvar>
              <ci> conc_S1 </ci>
            </bvar>
            <bvar>
              <ci> conc_S2 </ci>
            </bvar>
            <bvar>
              <ci> conc_P1 </ci>
            </bvar>
            <bvar>
              <ci> conc_P2 </ci>
            </bvar>
            <bvar>
              <ci> dG0 </ci>
            </bvar>
            <bvar>
              <ci> R </ci>
            </bvar>
            <bvar>
              <ci> T </ci>
            </bvar>
            <apply>
              <plus/>
              <ci> dG0 </ci>
              <apply>
                <times/>
                <ci> R </ci>
                <ci> T </ci>
                <apply>
                  <ln/>
                  <apply>
                    <divide/>
                    <apply>
                      <times/>
                      <ci> conc_P1 </ci>
                      <ci> conc_P2 </ci>
                    </apply>
                    <apply>
                      <times/>
                      <ci> conc_S1 </ci>
                      <ci> conc_S2 </ci>
                    </apply>
                  </apply>
                </apply>
              </apply>
            </apply>
          </lambda>
        </math>
      </functionDefinition>
    </listOfFunctionDefinitions>
    <listOfCompartments>
      <compartment sboTerm="SBO:0000410" id="default_compartment" spatialDimensions="3" size="1" constant="true"/>
    </listOfCompartments>
    <listOfSpecies>
      <species id="Global_Sex" compartment="default_compartment" initialConcentration="4" hasOnlySubstanceUnits="false" boundaryCondition="true" constant="false"/>
      <species id="A_S" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="A_A" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="A_B" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="A_C" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="A_X" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="A_P" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="Community_Pex" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="Community_Bex" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="B_S" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="B_A" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="B_B" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="B_C" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="B_X" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="B_P" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="C_S" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="C_A" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="C_B" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="C_C" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="C_X" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="C_P" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="Single_Pex" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="C_Bex" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
    </listOfSpecies>
    <listOfParameters>
      <parameter id="R" value="0.008315" constant="true"/>
      <parameter id="T" value="298" constant="true"/>
      <parameter id="A_is_on_R1" value="1" constant="true"/>
      <parameter id="E_conc_R1" value="1" constant="true"/>
      <parameter id="k_cat_R1" value="6" constant="true"/>
      <parameter id="k_Sex_R1" value="0.18" constant="true"/>
      <parameter id="k_S_R1" value="2.5" constant="true"/>
      <parameter id="dG0_R1" value="0" constant="true"/>
      <parameter id="A_is_on_R2" value="1" constant="true"/>
      <parameter id="E_conc_R2" value="1" constant="true"/>
      <parameter id="k_cat_R2" value="5" constant="true"/>
      <parameter id="k_S_R2" value="0.4" constant="true"/>
      <parameter id="k_X_R2" value="2.1" constant="true"/>
      <parameter id="k_A_R2" value="3.1" constant="true"/>
      <parameter id="dG0_R2" value="4" constant="true"/>
      <parameter id="A_is_on_R3" value="1" constant="true"/>
      <parameter id="E_conc_R3" value="1" constant="true"/>
      <parameter id="k_cat_R3" value="8" constant="true"/>
      <parameter id="k_A_R3" value="4.6" constant="true"/>
      <parameter id="k_X_R3" value="0.4" constant="true"/>
      <parameter id="k_B_R3" value="2.5" constant="true"/>
      <parameter id="dG0_R3" value="-5" constant="true"/>
      <parameter id="A_is_on_R4" value="0" constant="true"/>
      <parameter id="E_conc_R4" value="1" constant="true"/>
      <parameter id="k_cat_R4" value="9" constant="true"/>
      <parameter id="k_B_R4" value="0.5" constant="true"/>
      <parameter id="k_C_R4" value="0.9" constant="true"/>
      <parameter id="k_X_R4" value="3.1" constant="true"/>
      <parameter id="dG0_R4" value="-5" constant="true"/>
      <parameter id="A_is_on_R5" value="0" constant="true"/>
      <parameter id="E_conc_R5" value="1" constant="true"/>
      <parameter id="k_cat_R5" value="10" constant="true"/>
      <parameter id="k_C_R5" value="1.5" constant="true"/>
      <parameter id="k_X_R5" value="2.6" constant="true"/>
      <parameter id="k_P_R5" value="6.8" constant="true"/>
      <parameter id="dG0_R5" value="4" constant="true"/>
      <parameter id="A_is_on_R6" value="0" constant="true"/>
      <parameter id="E_conc_R6" value="1" constant="true"/>
      <parameter id="k_cat_R6" value="24" constant="true"/>
      <parameter id="k_P_R6" value="0.01" constant="true"/>
      <parameter id="k_Pex_R6" value="14" constant="true"/>
      <parameter id="dG0_R6" value="0" constant="true"/>
      <parameter id="A_is_on_RTB" value="1" constant="true"/>
      <parameter id="E_conc_RTB" value="1" constant="true"/>
      <parameter id="k_cat_RTB" value="1000000" constant="true"/>
      <parameter id="k_B_RTB" value="2" constant="true"/>
      <parameter id="k_Bex_RTB" value="2" constant="true"/>
      <parameter id="dG0_RTB" value="0" constant="true"/>
      <parameter id="A_is_on_Sex_uptake" value="1" constant="true"/>
      <parameter id="A_is_on_Pex_secretion" value="0" constant="true"/>
      <parameter id="A_dG_R1" constant="false"/>
      <parameter id="A_dG_R2" constant="false"/>
      <parameter id="A_dG_R3" constant="false"/>
      <parameter id="A_dG_R4" constant="false"/>
      <parameter id="A_dG_R5" constant="false"/>
      <parameter id="A_dG_R6" constant="false"/>
      <parameter id="A_dG_RTB" constant="false"/>
      <parameter id="A_mdf_R1" constant="false"/>
      <parameter id="A_mdf_R2" constant="false"/>
      <parameter id="A_mdf_R3" constant="false"/>
      <parameter id="A_mdf_R4" constant="false"/>
      <parameter id="A_mdf_R5" constant="false"/>
      <parameter id="A_mdf_R6" constant="false"/>
      <parameter id="A_mdf_RTB" constant="false"/>
      <parameter id="B_is_on_R1" value="0" constant="true"/>
      <parameter id="B_is_on_R2" value="0" constant="true"/>
      <parameter id="B_is_on_R3" value="0" constant="true"/>
      <parameter id="B_is_on_R4" value="1" constant="true"/>
      <parameter id="B_is_on_R5" value="1" constant="true"/>
      <parameter id="B_is_on_R6" value="1" constant="true"/>
      <parameter id="B_is_on_RTB" value="1" constant="true"/>
      <parameter id="B_is_on_Sex_uptake" value="0" constant="true"/>
      <parameter id="B_is_on_Pex_secretion" value="1" constant="true"/>
      <parameter id="B_dG_R1" constant="false"/>
      <parameter id="B_dG_R2" constant="false"/>
      <parameter id="B_dG_R3" constant="false"/>
      <parameter id="B_dG_R4" constant="false"/>
      <parameter id="B_dG_R5" constant="false"/>
      <parameter id="B_dG_R6" constant="false"/>
      <parameter id="B_dG_RTB" constant="false"/>
      <parameter id="B_mdf_R1" constant="false"/>
      <parameter id="B_mdf_R2" constant="false"/>
      <parameter id="B_mdf_R3" constant="false"/>
      <parameter id="B_mdf_R4" constant="false"/>
      <parameter id="B_mdf_R5" constant="false"/>
      <parameter id="B_mdf_R6" constant="false"/>
      <parameter id="B_mdf_RTB" constant="false"/>
      <parameter id="C_is_on_R1" value="1" constant="true"/>
      <parameter id="C_is_on_R2" value="1" constant="true"/>
      <parameter id="C_is_on_R3" value="1" constant="true"/>
      <parameter id="C_is_on_R4" value="1" constant="true"/>
      <parameter id="C_is_on_R5" value="1" constant="true"/>
      <parameter id="C_is_on_R6" value="1" constant="true"/>
      <parameter id="C_is_on_RTB" value="1" constant="true"/>
      <parameter id="C_is_on_Sex_uptake" value="1" constant="true"/>
      <parameter id="C_is_on_Pex_secretion" value="1" constant="true"/>
      <parameter id="C_dG_R1" constant="false"/>
      <parameter id="C_dG_R2" constant="false"/>
      <parameter id="C_dG_R3" constant="false"/>
      <parameter id="C_dG_R4" constant="false"/>
      <parameter id="C_dG_R5" constant="false"/>
      <parameter id="C_dG_R6" constant="false"/>
      <parameter id="C_dG_RTB" constant="false"/>
      <parameter id="C_mdf_R1" constant="false"/>
      <parameter id="C_mdf_R2" constant="false"/>
      <parameter id="C_mdf_R3" constant="false"/>
      <parameter id="C_mdf_R4" constant="false"/>
      <parameter id="C_mdf_R5" constant="false"/>
      <parameter id="C_mdf_R6" constant="false"/>
      <parameter id="C_mdf_RTB" constant="false"/>
      <parameter id="absolute_community_flux_advantage" constant="false"/>
      <parameter id="relative_community_flux_advantage" constant="false"/>
      <parameter id="community_to_single_metabolite_ratio" constant="false"/>
    </listOfParameters>
    <listOfRules>
      <assignmentRule variable="A_dG_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> Global_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> A_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_dG_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> A_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> A_A </ci>
            <ci> A_X </ci>
            <ci> dG0_R2 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_dG_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> A_A </ci>
            <ci> A_X </ci>
            <ci> A_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R3 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_dG_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> A_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> A_C </ci>
            <ci> A_X </ci>
            <ci> dG0_R4 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_dG_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> A_C </ci>
            <ci> A_X </ci>
            <ci> A_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R5 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_dG_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> A_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R6 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_dG_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> A_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_RTB </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_mdf_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> A_dG_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_mdf_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> A_dG_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_mdf_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> A_dG_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_mdf_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> A_dG_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_mdf_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> A_dG_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_mdf_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> A_dG_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="A_mdf_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> A_dG_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_dG_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> Global_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> B_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_dG_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> B_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> B_A </ci>
            <ci> B_X </ci>
            <ci> dG0_R2 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_dG_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> B_A </ci>
            <ci> B_X </ci>
            <ci> B_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R3 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_dG_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> B_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> B_C </ci>
            <ci> B_X </ci>
            <ci> dG0_R4 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_dG_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> B_C </ci>
            <ci> B_X </ci>
            <ci> B_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R5 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_dG_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> B_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R6 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_dG_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> B_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_RTB </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_mdf_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> B_dG_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_mdf_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> B_dG_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_mdf_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> B_dG_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_mdf_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> B_dG_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_mdf_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> B_dG_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_mdf_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> B_dG_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="B_mdf_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> B_dG_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_dG_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> Global_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> C_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_dG_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> C_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> C_A </ci>
            <ci> C_X </ci>
            <ci> dG0_R2 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_dG_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> C_A </ci>
            <ci> C_X </ci>
            <ci> C_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R3 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_dG_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> C_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> C_C </ci>
            <ci> C_X </ci>
            <ci> dG0_R4 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_dG_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> C_C </ci>
            <ci> C_X </ci>
            <ci> C_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R5 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_dG_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> C_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Single_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R6 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_dG_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> C_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> C_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_RTB </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_mdf_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> C_dG_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_mdf_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> C_dG_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_mdf_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> C_dG_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_mdf_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> C_dG_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_mdf_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> C_dG_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_mdf_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> C_dG_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="C_mdf_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> C_dG_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="absolute_community_flux_advantage">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> B_R6 </ci>
            <ci> C_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="relative_community_flux_advantage">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> B_R6 </ci>
            <ci> C_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_to_single_metabolite_ratio">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> B_X </ci>
            <ci> C_X </ci>
          </apply>
        </math>
      </assignmentRule>
    </listOfRules>
    <listOfReactions>
      <reaction id="A_Sex_uptake" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="Global_Sex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> A_is_on_Sex_uptake </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Global_Sex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="A_R1" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Global_Sex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="A_S" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> A_is_on_R1 </ci>
              <ci> E_conc_R1 </ci>
              <ci> k_cat_R1 </ci>
              <ci> Global_Sex </ci>
              <ci> A_S </ci>
              <ci> k_Sex_R1 </ci>
              <ci> k_S_R1 </ci>
              <ci> dG0_R1 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="A_R2" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="A_S" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="A_A" stoichiometry="1" constant="true"/>
          <speciesReference species="A_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_two_p </ci>
              <ci> A_is_on_R2 </ci>
              <ci> E_conc_R2 </ci>
              <ci> k_cat_R2 </ci>
              <ci> A_S </ci>
              <ci> A_A </ci>
              <ci> A_X </ci>
              <ci> k_S_R2 </ci>
              <ci> k_A_R2 </ci>
              <ci> k_X_R2 </ci>
              <ci> dG0_R2 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="A_R3" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="A_A" stoichiometry="1" constant="true"/>
          <speciesReference species="A_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="A_B" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_two_s_one_p </ci>
              <ci> A_is_on_R3 </ci>
              <ci> E_conc_R3 </ci>
              <ci> k_cat_R3 </ci>
              <ci> A_A </ci>
              <ci> A_X </ci>
              <ci> A_B </ci>
              <ci> k_A_R3 </ci>
              <ci> k_X_R3 </ci>
              <ci> k_B_R3 </ci>
              <ci> dG0_R3 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="A_R4" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="A_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="A_C" stoichiometry="1" constant="true"/>
          <speciesReference species="A_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_two_p </ci>
              <ci> A_is_on_R4 </ci>
              <ci> E_conc_R4 </ci>
              <ci> k_cat_R4 </ci>
              <ci> A_B </ci>
              <ci> A_C </ci>
              <ci> A_X </ci>
              <ci> k_B_R4 </ci>
              <ci> k_C_R4 </ci>
              <ci> k_X_R4 </ci>
              <ci> dG0_R4 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="A_R5" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="A_C" stoichiometry="1" constant="true"/>
          <speciesReference species="A_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="A_P" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_two_s_one_p </ci>
              <ci> A_is_on_R5 </ci>
              <ci> E_conc_R5 </ci>
              <ci> k_cat_R5 </ci>
              <ci> A_C </ci>
              <ci> A_X </ci>
              <ci> A_P </ci>
              <ci> k_C_R5 </ci>
              <ci> k_X_R5 </ci>
              <ci> k_P_R5 </ci>
              <ci> dG0_R5 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="A_R6" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="A_P" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="Community_Pex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> A_is_on_R6 </ci>
              <ci> E_conc_R6 </ci>
              <ci> k_cat_R6 </ci>
              <ci> A_P </ci>
              <ci> Community_Pex </ci>
              <ci> k_P_R6 </ci>
              <ci> k_Pex_R6 </ci>
              <ci> dG0_R6 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="A_Pex_secretion" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Community_Pex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> A_is_on_Pex_secretion </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Community_Pex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="A_RTB" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="A_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="Community_Bex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> A_is_on_RTB </ci>
              <ci> E_conc_RTB </ci>
              <ci> k_cat_RTB </ci>
              <ci> A_B </ci>
              <ci> Community_Bex </ci>
              <ci> k_B_RTB </ci>
              <ci> k_Bex_RTB </ci>
              <ci> dG0_RTB </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_Sex_uptake" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="Global_Sex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> B_is_on_Sex_uptake </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Global_Sex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_R1" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Global_Sex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="B_S" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> B_is_on_R1 </ci>
              <ci> E_conc_R1 </ci>
              <ci> k_cat_R1 </ci>
              <ci> Global_Sex </ci>
              <ci> B_S </ci>
              <ci> k_Sex_R1 </ci>
              <ci> k_S_R1 </ci>
              <ci> dG0_R1 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_R2" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="B_S" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="B_A" stoichiometry="1" constant="true"/>
          <speciesReference species="B_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_two_p </ci>
              <ci> B_is_on_R2 </ci>
              <ci> E_conc_R2 </ci>
              <ci> k_cat_R2 </ci>
              <ci> B_S </ci>
              <ci> B_A </ci>
              <ci> B_X </ci>
              <ci> k_S_R2 </ci>
              <ci> k_A_R2 </ci>
              <ci> k_X_R2 </ci>
              <ci> dG0_R2 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_R3" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="B_A" stoichiometry="1" constant="true"/>
          <speciesReference species="B_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="B_B" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_two_s_one_p </ci>
              <ci> B_is_on_R3 </ci>
              <ci> E_conc_R3 </ci>
              <ci> k_cat_R3 </ci>
              <ci> B_A </ci>
              <ci> B_X </ci>
              <ci> B_B </ci>
              <ci> k_A_R3 </ci>
              <ci> k_X_R3 </ci>
              <ci> k_B_R3 </ci>
              <ci> dG0_R3 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_R4" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="B_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="B_C" stoichiometry="1" constant="true"/>
          <speciesReference species="B_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_two_p </ci>
              <ci> B_is_on_R4 </ci>
              <ci> E_conc_R4 </ci>
              <ci> k_cat_R4 </ci>
              <ci> B_B </ci>
              <ci> B_C </ci>
              <ci> B_X </ci>
              <ci> k_B_R4 </ci>
              <ci> k_C_R4 </ci>
              <ci> k_X_R4 </ci>
              <ci> dG0_R4 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_R5" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="B_C" stoichiometry="1" constant="true"/>
          <speciesReference species="B_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="B_P" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_two_s_one_p </ci>
              <ci> B_is_on_R5 </ci>
              <ci> E_conc_R5 </ci>
              <ci> k_cat_R5 </ci>
              <ci> B_C </ci>
              <ci> B_X </ci>
              <ci> B_P </ci>
              <ci> k_C_R5 </ci>
              <ci> k_X_R5 </ci>
              <ci> k_P_R5 </ci>
              <ci> dG0_R5 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_R6" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="B_P" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="Community_Pex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> B_is_on_R6 </ci>
              <ci> E_conc_R6 </ci>
              <ci> k_cat_R6 </ci>
              <ci> B_P </ci>
              <ci> Community_Pex </ci>
              <ci> k_P_R6 </ci>
              <ci> k_Pex_R6 </ci>
              <ci> dG0_R6 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_Pex_secretion" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Community_Pex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> B_is_on_Pex_secretion </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Community_Pex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_RTB" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="B_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="Community_Bex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> B_is_on_RTB </ci>
              <ci> E_conc_RTB </ci>
              <ci> k_cat_RTB </ci>
              <ci> B_B </ci>
              <ci> Community_Bex </ci>
              <ci> k_B_RTB </ci>
              <ci> k_Bex_RTB </ci>
              <ci> dG0_RTB </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_Sex_uptake" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="Global_Sex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> C_is_on_Sex_uptake </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Global_Sex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_R1" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Global_Sex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="C_S" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> C_is_on_R1 </ci>
              <ci> E_conc_R1 </ci>
              <ci> k_cat_R1 </ci>
              <ci> Global_Sex </ci>
              <ci> C_S </ci>
              <ci> k_Sex_R1 </ci>
              <ci> k_S_R1 </ci>
              <ci> dG0_R1 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_R2" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="C_S" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="C_A" stoichiometry="1" constant="true"/>
          <speciesReference species="C_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_two_p </ci>
              <ci> C_is_on_R2 </ci>
              <ci> E_conc_R2 </ci>
              <ci> k_cat_R2 </ci>
              <ci> C_S </ci>
              <ci> C_A </ci>
              <ci> C_X </ci>
              <ci> k_S_R2 </ci>
              <ci> k_A_R2 </ci>
              <ci> k_X_R2 </ci>
              <ci> dG0_R2 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_R3" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="C_A" stoichiometry="1" constant="true"/>
          <speciesReference species="C_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="C_B" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_two_s_one_p </ci>
              <ci> C_is_on_R3 </ci>
              <ci> E_conc_R3 </ci>
              <ci> k_cat_R3 </ci>
              <ci> C_A </ci>
              <ci> C_X </ci>
              <ci> C_B </ci>
              <ci> k_A_R3 </ci>
              <ci> k_X_R3 </ci>
              <ci> k_B_R3 </ci>
              <ci> dG0_R3 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_R4" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="C_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="C_C" stoichiometry="1" constant="true"/>
          <speciesReference species="C_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_two_p </ci>
              <ci> C_is_on_R4 </ci>
              <ci> E_conc_R4 </ci>
              <ci> k_cat_R4 </ci>
              <ci> C_B </ci>
              <ci> C_C </ci>
              <ci> C_X </ci>
              <ci> k_B_R4 </ci>
              <ci> k_C_R4 </ci>
              <ci> k_X_R4 </ci>
              <ci> dG0_R4 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_R5" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="C_C" stoichiometry="1" constant="true"/>
          <speciesReference species="C_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="C_P" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_two_s_one_p </ci>
              <ci> C_is_on_R5 </ci>
              <ci> E_conc_R5 </ci>
              <ci> k_cat_R5 </ci>
              <ci> C_C </ci>
              <ci> C_X </ci>
              <ci> C_P </ci>
              <ci> k_C_R5 </ci>
              <ci> k_X_R5 </ci>
              <ci> k_P_R5 </ci>
              <ci> dG0_R5 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_R6" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="C_P" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="Single_Pex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> C_is_on_R6 </ci>
              <ci> E_conc_R6 </ci>
              <ci> k_cat_R6 </ci>
              <ci> C_P </ci>
              <ci> Single_Pex </ci>
              <ci> k_P_R6 </ci>
              <ci> k_Pex_R6 </ci>
              <ci> dG0_R6 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_Pex_secretion" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Single_Pex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> C_is_on_Pex_secretion </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Single_Pex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_RTB" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="C_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="C_Bex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> C_is_on_RTB </ci>
              <ci> E_conc_RTB </ci>
              <ci> k_cat_RTB </ci>
              <ci> C_B </ci>
              <ci> C_Bex </ci>
              <ci> k_B_RTB </ci>
              <ci> k_Bex_RTB </ci>
              <ci> dG0_RTB </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
    </listOfReactions>
  </model>
</sbml>
