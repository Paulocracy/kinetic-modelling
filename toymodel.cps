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
      <functionDefinition id="_dG">
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
            <bvar>
              <ci> reaction_flux </ci>
            </bvar>
            <apply>
              <plus/>
              <apply>
                <times/>
                <apply>
                  <geq/>
                  <ci> reaction_flux </ci>
                  <cn type="integer"> 0 </cn>
                </apply>
                <apply>
                  <ci> _dG </ci>
                  <ci> conc_S1 </ci>
                  <ci> conc_S2 </ci>
                  <ci> conc_P1 </ci>
                  <ci> conc_P2 </ci>
                  <ci> dG0 </ci>
                  <ci> R </ci>
                  <ci> T </ci>
                </apply>
              </apply>
              <apply>
                <times/>
                <apply>
                  <lt/>
                  <ci> reaction_flux </ci>
                  <cn type="integer"> 0 </cn>
                </apply>
                <apply>
                  <minus/>
                  <apply>
                    <ci> _dG </ci>
                    <ci> conc_S1 </ci>
                    <ci> conc_S2 </ci>
                    <ci> conc_P1 </ci>
                    <ci> conc_P2 </ci>
                    <ci> dG0 </ci>
                    <ci> R </ci>
                    <ci> T </ci>
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
      <species id="Community_Sex" compartment="default_compartment" initialConcentration="4" hasOnlySubstanceUnits="false" boundaryCondition="true" constant="false"/>
      <species id="A_S" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="A_A" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="A_B" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="A_C" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="A_X" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="A_P" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="Community_Pex" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="Community_Bex" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="B_S" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="B_A" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="B_B" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="B_C" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="B_X" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="B_P" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="Single_Sex" compartment="default_compartment" initialConcentration="4" hasOnlySubstanceUnits="false" boundaryCondition="true" constant="false"/>
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
      <parameter id="global_k_cat_R1" value="6" constant="true"/>
      <parameter id="global_k_Sex_R1" value="0.18" constant="true"/>
      <parameter id="global_k_S_R1" value="2.5" constant="true"/>
      <parameter id="dG0_R1" value="0" constant="true"/>
      <parameter id="A_is_on_R2" value="1" constant="true"/>
      <parameter id="E_conc_R2" value="1" constant="true"/>
      <parameter id="global_k_cat_R2" value="5" constant="true"/>
      <parameter id="global_k_S_R2" value="0.4" constant="true"/>
      <parameter id="global_k_X_R2" value="2.1" constant="true"/>
      <parameter id="global_k_A_R2" value="3.1" constant="true"/>
      <parameter id="dG0_R2" value="4" constant="true"/>
      <parameter id="A_is_on_R3" value="1" constant="true"/>
      <parameter id="E_conc_R3" value="1" constant="true"/>
      <parameter id="global_k_cat_R3" value="8" constant="true"/>
      <parameter id="global_k_A_R3" value="4.6" constant="true"/>
      <parameter id="global_k_X_R3" value="0.4" constant="true"/>
      <parameter id="global_k_B_R3" value="2.5" constant="true"/>
      <parameter id="dG0_R3" value="-5" constant="true"/>
      <parameter id="A_is_on_R4" value="0" constant="true"/>
      <parameter id="E_conc_R4" value="1" constant="true"/>
      <parameter id="global_k_cat_R4" value="9" constant="true"/>
      <parameter id="global_k_B_R4" value="0.5" constant="true"/>
      <parameter id="global_k_C_R4" value="0.9" constant="true"/>
      <parameter id="global_k_X_R4" value="3.1" constant="true"/>
      <parameter id="dG0_R4" value="-5" constant="true"/>
      <parameter id="A_is_on_R5" value="0" constant="true"/>
      <parameter id="E_conc_R5" value="1" constant="true"/>
      <parameter id="global_k_cat_R5" value="10" constant="true"/>
      <parameter id="global_k_C_R5" value="1.5" constant="true"/>
      <parameter id="global_k_X_R5" value="2.6" constant="true"/>
      <parameter id="global_k_P_R5" value="6.8" constant="true"/>
      <parameter id="dG0_R5" value="4" constant="true"/>
      <parameter id="A_is_on_R6" value="0" constant="true"/>
      <parameter id="E_conc_R6" value="1" constant="true"/>
      <parameter id="global_k_cat_R6" value="24" constant="true"/>
      <parameter id="global_k_P_R6" value="0.01" constant="true"/>
      <parameter id="global_k_Pex_R6" value="14" constant="true"/>
      <parameter id="dG0_R6" value="0" constant="true"/>
      <parameter id="A_is_on_RTB" value="1" constant="true"/>
      <parameter id="E_conc_RTB" value="1" constant="true"/>
      <parameter id="global_k_cat_RTB" value="1000000" constant="true"/>
      <parameter id="global_k_B_RTB" value="2" constant="true"/>
      <parameter id="global_k_Bex_RTB" value="2" constant="true"/>
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
      <parameter id="community_A_to_single_metabolite_X_ratio" constant="false"/>
      <parameter id="community_B_to_single_metabolite_X_ratio" constant="false"/>
      <parameter id="community_B_to_community_A_metabolite_X_ratio" constant="false"/>
      <parameter id="community_A_to_community_B_metabolite_X_ratio" constant="false"/>
      <parameter id="absolute_community_flux_advantage" constant="false"/>
      <parameter id="relative_community_flux_advantage" constant="false"/>
      <parameter id="community_flux" constant="false"/>
      <parameter id="single_flux" constant="false"/>
      <parameter id="c_mdf_R1_lt_1" constant="false"/>
      <parameter id="c_mdf_R1_lt_2" constant="false"/>
      <parameter id="c_mdf_R1_lt_3" constant="false"/>
      <parameter id="c_mdf_R1_lt_4" constant="false"/>
      <parameter id="c_mdf_R1_lt_5" constant="false"/>
      <parameter id="c_mdf_R1_lt_6" constant="false"/>
      <parameter id="c_mdf_R1_lt_7" constant="false"/>
      <parameter id="c_sum_mdf_R1_gt" constant="false"/>
      <parameter id="c_is_R1_mmdf" constant="false"/>
      <parameter id="c_mdf_R2_lt_1" constant="false"/>
      <parameter id="c_mdf_R2_lt_2" constant="false"/>
      <parameter id="c_mdf_R2_lt_3" constant="false"/>
      <parameter id="c_mdf_R2_lt_4" constant="false"/>
      <parameter id="c_mdf_R2_lt_5" constant="false"/>
      <parameter id="c_mdf_R2_lt_6" constant="false"/>
      <parameter id="c_mdf_R2_lt_7" constant="false"/>
      <parameter id="c_sum_mdf_R2_gt" constant="false"/>
      <parameter id="c_is_R2_mmdf" constant="false"/>
      <parameter id="c_mdf_R3_lt_1" constant="false"/>
      <parameter id="c_mdf_R3_lt_2" constant="false"/>
      <parameter id="c_mdf_R3_lt_3" constant="false"/>
      <parameter id="c_mdf_R3_lt_4" constant="false"/>
      <parameter id="c_mdf_R3_lt_5" constant="false"/>
      <parameter id="c_mdf_R3_lt_6" constant="false"/>
      <parameter id="c_mdf_R3_lt_7" constant="false"/>
      <parameter id="c_sum_mdf_R3_gt" constant="false"/>
      <parameter id="c_is_R3_mmdf" constant="false"/>
      <parameter id="c_mdf_RTBA_lt_3" constant="false"/>
      <parameter id="c_mdf_RTBA_lt_1" constant="false"/>
      <parameter id="c_mdf_RTBA_lt_2" constant="false"/>
      <parameter id="c_mdf_RTBA_lt_4" constant="false"/>
      <parameter id="c_mdf_RTBA_lt_5" constant="false"/>
      <parameter id="c_mdf_RTBA_lt_6" constant="false"/>
      <parameter id="c_mdf_RTBA_lt_7" constant="false"/>
      <parameter id="c_sum_mdf_RTBA_gt" constant="false"/>
      <parameter id="c_is_RTBA_mmdf" constant="false"/>
      <parameter id="c_mdf_RTBB_lt_4" constant="false"/>
      <parameter id="c_mdf_RTBB_lt_1" constant="false"/>
      <parameter id="c_mdf_RTBB_lt_2" constant="false"/>
      <parameter id="c_mdf_RTBB_lt_3" constant="false"/>
      <parameter id="c_mdf_RTBB_lt_5" constant="false"/>
      <parameter id="c_mdf_RTBB_lt_6" constant="false"/>
      <parameter id="c_mdf_RTBB_lt_7" constant="false"/>
      <parameter id="c_sum_mdf_RTBB_gt" constant="false"/>
      <parameter id="c_is_RTBB_mmdf" constant="false"/>
      <parameter id="c_mdf_R4_lt_1" constant="false"/>
      <parameter id="c_mdf_R4_lt_2" constant="false"/>
      <parameter id="c_mdf_R4_lt_5" constant="false"/>
      <parameter id="c_mdf_R4_lt_3" constant="false"/>
      <parameter id="c_mdf_R4_lt_4" constant="false"/>
      <parameter id="c_mdf_R4_lt_6" constant="false"/>
      <parameter id="c_mdf_R4_lt_7" constant="false"/>
      <parameter id="c_sum_mdf_R4_gt" constant="false"/>
      <parameter id="c_is_R4_mmdf" constant="false"/>
      <parameter id="c_mdf_R5_lt_1" constant="false"/>
      <parameter id="c_mdf_R5_lt_2" constant="false"/>
      <parameter id="c_mdf_R5_lt_5" constant="false"/>
      <parameter id="c_mdf_R5_lt_3" constant="false"/>
      <parameter id="c_mdf_R5_lt_4" constant="false"/>
      <parameter id="c_mdf_R5_lt_6" constant="false"/>
      <parameter id="c_mdf_R5_lt_7" constant="false"/>
      <parameter id="c_sum_mdf_R5_gt" constant="false"/>
      <parameter id="c_is_R5_mmdf" constant="false"/>
      <parameter id="c_mdf_R6_lt_1" constant="false"/>
      <parameter id="c_mdf_R6_lt_2" constant="false"/>
      <parameter id="c_mdf_R6_lt_5" constant="false"/>
      <parameter id="c_mdf_R6_lt_3" constant="false"/>
      <parameter id="c_mdf_R6_lt_4" constant="false"/>
      <parameter id="c_mdf_R6_lt_6" constant="false"/>
      <parameter id="c_mdf_R6_lt_7" constant="false"/>
      <parameter id="c_sum_mdf_R6_gt" constant="false"/>
      <parameter id="c_is_R6_mmdf" constant="false"/>
      <parameter id="c_mmdf" constant="false"/>
      <parameter id="s_mdf_R1_lt_1" constant="false"/>
      <parameter id="s_mdf_R1_lt_2" constant="false"/>
      <parameter id="s_mdf_R1_lt_3" constant="false"/>
      <parameter id="s_mdf_R1_lt_4" constant="false"/>
      <parameter id="s_mdf_R1_lt_5" constant="false"/>
      <parameter id="s_sum_mdf_R1_gt" constant="false"/>
      <parameter id="s_is_R1_mmdf" constant="false"/>
      <parameter id="s_mdf_R2_lt_1" constant="false"/>
      <parameter id="s_mdf_R2_lt_2" constant="false"/>
      <parameter id="s_mdf_R2_lt_3" constant="false"/>
      <parameter id="s_mdf_R2_lt_4" constant="false"/>
      <parameter id="s_mdf_R2_lt_5" constant="false"/>
      <parameter id="s_sum_mdf_R2_gt" constant="false"/>
      <parameter id="s_is_R2_mmdf" constant="false"/>
      <parameter id="s_mdf_R3_lt_1" constant="false"/>
      <parameter id="s_mdf_R3_lt_2" constant="false"/>
      <parameter id="s_mdf_R3_lt_3" constant="false"/>
      <parameter id="s_mdf_R3_lt_4" constant="false"/>
      <parameter id="s_mdf_R3_lt_5" constant="false"/>
      <parameter id="s_sum_mdf_R3_gt" constant="false"/>
      <parameter id="s_is_R3_mmdf" constant="false"/>
      <parameter id="s_mdf_R4_lt_1" constant="false"/>
      <parameter id="s_mdf_R4_lt_2" constant="false"/>
      <parameter id="s_mdf_R4_lt_3" constant="false"/>
      <parameter id="s_mdf_R4_lt_4" constant="false"/>
      <parameter id="s_mdf_R4_lt_5" constant="false"/>
      <parameter id="s_sum_mdf_R4_gt" constant="false"/>
      <parameter id="s_is_R4_mmdf" constant="false"/>
      <parameter id="s_mdf_R5_lt_1" constant="false"/>
      <parameter id="s_mdf_R5_lt_2" constant="false"/>
      <parameter id="s_mdf_R5_lt_3" constant="false"/>
      <parameter id="s_mdf_R5_lt_4" constant="false"/>
      <parameter id="s_mdf_R5_lt_5" constant="false"/>
      <parameter id="s_sum_mdf_R5_gt" constant="false"/>
      <parameter id="s_is_R5_mmdf" constant="false"/>
      <parameter id="s_mdf_R6_lt_1" constant="false"/>
      <parameter id="s_mdf_R6_lt_2" constant="false"/>
      <parameter id="s_mdf_R6_lt_3" constant="false"/>
      <parameter id="s_mdf_R6_lt_4" constant="false"/>
      <parameter id="s_mdf_R6_lt_5" constant="false"/>
      <parameter id="s_sum_mdf_R6_gt" constant="false"/>
      <parameter id="s_is_R6_mmdf" constant="false"/>
      <parameter id="s_mmdf" constant="false"/>
      <parameter id="s_mmdf_gt_c_mmdf" constant="false"/>
      <parameter id="c_mmdf_gt_s_mmdf" constant="false"/>
      <parameter id="total_mmdf" constant="false"/>
      <parameter id="absolute_community_mmdf_advantage" constant="false"/>
      <parameter id="relative_community_mmdf_advantage" constant="false"/>
      <parameter id="is_a_x_gt_b_x" constant="false"/>
      <parameter id="is_b_x_gt_a_x" constant="false"/>
      <parameter id="is_community_advantageous" constant="false"/>
      <parameter id="is_community_advantageous_with_b_x_gt_a_x" constant="false"/>
      <parameter id="is_community_advantageous_with_a_x_gt_b_x" constant="false"/>
      <parameter id="community_advantage_with_b_x_gt_a_x" constant="false"/>
      <parameter id="community_advantage_with_a_x_gt_b_x" constant="false"/>
      <parameter id="is_a_x_gt_b_x_B" constant="false"/>
      <parameter id="is_b_x_gt_a_x_B" constant="false"/>
      <parameter id="is_community_advantageous_B" constant="false"/>
      <parameter id="is_community_advantageous_with_b_x_gt_a_x_B" constant="false"/>
      <parameter id="is_community_advantageous_with_a_x_gt_b_x_B" constant="false"/>
      <parameter id="community_advantage_with_b_x_gt_a_x_B" constant="false"/>
      <parameter id="community_advantage_with_a_x_gt_b_x_B" constant="false"/>
    </listOfParameters>
    <listOfRules>
      <assignmentRule variable="A_dG_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> Community_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> A_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> A_R1 </ci>
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
            <ci> A_R2 </ci>
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
            <ci> A_R3 </ci>
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
            <ci> A_R4 </ci>
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
            <ci> A_R5 </ci>
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
            <ci> A_R6 </ci>
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
            <ci> A_RTB </ci>
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
            <ci> Community_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> B_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> B_R1 </ci>
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
            <ci> B_R2 </ci>
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
            <ci> B_R3 </ci>
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
            <ci> B_R4 </ci>
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
            <ci> B_R5 </ci>
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
            <ci> B_R6 </ci>
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
            <ci> B_RTB </ci>
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
            <ci> Single_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> C_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> C_R1 </ci>
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
            <ci> C_R2 </ci>
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
            <ci> C_R3 </ci>
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
            <ci> C_R4 </ci>
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
            <ci> C_R5 </ci>
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
            <ci> C_R6 </ci>
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
            <ci> C_RTB </ci>
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
      <assignmentRule variable="community_A_to_single_metabolite_X_ratio">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> A_X </ci>
            <ci> C_X </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_B_to_single_metabolite_X_ratio">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> B_X </ci>
            <ci> C_X </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_B_to_community_A_metabolite_X_ratio">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> B_X </ci>
            <ci> A_X </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_A_to_community_B_metabolite_X_ratio">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> A_X </ci>
            <ci> B_X </ci>
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
      <assignmentRule variable="community_flux">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <ci> B_R6 </ci>
        </math>
      </assignmentRule>
      <assignmentRule variable="single_flux">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <ci> C_R6 </ci>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R1 </ci>
            <ci> A_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R1 </ci>
            <ci> A_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R1 </ci>
            <ci> A_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R1 </ci>
            <ci> B_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R1 </ci>
            <ci> B_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R1 </ci>
            <ci> B_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R1 </ci>
            <ci> B_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_sum_mdf_R1_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> c_mdf_R1_lt_1 </ci>
            <ci> c_mdf_R1_lt_2 </ci>
            <ci> c_mdf_R1_lt_3 </ci>
            <ci> c_mdf_R1_lt_4 </ci>
            <ci> c_mdf_R1_lt_5 </ci>
            <ci> c_mdf_R1_lt_6 </ci>
            <ci> c_mdf_R1_lt_7 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_is_R1_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> c_sum_mdf_R1_gt </ci>
            <cn type="integer"> 7 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R2 </ci>
            <ci> A_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R2 </ci>
            <ci> A_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R2 </ci>
            <ci> A_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R2 </ci>
            <ci> B_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R2 </ci>
            <ci> B_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R2 </ci>
            <ci> B_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R2 </ci>
            <ci> B_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_sum_mdf_R2_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> c_mdf_R2_lt_1 </ci>
            <ci> c_mdf_R2_lt_2 </ci>
            <ci> c_mdf_R2_lt_3 </ci>
            <ci> c_mdf_R2_lt_4 </ci>
            <ci> c_mdf_R2_lt_5 </ci>
            <ci> c_mdf_R2_lt_6 </ci>
            <ci> c_mdf_R2_lt_7 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_is_R2_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> c_sum_mdf_R2_gt </ci>
            <cn type="integer"> 7 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R3 </ci>
            <ci> A_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R3 </ci>
            <ci> A_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R3 </ci>
            <ci> A_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R3 </ci>
            <ci> B_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R3 </ci>
            <ci> B_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R3 </ci>
            <ci> B_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_R3 </ci>
            <ci> B_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_sum_mdf_R3_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> c_mdf_R3_lt_1 </ci>
            <ci> c_mdf_R3_lt_2 </ci>
            <ci> c_mdf_R3_lt_3 </ci>
            <ci> c_mdf_R3_lt_4 </ci>
            <ci> c_mdf_R3_lt_5 </ci>
            <ci> c_mdf_R3_lt_6 </ci>
            <ci> c_mdf_R3_lt_7 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_is_R3_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> c_sum_mdf_R3_gt </ci>
            <cn type="integer"> 7 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_RTB </ci>
            <ci> A_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_RTB </ci>
            <ci> A_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_RTB </ci>
            <ci> A_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_RTB </ci>
            <ci> B_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_RTB </ci>
            <ci> B_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_RTB </ci>
            <ci> B_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> A_mdf_RTB </ci>
            <ci> B_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_sum_mdf_RTBA_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> c_mdf_RTBA_lt_1 </ci>
            <ci> c_mdf_RTBA_lt_2 </ci>
            <ci> c_mdf_RTBA_lt_3 </ci>
            <ci> c_mdf_RTBA_lt_4 </ci>
            <ci> c_mdf_RTBA_lt_5 </ci>
            <ci> c_mdf_RTBA_lt_6 </ci>
            <ci> c_mdf_RTBA_lt_7 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_is_RTBA_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> c_sum_mdf_RTBA_gt </ci>
            <cn type="integer"> 7 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_RTB </ci>
            <ci> A_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_RTB </ci>
            <ci> A_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_RTB </ci>
            <ci> A_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_RTB </ci>
            <ci> A_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_RTB </ci>
            <ci> B_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_RTB </ci>
            <ci> B_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_RTB </ci>
            <ci> B_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_sum_mdf_RTBB_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> c_mdf_RTBB_lt_1 </ci>
            <ci> c_mdf_RTBB_lt_2 </ci>
            <ci> c_mdf_RTBB_lt_3 </ci>
            <ci> c_mdf_RTBB_lt_4 </ci>
            <ci> c_mdf_RTBB_lt_5 </ci>
            <ci> c_mdf_RTBB_lt_6 </ci>
            <ci> c_mdf_RTBB_lt_7 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_is_RTBB_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> c_sum_mdf_RTBB_gt </ci>
            <cn type="integer"> 7 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R4 </ci>
            <ci> A_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R4 </ci>
            <ci> A_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R4 </ci>
            <ci> A_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R4 </ci>
            <ci> A_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R4 </ci>
            <ci> B_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R4 </ci>
            <ci> B_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R4 </ci>
            <ci> B_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_sum_mdf_R4_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> c_mdf_R4_lt_1 </ci>
            <ci> c_mdf_R4_lt_2 </ci>
            <ci> c_mdf_R4_lt_3 </ci>
            <ci> c_mdf_R4_lt_4 </ci>
            <ci> c_mdf_R4_lt_5 </ci>
            <ci> c_mdf_R4_lt_6 </ci>
            <ci> c_mdf_R4_lt_7 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_is_R4_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> c_sum_mdf_R4_gt </ci>
            <cn type="integer"> 7 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R5 </ci>
            <ci> A_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R5 </ci>
            <ci> A_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R5 </ci>
            <ci> A_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R5 </ci>
            <ci> A_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R5 </ci>
            <ci> B_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R5 </ci>
            <ci> B_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R5 </ci>
            <ci> B_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_sum_mdf_R5_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> c_mdf_R5_lt_1 </ci>
            <ci> c_mdf_R5_lt_2 </ci>
            <ci> c_mdf_R5_lt_3 </ci>
            <ci> c_mdf_R5_lt_4 </ci>
            <ci> c_mdf_R5_lt_5 </ci>
            <ci> c_mdf_R5_lt_6 </ci>
            <ci> c_mdf_R5_lt_7 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_is_R5_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> c_sum_mdf_R5_gt </ci>
            <cn type="integer"> 7 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R6 </ci>
            <ci> A_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R6 </ci>
            <ci> A_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R6 </ci>
            <ci> A_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R6 </ci>
            <ci> A_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R6 </ci>
            <ci> B_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R6 </ci>
            <ci> B_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> B_mdf_R6 </ci>
            <ci> B_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_sum_mdf_R6_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> c_mdf_R6_lt_1 </ci>
            <ci> c_mdf_R6_lt_2 </ci>
            <ci> c_mdf_R6_lt_3 </ci>
            <ci> c_mdf_R6_lt_4 </ci>
            <ci> c_mdf_R6_lt_5 </ci>
            <ci> c_mdf_R6_lt_6 </ci>
            <ci> c_mdf_R6_lt_7 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_is_R6_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> c_sum_mdf_R6_gt </ci>
            <cn type="integer"> 7 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <apply>
              <times/>
              <ci> c_is_R1_mmdf </ci>
              <ci> A_mdf_R1 </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_R2_mmdf </ci>
              <ci> A_mdf_R2 </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_R3_mmdf </ci>
              <ci> A_mdf_R3 </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_RTBA_mmdf </ci>
              <ci> A_mdf_RTB </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_RTBB_mmdf </ci>
              <ci> B_mdf_RTB </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_R4_mmdf </ci>
              <ci> B_mdf_R4 </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_R5_mmdf </ci>
              <ci> B_mdf_R5 </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_R6_mmdf </ci>
              <ci> B_mdf_R6 </ci>
            </apply>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R1_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R1 </ci>
            <ci> C_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R1_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R1 </ci>
            <ci> C_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R1_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R1 </ci>
            <ci> C_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R1_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R1 </ci>
            <ci> C_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R1_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R1 </ci>
            <ci> C_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_sum_mdf_R1_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> s_mdf_R1_lt_1 </ci>
            <ci> s_mdf_R1_lt_2 </ci>
            <ci> s_mdf_R1_lt_3 </ci>
            <ci> s_mdf_R1_lt_4 </ci>
            <ci> s_mdf_R1_lt_5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_is_R1_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> s_sum_mdf_R1_gt </ci>
            <cn type="integer"> 5 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R2_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R2 </ci>
            <ci> C_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R2_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R2 </ci>
            <ci> C_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R2_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R2 </ci>
            <ci> C_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R2_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R2 </ci>
            <ci> C_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R2_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R2 </ci>
            <ci> C_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_sum_mdf_R2_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> s_mdf_R2_lt_1 </ci>
            <ci> s_mdf_R2_lt_2 </ci>
            <ci> s_mdf_R2_lt_3 </ci>
            <ci> s_mdf_R2_lt_4 </ci>
            <ci> s_mdf_R2_lt_5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_is_R2_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> s_sum_mdf_R2_gt </ci>
            <cn type="integer"> 5 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R3_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R3 </ci>
            <ci> C_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R3_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R3 </ci>
            <ci> C_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R3_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R3 </ci>
            <ci> C_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R3_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R3 </ci>
            <ci> C_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R3_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R3 </ci>
            <ci> C_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_sum_mdf_R3_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> s_mdf_R3_lt_1 </ci>
            <ci> s_mdf_R3_lt_2 </ci>
            <ci> s_mdf_R3_lt_3 </ci>
            <ci> s_mdf_R3_lt_4 </ci>
            <ci> s_mdf_R3_lt_5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_is_R3_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> s_sum_mdf_R3_gt </ci>
            <cn type="integer"> 5 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R4_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R4 </ci>
            <ci> C_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R4_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R4 </ci>
            <ci> C_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R4_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R4 </ci>
            <ci> C_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R4_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R4 </ci>
            <ci> C_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R4_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R4 </ci>
            <ci> C_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_sum_mdf_R4_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> s_mdf_R4_lt_1 </ci>
            <ci> s_mdf_R4_lt_2 </ci>
            <ci> s_mdf_R4_lt_3 </ci>
            <ci> s_mdf_R4_lt_4 </ci>
            <ci> s_mdf_R4_lt_5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_is_R4_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> s_sum_mdf_R4_gt </ci>
            <cn type="integer"> 5 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R5_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R5 </ci>
            <ci> C_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R5_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R5 </ci>
            <ci> C_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R5_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R5 </ci>
            <ci> C_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R5_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R5 </ci>
            <ci> C_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R5_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R5 </ci>
            <ci> C_mdf_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_sum_mdf_R5_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> s_mdf_R5_lt_1 </ci>
            <ci> s_mdf_R5_lt_2 </ci>
            <ci> s_mdf_R5_lt_3 </ci>
            <ci> s_mdf_R5_lt_4 </ci>
            <ci> s_mdf_R5_lt_5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_is_R5_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> s_sum_mdf_R5_gt </ci>
            <cn type="integer"> 5 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R6_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R6 </ci>
            <ci> C_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R6_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R6 </ci>
            <ci> C_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R6_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R6 </ci>
            <ci> C_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R6_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R6 </ci>
            <ci> C_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R6_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> C_mdf_R6 </ci>
            <ci> C_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_sum_mdf_R6_gt">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <ci> s_mdf_R6_lt_1 </ci>
            <ci> s_mdf_R6_lt_2 </ci>
            <ci> s_mdf_R6_lt_3 </ci>
            <ci> s_mdf_R6_lt_4 </ci>
            <ci> s_mdf_R6_lt_5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_is_R6_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <eq/>
            <ci> s_sum_mdf_R6_gt </ci>
            <cn type="integer"> 5 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <apply>
              <times/>
              <ci> s_is_R1_mmdf </ci>
              <ci> C_mdf_R1 </ci>
            </apply>
            <apply>
              <times/>
              <ci> s_is_R2_mmdf </ci>
              <ci> C_mdf_R2 </ci>
            </apply>
            <apply>
              <times/>
              <ci> s_is_R3_mmdf </ci>
              <ci> C_mdf_R3 </ci>
            </apply>
            <apply>
              <times/>
              <ci> s_is_R4_mmdf </ci>
              <ci> C_mdf_R4 </ci>
            </apply>
            <apply>
              <times/>
              <ci> s_is_R5_mmdf </ci>
              <ci> C_mdf_R5 </ci>
            </apply>
            <apply>
              <times/>
              <ci> s_is_R6_mmdf </ci>
              <ci> C_mdf_R6 </ci>
            </apply>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mmdf_gt_c_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <gt/>
            <ci> s_mmdf </ci>
            <ci> c_mmdf </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mmdf_gt_s_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <gt/>
            <ci> c_mmdf </ci>
            <ci> s_mmdf </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="total_mmdf">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <plus/>
            <apply>
              <times/>
              <ci> s_mmdf_gt_c_mmdf </ci>
              <ci> s_mmdf </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_mmdf_gt_s_mmdf </ci>
              <ci> c_mmdf </ci>
            </apply>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="absolute_community_mmdf_advantage">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> c_mmdf </ci>
            <ci> s_mmdf </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="relative_community_mmdf_advantage">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> c_mmdf </ci>
            <ci> s_mmdf </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_a_x_gt_b_x">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <gt/>
            <ci> community_A_to_community_B_metabolite_X_ratio </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_b_x_gt_a_x">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <gt/>
            <ci> community_B_to_community_A_metabolite_X_ratio </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_community_advantageous">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <gt/>
            <ci> relative_community_flux_advantage </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_community_advantageous_with_b_x_gt_a_x">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> is_b_x_gt_a_x </ci>
            <ci> is_community_advantageous </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_community_advantageous_with_a_x_gt_b_x">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> is_a_x_gt_b_x </ci>
            <ci> is_community_advantageous </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_advantage_with_b_x_gt_a_x">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> relative_community_flux_advantage </ci>
            <ci> is_community_advantageous_with_b_x_gt_a_x </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_advantage_with_a_x_gt_b_x">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> relative_community_flux_advantage </ci>
            <ci> is_community_advantageous_with_a_x_gt_b_x </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_a_x_gt_b_x_B">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <gt/>
            <ci> community_A_to_community_B_metabolite_X_ratio </ci>
            <cn> 1.01 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_b_x_gt_a_x_B">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <gt/>
            <ci> community_B_to_community_A_metabolite_X_ratio </ci>
            <cn> 1.01 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_community_advantageous_B">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <gt/>
            <ci> relative_community_flux_advantage </ci>
            <cn> 1.01 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_community_advantageous_with_b_x_gt_a_x_B">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> is_b_x_gt_a_x_B </ci>
            <ci> is_community_advantageous_B </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_community_advantageous_with_a_x_gt_b_x_B">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> is_a_x_gt_b_x_B </ci>
            <ci> is_community_advantageous_B </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_advantage_with_b_x_gt_a_x_B">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> relative_community_flux_advantage </ci>
            <ci> is_community_advantageous_with_b_x_gt_a_x_B </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_advantage_with_a_x_gt_b_x_B">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> relative_community_flux_advantage </ci>
            <ci> is_community_advantageous_with_a_x_gt_b_x_B </ci>
          </apply>
        </math>
      </assignmentRule>
    </listOfRules>
    <listOfReactions>
      <reaction id="A_Sex_uptake" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="Community_Sex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> A_is_on_Sex_uptake </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Community_Sex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="A_R1" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Community_Sex" stoichiometry="1" constant="true"/>
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
              <ci> global_k_cat_R1 </ci>
              <ci> Community_Sex </ci>
              <ci> A_S </ci>
              <ci> global_k_Sex_R1 </ci>
              <ci> global_k_S_R1 </ci>
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
              <ci> global_k_cat_R2 </ci>
              <ci> A_S </ci>
              <ci> A_A </ci>
              <ci> A_X </ci>
              <ci> global_k_S_R2 </ci>
              <ci> global_k_A_R2 </ci>
              <ci> global_k_X_R2 </ci>
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
              <ci> global_k_cat_R3 </ci>
              <ci> A_A </ci>
              <ci> A_X </ci>
              <ci> A_B </ci>
              <ci> global_k_A_R3 </ci>
              <ci> global_k_X_R3 </ci>
              <ci> global_k_B_R3 </ci>
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
              <ci> global_k_cat_R4 </ci>
              <ci> A_B </ci>
              <ci> A_C </ci>
              <ci> A_X </ci>
              <ci> global_k_B_R4 </ci>
              <ci> global_k_C_R4 </ci>
              <ci> global_k_X_R4 </ci>
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
              <ci> global_k_cat_R5 </ci>
              <ci> A_C </ci>
              <ci> A_X </ci>
              <ci> A_P </ci>
              <ci> global_k_C_R5 </ci>
              <ci> global_k_X_R5 </ci>
              <ci> global_k_P_R5 </ci>
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
              <ci> global_k_cat_R6 </ci>
              <ci> A_P </ci>
              <ci> Community_Pex </ci>
              <ci> global_k_P_R6 </ci>
              <ci> global_k_Pex_R6 </ci>
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
              <ci> global_k_cat_RTB </ci>
              <ci> A_B </ci>
              <ci> Community_Bex </ci>
              <ci> global_k_B_RTB </ci>
              <ci> global_k_Bex_RTB </ci>
              <ci> dG0_RTB </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_Sex_uptake" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="Community_Sex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> B_is_on_Sex_uptake </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Community_Sex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="B_R1" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Community_Sex" stoichiometry="1" constant="true"/>
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
              <ci> global_k_cat_R1 </ci>
              <ci> Community_Sex </ci>
              <ci> B_S </ci>
              <ci> global_k_Sex_R1 </ci>
              <ci> global_k_S_R1 </ci>
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
              <ci> global_k_cat_R2 </ci>
              <ci> B_S </ci>
              <ci> B_A </ci>
              <ci> B_X </ci>
              <ci> global_k_S_R2 </ci>
              <ci> global_k_A_R2 </ci>
              <ci> global_k_X_R2 </ci>
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
              <ci> global_k_cat_R3 </ci>
              <ci> B_A </ci>
              <ci> B_X </ci>
              <ci> B_B </ci>
              <ci> global_k_A_R3 </ci>
              <ci> global_k_X_R3 </ci>
              <ci> global_k_B_R3 </ci>
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
              <ci> global_k_cat_R4 </ci>
              <ci> B_B </ci>
              <ci> B_C </ci>
              <ci> B_X </ci>
              <ci> global_k_B_R4 </ci>
              <ci> global_k_C_R4 </ci>
              <ci> global_k_X_R4 </ci>
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
              <ci> global_k_cat_R5 </ci>
              <ci> B_C </ci>
              <ci> B_X </ci>
              <ci> B_P </ci>
              <ci> global_k_C_R5 </ci>
              <ci> global_k_X_R5 </ci>
              <ci> global_k_P_R5 </ci>
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
              <ci> global_k_cat_R6 </ci>
              <ci> B_P </ci>
              <ci> Community_Pex </ci>
              <ci> global_k_P_R6 </ci>
              <ci> global_k_Pex_R6 </ci>
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
              <ci> global_k_cat_RTB </ci>
              <ci> B_B </ci>
              <ci> Community_Bex </ci>
              <ci> global_k_B_RTB </ci>
              <ci> global_k_Bex_RTB </ci>
              <ci> dG0_RTB </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_Sex_uptake" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="Single_Sex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> C_is_on_Sex_uptake </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Single_Sex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="C_R1" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Single_Sex" stoichiometry="1" constant="true"/>
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
              <ci> global_k_cat_R1 </ci>
              <ci> Single_Sex </ci>
              <ci> C_S </ci>
              <ci> global_k_Sex_R1 </ci>
              <ci> global_k_S_R1 </ci>
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
              <ci> global_k_cat_R2 </ci>
              <ci> C_S </ci>
              <ci> C_A </ci>
              <ci> C_X </ci>
              <ci> global_k_S_R2 </ci>
              <ci> global_k_A_R2 </ci>
              <ci> global_k_X_R2 </ci>
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
              <ci> global_k_cat_R3 </ci>
              <ci> C_A </ci>
              <ci> C_X </ci>
              <ci> C_B </ci>
              <ci> global_k_A_R3 </ci>
              <ci> global_k_X_R3 </ci>
              <ci> global_k_B_R3 </ci>
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
              <ci> global_k_cat_R4 </ci>
              <ci> C_B </ci>
              <ci> C_C </ci>
              <ci> C_X </ci>
              <ci> global_k_B_R4 </ci>
              <ci> global_k_C_R4 </ci>
              <ci> global_k_X_R4 </ci>
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
              <ci> global_k_cat_R5 </ci>
              <ci> C_C </ci>
              <ci> C_X </ci>
              <ci> C_P </ci>
              <ci> global_k_C_R5 </ci>
              <ci> global_k_X_R5 </ci>
              <ci> global_k_P_R5 </ci>
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
              <ci> global_k_cat_R6 </ci>
              <ci> C_P </ci>
              <ci> Single_Pex </ci>
              <ci> global_k_P_R6 </ci>
              <ci> global_k_Pex_R6 </ci>
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
              <ci> global_k_cat_RTB </ci>
              <ci> C_B </ci>
              <ci> C_Bex </ci>
              <ci> global_k_B_RTB </ci>
              <ci> global_k_Bex_RTB </ci>
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
