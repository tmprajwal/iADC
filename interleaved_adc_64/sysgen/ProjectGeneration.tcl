#
# Created by System Generator     Thu Apr  3 22:43:44 2014
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {interleaved_adc_64_cw}
    set DSPFamily {Virtex5}
    set DSPDevice {xc5vsx95t}
    set DSPPackage {ff1136}
    set DSPSpeed {-1}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {200}
    set CreateInterfaceDocument {off}
    set NewXSTParser {0}
	if { [ string equal $Compilation {IP Packager} ] == 1 } {
		set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
		set IP_Library_Text {SysGen}
		set IP_Vendor_Text {Xilinx}
		set IP_Version_Text {1.0}
		set IP_Categories_Text {System Generator for DSP}
		set IP_Common_Repos {0}
		set IP_Dir {}
		set IP_LifeCycle_Menu {1}
		set IP_Description    {}
		
	}
    set ProjectFiles {
        {{interleaved_adc_64_cw.vhd} -view All}
        {{interleaved_adc_64.vhd} -view All}
        {{interleaved_adc_64_cw.ucf}}
        {{interleaved_adc_64_cw.xdc}}
        {{/afs/lns.mit.edu/user/prajwal/casper/iADC/interleaved_adc_64.mdl}}
    }
    set TopLevelModule {interleaved_adc_64_cw}
    set SynthesisConstraintsFile {interleaved_adc_64_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
