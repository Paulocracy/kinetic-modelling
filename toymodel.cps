<?xml version="1.0" encoding="UTF-8"?>
<sbml xmlns="http://www.sbml.org/sbml/level3/version1/core" level="3" version="1">
  <model metaid="all_pathways" id="all_pathways">
    <listOfFunctionDefinitions>
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
      <functionDefinition id="v_plus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <lambda>
            <bvar>
              <ci> is_on </ci>
            </bvar>
            <bvar>
              <ci> conc_E </ci>
            </bvar>
            <bvar>
              <ci> k_cat </ci>
            </bvar>
            <apply>
              <times/>
              <ci> is_on </ci>
              <ci> conc_E </ci>
              <ci> k_cat </ci>
            </apply>
          </lambda>
        </math>
      </functionDefinition>
      <functionDefinition id="_mul">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <lambda>
            <bvar>
              <ci> conc_1 </ci>
            </bvar>
            <bvar>
              <ci> conc_2 </ci>
            </bvar>
            <bvar>
              <ci> k_1 </ci>
            </bvar>
            <bvar>
              <ci> k_2 </ci>
            </bvar>
            <apply>
              <times/>
              <apply>
                <divide/>
                <ci> conc_1 </ci>
                <ci> k_1 </ci>
              </apply>
              <apply>
                <divide/>
                <ci> conc_2 </ci>
                <ci> k_2 </ci>
              </apply>
            </apply>
          </lambda>
        </math>
      </functionDefinition>
      <functionDefinition id="kappa">
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
              <ci> k_S1 </ci>
            </bvar>
            <bvar>
              <ci> k_S2 </ci>
            </bvar>
            <bvar>
              <ci> k_P1 </ci>
            </bvar>
            <bvar>
              <ci> k_P2 </ci>
            </bvar>
            <apply>
              <divide/>
              <apply>
                <times/>
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
              </apply>
              <apply>
                <plus/>
                <cn type="integer"> 1 </cn>
                <apply>
                  <times/>
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
                </apply>
                <apply>
                  <times/>
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
            </apply>
          </lambda>
        </math>
      </functionDefinition>
      <functionDefinition id="gamma_">
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
              <minus/>
              <cn type="integer"> 1 </cn>
              <apply>
                <exp/>
                <apply>
                  <divide/>
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
                  <apply>
                    <times/>
                    <ci> R </ci>
                    <ci> T </ci>
                  </apply>
                </apply>
              </apply>
            </apply>
          </lambda>
        </math>
      </functionDefinition>
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
                  <times/>
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
                  <times/>
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
      <species id="CS1_S" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="CS1_A" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="CS1_B" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="CS1_C" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="CS1_X" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="CS1_P" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="CS1_M" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="Community_Pex" compartment="default_compartment" initialConcentration="2" hasOnlySubstanceUnits="false" boundaryCondition="true" constant="false"/>
      <species id="Community_Bex" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="CS2_S" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="CS2_A" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="CS2_B" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="CS2_C" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="CS2_X" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="CS2_P" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="CS2_M" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="Single_Sex" compartment="default_compartment" initialConcentration="4" hasOnlySubstanceUnits="false" boundaryCondition="true" constant="false"/>
      <species id="SS1_S" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="SS1_A" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="SS1_B" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="SS1_C" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="SS1_X" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="false" boundaryCondition="false" constant="false"/>
      <species id="SS1_P" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="SS1_M" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
      <species id="Single_Pex" compartment="default_compartment" initialConcentration="2" hasOnlySubstanceUnits="false" boundaryCondition="true" constant="false"/>
      <species id="SS1_Bex" compartment="default_compartment" initialConcentration="1e-06" hasOnlySubstanceUnits="true" boundaryCondition="false" constant="false"/>
    </listOfSpecies>
    <listOfParameters>
      <parameter id="R" value="0.008315" constant="true"/>
      <parameter id="T" value="298" constant="true"/>
      <parameter id="CS1_is_on_R1" value="1" constant="true"/>
      <parameter id="E_conc_R1" value="1" constant="true"/>
      <parameter id="global_k_cat_R1" value="6" constant="true"/>
      <parameter id="global_k_Sex_R1" value="0.18" constant="true"/>
      <parameter id="global_k_S_R1" value="2.5" constant="true"/>
      <parameter id="dG0_R1" value="0" constant="true"/>
      <parameter id="CS1_is_on_R2" value="1" constant="true"/>
      <parameter id="E_conc_R2" value="1" constant="true"/>
      <parameter id="global_k_cat_R2" value="5" constant="true"/>
      <parameter id="global_k_S_R2" value="0.4" constant="true"/>
      <parameter id="global_k_X_R2" value="2.1" constant="true"/>
      <parameter id="global_k_A_R2" value="3.1" constant="true"/>
      <parameter id="dG0_R2" value="4" constant="true"/>
      <parameter id="CS1_is_on_R3" value="1" constant="true"/>
      <parameter id="E_conc_R3" value="1" constant="true"/>
      <parameter id="global_k_cat_R3" value="8" constant="true"/>
      <parameter id="global_k_A_R3" value="4.6" constant="true"/>
      <parameter id="global_k_M_R3" value="0.4" constant="true"/>
      <parameter id="global_k_B_R3" value="2.5" constant="true"/>
      <parameter id="dG0_R3" value="-5" constant="true"/>
      <parameter id="CS1_is_on_R4" value="0" constant="true"/>
      <parameter id="E_conc_R4" value="1" constant="true"/>
      <parameter id="global_k_cat_R4" value="9" constant="true"/>
      <parameter id="global_k_B_R4" value="0.5" constant="true"/>
      <parameter id="global_k_C_R4" value="0.9" constant="true"/>
      <parameter id="dG0_R4" value="-5" constant="true"/>
      <parameter id="CS1_is_on_R5" value="0" constant="true"/>
      <parameter id="E_conc_R5" value="1" constant="true"/>
      <parameter id="global_k_cat_R5" value="10" constant="true"/>
      <parameter id="global_k_C_R5" value="1.5" constant="true"/>
      <parameter id="global_k_X_R5" value="2.6" constant="true"/>
      <parameter id="global_k_P_R5" value="6.8" constant="true"/>
      <parameter id="dG0_R5" value="4" constant="true"/>
      <parameter id="CS1_is_on_R6" value="0" constant="true"/>
      <parameter id="E_conSS1_R6" value="1" constant="true"/>
      <parameter id="global_k_cat_R6" value="24" constant="true"/>
      <parameter id="global_k_P_R6" value="0.01" constant="true"/>
      <parameter id="global_k_Pex_R6" value="14" constant="true"/>
      <parameter id="dG0_R6" value="0" constant="true"/>
      <parameter id="CS1_is_on_RTB" value="1" constant="true"/>
      <parameter id="E_conc_RTB" value="1" constant="true"/>
      <parameter id="global_k_cat_RTB" value="1000000" constant="true"/>
      <parameter id="global_k_B_RTB" value="2" constant="true"/>
      <parameter id="global_k_Bex_RTB" value="2" constant="true"/>
      <parameter id="dG0_RTB" value="0" constant="true"/>
      <parameter id="CS1_is_on_Sex_uptake" value="1" constant="true"/>
      <parameter id="CS1_is_on_Pex_secretion" value="0" constant="true"/>
      <parameter id="CS1_R1_vplus" constant="false"/>
      <parameter id="CS1_R1_kappa" constant="false"/>
      <parameter id="CS1_R1_gamma" constant="false"/>
      <parameter id="CS1_R2_vplus" constant="false"/>
      <parameter id="CS1_R2_kappa" constant="false"/>
      <parameter id="CS1_R2_gamma" constant="false"/>
      <parameter id="CS1_R3_vplus" constant="false"/>
      <parameter id="CS1_R3_kappa" constant="false"/>
      <parameter id="CS1_R3_gamma" constant="false"/>
      <parameter id="CS1_R4_vplus" constant="false"/>
      <parameter id="CS1_R4_kappa" constant="false"/>
      <parameter id="CS1_R4_gamma" constant="false"/>
      <parameter id="CS1_R5_vplus" constant="false"/>
      <parameter id="CS1_R5_kappa" constant="false"/>
      <parameter id="CS1_R5_gamma" constant="false"/>
      <parameter id="CS1_R6_vplus" constant="false"/>
      <parameter id="CS1_R6_kappa" constant="false"/>
      <parameter id="CS1_R6_gamma" constant="false"/>
      <parameter id="CS1_RTB_vplus" constant="false"/>
      <parameter id="CS1_RTB_kappa" constant="false"/>
      <parameter id="CS1_RTB_gamma" constant="false"/>
      <parameter id="global_Ix_CS1" value="1" constant="true"/>
      <parameter id="global_k_X_Xout_CS1" value="1" constant="true"/>
      <parameter id="global_Im" value="1" constant="true"/>
      <parameter id="global_k_M_Mout" value="1" constant="true"/>
      <parameter id="CS1_dG_R1" constant="false"/>
      <parameter id="CS1_dG_R2" constant="false"/>
      <parameter id="CS1_dG_R3" constant="false"/>
      <parameter id="CS1_dG_R4" value="1" constant="false"/>
      <parameter id="CS1_dG_R5" value="1" constant="false"/>
      <parameter id="CS1_dG_R6" value="1" constant="false"/>
      <parameter id="CS1_dG_RTB" constant="false"/>
      <parameter id="CS1_mdf_R1" constant="false"/>
      <parameter id="CS1_mdf_R2" constant="false"/>
      <parameter id="CS1_mdf_R3" constant="false"/>
      <parameter id="CS1_mdf_R4" constant="false"/>
      <parameter id="CS1_mdf_R5" constant="false"/>
      <parameter id="CS1_mdf_R6" constant="false"/>
      <parameter id="CS1_mdf_RTB" constant="false"/>
      <parameter id="CS2_is_on_R1" value="0" constant="true"/>
      <parameter id="CS2_is_on_R2" value="0" constant="true"/>
      <parameter id="CS2_is_on_R3" value="0" constant="true"/>
      <parameter id="CS2_is_on_R4" value="1" constant="true"/>
      <parameter id="CS2_is_on_R5" value="1" constant="true"/>
      <parameter id="CS2_is_on_R6" value="1" constant="true"/>
      <parameter id="CS2_is_on_RTB" value="1" constant="true"/>
      <parameter id="CS2_is_on_Sex_uptake" value="0" constant="true"/>
      <parameter id="CS2_is_on_Pex_secretion" value="1" constant="true"/>
      <parameter id="CS2_R1_vplus" constant="false"/>
      <parameter id="CS2_R1_kappa" constant="false"/>
      <parameter id="CS2_R1_gamma" constant="false"/>
      <parameter id="CS2_R2_vplus" constant="false"/>
      <parameter id="CS2_R2_kappa" constant="false"/>
      <parameter id="CS2_R2_gamma" constant="false"/>
      <parameter id="CS2_R3_vplus" constant="false"/>
      <parameter id="CS2_R3_kappa" constant="false"/>
      <parameter id="CS2_R3_gamma" constant="false"/>
      <parameter id="CS2_R4_vplus" constant="false"/>
      <parameter id="CS2_R4_kappa" constant="false"/>
      <parameter id="CS2_R4_gamma" constant="false"/>
      <parameter id="CS2_R5_vplus" constant="false"/>
      <parameter id="CS2_R5_kappa" constant="false"/>
      <parameter id="CS2_R5_gamma" constant="false"/>
      <parameter id="CS2_R6_vplus" constant="false"/>
      <parameter id="CS2_R6_kappa" constant="false"/>
      <parameter id="CS2_R6_gamma" constant="false"/>
      <parameter id="CS2_RTB_vplus" constant="false"/>
      <parameter id="CS2_RTB_kappa" constant="false"/>
      <parameter id="CS2_RTB_gamma" constant="false"/>
      <parameter id="global_Ix_CS2" value="1" constant="true"/>
      <parameter id="global_k_X_Xout_CS2" value="1" constant="true"/>
      <parameter id="CS2_dG_R1" value="1" constant="false"/>
      <parameter id="CS2_dG_R2" value="1" constant="false"/>
      <parameter id="CS2_dG_R3" value="1" constant="false"/>
      <parameter id="CS2_dG_R4" constant="false"/>
      <parameter id="CS2_dG_R5" constant="false"/>
      <parameter id="CS2_dG_R6" constant="false"/>
      <parameter id="CS2_dG_RTB" constant="false"/>
      <parameter id="CS2_mdf_R1" constant="false"/>
      <parameter id="CS2_mdf_R2" constant="false"/>
      <parameter id="CS2_mdf_R3" constant="false"/>
      <parameter id="CS2_mdf_R4" constant="false"/>
      <parameter id="CS2_mdf_R5" constant="false"/>
      <parameter id="CS2_mdf_R6" constant="false"/>
      <parameter id="CS2_mdf_RTB" constant="false"/>
      <parameter id="SS1_is_on_R1" value="1" constant="true"/>
      <parameter id="SS1_is_on_R2" value="1" constant="true"/>
      <parameter id="SS1_is_on_R3" value="1" constant="true"/>
      <parameter id="SS1_is_on_R4" value="1" constant="true"/>
      <parameter id="SS1_is_on_R5" value="1" constant="true"/>
      <parameter id="SS1_is_on_R6" value="1" constant="true"/>
      <parameter id="SS1_is_on_RTB" value="1" constant="true"/>
      <parameter id="SS1_is_on_Sex_uptake" value="1" constant="true"/>
      <parameter id="SS1_is_on_Pex_secretion" value="1" constant="true"/>
      <parameter id="SS1_R1_vplus" constant="false"/>
      <parameter id="SS1_R1_kappa" constant="false"/>
      <parameter id="SS1_R1_gamma" constant="false"/>
      <parameter id="SS1_R2_vplus" constant="false"/>
      <parameter id="SS1_R2_kappa" constant="false"/>
      <parameter id="SS1_R2_gamma" constant="false"/>
      <parameter id="SS1_R3_vplus" constant="false"/>
      <parameter id="SS1_R3_kappa" constant="false"/>
      <parameter id="SS1_R3_gamma" constant="false"/>
      <parameter id="SS1_R4_vplus" constant="false"/>
      <parameter id="SS1_R4_kappa" constant="false"/>
      <parameter id="SS1_R4_gamma" constant="false"/>
      <parameter id="SS1_R5_vplus" constant="false"/>
      <parameter id="SS1_R5_kappa" constant="false"/>
      <parameter id="SS1_R5_gamma" constant="false"/>
      <parameter id="SS1_R6_vplus" constant="false"/>
      <parameter id="SS1_R6_kappa" constant="false"/>
      <parameter id="SS1_R6_gamma" constant="false"/>
      <parameter id="SS1_RTB_vplus" constant="false"/>
      <parameter id="SS1_RTB_kappa" constant="false"/>
      <parameter id="SS1_RTB_gamma" constant="false"/>
      <parameter id="global_Ix_SS1" value="1" constant="true"/>
      <parameter id="global_k_X_Xout_SS1" value="1" constant="true"/>
      <parameter id="SS1_dG_R1" constant="false"/>
      <parameter id="SS1_dG_R2" constant="false"/>
      <parameter id="SS1_dG_R3" constant="false"/>
      <parameter id="SS1_dG_R4" constant="false"/>
      <parameter id="SS1_dG_R5" constant="false"/>
      <parameter id="SS1_dG_R6" constant="false"/>
      <parameter id="SS1_dG_RTB" constant="false"/>
      <parameter id="SS1_mdf_R1" constant="false"/>
      <parameter id="SS1_mdf_R2" constant="false"/>
      <parameter id="SS1_mdf_R3" constant="false"/>
      <parameter id="SS1_mdf_R4" constant="false"/>
      <parameter id="SS1_mdf_R5" constant="false"/>
      <parameter id="SS1_mdf_R6" constant="false"/>
      <parameter id="SS1_mdf_RTB" constant="false"/>
      <parameter id="CS1_to_SS1_X_ratio" constant="false"/>
      <parameter id="CS2_to_SS1_X_ratio" constant="false"/>
      <parameter id="CS2_to_CS1_X_ratio" constant="false"/>
      <parameter id="CS1_to_CS2_X_ratio" constant="false"/>
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
      <parameter id="is_CS1_X_gt_CS2_X" constant="false"/>
      <parameter id="is_CS2_X_gt_CS1_X" constant="false"/>
      <parameter id="is_community_advantageous" constant="false"/>
      <parameter id="is_community_advantageous_with_CS2_X_gt_CS1_X" constant="false"/>
      <parameter id="is_community_advantageous_with_CS1_X_gt_CS2_X" constant="false"/>
      <parameter id="community_advantage_with_CS2_X_gt_CS1_X" constant="false"/>
      <parameter id="community_advantage_with_CS1_X_gt_CS2_X" constant="false"/>
    </listOfParameters>
    <listOfRules>
      <assignmentRule variable="CS1_R1_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS1_is_on_R1 </ci>
            <ci> E_conc_R1 </ci>
            <ci> global_k_cat_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R1_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> Community_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_Sex_R1 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_S_R1 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R1_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> Community_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R2_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS1_is_on_R2 </ci>
            <ci> E_conc_R2 </ci>
            <ci> global_k_cat_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R2_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS1_A </ci>
            <ci> CS1_X </ci>
            <ci> global_k_S_R2 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_A_R2 </ci>
            <ci> global_k_X_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R2_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS1_A </ci>
            <ci> CS1_X </ci>
            <ci> dG0_R2 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R3_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS1_is_on_R3 </ci>
            <ci> E_conc_R3 </ci>
            <ci> global_k_cat_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R3_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS1_A </ci>
            <ci> CS1_M </ci>
            <ci> CS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_A_R3 </ci>
            <ci> global_k_M_R3 </ci>
            <ci> global_k_B_R3 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R3_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS1_A </ci>
            <ci> CS1_M </ci>
            <ci> CS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R3 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R4_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS1_is_on_R4 </ci>
            <ci> E_conc_R4 </ci>
            <ci> global_k_cat_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R4_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS1_C </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_B_R4 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_C_R4 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R4_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS1_C </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R4 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R5_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS1_is_on_R5 </ci>
            <ci> E_conc_R5 </ci>
            <ci> global_k_cat_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R5_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS1_C </ci>
            <ci> CS1_X </ci>
            <ci> CS1_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_C_R5 </ci>
            <ci> global_k_X_R5 </ci>
            <ci> global_k_P_R5 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R5_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS1_C </ci>
            <ci> CS1_X </ci>
            <ci> CS1_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R5 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R6_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS1_is_on_R6 </ci>
            <ci> E_conSS1_R6 </ci>
            <ci> global_k_cat_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R6_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS1_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_P_R6 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_Pex_R6 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_R6_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS1_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R6 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_RTB_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS1_is_on_RTB </ci>
            <ci> E_conc_RTB </ci>
            <ci> global_k_cat_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_RTB_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_B_RTB </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_Bex_RTB </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_RTB_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_RTB </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_dG_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> Community_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> CS1_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_dG_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> CS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS1_A </ci>
            <ci> CS1_X </ci>
            <ci> dG0_R2 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> CS1_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_dG_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> CS1_A </ci>
            <ci> CS1_M </ci>
            <ci> CS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R3 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> CS1_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_dG_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <cn type="integer"> 1 </cn>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_dG_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <cn type="integer"> 1 </cn>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_dG_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <cn type="integer"> 1 </cn>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_dG_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> CS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_RTB </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> CS1_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_mdf_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS1_dG_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_mdf_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS1_dG_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_mdf_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS1_dG_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_mdf_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS1_dG_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_mdf_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS1_dG_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_mdf_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS1_dG_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_mdf_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS1_dG_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R1_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS2_is_on_R1 </ci>
            <ci> E_conc_R1 </ci>
            <ci> global_k_cat_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R1_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> Community_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS2_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_Sex_R1 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_S_R1 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R1_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> Community_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS2_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R2_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS2_is_on_R2 </ci>
            <ci> E_conc_R2 </ci>
            <ci> global_k_cat_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R2_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS2_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS2_A </ci>
            <ci> CS2_X </ci>
            <ci> global_k_S_R2 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_A_R2 </ci>
            <ci> global_k_X_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R2_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS2_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS2_A </ci>
            <ci> CS2_X </ci>
            <ci> dG0_R2 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R3_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS2_is_on_R3 </ci>
            <ci> E_conc_R3 </ci>
            <ci> global_k_cat_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R3_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS2_A </ci>
            <ci> CS2_M </ci>
            <ci> CS2_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_A_R3 </ci>
            <ci> global_k_M_R3 </ci>
            <ci> global_k_B_R3 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R3_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS2_A </ci>
            <ci> CS2_M </ci>
            <ci> CS2_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R3 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R4_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS2_is_on_R4 </ci>
            <ci> E_conc_R4 </ci>
            <ci> global_k_cat_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R4_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS2_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS2_C </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_B_R4 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_C_R4 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R4_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS2_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS2_C </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R4 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R5_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS2_is_on_R5 </ci>
            <ci> E_conc_R5 </ci>
            <ci> global_k_cat_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R5_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS2_C </ci>
            <ci> CS2_X </ci>
            <ci> CS2_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_C_R5 </ci>
            <ci> global_k_X_R5 </ci>
            <ci> global_k_P_R5 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R5_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS2_C </ci>
            <ci> CS2_X </ci>
            <ci> CS2_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R5 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R6_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS2_is_on_R6 </ci>
            <ci> E_conSS1_R6 </ci>
            <ci> global_k_cat_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R6_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS2_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_P_R6 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_Pex_R6 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_R6_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS2_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R6 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_RTB_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> CS2_is_on_RTB </ci>
            <ci> E_conc_RTB </ci>
            <ci> global_k_cat_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_RTB_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> CS2_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_B_RTB </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_Bex_RTB </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_RTB_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> CS2_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_RTB </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_dG_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <cn type="integer"> 1 </cn>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_dG_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <cn type="integer"> 1 </cn>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_dG_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <cn type="integer"> 1 </cn>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_dG_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> CS2_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> CS2_C </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R4 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> CS2_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_dG_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> CS2_C </ci>
            <ci> CS2_X </ci>
            <ci> CS2_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R5 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> CS2_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_dG_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> CS2_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R6 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> CS2_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_dG_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> CS2_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> Community_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_RTB </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> CS2_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_mdf_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS2_dG_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_mdf_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS2_dG_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_mdf_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS2_dG_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_mdf_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS2_dG_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_mdf_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS2_dG_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_mdf_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS2_dG_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_mdf_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS2_dG_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R1_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> SS1_is_on_R1 </ci>
            <ci> E_conc_R1 </ci>
            <ci> global_k_cat_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R1_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> Single_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_Sex_R1 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_S_R1 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R1_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> Single_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R2_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> SS1_is_on_R2 </ci>
            <ci> E_conc_R2 </ci>
            <ci> global_k_cat_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R2_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> SS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_A </ci>
            <ci> SS1_X </ci>
            <ci> global_k_S_R2 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_A_R2 </ci>
            <ci> global_k_X_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R2_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> SS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_A </ci>
            <ci> SS1_X </ci>
            <ci> dG0_R2 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R3_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> SS1_is_on_R3 </ci>
            <ci> E_conc_R3 </ci>
            <ci> global_k_cat_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R3_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> SS1_A </ci>
            <ci> SS1_M </ci>
            <ci> SS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_A_R3 </ci>
            <ci> global_k_M_R3 </ci>
            <ci> global_k_B_R3 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R3_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> SS1_A </ci>
            <ci> SS1_M </ci>
            <ci> SS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R3 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R4_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> SS1_is_on_R4 </ci>
            <ci> E_conc_R4 </ci>
            <ci> global_k_cat_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R4_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> SS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_C </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_B_R4 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_C_R4 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R4_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> SS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_C </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R4 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R5_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> SS1_is_on_R5 </ci>
            <ci> E_conc_R5 </ci>
            <ci> global_k_cat_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R5_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> SS1_C </ci>
            <ci> SS1_X </ci>
            <ci> SS1_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_C_R5 </ci>
            <ci> global_k_X_R5 </ci>
            <ci> global_k_P_R5 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R5_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> SS1_C </ci>
            <ci> SS1_X </ci>
            <ci> SS1_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R5 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R6_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> SS1_is_on_R6 </ci>
            <ci> E_conSS1_R6 </ci>
            <ci> global_k_cat_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R6_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> SS1_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Single_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_P_R6 </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_Pex_R6 </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_R6_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> SS1_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Single_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R6 </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_RTB_vplus">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> v_plus </ci>
            <ci> SS1_is_on_RTB </ci>
            <ci> E_conc_RTB </ci>
            <ci> global_k_cat_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_RTB_kappa">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> kappa </ci>
            <ci> SS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_B_RTB </ci>
            <cn type="integer"> 1 </cn>
            <ci> global_k_Bex_RTB </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_RTB_gamma">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> gamma_ </ci>
            <ci> SS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_RTB </ci>
            <ci> R </ci>
            <ci> T </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_dG_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> Single_Sex </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R1 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> SS1_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_dG_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> SS1_S </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_A </ci>
            <ci> SS1_X </ci>
            <ci> dG0_R2 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> SS1_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_dG_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> SS1_A </ci>
            <ci> SS1_M </ci>
            <ci> SS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R3 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> SS1_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_dG_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> SS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_C </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R4 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> SS1_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_dG_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> SS1_C </ci>
            <ci> SS1_X </ci>
            <ci> SS1_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R5 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> SS1_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_dG_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> SS1_P </ci>
            <cn type="integer"> 1 </cn>
            <ci> Single_Pex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_R6 </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> SS1_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_dG_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <ci> dG </ci>
            <ci> SS1_B </ci>
            <cn type="integer"> 1 </cn>
            <ci> SS1_Bex </ci>
            <cn type="integer"> 1 </cn>
            <ci> dG0_RTB </ci>
            <ci> R </ci>
            <ci> T </ci>
            <ci> SS1_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_mdf_R1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> SS1_dG_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_mdf_R2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> SS1_dG_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_mdf_R3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> SS1_dG_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_mdf_R4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> SS1_dG_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_mdf_R5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> SS1_dG_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_mdf_R6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> SS1_dG_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="SS1_mdf_RTB">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> SS1_dG_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_to_SS1_X_ratio">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> CS1_X </ci>
            <ci> SS1_X </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_to_SS1_X_ratio">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> CS2_X </ci>
            <ci> SS1_X </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS2_to_CS1_X_ratio">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> CS2_X </ci>
            <ci> CS1_X </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="CS1_to_CS2_X_ratio">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> CS1_X </ci>
            <ci> CS2_X </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="absolute_community_flux_advantage">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <minus/>
            <ci> CS2_R6 </ci>
            <ci> SS1_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="relative_community_flux_advantage">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <divide/>
            <ci> CS2_R6 </ci>
            <ci> SS1_R6 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_flux">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <ci> CS2_R6 </ci>
        </math>
      </assignmentRule>
      <assignmentRule variable="single_flux">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <ci> SS1_R6 </ci>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R1 </ci>
            <ci> CS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R1 </ci>
            <ci> CS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R1 </ci>
            <ci> CS1_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R1 </ci>
            <ci> CS2_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R1 </ci>
            <ci> CS2_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R1 </ci>
            <ci> CS2_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R1_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R1 </ci>
            <ci> CS2_mdf_R6 </ci>
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
            <ci> CS1_mdf_R2 </ci>
            <ci> CS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R2 </ci>
            <ci> CS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R2 </ci>
            <ci> CS1_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R2 </ci>
            <ci> CS2_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R2 </ci>
            <ci> CS2_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R2 </ci>
            <ci> CS2_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R2_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R2 </ci>
            <ci> CS2_mdf_R6 </ci>
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
            <ci> CS1_mdf_R3 </ci>
            <ci> CS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R3 </ci>
            <ci> CS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R3 </ci>
            <ci> CS1_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R3 </ci>
            <ci> CS2_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R3 </ci>
            <ci> CS2_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R3 </ci>
            <ci> CS2_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R3_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_R3 </ci>
            <ci> CS2_mdf_R6 </ci>
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
            <ci> CS1_mdf_RTB </ci>
            <ci> CS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_RTB </ci>
            <ci> CS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_RTB </ci>
            <ci> CS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_RTB </ci>
            <ci> CS2_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_RTB </ci>
            <ci> CS2_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_RTB </ci>
            <ci> CS2_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBA_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS1_mdf_RTB </ci>
            <ci> CS2_mdf_R6 </ci>
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
            <ci> CS2_mdf_RTB </ci>
            <ci> CS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_RTB </ci>
            <ci> CS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_RTB </ci>
            <ci> CS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_RTB </ci>
            <ci> CS1_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_RTB </ci>
            <ci> CS2_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_RTB </ci>
            <ci> CS2_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_RTBB_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_RTB </ci>
            <ci> CS2_mdf_R6 </ci>
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
            <ci> CS2_mdf_R4 </ci>
            <ci> CS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R4 </ci>
            <ci> CS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R4 </ci>
            <ci> CS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R4 </ci>
            <ci> CS1_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R4 </ci>
            <ci> CS2_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R4 </ci>
            <ci> CS2_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R4_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R4 </ci>
            <ci> CS2_mdf_R6 </ci>
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
            <ci> CS2_mdf_R5 </ci>
            <ci> CS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R5 </ci>
            <ci> CS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R5 </ci>
            <ci> CS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R5 </ci>
            <ci> CS1_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R5 </ci>
            <ci> CS2_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R5 </ci>
            <ci> CS2_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R5_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R5 </ci>
            <ci> CS2_mdf_R6 </ci>
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
            <ci> CS2_mdf_R6 </ci>
            <ci> CS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R6 </ci>
            <ci> CS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R6 </ci>
            <ci> CS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R6 </ci>
            <ci> CS1_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R6 </ci>
            <ci> CS2_mdf_RTB </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_6">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R6 </ci>
            <ci> CS2_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="c_mdf_R6_lt_7">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> CS2_mdf_R6 </ci>
            <ci> CS2_mdf_R5 </ci>
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
              <ci> CS1_mdf_R1 </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_R2_mmdf </ci>
              <ci> CS1_mdf_R2 </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_R3_mmdf </ci>
              <ci> CS1_mdf_R3 </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_RTBA_mmdf </ci>
              <ci> CS1_mdf_RTB </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_RTBB_mmdf </ci>
              <ci> CS2_mdf_RTB </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_R4_mmdf </ci>
              <ci> CS2_mdf_R4 </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_R5_mmdf </ci>
              <ci> CS2_mdf_R5 </ci>
            </apply>
            <apply>
              <times/>
              <ci> c_is_R6_mmdf </ci>
              <ci> CS2_mdf_R6 </ci>
            </apply>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R1_lt_1">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R1 </ci>
            <ci> SS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R1_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R1 </ci>
            <ci> SS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R1_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R1 </ci>
            <ci> SS1_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R1_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R1 </ci>
            <ci> SS1_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R1_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R1 </ci>
            <ci> SS1_mdf_R6 </ci>
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
            <ci> SS1_mdf_R2 </ci>
            <ci> SS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R2_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R2 </ci>
            <ci> SS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R2_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R2 </ci>
            <ci> SS1_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R2_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R2 </ci>
            <ci> SS1_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R2_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R2 </ci>
            <ci> SS1_mdf_R6 </ci>
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
            <ci> SS1_mdf_R3 </ci>
            <ci> SS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R3_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R3 </ci>
            <ci> SS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R3_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R3 </ci>
            <ci> SS1_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R3_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R3 </ci>
            <ci> SS1_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R3_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R3 </ci>
            <ci> SS1_mdf_R6 </ci>
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
            <ci> SS1_mdf_R4 </ci>
            <ci> SS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R4_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R4 </ci>
            <ci> SS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R4_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R4 </ci>
            <ci> SS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R4_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R4 </ci>
            <ci> SS1_mdf_R5 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R4_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R4 </ci>
            <ci> SS1_mdf_R6 </ci>
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
            <ci> SS1_mdf_R5 </ci>
            <ci> SS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R5_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R5 </ci>
            <ci> SS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R5_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R5 </ci>
            <ci> SS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R5_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R5 </ci>
            <ci> SS1_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R5_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R5 </ci>
            <ci> SS1_mdf_R6 </ci>
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
            <ci> SS1_mdf_R6 </ci>
            <ci> SS1_mdf_R1 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R6_lt_2">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R6 </ci>
            <ci> SS1_mdf_R2 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R6_lt_3">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R6 </ci>
            <ci> SS1_mdf_R3 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R6_lt_4">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R6 </ci>
            <ci> SS1_mdf_R4 </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="s_mdf_R6_lt_5">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <lt/>
            <ci> SS1_mdf_R6 </ci>
            <ci> SS1_mdf_R5 </ci>
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
              <ci> SS1_mdf_R1 </ci>
            </apply>
            <apply>
              <times/>
              <ci> s_is_R2_mmdf </ci>
              <ci> SS1_mdf_R2 </ci>
            </apply>
            <apply>
              <times/>
              <ci> s_is_R3_mmdf </ci>
              <ci> SS1_mdf_R3 </ci>
            </apply>
            <apply>
              <times/>
              <ci> s_is_R4_mmdf </ci>
              <ci> SS1_mdf_R4 </ci>
            </apply>
            <apply>
              <times/>
              <ci> s_is_R5_mmdf </ci>
              <ci> SS1_mdf_R5 </ci>
            </apply>
            <apply>
              <times/>
              <ci> s_is_R6_mmdf </ci>
              <ci> SS1_mdf_R6 </ci>
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
      <assignmentRule variable="is_CS1_X_gt_CS2_X">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <gt/>
            <ci> CS1_to_CS2_X_ratio </ci>
            <cn type="integer"> 1 </cn>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_CS2_X_gt_CS1_X">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <gt/>
            <ci> CS2_to_CS1_X_ratio </ci>
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
      <assignmentRule variable="is_community_advantageous_with_CS2_X_gt_CS1_X">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> is_CS2_X_gt_CS1_X </ci>
            <ci> is_community_advantageous </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="is_community_advantageous_with_CS1_X_gt_CS2_X">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> is_CS1_X_gt_CS2_X </ci>
            <ci> is_community_advantageous </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_advantage_with_CS2_X_gt_CS1_X">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> relative_community_flux_advantage </ci>
            <ci> is_community_advantageous_with_CS2_X_gt_CS1_X </ci>
          </apply>
        </math>
      </assignmentRule>
      <assignmentRule variable="community_advantage_with_CS1_X_gt_CS2_X">
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <apply>
            <times/>
            <ci> relative_community_flux_advantage </ci>
            <ci> is_community_advantageous_with_CS1_X_gt_CS2_X </ci>
          </apply>
        </math>
      </assignmentRule>
    </listOfRules>
    <listOfReactions>
      <reaction id="CS1_Sex_uptake" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="Community_Sex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> CS1_is_on_Sex_uptake </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Community_Sex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS1_R1" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Community_Sex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="CS1_S" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> CS1_is_on_R1 </ci>
              <ci> E_conc_R1 </ci>
              <ci> global_k_cat_R1 </ci>
              <ci> Community_Sex </ci>
              <ci> CS1_S </ci>
              <ci> global_k_Sex_R1 </ci>
              <ci> global_k_S_R1 </ci>
              <ci> dG0_R1 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS1_R2" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS1_S" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="CS1_A" stoichiometry="1" constant="true"/>
          <speciesReference species="CS1_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_two_p </ci>
              <ci> CS1_is_on_R2 </ci>
              <ci> E_conc_R2 </ci>
              <ci> global_k_cat_R2 </ci>
              <ci> CS1_S </ci>
              <ci> CS1_A </ci>
              <ci> CS1_X </ci>
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
      <reaction id="CS1_R3" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS1_A" stoichiometry="1" constant="true"/>
          <speciesReference species="CS1_M" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="CS1_B" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_two_s_one_p </ci>
              <ci> CS1_is_on_R3 </ci>
              <ci> E_conc_R3 </ci>
              <ci> global_k_cat_R3 </ci>
              <ci> CS1_A </ci>
              <ci> CS1_M </ci>
              <ci> CS1_B </ci>
              <ci> global_k_A_R3 </ci>
              <ci> global_k_M_R3 </ci>
              <ci> global_k_B_R3 </ci>
              <ci> dG0_R3 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS1_Pex_secretion" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Community_Pex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> CS1_is_on_Pex_secretion </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Community_Pex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS1_RTB" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS1_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="Community_Bex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> CS1_is_on_RTB </ci>
              <ci> E_conc_RTB </ci>
              <ci> global_k_cat_RTB </ci>
              <ci> CS1_B </ci>
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
      <reaction id="CS1_Xin" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="CS1_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <ci> global_Ix_CS1 </ci>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS1_Xout" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS1_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> global_k_X_Xout_CS1 </ci>
              <ci> CS1_X </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS1_Min_" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="CS1_M" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <ci> global_Im </ci>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS1_Mout" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS1_M" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> global_k_M_Mout </ci>
              <ci> CS1_M </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS2_Sex_uptake" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="Community_Sex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> CS2_is_on_Sex_uptake </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Community_Sex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS2_R4" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS2_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="CS2_C" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> CS2_is_on_R4 </ci>
              <ci> E_conc_R4 </ci>
              <ci> global_k_cat_R4 </ci>
              <ci> CS2_B </ci>
              <ci> CS2_C </ci>
              <ci> global_k_B_R4 </ci>
              <ci> global_k_C_R4 </ci>
              <ci> dG0_R4 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS2_R5" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS2_C" stoichiometry="1" constant="true"/>
          <speciesReference species="CS2_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="CS2_P" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_two_s_one_p </ci>
              <ci> CS2_is_on_R5 </ci>
              <ci> E_conc_R5 </ci>
              <ci> global_k_cat_R5 </ci>
              <ci> CS2_C </ci>
              <ci> CS2_X </ci>
              <ci> CS2_P </ci>
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
      <reaction id="CS2_R6" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS2_P" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="Community_Pex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> CS2_is_on_R6 </ci>
              <ci> E_conSS1_R6 </ci>
              <ci> global_k_cat_R6 </ci>
              <ci> CS2_P </ci>
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
      <reaction id="CS2_Pex_secretion" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Community_Pex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> CS2_is_on_Pex_secretion </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Community_Pex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS2_RTB" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS2_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="Community_Bex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> CS2_is_on_RTB </ci>
              <ci> E_conc_RTB </ci>
              <ci> global_k_cat_RTB </ci>
              <ci> CS2_B </ci>
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
      <reaction id="CS2_Xin" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="CS2_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <ci> global_Ix_CS2 </ci>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS2_Xout" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS2_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> global_k_X_Xout_CS2 </ci>
              <ci> CS2_X </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS2_Min_" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="CS2_M" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <ci> global_Im </ci>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="CS2_Mout" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="CS2_M" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> global_k_M_Mout </ci>
              <ci> CS2_M </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="SS1_Sex_uptake" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="Single_Sex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> SS1_is_on_Sex_uptake </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Single_Sex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="SS1_R1" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Single_Sex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="SS1_S" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> SS1_is_on_R1 </ci>
              <ci> E_conc_R1 </ci>
              <ci> global_k_cat_R1 </ci>
              <ci> Single_Sex </ci>
              <ci> SS1_S </ci>
              <ci> global_k_Sex_R1 </ci>
              <ci> global_k_S_R1 </ci>
              <ci> dG0_R1 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="SS1_R2" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="SS1_S" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="SS1_A" stoichiometry="1" constant="true"/>
          <speciesReference species="SS1_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_two_p </ci>
              <ci> SS1_is_on_R2 </ci>
              <ci> E_conc_R2 </ci>
              <ci> global_k_cat_R2 </ci>
              <ci> SS1_S </ci>
              <ci> SS1_A </ci>
              <ci> SS1_X </ci>
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
      <reaction id="SS1_R3" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="SS1_A" stoichiometry="1" constant="true"/>
          <speciesReference species="SS1_M" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="SS1_B" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_two_s_one_p </ci>
              <ci> SS1_is_on_R3 </ci>
              <ci> E_conc_R3 </ci>
              <ci> global_k_cat_R3 </ci>
              <ci> SS1_A </ci>
              <ci> SS1_M </ci>
              <ci> SS1_B </ci>
              <ci> global_k_A_R3 </ci>
              <ci> global_k_M_R3 </ci>
              <ci> global_k_B_R3 </ci>
              <ci> dG0_R3 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="SS1_R4" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="SS1_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="SS1_C" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> SS1_is_on_R4 </ci>
              <ci> E_conc_R4 </ci>
              <ci> global_k_cat_R4 </ci>
              <ci> SS1_B </ci>
              <ci> SS1_C </ci>
              <ci> global_k_B_R4 </ci>
              <ci> global_k_C_R4 </ci>
              <ci> dG0_R4 </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="SS1_R5" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="SS1_C" stoichiometry="1" constant="true"/>
          <speciesReference species="SS1_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="SS1_P" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_two_s_one_p </ci>
              <ci> SS1_is_on_R5 </ci>
              <ci> E_conc_R5 </ci>
              <ci> global_k_cat_R5 </ci>
              <ci> SS1_C </ci>
              <ci> SS1_X </ci>
              <ci> SS1_P </ci>
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
      <reaction id="SS1_R6" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="SS1_P" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="Single_Pex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> SS1_is_on_R6 </ci>
              <ci> E_conSS1_R6 </ci>
              <ci> global_k_cat_R6 </ci>
              <ci> SS1_P </ci>
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
      <reaction id="SS1_Pex_secretion" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="Single_Pex" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> SS1_is_on_Pex_secretion </ci>
              <cn type="integer"> 1000000 </cn>
              <ci> Single_Pex </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="SS1_RTB" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="SS1_B" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <listOfProducts>
          <speciesReference species="SS1_Bex" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <ci> rate_law_one_s_one_p </ci>
              <ci> SS1_is_on_RTB </ci>
              <ci> E_conc_RTB </ci>
              <ci> global_k_cat_RTB </ci>
              <ci> SS1_B </ci>
              <ci> SS1_Bex </ci>
              <ci> global_k_B_RTB </ci>
              <ci> global_k_Bex_RTB </ci>
              <ci> dG0_RTB </ci>
              <ci> R </ci>
              <ci> T </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="SS1_Xin" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="SS1_X" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <ci> global_Ix_SS1 </ci>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="SS1_Xout" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="SS1_X" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> global_k_X_Xout_SS1 </ci>
              <ci> SS1_X </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="SS1_Min_" reversible="true" fast="false">
        <listOfProducts>
          <speciesReference species="SS1_M" stoichiometry="1" constant="true"/>
        </listOfProducts>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <ci> global_Im </ci>
          </math>
        </kineticLaw>
      </reaction>
      <reaction id="SS1_Mout" reversible="true" fast="false">
        <listOfReactants>
          <speciesReference species="SS1_M" stoichiometry="1" constant="true"/>
        </listOfReactants>
        <kineticLaw>
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <apply>
              <times/>
              <ci> global_k_M_Mout </ci>
              <ci> SS1_M </ci>
            </apply>
          </math>
        </kineticLaw>
      </reaction>
    </listOfReactions>
  </model>
</sbml>
