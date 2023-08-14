Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED03377C264
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 23:29:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232888AbjHNV3N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 17:29:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232941AbjHNV2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 17:28:48 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94538B3;
        Mon, 14 Aug 2023 14:28:43 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F254164373;
        Mon, 14 Aug 2023 21:28:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98706C433C8;
        Mon, 14 Aug 2023 21:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692048522;
        bh=/gxSq0DKPVrkss5Rpnj9a5pJpxVTChYnikNmbjdmZhs=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=jXteMdnmYK4wYPxCaBt0IzXRJ6SUYqHdvinzUmkMCwOhRlpShW8HF99mDGjEMtBlH
         n4nTe1khdqwzagqlyCEzGQj/YUPqea3jGuvwjVnARUleeV3P0EgbD6Ze+FOyQVLTd5
         oJ3s7Ej3kIq6Ka6pSLJ58QLM6mZQB6JHLrUw07O3G/mL8ovIyyehKfobtme30TZKHS
         Kx8OxiVotVYvb41AdwLYmwE9mCSLAaKKe6H+6ViYm0sdXqbrg0VHMAfYe98DIlcnnp
         JkbbT1J4nGeOOgT1edAasO3TV23t56cEh49QkWrxxNzaav4XXnkjwvxkri/x0DW1TM
         6Ek6mTRIInOaA==
From:   Bjorn Helgaas <helgaas@kernel.org>
To:     Jonathan Corbet <corbet@lwn.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH 2/3] dt-bindings: Fix typos
Date:   Mon, 14 Aug 2023 16:28:21 -0500
Message-Id: <20230814212822.193684-3-helgaas@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230814212822.193684-1-helgaas@kernel.org>
References: <20230814212822.193684-1-helgaas@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bjorn Helgaas <bhelgaas@google.com>

Fix typos in Documentation/devicetree/bindings.  The changes are in
descriptions or comments where they shouldn't affect functionality.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml   |  4 ++--
 .../arm/marvell/cp110-system-controller.txt      |  8 ++++----
 .../bindings/arm/mediatek/mediatek,mipi0a.txt    |  2 +-
 .../bindings/arm/mediatek/mediatek,vcodecsys.txt |  2 +-
 Documentation/devicetree/bindings/arm/sunxi.yaml |  4 ++--
 .../devicetree/bindings/ata/pata-common.yaml     |  2 +-
 .../devicetree/bindings/bus/brcm,gisb-arb.yaml   |  2 +-
 .../bindings/bus/nvidia,tegra210-aconnect.yaml   |  4 ++--
 .../clock/allwinner,sun4i-a10-osc-clk.yaml       |  2 +-
 .../devicetree/bindings/clock/alphascale,acc.txt |  4 ++--
 .../devicetree/bindings/clock/keystone-pll.txt   |  2 +-
 .../devicetree/bindings/clock/lpc1850-ccu.txt    |  2 +-
 .../bindings/clock/lpc1850-creg-clk.txt          |  4 ++--
 .../devicetree/bindings/clock/maxim,max9485.txt  |  2 +-
 .../bindings/clock/qcom,gcc-sm8450.yaml          |  2 +-
 .../bindings/clock/qcom,kpss-acc-v1.yaml         |  2 +-
 .../bindings/clock/sprd,sc9863a-clk.yaml         |  2 +-
 .../devicetree/bindings/clock/ti/mux.txt         |  2 +-
 .../devicetree/bindings/clock/vf610-clock.txt    |  2 +-
 .../bindings/clock/xlnx,zynqmp-clk.txt           |  2 +-
 .../bindings/connector/usb-connector.yaml        |  2 +-
 .../devfreq/event/samsung,exynos-ppmu.yaml       |  2 +-
 .../bindings/display/atmel/hlcdc-dc.txt          |  2 +-
 .../display/bridge/snps,dw-mipi-dsi.yaml         |  2 +-
 .../bindings/display/cirrus,clps711x-fb.txt      |  2 +-
 .../bindings/display/msm/qcom,mdss.yaml          |  2 +-
 .../display/panel/olimex,lcd-olinuxino.yaml      |  2 +-
 .../bindings/display/panel/panel-common.yaml     |  2 +-
 .../display/tegra/nvidia,tegra124-sor.yaml       |  2 +-
 .../devicetree/bindings/dma/ingenic,dma.yaml     |  2 +-
 .../bindings/dma/nvidia,tegra20-apbdma.txt       |  2 +-
 .../devicetree/bindings/dma/qcom,bam-dma.yaml    |  2 +-
 .../bindings/dma/stericsson,dma40.yaml           |  2 +-
 .../devicetree/bindings/fpga/fpga-region.txt     |  4 ++--
 .../devicetree/bindings/gpio/gpio-xgene-sb.txt   |  2 +-
 .../bindings/gpio/snps,dw-apb-gpio.yaml          |  2 +-
 .../devicetree/bindings/gpio/ti,omap-gpio.yaml   |  4 ++--
 .../devicetree/bindings/hwmon/adi,adm1177.yaml   |  2 +-
 .../bindings/hwmon/adi,axi-fan-control.yaml      |  2 +-
 .../devicetree/bindings/hwmon/adi,ltc2992.yaml   |  2 +-
 .../bindings/hwmon/aspeed-pwm-tacho.txt          |  2 +-
 Documentation/devicetree/bindings/hwmon/lm87.txt |  2 +-
 .../devicetree/bindings/hwmon/ltq-cputemp.txt    |  2 +-
 .../bindings/hwmon/moortec,mr75203.yaml          |  2 +-
 .../bindings/hwmon/npcm750-pwm-fan.txt           |  2 +-
 .../bindings/hwmon/sensirion,shtc1.yaml          |  2 +-
 .../devicetree/bindings/hwmon/ti,tmp513.yaml     |  2 +-
 .../devicetree/bindings/hwmon/ti,tps23861.yaml   |  2 +-
 .../devicetree/bindings/i2c/i2c-sprd.txt         |  2 +-
 .../bindings/iio/adc/xlnx,zynqmp-ams.yaml        |  2 +-
 .../devicetree/bindings/iio/cdc/adi,ad7150.yaml  |  2 +-
 .../devicetree/bindings/iio/common.yaml          |  2 +-
 .../bindings/iio/frequency/adi,admv1014.yaml     |  2 +-
 .../bindings/iio/humidity/ti,hdc2010.yaml        |  2 +-
 .../iio/pressure/honeywell,mprls0025pa.yaml      |  2 +-
 .../bindings/iio/proximity/ams,as3935.yaml       |  2 +-
 .../devicetree/bindings/iio/st,st-sensors.yaml   |  2 +-
 .../bindings/input/rmi4/rmi_2d_sensor.txt        |  4 ++--
 .../bindings/input/touchscreen/stmpe.txt         |  2 +-
 .../bindings/input/touchscreen/tsc2007.txt       |  2 +-
 .../interrupt-controller/arm,gic-v3.yaml         |  2 +-
 .../brcm,bcm2835-armctrl-ic.txt                  |  2 +-
 .../brcm,bcm7120-l2-intc.yaml                    |  2 +-
 .../backlight/mediatek,mt6370-backlight.yaml     |  2 +-
 .../devicetree/bindings/leds/leds-lp55xx.yaml    |  4 ++--
 .../devicetree/bindings/leds/leds-qcom-lpg.yaml  |  2 +-
 .../bindings/mailbox/brcm,iproc-flexrm-mbox.txt  |  2 +-
 .../bindings/mailbox/ti,omap-mailbox.yaml        |  2 +-
 .../bindings/media/i2c/toshiba,tc358746.yaml     |  2 +-
 .../devicetree/bindings/media/i2c/tvp5150.txt    |  2 +-
 .../media/mediatek,vcodec-subdev-decoder.yaml    |  2 +-
 .../memory-controllers/mediatek,smi-larb.yaml    |  2 +-
 .../memory-controllers/rockchip,rk3399-dmc.yaml  |  4 ++--
 .../memory-controllers/xlnx,zynq-ddrc-a05.yaml   |  2 +-
 .../devicetree/bindings/mfd/aspeed-lpc.yaml      |  2 +-
 .../bindings/mfd/rohm,bd9576-pmic.yaml           |  4 ++--
 .../bindings/mfd/stericsson,ab8500.yaml          | 16 ++++++++--------
 .../bindings/mfd/stericsson,db8500-prcmu.yaml    |  2 +-
 .../devicetree/bindings/mmc/pxa-mmc.txt          |  2 +-
 .../devicetree/bindings/mmc/ti-omap-hsmmc.txt    |  2 +-
 .../bindings/net/brcm,bcm7445-switch-v4.0.txt    |  2 +-
 .../devicetree/bindings/net/can/cc770.txt        |  2 +-
 .../devicetree/bindings/net/dsa/brcm,sf2.yaml    |  2 +-
 .../devicetree/bindings/net/ethernet-phy.yaml    |  2 +-
 .../devicetree/bindings/net/mediatek-dwmac.yaml  |  2 +-
 .../bindings/net/microchip,lan95xx.yaml          |  2 +-
 .../devicetree/bindings/net/nfc/marvell,nci.yaml |  4 ++--
 .../devicetree/bindings/net/samsung-sxgbe.txt    |  4 ++--
 .../bindings/net/snps,dwc-qos-ethernet.txt       |  2 +-
 .../devicetree/bindings/net/sti-dwmac.txt        |  2 +-
 .../bindings/net/xilinx_gmii2rgmii.txt           |  2 +-
 .../devicetree/bindings/nios2/nios2.txt          |  2 +-
 .../bindings/nvmem/layouts/onie,tlv-layout.yaml  |  2 +-
 .../bindings/phy/phy-hisi-inno-usb2.txt          |  2 +-
 .../bindings/phy/pistachio-usb-phy.txt           |  2 +-
 .../devicetree/bindings/phy/pxa1928-usb-phy.txt  |  2 +-
 .../bindings/phy/rockchip-inno-csi-dphy.yaml     |  2 +-
 .../bindings/phy/ti,phy-j721e-wiz.yaml           |  2 +-
 Documentation/devicetree/bindings/phy/ti-phy.txt |  2 +-
 .../pinctrl/allwinner,sun4i-a10-pinctrl.yaml     |  2 +-
 .../bindings/pinctrl/canaan,k210-fpioa.yaml      |  2 +-
 .../pinctrl/mediatek,mt6779-pinctrl.yaml         |  2 +-
 .../pinctrl/mediatek,mt6795-pinctrl.yaml         |  2 +-
 .../pinctrl/mediatek,mt7981-pinctrl.yaml         |  4 ++--
 .../pinctrl/mediatek,mt7986-pinctrl.yaml         |  4 ++--
 .../pinctrl/mediatek,mt8183-pinctrl.yaml         |  2 +-
 .../pinctrl/mediatek,mt8365-pinctrl.yaml         |  2 +-
 .../bindings/pinctrl/pinctrl-max77620.txt        |  2 +-
 .../bindings/pinctrl/pinctrl-rk805.txt           |  2 +-
 .../devicetree/bindings/pinctrl/sprd,pinctrl.txt |  2 +-
 .../devicetree/bindings/pmem/pmem-region.txt     |  4 ++--
 .../bindings/power/renesas,sysc-rmobile.yaml     |  2 +-
 .../bindings/power/supply/sbs,sbs-manager.yaml   |  2 +-
 .../devicetree/bindings/powerpc/fsl/cpus.txt     |  2 +-
 .../devicetree/bindings/powerpc/fsl/dcsr.txt     |  4 ++--
 .../devicetree/bindings/powerpc/fsl/raideng.txt  |  2 +-
 .../bindings/powerpc/nintendo/gamecube.txt       |  2 +-
 .../devicetree/bindings/powerpc/nintendo/wii.txt |  2 +-
 .../bindings/pwm/snps,dw-apb-timers-pwm2.yaml    |  2 +-
 .../bindings/regulator/regulator-max77620.txt    |  2 +-
 .../devicetree/bindings/regulator/regulator.yaml |  8 ++++----
 .../regulator/richtek,rt5190a-regulator.yaml     |  2 +-
 .../devicetree/bindings/regulator/vctrl.txt      |  2 +-
 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml     |  2 +-
 .../bindings/reset/ti-syscon-reset.txt           |  2 +-
 .../devicetree/bindings/rng/omap_rng.yaml        |  4 ++--
 .../devicetree/bindings/rtc/rtc-cmos.txt         |  2 +-
 .../bindings/serial/nvidia,tegra20-hsuart.txt    |  2 +-
 .../devicetree/bindings/serial/st-asc.txt        |  2 +-
 .../soc/mediatek/mediatek,mt7986-wo-ccif.yaml    |  2 +-
 .../microchip/microchip,mpfs-sys-controller.yaml |  2 +-
 .../bindings/soc/qcom/qcom,aoss-qmp.yaml         |  2 +-
 .../bindings/sound/axentia,tse850-pcm5142.txt    |  2 +-
 .../devicetree/bindings/sound/cs35l35.txt        |  2 +-
 .../devicetree/bindings/sound/cs35l36.txt        |  2 +-
 .../devicetree/bindings/sound/cs53l30.txt        |  2 +-
 .../devicetree/bindings/sound/fsl,esai.txt       |  2 +-
 .../bindings/sound/mediatek,mt8188-afe.yaml      |  2 +-
 .../devicetree/bindings/sound/mt2701-afe-pcm.txt |  2 +-
 .../bindings/sound/mt8195-afe-pcm.yaml           |  4 ++--
 .../bindings/sound/qcom,msm8916-wcd-analog.txt   |  2 +-
 .../devicetree/bindings/sound/renesas,rsnd.txt   |  2 +-
 .../sound/rockchip,rk3288-hdmi-analog.txt        |  2 +-
 .../devicetree/bindings/sound/rt5663.txt         |  2 +-
 .../devicetree/bindings/sound/serial-midi.yaml   |  2 +-
 .../devicetree/bindings/sound/sprd-pcm.txt       |  2 +-
 .../devicetree/bindings/sound/st,stm32-sai.yaml  |  2 +-
 .../bindings/sound/ti,j721e-cpb-ivi-audio.yaml   |  2 +-
 .../devicetree/bindings/sound/ti,tas2781.yaml    |  2 +-
 .../devicetree/bindings/sound/tlv320adcx140.yaml |  2 +-
 .../bindings/soundwire/qcom,soundwire.yaml       |  4 ++--
 .../bindings/spi/brcm,bcm2835-aux-spi.txt        |  4 ++--
 .../bindings/spi/brcm,spi-bcm-qspi.yaml          |  4 ++--
 .../devicetree/bindings/spi/omap-spi.yaml        |  2 +-
 .../thermal/nvidia,tegra124-soctherm.txt         |  2 +-
 .../devicetree/bindings/timer/snps,arc-timer.txt |  2 +-
 .../devicetree/bindings/trivial-devices.yaml     |  8 ++++----
 .../devicetree/bindings/usb/ci-hdrc-usb2.yaml    |  2 +-
 .../devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml |  2 +-
 .../devicetree/bindings/usb/msm-hsusb.txt        |  2 +-
 .../devicetree/bindings/usb/richtek,rt1719.yaml  |  2 +-
 161 files changed, 199 insertions(+), 199 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 2510eaa8906d..9c29fdf63332 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1222,9 +1222,9 @@ properties:
       - description:
           Freescale Vybrid Platform Device Tree Bindings
 
-          For the Vybrid SoC familiy all variants with DDR controller are supported,
+          For the Vybrid SoC family all variants with DDR controller are supported,
           which is the VF5xx and VF6xx series. Out of historical reasons, in most
-          places the kernel uses vf610 to refer to the whole familiy.
+          places the kernel uses vf610 to refer to the whole family.
           The compatible string "fsl,vf610m4" is used for the secondary Cortex-M4
           core support.
         items:
diff --git a/Documentation/devicetree/bindings/arm/marvell/cp110-system-controller.txt b/Documentation/devicetree/bindings/arm/marvell/cp110-system-controller.txt
index d84105c7c935..9d5d70c98058 100644
--- a/Documentation/devicetree/bindings/arm/marvell/cp110-system-controller.txt
+++ b/Documentation/devicetree/bindings/arm/marvell/cp110-system-controller.txt
@@ -21,13 +21,13 @@ The Device Tree node representing this System Controller 0 provides a
 number of clocks:
 
  - a set of core clocks
- - a set of gatable clocks
+ - a set of gateable clocks
 
 Those clocks can be referenced by other Device Tree nodes using two
 cells:
  - The first cell must be 0 or 1. 0 for the core clocks and 1 for the
-   gatable clocks.
- - The second cell identifies the particular core clock or gatable
+   gateable clocks.
+ - The second cell identifies the particular core clock or gateable
    clocks.
 
 The following clocks are available:
@@ -38,7 +38,7 @@ The following clocks are available:
    - 0 3	Core
    - 0 4	NAND core
    - 0 5	SDIO core
- - Gatable clocks
+ - Gateable clocks
    - 1 0	Audio
    - 1 1	Comm Unit
    - 1 2	NAND
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
index 8be5978f388d..1c671943ce4d 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
@@ -16,7 +16,7 @@ The available clocks are defined in dt-bindings/clock/mt*-clk.h.
 
 The mipi0a controller also uses the common power domain from
 Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
-The available power doamins are defined in dt-bindings/power/mt*-power.h.
+The available power domains are defined in dt-bindings/power/mt*-power.h.
 
 Example:
 
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
index c877bcc1a5c5..f090147b7f1e 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
@@ -15,7 +15,7 @@ The available clocks are defined in dt-bindings/clock/mt*-clk.h.
 
 The vcodecsys controller also uses the common power domain from
 Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
-The available power doamins are defined in dt-bindings/power/mt*-power.h.
+The available power domains are defined in dt-bindings/power/mt*-power.h.
 
 Example:
 
diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index ee8fdd2da869..b2a22060e4d5 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -541,13 +541,13 @@ properties:
           - const: msi,primo81
           - const: allwinner,sun6i-a31s
 
-      - description: Emlid Neutis N5 Developper Board
+      - description: Emlid Neutis N5 Developer Board
         items:
           - const: emlid,neutis-n5-devboard
           - const: emlid,neutis-n5
           - const: allwinner,sun50i-h5
 
-      - description: Emlid Neutis N5H3 Developper Board
+      - description: Emlid Neutis N5H3 Developer Board
         items:
           - const: emlid,neutis-n5h3-devboard
           - const: emlid,neutis-n5h3
diff --git a/Documentation/devicetree/bindings/ata/pata-common.yaml b/Documentation/devicetree/bindings/ata/pata-common.yaml
index 2412894a255d..337ddf1113c4 100644
--- a/Documentation/devicetree/bindings/ata/pata-common.yaml
+++ b/Documentation/devicetree/bindings/ata/pata-common.yaml
@@ -12,7 +12,7 @@ maintainers:
 description: |
   This document defines device tree properties common to most Parallel
   ATA (PATA, also known as IDE) AT attachment storage devices.
-  It doesn't constitue a device tree binding specification by itself but is
+  It doesn't constitute a device tree binding specification by itself but is
   meant to be referenced by device tree bindings.
 
   The PATA (IDE) controller-specific device tree bindings are responsible for
diff --git a/Documentation/devicetree/bindings/bus/brcm,gisb-arb.yaml b/Documentation/devicetree/bindings/bus/brcm,gisb-arb.yaml
index b23c3001991e..3aaefdbe361e 100644
--- a/Documentation/devicetree/bindings/bus/brcm,gisb-arb.yaml
+++ b/Documentation/devicetree/bindings/bus/brcm,gisb-arb.yaml
@@ -43,7 +43,7 @@ properties:
   brcm,gisb-arb-master-names:
     $ref: /schemas/types.yaml#/definitions/string-array
     description: >
-      String list of the litteral name of the GISB masters. Should match the
+      String list of the literal name of the GISB masters. Should match the
       number of bits set in brcm,gisb-master-mask and the order in which they
       appear from MSB to LSB.
 
diff --git a/Documentation/devicetree/bindings/bus/nvidia,tegra210-aconnect.yaml b/Documentation/devicetree/bindings/bus/nvidia,tegra210-aconnect.yaml
index 4157e885c6e7..26362c9006e2 100644
--- a/Documentation/devicetree/bindings/bus/nvidia,tegra210-aconnect.yaml
+++ b/Documentation/devicetree/bindings/bus/nvidia,tegra210-aconnect.yaml
@@ -7,10 +7,10 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: NVIDIA Tegra ACONNECT Bus
 
 description: |
-  The Tegra ACONNECT bus is an AXI switch which is used to connnect various
+  The Tegra ACONNECT bus is an AXI switch which is used to connect various
   components inside the Audio Processing Engine (APE). All CPU accesses to
   the APE subsystem go through the ACONNECT via an APB to AXI wrapper. All
-  devices accessed via the ACONNNECT are described by child-nodes.
+  devices accessed via the ACONNECT are described by child-nodes.
 
 maintainers:
   - Jon Hunter <jonathanh@nvidia.com>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml
index 52a7b6e7124c..0052bf1e8a6b 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-osc-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Gatable Oscillator Clock
+title: Allwinner A10 Gateable Oscillator Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/alphascale,acc.txt b/Documentation/devicetree/bindings/clock/alphascale,acc.txt
index b3205b21c9d0..c9fb9324c634 100644
--- a/Documentation/devicetree/bindings/clock/alphascale,acc.txt
+++ b/Documentation/devicetree/bindings/clock/alphascale,acc.txt
@@ -1,7 +1,7 @@
 Alphascale Clock Controller
 
-The ACC (Alphascale Clock Controller) is responsible of choising proper
-clock source, setting deviders and clock gates.
+The ACC (Alphascale Clock Controller) is responsible for choosing proper
+clock source, setting dividers and clock gates.
 
 Required properties for the ACC node:
  - compatible: must be "alphascale,asm9260-clock-controller"
diff --git a/Documentation/devicetree/bindings/clock/keystone-pll.txt b/Documentation/devicetree/bindings/clock/keystone-pll.txt
index 47570d207215..9a3fbc665606 100644
--- a/Documentation/devicetree/bindings/clock/keystone-pll.txt
+++ b/Documentation/devicetree/bindings/clock/keystone-pll.txt
@@ -14,7 +14,7 @@ Required properties:
 - #clock-cells : from common clock binding; shall be set to 0.
 - compatible : shall be "ti,keystone,main-pll-clock" or "ti,keystone,pll-clock"
 - clocks : parent clock phandle
-- reg - pll control0 and pll multipler registers
+- reg - pll control0 and pll multiplier registers
 - reg-names : control, multiplier and post-divider. The multiplier and
 		post-divider registers are applicable only for main pll clock
 - fixed-postdiv : fixed post divider value. If absent, use clkod register bits
diff --git a/Documentation/devicetree/bindings/clock/lpc1850-ccu.txt b/Documentation/devicetree/bindings/clock/lpc1850-ccu.txt
index fa97c12014ac..8cf8f0ecdd16 100644
--- a/Documentation/devicetree/bindings/clock/lpc1850-ccu.txt
+++ b/Documentation/devicetree/bindings/clock/lpc1850-ccu.txt
@@ -68,7 +68,7 @@ soc {
 			      "base_ssp0_clk",  "base_sdio_clk";
 	};
 
-	/* A user of CCU brach clocks */
+	/* A user of CCU branch clocks */
 	uart1: serial@40082000 {
 		...
 		clocks = <&ccu2 CLK_APB0_UART1>, <&ccu1 CLK_CPU_UART1>;
diff --git a/Documentation/devicetree/bindings/clock/lpc1850-creg-clk.txt b/Documentation/devicetree/bindings/clock/lpc1850-creg-clk.txt
index 6f1c7b4e4d2c..b6b2547a3d17 100644
--- a/Documentation/devicetree/bindings/clock/lpc1850-creg-clk.txt
+++ b/Documentation/devicetree/bindings/clock/lpc1850-creg-clk.txt
@@ -5,8 +5,8 @@ control registers for two low speed clocks. One of the clocks is a
 32 kHz oscillator driver with power up/down and clock gating. Next
 is a fixed divider that creates a 1 kHz clock from the 32 kHz osc.
 
-These clocks are used by the RTC and the Event Router peripherials.
-The 32 kHz can also be routed to other peripherials to enable low
+These clocks are used by the RTC and the Event Router peripherals.
+The 32 kHz can also be routed to other peripherals to enable low
 power modes.
 
 This binding uses the common clock binding:
diff --git a/Documentation/devicetree/bindings/clock/maxim,max9485.txt b/Documentation/devicetree/bindings/clock/maxim,max9485.txt
index 61bec1100a94..b8f5c3bbf12b 100644
--- a/Documentation/devicetree/bindings/clock/maxim,max9485.txt
+++ b/Documentation/devicetree/bindings/clock/maxim,max9485.txt
@@ -12,7 +12,7 @@ requests.
 
 Required properties:
 - compatible:	"maxim,max9485"
-- clocks:	Input clock, must provice 27.000 MHz
+- clocks:	Input clock, must provide 27.000 MHz
 - clock-names:	Must be set to "xclk"
 - #clock-cells: From common clock binding; shall be set to 1
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-sm8450.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-sm8450.yaml
index 9a31981fbeb2..75259f468d54 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-sm8450.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-sm8450.yaml
@@ -25,7 +25,7 @@ properties:
       - description: Sleep clock source
       - description: PCIE 0 Pipe clock source (Optional clock)
       - description: PCIE 1 Pipe clock source (Optional clock)
-      - description: PCIE 1 Phy Auxillary clock source (Optional clock)
+      - description: PCIE 1 Phy Auxiliary clock source (Optional clock)
       - description: UFS Phy Rx symbol 0 clock source (Optional clock)
       - description: UFS Phy Rx symbol 1 clock source (Optional clock)
       - description: UFS Phy Tx symbol 0 clock source (Optional clock)
diff --git a/Documentation/devicetree/bindings/clock/qcom,kpss-acc-v1.yaml b/Documentation/devicetree/bindings/clock/qcom,kpss-acc-v1.yaml
index a466e4e8aacd..57632757d4e6 100644
--- a/Documentation/devicetree/bindings/clock/qcom,kpss-acc-v1.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,kpss-acc-v1.yaml
@@ -14,7 +14,7 @@ description:
   There is one ACC register region per CPU within the KPSS remapped region as
   well as an alias register region that remaps accesses to the ACC associated
   with the CPU accessing the region. ACC v1 is currently used as a
-  clock-controller for enabling the cpu and hanling the aux clocks.
+  clock-controller for enabling the cpu and handling the aux clocks.
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/clock/sprd,sc9863a-clk.yaml b/Documentation/devicetree/bindings/clock/sprd,sc9863a-clk.yaml
index 1703e305e6d8..a0658056c330 100644
--- a/Documentation/devicetree/bindings/clock/sprd,sc9863a-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/sprd,sc9863a-clk.yaml
@@ -66,7 +66,7 @@ then:
 else:
   description: |
     Other SC9863a clock nodes should be the child of a syscon node in
-    which compatible string shoule be:
+    which compatible string should be:
             "sprd,sc9863a-glbregs", "syscon", "simple-mfd"
 
     The 'reg' property for the clock node is also required if there is a sub
diff --git a/Documentation/devicetree/bindings/clock/ti/mux.txt b/Documentation/devicetree/bindings/clock/ti/mux.txt
index e17425a58621..b33f641f1043 100644
--- a/Documentation/devicetree/bindings/clock/ti/mux.txt
+++ b/Documentation/devicetree/bindings/clock/ti/mux.txt
@@ -8,7 +8,7 @@ parents, one of which can be selected as output.  This clock does not
 gate or adjust the parent rate via a divider or multiplier.
 
 By default the "clocks" property lists the parents in the same order
-as they are programmed into the regster.  E.g:
+as they are programmed into the register.  E.g:
 
 	clocks = <&foo_clock>, <&bar_clock>, <&baz_clock>;
 
diff --git a/Documentation/devicetree/bindings/clock/vf610-clock.txt b/Documentation/devicetree/bindings/clock/vf610-clock.txt
index 63f9f1ac3439..109ffa3a5b66 100644
--- a/Documentation/devicetree/bindings/clock/vf610-clock.txt
+++ b/Documentation/devicetree/bindings/clock/vf610-clock.txt
@@ -9,7 +9,7 @@ Optional properties:
 - clocks: list of clock identifiers which are external input clocks to the
 	given clock controller. Please refer the next section to find
 	the input clocks for a given controller.
-- clock-names: list of names of clocks which are exteral input clocks to the
+- clock-names: list of names of clocks which are external input clocks to the
 	given clock controller.
 
 Input clocks for top clock controller:
diff --git a/Documentation/devicetree/bindings/clock/xlnx,zynqmp-clk.txt b/Documentation/devicetree/bindings/clock/xlnx,zynqmp-clk.txt
index 391ee1a60bed..ed9082e66fab 100644
--- a/Documentation/devicetree/bindings/clock/xlnx,zynqmp-clk.txt
+++ b/Documentation/devicetree/bindings/clock/xlnx,zynqmp-clk.txt
@@ -15,7 +15,7 @@ Required properties:
 			clocks to the given clock controller. Please refer
 			the next section to find the input clocks for a
 			given controller.
- - clock-names:		List of clock names which are exteral input clocks
+ - clock-names:		List of clock names which are external input clocks
 			to the given clock controller. Please refer to the
 			clock bindings for more details.
 
diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 1c4d3eb87763..e0108a89b555 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -224,7 +224,7 @@ properties:
       state as defined in 7.4.2 Sink Electrical Parameters of USB Power Delivery Specification
       Revision 3.0, Version 1.2. When the property is set, the port requests pSnkStby(2.5W -
       5V@500mA) upon entering SNK_DISCOVERY(instead of 3A or the 1.5A, Rp current advertised, during
-      SNK_DISCOVERY) and the actual currrent limit after reception of PS_Ready for PD link or during
+      SNK_DISCOVERY) and the actual current limit after reception of PS_Ready for PD link or during
       SNK_READY for non-pd link.
     type: boolean
 
diff --git a/Documentation/devicetree/bindings/devfreq/event/samsung,exynos-ppmu.yaml b/Documentation/devicetree/bindings/devfreq/event/samsung,exynos-ppmu.yaml
index e300df4b47f3..d27dcb2fef12 100644
--- a/Documentation/devicetree/bindings/devfreq/event/samsung,exynos-ppmu.yaml
+++ b/Documentation/devicetree/bindings/devfreq/event/samsung,exynos-ppmu.yaml
@@ -18,7 +18,7 @@ description: |
   each IP (DMC, CPU, RIGHTBUS, LEFTBUS, CAM interface, LCD, G3D, MFC).  The
   Exynos PPMU driver uses the devfreq-event class to provide event data to
   various devfreq devices. The devfreq devices would use the event data when
-  derterming the current state of each IP.
+  determining the current state of each IP.
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt b/Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt
index 0398aec488ac..923aea25344c 100644
--- a/Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt
+++ b/Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt
@@ -12,7 +12,7 @@ Required properties:
 
 Required children nodes:
  Children nodes are encoding available output ports and their connections
- to external devices using the OF graph reprensentation (see ../graph.txt).
+ to external devices using the OF graph representation (see ../graph.txt).
  At least one port node is required.
 
 Optional properties in grandchild nodes:
diff --git a/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml
index 0b51c64f141a..8747b95ec20d 100644
--- a/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml
@@ -11,7 +11,7 @@ maintainers:
 
 description: |
   This document defines device tree properties for the Synopsys DesignWare MIPI
-  DSI host controller. It doesn't constitue a device tree binding specification
+  DSI host controller. It doesn't constitute a device tree binding specification
   by itself but is meant to be referenced by platform-specific device tree
   bindings.
 
diff --git a/Documentation/devicetree/bindings/display/cirrus,clps711x-fb.txt b/Documentation/devicetree/bindings/display/cirrus,clps711x-fb.txt
index 0ab5f0663611..84c75f849891 100644
--- a/Documentation/devicetree/bindings/display/cirrus,clps711x-fb.txt
+++ b/Documentation/devicetree/bindings/display/cirrus,clps711x-fb.txt
@@ -1,4 +1,4 @@
-* Currus Logic CLPS711X Framebuffer
+* Cirrus Logic CLPS711X Framebuffer
 
 Required properties:
 - compatible: Shall contain "cirrus,ep7209-fb".
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
index db9f07c6142d..5854a3a1224b 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
@@ -11,7 +11,7 @@ maintainers:
   - Rob Clark <robdclark@gmail.com>
 
 description:
-  This is the bindings documentation for the Mobile Display Subsytem(MDSS) that
+  This is the bindings documentation for the Mobile Display Subsystem(MDSS) that
   encapsulates sub-blocks like MDP5, DSI, HDMI, eDP, etc.
 
 properties:
diff --git a/Documentation/devicetree/bindings/display/panel/olimex,lcd-olinuxino.yaml b/Documentation/devicetree/bindings/display/panel/olimex,lcd-olinuxino.yaml
index 9f97598efdfa..72463795e4c6 100644
--- a/Documentation/devicetree/bindings/display/panel/olimex,lcd-olinuxino.yaml
+++ b/Documentation/devicetree/bindings/display/panel/olimex,lcd-olinuxino.yaml
@@ -20,7 +20,7 @@ description: |
   The panel itself contains:
     - AT24C16C EEPROM holding panel identification and timing requirements
     - AR1021 resistive touch screen controller (optional)
-    - FT5x6 capacitive touch screnn controller (optional)
+    - FT5x6 capacitive touch screen controller (optional)
     - GT911/GT928 capacitive touch screen controller (optional)
 
   The above chips share same I2C bus. The EEPROM is factory preprogrammed with
diff --git a/Documentation/devicetree/bindings/display/panel/panel-common.yaml b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
index 5b38dc89cb21..0a57a31f4f3d 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-common.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 description: |
   This document defines device tree properties common to several classes of
-  display panels. It doesn't constitue a device tree binding specification by
+  display panels. It doesn't constitute a device tree binding specification by
   itself but is meant to be referenced by device tree bindings.
 
   When referenced from panel device tree bindings the properties defined in this
diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-sor.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-sor.yaml
index 70f0e45c71d6..6f2e22471965 100644
--- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-sor.yaml
+++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-sor.yaml
@@ -97,7 +97,7 @@ properties:
 
   # optional when driving an eDP output
   nvidia,dpaux:
-    description: phandle to a DispayPort AUX interface
+    description: phandle to a DisplayPort AUX interface
     $ref: /schemas/types.yaml#/definitions/phandle
 
 allOf:
diff --git a/Documentation/devicetree/bindings/dma/ingenic,dma.yaml b/Documentation/devicetree/bindings/dma/ingenic,dma.yaml
index 37400496e086..d9cca3006e73 100644
--- a/Documentation/devicetree/bindings/dma/ingenic,dma.yaml
+++ b/Documentation/devicetree/bindings/dma/ingenic,dma.yaml
@@ -68,7 +68,7 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: >
       Bitmask of channels to reserve for devices that need a specific
-      channel. These channels will only be assigned when explicitely
+      channel. These channels will only be assigned when explicitly
       requested by a client. The primary use for this is channels 0 and
       1, which can be configured to have special behaviour for NAND/BCH
       when using programmable firmware.
diff --git a/Documentation/devicetree/bindings/dma/nvidia,tegra20-apbdma.txt b/Documentation/devicetree/bindings/dma/nvidia,tegra20-apbdma.txt
index c6908e7c42cc..447fb44e7abe 100644
--- a/Documentation/devicetree/bindings/dma/nvidia,tegra20-apbdma.txt
+++ b/Documentation/devicetree/bindings/dma/nvidia,tegra20-apbdma.txt
@@ -2,7 +2,7 @@
 
 Required properties:
 - compatible: Should be "nvidia,<chip>-apbdma"
-- reg: Should contain DMA registers location and length. This shuld include
+- reg: Should contain DMA registers location and length. This should include
   all of the per-channel registers.
 - interrupts: Should contain all of the per-channel DMA interrupts.
 - clocks: Must contain one entry, for the module clock.
diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
index f1ddcf672261..4f5510b6fa02 100644
--- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
@@ -48,7 +48,7 @@ properties:
   qcom,controlled-remotely:
     type: boolean
     description:
-      Indicates that the bam is controlled by remote proccessor i.e. execution
+      Indicates that the bam is controlled by remote processor i.e. execution
       environment.
 
   qcom,ee:
diff --git a/Documentation/devicetree/bindings/dma/stericsson,dma40.yaml b/Documentation/devicetree/bindings/dma/stericsson,dma40.yaml
index 1e5752b19a49..7b94d24d5ef4 100644
--- a/Documentation/devicetree/bindings/dma/stericsson,dma40.yaml
+++ b/Documentation/devicetree/bindings/dma/stericsson,dma40.yaml
@@ -148,7 +148,7 @@ properties:
   memcpy-channels:
     $ref: /schemas/types.yaml#/definitions/uint32-array
     description: Array of u32 elements indicating which channels on the DMA
-      engine are elegible for memcpy transfers
+      engine are eligible for memcpy transfers
 
 required:
   - "#dma-cells"
diff --git a/Documentation/devicetree/bindings/fpga/fpga-region.txt b/Documentation/devicetree/bindings/fpga/fpga-region.txt
index 6694ef29a267..528df8a0e6d8 100644
--- a/Documentation/devicetree/bindings/fpga/fpga-region.txt
+++ b/Documentation/devicetree/bindings/fpga/fpga-region.txt
@@ -63,7 +63,7 @@ FPGA Bridge
    will be disabled.
  * During Partial Reconfiguration of a specific region, that region's bridge
    will be used to gate the busses.  Traffic to other regions is not affected.
- * In some implementations, the FPGA Manager transparantly handles gating the
+ * In some implementations, the FPGA Manager transparently handles gating the
    buses, eliminating the need to show the hardware FPGA bridges in the
    device tree.
  * An FPGA image may create a set of reprogrammable regions, each having its
@@ -466,7 +466,7 @@ It is beyond the scope of this document to fully describe all the FPGA design
 constraints required to make partial reconfiguration work[1] [2] [3], but a few
 deserve quick mention.
 
-A persona must have boundary connections that line up with those of the partion
+A persona must have boundary connections that line up with those of the partition
 or region it is designed to go into.
 
 During programming, transactions through those connections must be stopped and
diff --git a/Documentation/devicetree/bindings/gpio/gpio-xgene-sb.txt b/Documentation/devicetree/bindings/gpio/gpio-xgene-sb.txt
index e90fb987e25f..7ddf292db144 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-xgene-sb.txt
+++ b/Documentation/devicetree/bindings/gpio/gpio-xgene-sb.txt
@@ -27,7 +27,7 @@ Required properties:
 - gpio-controller: Marks the device node as a GPIO controller.
 - interrupts: The EXT_INT_0 parent interrupt resource must be listed first.
 - interrupt-cells: Should be two.
-       - first cell is 0-N coresponding for EXT_INT_0 to EXT_INT_N.
+       - first cell is 0-N corresponding for EXT_INT_0 to EXT_INT_N.
        - second cell is used to specify flags.
 - interrupt-controller: Marks the device node as an interrupt controller.
 - apm,nr-gpios: Optional, specify number of gpios pin.
diff --git a/Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml b/Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml
index b391cc1b4590..7e39d7a2437d 100644
--- a/Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml
@@ -9,7 +9,7 @@ title: Synopsys DesignWare APB GPIO controller
 description: |
   Synopsys DesignWare GPIO controllers have a configurable number of ports,
   each of which are intended to be represented as child nodes with the generic
-  GPIO-controller properties as desribed in this bindings file.
+  GPIO-controller properties as described in this bindings file.
 
 maintainers:
   - Hoan Tran <hoan@os.amperecomputing.com>
diff --git a/Documentation/devicetree/bindings/gpio/ti,omap-gpio.yaml b/Documentation/devicetree/bindings/gpio/ti,omap-gpio.yaml
index bd721c839059..7b75d2f92f1b 100644
--- a/Documentation/devicetree/bindings/gpio/ti,omap-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/ti,omap-gpio.yaml
@@ -58,14 +58,14 @@ properties:
     deprecated: true
     description:
       Name of the hwmod associated with the GPIO. Needed on some legacy OMAP
-      SoCs which have not been converted to the ti,sysc interconnect hierarachy.
+      SoCs which have not been converted to the ti,sysc interconnect hierarchy.
 
   ti,no-reset-on-init:
     $ref: /schemas/types.yaml#/definitions/flag
     deprecated: true
     description:
       Do not reset on init. Used with ti,hwmods on some legacy OMAP SoCs which
-      have not been converted to the ti,sysc interconnect hierarachy.
+      have not been converted to the ti,sysc interconnect hierarchy.
 
 patternProperties:
   "^(.+-hog(-[0-9]+)?)$":
diff --git a/Documentation/devicetree/bindings/hwmon/adi,adm1177.yaml b/Documentation/devicetree/bindings/hwmon/adi,adm1177.yaml
index ca2b47320689..2e45364d0543 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,adm1177.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,adm1177.yaml
@@ -27,7 +27,7 @@ properties:
 
   shunt-resistor-micro-ohms:
     description:
-      The value of curent sense resistor in microohms. If not provided,
+      The value of current sense resistor in microohms. If not provided,
       the current reading and overcurrent alert is disabled.
 
   adi,shutdown-threshold-microamp:
diff --git a/Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml b/Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
index 0cf3ed6212a6..6751f9b643b4 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
@@ -11,7 +11,7 @@ maintainers:
   - Nuno Sá <nuno.sa@analog.com>
 
 description: |+
-  Bindings for the Analog Devices AXI FAN Control driver. Spefications of the
+  Bindings for the Analog Devices AXI FAN Control driver. Specifications of the
   core can be found in:
 
   https://wiki.analog.com/resources/fpga/docs/axi_fan_control
diff --git a/Documentation/devicetree/bindings/hwmon/adi,ltc2992.yaml b/Documentation/devicetree/bindings/hwmon/adi,ltc2992.yaml
index b39c632956e8..0ad12d245656 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,ltc2992.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,ltc2992.yaml
@@ -46,7 +46,7 @@ patternProperties:
 
       shunt-resistor-micro-ohms:
         description:
-          The value of curent sense resistor in microohms.
+          The value of current sense resistor in microohms.
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt b/Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt
index 3ac02988a1a5..8645cd3b867a 100644
--- a/Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt
+++ b/Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt
@@ -45,7 +45,7 @@ Required properties for each child node:
 - aspeed,fan-tach-ch : should specify the Fan tach input channel.
                 integer value in the range 0 through 15, with 0 indicating
 		Fan tach channel 0 and 15 indicating Fan tach channel 15.
-		Atleast one Fan tach input channel is required.
+		At least one Fan tach input channel is required.
 
 Examples:
 
diff --git a/Documentation/devicetree/bindings/hwmon/lm87.txt b/Documentation/devicetree/bindings/hwmon/lm87.txt
index e1b79903f204..758ff398b67b 100644
--- a/Documentation/devicetree/bindings/hwmon/lm87.txt
+++ b/Documentation/devicetree/bindings/hwmon/lm87.txt
@@ -18,7 +18,7 @@ optional properties:
            in7. Otherwise the pin is set as FAN2 input.
 
 - vcc-supply: a Phandle for the regulator supplying power, can be
-              cofigured to measure 5.0V power supply. Default is 3.3V.
+              configured to measure 5.0V power supply. Default is 3.3V.
 
 Example:
 
diff --git a/Documentation/devicetree/bindings/hwmon/ltq-cputemp.txt b/Documentation/devicetree/bindings/hwmon/ltq-cputemp.txt
index 33fd00a987c7..473b34c876dd 100644
--- a/Documentation/devicetree/bindings/hwmon/ltq-cputemp.txt
+++ b/Documentation/devicetree/bindings/hwmon/ltq-cputemp.txt
@@ -1,4 +1,4 @@
-Lantiq cpu temperatur sensor
+Lantiq cpu temperature sensor
 
 Requires node properties:
 - compatible value :
diff --git a/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml b/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml
index ae4f68d4e696..b420a4a4dd80 100644
--- a/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml
+++ b/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml
@@ -42,7 +42,7 @@ properties:
   reg:
     items:
       - description: PVT common registers
-      - description: PVT temprature sensor registers
+      - description: PVT temperature sensor registers
       - description: PVT process detector registers
       - description: PVT voltage monitor registers
 
diff --git a/Documentation/devicetree/bindings/hwmon/npcm750-pwm-fan.txt b/Documentation/devicetree/bindings/hwmon/npcm750-pwm-fan.txt
index 28f43e929f6d..8523777f560c 100644
--- a/Documentation/devicetree/bindings/hwmon/npcm750-pwm-fan.txt
+++ b/Documentation/devicetree/bindings/hwmon/npcm750-pwm-fan.txt
@@ -23,7 +23,7 @@ Required properties for pwm-fan node
 fan subnode format:
 ===================
 Under fan subnode can be upto 8 child nodes, each child node representing a fan.
-Each fan subnode must have one PWM channel and atleast one Fan tach channel.
+Each fan subnode must have one PWM channel and at least one Fan tach channel.
 
 For PWM channel can be configured cooling-levels to create cooling device.
 Cooling device could be bound to a thermal zone for the thermal control.
diff --git a/Documentation/devicetree/bindings/hwmon/sensirion,shtc1.yaml b/Documentation/devicetree/bindings/hwmon/sensirion,shtc1.yaml
index 159238efa9ed..3d14d5fc96c5 100644
--- a/Documentation/devicetree/bindings/hwmon/sensirion,shtc1.yaml
+++ b/Documentation/devicetree/bindings/hwmon/sensirion,shtc1.yaml
@@ -13,7 +13,7 @@ description: |
   The SHTC1, SHTW1 and SHTC3 are digital humidity and temperature sensors
   designed especially for battery-driven high-volume consumer electronics
   applications.
-  For further information refere to Documentation/hwmon/shtc1.rst
+  For further information refer to Documentation/hwmon/shtc1.rst
 
   This binding document describes the binding for the hardware monitor
   portion of the driver.
diff --git a/Documentation/devicetree/bindings/hwmon/ti,tmp513.yaml b/Documentation/devicetree/bindings/hwmon/ti,tmp513.yaml
index fde5225ce012..cdd1489e0c54 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,tmp513.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,tmp513.yaml
@@ -33,7 +33,7 @@ properties:
 
   shunt-resistor-micro-ohms:
     description: |
-      If 0, the calibration process will be skiped and the current and power
+      If 0, the calibration process will be skipped and the current and power
       measurement engine will not work. Temperature and voltage measurement
       will continue to work. The shunt value also need to respect:
       rshunt <= pga-gain * 40 * 1000 * 1000.
diff --git a/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml b/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml
index bce68a326919..ebc8d466c1aa 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml
@@ -26,7 +26,7 @@ properties:
     maxItems: 1
 
   shunt-resistor-micro-ohms:
-    description: The value of curent sense resistor in microohms.
+    description: The value of current sense resistor in microohms.
     default: 255000
     minimum: 250000
     maximum: 255000
diff --git a/Documentation/devicetree/bindings/i2c/i2c-sprd.txt b/Documentation/devicetree/bindings/i2c/i2c-sprd.txt
index 60b7cda15dd2..7b6b3b8d0d11 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-sprd.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-sprd.txt
@@ -10,7 +10,7 @@ Required properties:
   "source" for I2C source (parent) clock,
   "enable" for I2C module enable clock.
 - clocks: Should contain a clock specifier for each entry in clock-names.
-- clock-frequency: Constains desired I2C bus clock frequency in Hz.
+- clock-frequency: Contains desired I2C bus clock frequency in Hz.
 - #address-cells: Should be 1 to describe address cells for I2C device address.
 - #size-cells: Should be 0 means no size cell for I2C device address.
 
diff --git a/Documentation/devicetree/bindings/iio/adc/xlnx,zynqmp-ams.yaml b/Documentation/devicetree/bindings/iio/adc/xlnx,zynqmp-ams.yaml
index be93c109d6ac..8cbad7e792b6 100644
--- a/Documentation/devicetree/bindings/iio/adc/xlnx,zynqmp-ams.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/xlnx,zynqmp-ams.yaml
@@ -57,7 +57,7 @@ description: |
                 |27     |FPD Internal voltage measurement, VCC_PSINTFP (supply5).       |Voltage
                 |28     |PS Auxiliary voltage measurement (supply6).                    |Voltage
                 |29     |PL VCCADC voltage measurement (vccams).                        |Voltage
-                |30     |Differential analog input signal voltage measurment.           |Voltage
+                |30     |Differential analog input signal voltage measurement.          |Voltage
                 |31     |VUser0 voltage measurement (supply7).                          |Voltage
                 |32     |VUser1 voltage measurement (supply8).                          |Voltage
                 |33     |VUser2 voltage measurement (supply9).                          |Voltage
diff --git a/Documentation/devicetree/bindings/iio/cdc/adi,ad7150.yaml b/Documentation/devicetree/bindings/iio/cdc/adi,ad7150.yaml
index 2155d3f5666c..3d7074fd17be 100644
--- a/Documentation/devicetree/bindings/iio/cdc/adi,ad7150.yaml
+++ b/Documentation/devicetree/bindings/iio/cdc/adi,ad7150.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/iio/cdc/adi,ad7150.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Analog device AD7150 and similar capacitance to digital convertors.
+title: Analog device AD7150 and similar capacitance to digital converters.
 
 maintainers:
   - Jonathan Cameron <jic23@kernel.org>
diff --git a/Documentation/devicetree/bindings/iio/common.yaml b/Documentation/devicetree/bindings/iio/common.yaml
index f845b41d74c4..b3a10af86d76 100644
--- a/Documentation/devicetree/bindings/iio/common.yaml
+++ b/Documentation/devicetree/bindings/iio/common.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 description: |
   This document defines device tree properties common to several iio
-  sensors. It doesn't constitue a device tree binding specification by itself but
+  sensors. It doesn't constitute a device tree binding specification by itself but
   is meant to be referenced by device tree bindings.
 
   When referenced from sensor tree bindings the properties defined in this
diff --git a/Documentation/devicetree/bindings/iio/frequency/adi,admv1014.yaml b/Documentation/devicetree/bindings/iio/frequency/adi,admv1014.yaml
index ab86daa2c56e..d17601dbc498 100644
--- a/Documentation/devicetree/bindings/iio/frequency/adi,admv1014.yaml
+++ b/Documentation/devicetree/bindings/iio/frequency/adi,admv1014.yaml
@@ -33,7 +33,7 @@ properties:
     items:
       - const: lo_in
     description:
-      External clock that provides the Local Oscilator input.
+      External clock that provides the Local Oscillator input.
 
   vcm-supply:
     description:
diff --git a/Documentation/devicetree/bindings/iio/humidity/ti,hdc2010.yaml b/Documentation/devicetree/bindings/iio/humidity/ti,hdc2010.yaml
index a2bc1fa92da0..79e75a8675cb 100644
--- a/Documentation/devicetree/bindings/iio/humidity/ti,hdc2010.yaml
+++ b/Documentation/devicetree/bindings/iio/humidity/ti,hdc2010.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Eugene Zaikonnikov <ez@norophonic.com>
 
 description: |
-  Relative humidity and tempereature sensors on I2C bus
+  Relative humidity and temperature sensors on I2C bus
 
   Datasheets are available at:
     http://www.ti.com/product/HDC2010/datasheet
diff --git a/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml b/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml
index c0a923febf13..b31f8120f14e 100644
--- a/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml
+++ b/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml
@@ -47,7 +47,7 @@ properties:
   reset-gpios:
     description:
       Optional GPIO for resetting the device.
-      If not present the device is not resetted during the probe.
+      If not present the device is not reset during the probe.
     maxItems: 1
 
   honeywell,pmin-pascal:
diff --git a/Documentation/devicetree/bindings/iio/proximity/ams,as3935.yaml b/Documentation/devicetree/bindings/iio/proximity/ams,as3935.yaml
index c999994e19e3..9567993ce480 100644
--- a/Documentation/devicetree/bindings/iio/proximity/ams,as3935.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/ams,as3935.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Matt Ranostay <matt.ranostay@konsulko.com>
 
 description:
-  This lightening distance sensor uses an I2C or SPI interface. The
+  This lightning distance sensor uses an I2C or SPI interface. The
   binding currently only covers the SPI option.
 
 properties:
diff --git a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
index e450821a741d..fff7e3d83a02 100644
--- a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
+++ b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
@@ -97,7 +97,7 @@ properties:
 
   interrupts:
     description: interrupt line(s) connected to the DRDY line(s) and/or the
-      Intertial interrupt lines INT1 and INT2 if these exist. This means up to
+      Inertial interrupt lines INT1 and INT2 if these exist. This means up to
       three interrupts, and the DRDY must be the first one if it exists on
       the package. The trigger edge of the interrupts is sometimes software
       configurable in the hardware so the operating system should parse this
diff --git a/Documentation/devicetree/bindings/input/rmi4/rmi_2d_sensor.txt b/Documentation/devicetree/bindings/input/rmi4/rmi_2d_sensor.txt
index 9afffbdf6e28..3d5348305239 100644
--- a/Documentation/devicetree/bindings/input/rmi4/rmi_2d_sensor.txt
+++ b/Documentation/devicetree/bindings/input/rmi4/rmi_2d_sensor.txt
@@ -34,8 +34,8 @@ Optional Properties:
 				mode.
 - syna,sensor-type: Set the sensor type. 1 for touchscreen 2 for touchpad.
 - syna,disable-report-mask: Mask for disabling posiiton reporting. Used to
-				disable reporing absolute position data.
-- syna,rezero-wait-ms: Time in miliseconds to wait after issuing a rezero
+				disable reporting absolute position data.
+- syna,rezero-wait-ms: Time in milliseconds to wait after issuing a rezero
 				command.
 
 
diff --git a/Documentation/devicetree/bindings/input/touchscreen/stmpe.txt b/Documentation/devicetree/bindings/input/touchscreen/stmpe.txt
index 238b51555c04..6a3a885caec4 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/stmpe.txt
+++ b/Documentation/devicetree/bindings/input/touchscreen/stmpe.txt
@@ -81,7 +81,7 @@ stmpe811@41 {
 	st,mod-12b = <1>;
 	/* internal ADC reference */
 	st,ref-sel = <0>;
-	/* ADC converstion time: 80 clocks */
+	/* ADC conversion time: 80 clocks */
 	st,sample-time = <4>;
 
 	stmpe_touchscreen {
diff --git a/Documentation/devicetree/bindings/input/touchscreen/tsc2007.txt b/Documentation/devicetree/bindings/input/touchscreen/tsc2007.txt
index ed00f61b8c08..210486a3fb11 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/tsc2007.txt
+++ b/Documentation/devicetree/bindings/input/touchscreen/tsc2007.txt
@@ -6,7 +6,7 @@ Required properties:
 - ti,x-plate-ohms: X-plate resistance in ohms.
 
 Optional properties:
-- gpios: the interrupt gpio the chip is connected to (trough the penirq pin).
+- gpios: the interrupt gpio the chip is connected to (through the penirq pin).
   The penirq pin goes to low when the panel is touched.
   (see GPIO binding[1] for more details).
 - interrupts: (gpio) interrupt to which the chip is connected
diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
index 39e64c7f6360..2bc38479a41e 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
@@ -49,7 +49,7 @@ properties:
 
       The 2nd cell contains the interrupt number for the interrupt type.
       SPI interrupts are in the range [0-987]. PPI interrupts are in the
-      range [0-15]. Extented SPI interrupts are in the range [0-1023].
+      range [0-15]. Extended SPI interrupts are in the range [0-1023].
       Extended PPI interrupts are in the range [0-127].
 
       The 3rd cell is the flags, encoded as follows:
diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
index 0f1af5a1c12e..bdd173056f72 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
@@ -70,7 +70,7 @@ Bank 1:
 25: DMA9
 26: DMA10
 27: DMA11-14 - shared interrupt for DMA 11 to 14
-28: DMAALL - triggers on all dma interrupts (including chanel 15)
+28: DMAALL - triggers on all dma interrupts (including channel 15)
 29: AUX
 30: ARM
 31: VPUDMA
diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7120-l2-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7120-l2-intc.yaml
index c680de1cbd56..786f2426399b 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7120-l2-intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7120-l2-intc.yaml
@@ -59,7 +59,7 @@ description: >
   ..
   31 ........................ X
 
-  The BCM3380 Level 1 / Level 2 interrrupt controller shows up in various forms
+  The BCM3380 Level 1 / Level 2 interrupt controller shows up in various forms
   on many BCM338x/BCM63xx chipsets. It has the following properties:
 
   - outputs a single interrupt signal to its interrupt controller parent
diff --git a/Documentation/devicetree/bindings/leds/backlight/mediatek,mt6370-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/mediatek,mt6370-backlight.yaml
index 5533b6562d92..16fc98e71233 100644
--- a/Documentation/devicetree/bindings/leds/backlight/mediatek,mt6370-backlight.yaml
+++ b/Documentation/devicetree/bindings/leds/backlight/mediatek,mt6370-backlight.yaml
@@ -66,7 +66,7 @@ properties:
 
   mediatek,bled-ocp-shutdown:
     description: |
-      Enable the backlight shutdown when OCP level triggerred.
+      Enable the backlight shutdown when OCP level triggered.
     type: boolean
 
   mediatek,bled-ocp-microamp:
diff --git a/Documentation/devicetree/bindings/leds/leds-lp55xx.yaml b/Documentation/devicetree/bindings/leds/leds-lp55xx.yaml
index 058be1fedbc8..e9d4514d0166 100644
--- a/Documentation/devicetree/bindings/leds/leds-lp55xx.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-lp55xx.yaml
@@ -106,7 +106,7 @@ patternProperties:
 
           max-cur:
             $ref: /schemas/types.yaml#/definitions/uint8
-            description: Maximun current at each LED channel.
+            description: Maximum current at each LED channel.
 
           reg:
             maximum: 8
@@ -129,7 +129,7 @@ patternProperties:
 
       max-cur:
         $ref: /schemas/types.yaml#/definitions/uint8
-        description: Maximun current at each LED channel.
+        description: Maximum current at each LED channel.
 
       reg:
         description: |
diff --git a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
index e6f1999cb22f..ea84ad426df1 100644
--- a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
@@ -56,7 +56,7 @@ properties:
     description: >
       A list of integer pairs, where each pair represent the dtest line the
       particular channel should be connected to and the flags denoting how the
-      value should be outputed, as defined in the datasheet. The number of
+      value should be outputted, as defined in the datasheet. The number of
       pairs should be the same as the number of channels.
     items:
       items:
diff --git a/Documentation/devicetree/bindings/mailbox/brcm,iproc-flexrm-mbox.txt b/Documentation/devicetree/bindings/mailbox/brcm,iproc-flexrm-mbox.txt
index 752ae6b00d26..c80065a1eb97 100644
--- a/Documentation/devicetree/bindings/mailbox/brcm,iproc-flexrm-mbox.txt
+++ b/Documentation/devicetree/bindings/mailbox/brcm,iproc-flexrm-mbox.txt
@@ -29,7 +29,7 @@ Required properties:
 		where N is the value specified by 2nd cell above. If FlexRM
 		does not get required number of completion messages in time
 		specified by this cell then it will inject one MSI interrupt
-		to CPU provided atleast one completion message is available.
+		to CPU provided at least one completion message is available.
 
 Optional properties:
 --------------------
diff --git a/Documentation/devicetree/bindings/mailbox/ti,omap-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/ti,omap-mailbox.yaml
index d433e496ec6e..4943c75e8a60 100644
--- a/Documentation/devicetree/bindings/mailbox/ti,omap-mailbox.yaml
+++ b/Documentation/devicetree/bindings/mailbox/ti,omap-mailbox.yaml
@@ -159,7 +159,7 @@ properties:
       a corresponding sysc interconnect node.
 
       This property is only needed on some legacy OMAP SoCs which have not
-      yet been converted to the ti,sysc interconnect hierarachy, but is
+      yet been converted to the ti,sysc interconnect hierarchy, but is
       otherwise considered obsolete.
 
 patternProperties:
diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml b/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
index b8ba85a2416c..c5cab549ee8e 100644
--- a/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
@@ -12,7 +12,7 @@ maintainers:
 description: |-
   The Toshiba TC358746 converts a parallel video stream into a MIPI CSI-2
   stream. The direction can be either parallel-in -> csi-out or csi-in ->
-  parallel-out The chip is programmable trough I2C and SPI but the SPI
+  parallel-out The chip is programmable through I2C and SPI but the SPI
   interface is only supported in parallel-in -> csi-out mode.
 
   Note that the current device tree bindings only support the
diff --git a/Documentation/devicetree/bindings/media/i2c/tvp5150.txt b/Documentation/devicetree/bindings/media/i2c/tvp5150.txt
index 719b2995dc17..94b908ace53c 100644
--- a/Documentation/devicetree/bindings/media/i2c/tvp5150.txt
+++ b/Documentation/devicetree/bindings/media/i2c/tvp5150.txt
@@ -53,7 +53,7 @@ Optional Connector Properties:
 ==============================
 
 - sdtv-standards: Set the possible signals to which the hardware tries to lock
-                  instead of using the autodetection mechnism. Please look at
+                  instead of using the autodetection mechanism. Please look at
                   [1] for more information.
 
 [1] Documentation/devicetree/bindings/display/connector/analog-tv-connector.yaml.
diff --git a/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml b/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml
index dca9b0c5e106..a500a585c692 100644
--- a/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml
@@ -36,7 +36,7 @@ description: |
   controls the information of each hardware independent which include clk/power/irq.
 
   There are two workqueues in parent device: lat workqueue and core workqueue. They are used
-  to lat and core hardware deocder. Lat workqueue need to get input bitstream and lat buffer,
+  to lat and core hardware decoder. Lat workqueue need to get input bitstream and lat buffer,
   then enable lat to decode, writing the result to lat buffer, dislabe hardware when lat decode
   done. Core workqueue need to get lat buffer and output buffer, then enable core to decode,
   writing the result to output buffer, disable hardware when core decode done. These two
diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml
index aee7f6cf1300..2381660b324c 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml
@@ -67,7 +67,7 @@ properties:
     minimum: 0
     maximum: 31
     description: the hardware id of this larb. It's only required when this
-      hardward id is not consecutive from its M4U point of view.
+      hardware id is not consecutive from its M4U point of view.
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
index fb4920397d08..4e4af3cfc0fe 100644
--- a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
@@ -152,7 +152,7 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the phy side CA line
-      (incluing command line, address line and clock line) drive strength.
+      (including command line, address line and clock line) drive strength.
     default: 40
 
   rockchip,phy_ddr3_dq_drv:
@@ -305,7 +305,7 @@ properties:
     description:
       Defines the self-refresh power down idle period in which memories are
       placed into self-refresh power down mode if bus is idle for
-      srpd_lite_idle nanoseonds. This parameter is for LPDDR4 only.
+      srpd_lite_idle nanoseconds. This parameter is for LPDDR4 only.
 
   rockchip,standby-idle-ns:
     description:
diff --git a/Documentation/devicetree/bindings/memory-controllers/xlnx,zynq-ddrc-a05.yaml b/Documentation/devicetree/bindings/memory-controllers/xlnx,zynq-ddrc-a05.yaml
index 75143db51411..b74ad9a3305c 100644
--- a/Documentation/devicetree/bindings/memory-controllers/xlnx,zynq-ddrc-a05.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/xlnx,zynq-ddrc-a05.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 description:
   The Zynq DDR ECC controller has an optional ECC support in half-bus width
-  (16-bit) configuration. It is cappable of correcting single bit ECC errors
+  (16-bit) configuration. It is capable of correcting single bit ECC errors
   and detecting double bit ECC errors.
 
 properties:
diff --git a/Documentation/devicetree/bindings/mfd/aspeed-lpc.yaml b/Documentation/devicetree/bindings/mfd/aspeed-lpc.yaml
index 750996d9a175..5dfe77aca167 100644
--- a/Documentation/devicetree/bindings/mfd/aspeed-lpc.yaml
+++ b/Documentation/devicetree/bindings/mfd/aspeed-lpc.yaml
@@ -27,7 +27,7 @@ description:
     as LPC firmware hub cycles, configuration of the LPC-to-AHB mapping, UART
     management and bus snoop configuration.
 
-  * A set of SuperIO[3] scratch registers enableing implementation of e.g. custom
+  * A set of SuperIO[3] scratch registers enabling implementation of e.g. custom
     hardware management protocols for handover between the host and baseboard
     management controller.
 
diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd9576-pmic.yaml b/Documentation/devicetree/bindings/mfd/rohm,bd9576-pmic.yaml
index 10f207a38178..b7b323b1a4f2 100644
--- a/Documentation/devicetree/bindings/mfd/rohm,bd9576-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/rohm,bd9576-pmic.yaml
@@ -34,7 +34,7 @@ properties:
       BD9576 and BD9573 VOUT1 regulator enable state can be individually
       controlled by a GPIO. This is dictated by state of vout1-en pin during
       the PMIC startup. If vout1-en is LOW during PMIC startup then the VOUT1
-      enable sate is controlled via this pin. Set this property if vout1-en
+      enable state is controlled via this pin. Set this property if vout1-en
       is wired to be down at PMIC start-up.
     type: boolean
 
@@ -61,7 +61,7 @@ properties:
   rohm,hw-timeout-ms:
     maxItems: 2
     description:
-      Watchog timeout in milliseconds. If single value is given it is
+      Watchdog timeout in milliseconds. If single value is given it is
       the maximum timeout. Eg. if pinging watchdog is not done within this time
       limit the watchdog will be triggered. If two values are given watchdog
       is configured in "window mode". Then first value is limit for short-ping
diff --git a/Documentation/devicetree/bindings/mfd/stericsson,ab8500.yaml b/Documentation/devicetree/bindings/mfd/stericsson,ab8500.yaml
index 6c8d42f27fe8..94f9767a927d 100644
--- a/Documentation/devicetree/bindings/mfd/stericsson,ab8500.yaml
+++ b/Documentation/devicetree/bindings/mfd/stericsson,ab8500.yaml
@@ -313,7 +313,7 @@ properties:
           - const: audioclk
 
       stericsson,earpeice-cmv:
-        description: Earpeice voltage
+        description: Earpiece voltage
         $ref: /schemas/types.yaml#/definitions/uint32
         enum: [ 950, 1100, 1270, 1580 ]
 
@@ -337,39 +337,39 @@ properties:
           with power.
 
       ab8500_ldo_aux1:
-        description: The voltage for the auxilary LDO regulator 1
+        description: The voltage for the auxiliary LDO regulator 1
         type: object
         $ref: ../regulator/regulator.yaml#
         unevaluatedProperties: false
 
       ab8500_ldo_aux2:
-        description: The voltage for the auxilary LDO regulator 2
+        description: The voltage for the auxiliary LDO regulator 2
         type: object
         $ref: ../regulator/regulator.yaml#
         unevaluatedProperties: false
 
       ab8500_ldo_aux3:
-        description: The voltage for the auxilary LDO regulator 3
+        description: The voltage for the auxiliary LDO regulator 3
         type: object
         $ref: ../regulator/regulator.yaml#
         unevaluatedProperties: false
 
       ab8500_ldo_aux4:
-        description: The voltage for the auxilary LDO regulator 4
+        description: The voltage for the auxiliary LDO regulator 4
           only present on AB8505
         type: object
         $ref: ../regulator/regulator.yaml#
         unevaluatedProperties: false
 
       ab8500_ldo_aux5:
-        description: The voltage for the auxilary LDO regulator 5
+        description: The voltage for the auxiliary LDO regulator 5
           only present on AB8505
         type: object
         $ref: ../regulator/regulator.yaml#
         unevaluatedProperties: false
 
       ab8500_ldo_aux6:
-        description: The voltage for the auxilary LDO regulator 6
+        description: The voltage for the auxiliary LDO regulator 6
           only present on AB8505
         type: object
         $ref: ../regulator/regulator.yaml#
@@ -378,7 +378,7 @@ properties:
       # There is never any AUX7 regulator which is confusing
 
       ab8500_ldo_aux8:
-        description: The voltage for the auxilary LDO regulator 8
+        description: The voltage for the auxiliary LDO regulator 8
           only present on AB8505
         type: object
         $ref: ../regulator/regulator.yaml#
diff --git a/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml b/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml
index 1d4d88f7e82d..a66d58b4d1f2 100644
--- a/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml
+++ b/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml
@@ -107,7 +107,7 @@ properties:
         $ref: ../regulator/regulator.yaml#
 
       db8500_vrf1:
-        description: RF transciever voltage regulator.
+        description: RF transceiver voltage regulator.
         type: object
         $ref: ../regulator/regulator.yaml#
 
diff --git a/Documentation/devicetree/bindings/mmc/pxa-mmc.txt b/Documentation/devicetree/bindings/mmc/pxa-mmc.txt
index 5f5c2bec2b8c..66a78eae4dc9 100644
--- a/Documentation/devicetree/bindings/mmc/pxa-mmc.txt
+++ b/Documentation/devicetree/bindings/mmc/pxa-mmc.txt
@@ -9,7 +9,7 @@ Required properties:
 Optional properties:
 - marvell,detect-delay-ms: sets the detection delay timeout in ms.
 
-In addition to the properties described in this docuent, the details
+In addition to the properties described in this document, the details
 described in mmc.txt are supported.
 
 Examples:
diff --git a/Documentation/devicetree/bindings/mmc/ti-omap-hsmmc.txt b/Documentation/devicetree/bindings/mmc/ti-omap-hsmmc.txt
index 57d077c0b7c1..7a0e9dcdc444 100644
--- a/Documentation/devicetree/bindings/mmc/ti-omap-hsmmc.txt
+++ b/Documentation/devicetree/bindings/mmc/ti-omap-hsmmc.txt
@@ -95,7 +95,7 @@ while in suspend.
       | card | -- CIRQ -->  | hsmmc | -- IRQ -->  | CPU |
        ------                -------               -----
 
-In suspend the fclk is off and the module is disfunctional. Even register reads
+In suspend the fclk is off and the module is dysfunctional. Even register reads
 will fail. A small logic in the host will request fclk restore, when an
 external event is detected. Once the clock is restored, the host detects the
 event normally. Since am33xx doesn't have this line it never wakes from
diff --git a/Documentation/devicetree/bindings/net/brcm,bcm7445-switch-v4.0.txt b/Documentation/devicetree/bindings/net/brcm,bcm7445-switch-v4.0.txt
index d0935d2afef8..284cddb3118e 100644
--- a/Documentation/devicetree/bindings/net/brcm,bcm7445-switch-v4.0.txt
+++ b/Documentation/devicetree/bindings/net/brcm,bcm7445-switch-v4.0.txt
@@ -1,4 +1,4 @@
-* Broadcom Starfighter 2 integrated swich
+* Broadcom Starfighter 2 integrated switch
 
 See dsa/brcm,bcm7445-switch-v4.0.yaml for the documentation.
 
diff --git a/Documentation/devicetree/bindings/net/can/cc770.txt b/Documentation/devicetree/bindings/net/can/cc770.txt
index 77027bf6460a..042200cf4419 100644
--- a/Documentation/devicetree/bindings/net/can/cc770.txt
+++ b/Documentation/devicetree/bindings/net/can/cc770.txt
@@ -26,7 +26,7 @@ Optional properties:
 	will be disabled.
 
 - bosch,slew-rate : slew rate of the CLKOUT signal. If not specified,
-	a resonable value will be calculated.
+	a reasonable value will be calculated.
 
 - bosch,disconnect-rx0-input : see data sheet.
 
diff --git a/Documentation/devicetree/bindings/net/dsa/brcm,sf2.yaml b/Documentation/devicetree/bindings/net/dsa/brcm,sf2.yaml
index c745407f2f68..b06c416893ff 100644
--- a/Documentation/devicetree/bindings/net/dsa/brcm,sf2.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/brcm,sf2.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/dsa/brcm,sf2.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom Starfighter 2 integrated swich
+title: Broadcom Starfighter 2 integrated switch
 
 maintainers:
   - Florian Fainelli <f.fainelli@gmail.com>
diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index c1241c8a3b77..8fb2a6ee7e5b 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -110,7 +110,7 @@ properties:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
       If set, indicates that PHY will disable swap of the
-      TX/RX lanes. This property allows the PHY to work correcly after
+      TX/RX lanes. This property allows the PHY to work correctly after
       e.g. wrong bootstrap configuration caused by issues in PCB
       layout design.
 
diff --git a/Documentation/devicetree/bindings/net/mediatek-dwmac.yaml b/Documentation/devicetree/bindings/net/mediatek-dwmac.yaml
index 5aa320c8af5a..ed9d845f6008 100644
--- a/Documentation/devicetree/bindings/net/mediatek-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/mediatek-dwmac.yaml
@@ -129,7 +129,7 @@ properties:
     type: boolean
     description:
       If present, indicates that MAC supports WOL(Wake-On-LAN), and MAC WOL will be enabled.
-      Otherwise, PHY WOL is perferred.
+      Otherwise, PHY WOL is preferred.
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/net/microchip,lan95xx.yaml b/Documentation/devicetree/bindings/net/microchip,lan95xx.yaml
index 0b97e14d947f..77c9bbf987e1 100644
--- a/Documentation/devicetree/bindings/net/microchip,lan95xx.yaml
+++ b/Documentation/devicetree/bindings/net/microchip,lan95xx.yaml
@@ -33,7 +33,7 @@ properties:
           - usb424,9906   # SMSC9505A USB Ethernet Device (HAL)
           - usb424,9907   # SMSC9500 USB Ethernet Device (Alternate ID)
           - usb424,9908   # SMSC9500A USB Ethernet Device (Alternate ID)
-          - usb424,9909   # SMSC9512/9514 USB Hub & Ethernet Devic.  ID)
+          - usb424,9909   # SMSC9512/9514 USB Hub & Ethernet Device  ID)
           - usb424,9e00   # SMSC9500A USB Ethernet Device
           - usb424,9e01   # SMSC9505A USB Ethernet Device
           - usb424,9e08   # SMSC LAN89530 USB Ethernet Device
diff --git a/Documentation/devicetree/bindings/net/nfc/marvell,nci.yaml b/Documentation/devicetree/bindings/net/nfc/marvell,nci.yaml
index 8e9a95f24c80..89663fdd3eba 100644
--- a/Documentation/devicetree/bindings/net/nfc/marvell,nci.yaml
+++ b/Documentation/devicetree/bindings/net/nfc/marvell,nci.yaml
@@ -37,13 +37,13 @@ properties:
     type: boolean
     description: |
       For I2C type of connection. Specifies that the chip read event shall be
-      trigged on falling edge.
+      triggered on falling edge.
 
   i2c-int-rising:
     type: boolean
     description: |
       For I2C type of connection.  Specifies that the chip read event shall be
-      trigged on rising edge.
+      triggered on rising edge.
 
   break-control:
     type: boolean
diff --git a/Documentation/devicetree/bindings/net/samsung-sxgbe.txt b/Documentation/devicetree/bindings/net/samsung-sxgbe.txt
index 2cff6d8a585a..b9381b761a27 100644
--- a/Documentation/devicetree/bindings/net/samsung-sxgbe.txt
+++ b/Documentation/devicetree/bindings/net/samsung-sxgbe.txt
@@ -5,10 +5,10 @@ Required properties:
 - reg: Address and length of the register set for the device
 - interrupts: Should contain the SXGBE interrupts
   These interrupts are ordered by fixed and follows variable
-  trasmit DMA interrupts, receive DMA interrupts and lpi interrupt.
+  transmit DMA interrupts, receive DMA interrupts and lpi interrupt.
   index 0 - this is fixed common interrupt of SXGBE and it is always
   available.
-  index 1 to 25 - 8 variable trasmit interrupts, variable 16 receive interrupts
+  index 1 to 25 - 8 variable transmit interrupts, variable 16 receive interrupts
   and 1 optional lpi interrupt.
 - phy-mode: String, operation mode of the PHY interface.
   Supported values are: "sgmii", "xgmii".
diff --git a/Documentation/devicetree/bindings/net/snps,dwc-qos-ethernet.txt b/Documentation/devicetree/bindings/net/snps,dwc-qos-ethernet.txt
index ad3c6e109ce1..bb0224a3e826 100644
--- a/Documentation/devicetree/bindings/net/snps,dwc-qos-ethernet.txt
+++ b/Documentation/devicetree/bindings/net/snps,dwc-qos-ethernet.txt
@@ -110,7 +110,7 @@ Optional properties:
   It depends on the SoC configuration.
 - snps,read-requests: Number of read requests that the AXI port can issue.
   It depends on the SoC configuration.
-- snps,burst-map: Bitmap of allowed AXI burst lengts, with the LSB
+- snps,burst-map: Bitmap of allowed AXI burst lengths, with the LSB
   representing 4, then 8 etc.
 - snps,txpbl: DMA Programmable burst length for the TX DMA
 - snps,rxpbl: DMA Programmable burst length for the RX DMA
diff --git a/Documentation/devicetree/bindings/net/sti-dwmac.txt b/Documentation/devicetree/bindings/net/sti-dwmac.txt
index 42cd075456ab..e16287c06e5e 100644
--- a/Documentation/devicetree/bindings/net/sti-dwmac.txt
+++ b/Documentation/devicetree/bindings/net/sti-dwmac.txt
@@ -21,7 +21,7 @@ Optional properties:
    MAC can generate it.
  - st,tx-retime-src: This specifies which clk is wired up to the mac for
    retimeing tx lines. This is totally board dependent and can take one of the
-   posssible values from "txclk", "clk_125" or "clkgen".
+   possible values from "txclk", "clk_125" or "clkgen".
    If not passed, the internal clock will be used by default.
  - sti-ethclk: this is the phy clock.
  - sti-clkconf: this is an extra sysconfig register, available in new SoCs,
diff --git a/Documentation/devicetree/bindings/net/xilinx_gmii2rgmii.txt b/Documentation/devicetree/bindings/net/xilinx_gmii2rgmii.txt
index 038dda48b8e6..425df7590e26 100644
--- a/Documentation/devicetree/bindings/net/xilinx_gmii2rgmii.txt
+++ b/Documentation/devicetree/bindings/net/xilinx_gmii2rgmii.txt
@@ -7,7 +7,7 @@ Ethernet physical media devices (PHY) and the Gigabit Ethernet controller.
 This core can be used in all three modes of operation(10/100/1000 Mb/s).
 The Management Data Input/Output (MDIO) interface is used to configure the
 Speed of operation. This core can switch dynamically between the three
-Different speed modes by configuring the conveter register through mdio write.
+Different speed modes by configuring the converter register through mdio write.
 
 This converter sits between the ethernet MAC and the external phy.
 MAC <==> GMII2RGMII <==> RGMII_PHY
diff --git a/Documentation/devicetree/bindings/nios2/nios2.txt b/Documentation/devicetree/bindings/nios2/nios2.txt
index b95e831bcba3..3e9cabe667b3 100644
--- a/Documentation/devicetree/bindings/nios2/nios2.txt
+++ b/Documentation/devicetree/bindings/nios2/nios2.txt
@@ -23,7 +23,7 @@ Required properties:
 - altr,tlb-num-ways: Specifies the number of set-associativity ways in the TLB.
 - altr,tlb-num-entries: Specifies the number of entries in the TLB.
 - altr,tlb-ptr-sz: Specifies size of TLB pointer.
-- altr,has-mul: Specifies CPU hardware multipy support, should be 1.
+- altr,has-mul: Specifies CPU hardware multiply support, should be 1.
 - altr,has-mmu: Specifies CPU support MMU support, should be 1.
 - altr,has-initda: Specifies CPU support initda instruction, should be 1.
 - altr,reset-addr: Specifies CPU reset address
diff --git a/Documentation/devicetree/bindings/nvmem/layouts/onie,tlv-layout.yaml b/Documentation/devicetree/bindings/nvmem/layouts/onie,tlv-layout.yaml
index 714a6538cc7c..ee8ac322332d 100644
--- a/Documentation/devicetree/bindings/nvmem/layouts/onie,tlv-layout.yaml
+++ b/Documentation/devicetree/bindings/nvmem/layouts/onie,tlv-layout.yaml
@@ -14,7 +14,7 @@ description:
   infrastructure shall provide a non-volatile memory with a table whose the
   content is well specified and gives many information about the manufacturer
   (name, country of manufacture, etc) as well as device caracteristics (serial
-  number, hardware version, mac addresses, etc). The underlaying device type
+  number, hardware version, mac addresses, etc). The underlying device type
   (flash, EEPROM,...) is not specified. The exact location of each value is also
   dynamic and should be discovered at run time because it depends on the
   parameters the manufacturer decided to embed.
diff --git a/Documentation/devicetree/bindings/phy/phy-hisi-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-hisi-inno-usb2.txt
index 0d70c8341095..104953e849e7 100644
--- a/Documentation/devicetree/bindings/phy/phy-hisi-inno-usb2.txt
+++ b/Documentation/devicetree/bindings/phy/phy-hisi-inno-usb2.txt
@@ -14,7 +14,7 @@ Required properties:
 - #size-cells: Must be 0.
 
 The INNO USB2 PHY device should be a child node of peripheral controller that
-contains the PHY configuration register, and each device suppports up to 2 PHY
+contains the PHY configuration register, and each device supports up to 2 PHY
 ports which are represented as child nodes of INNO USB2 PHY device.
 
 Required properties for PHY port node:
diff --git a/Documentation/devicetree/bindings/phy/pistachio-usb-phy.txt b/Documentation/devicetree/bindings/phy/pistachio-usb-phy.txt
index afbc7e24a3de..c7970c07ee32 100644
--- a/Documentation/devicetree/bindings/phy/pistachio-usb-phy.txt
+++ b/Documentation/devicetree/bindings/phy/pistachio-usb-phy.txt
@@ -8,7 +8,7 @@ Required properties:
  - clocks: Must contain an entry for each entry in clock-names.
    See ../clock/clock-bindings.txt for details.
  - clock-names: Must include "usb_phy".
- - img,cr-top: Must constain a phandle to the CR_TOP syscon node.
+ - img,cr-top: Must contain a phandle to the CR_TOP syscon node.
  - img,refclk: Indicates the reference clock source for the USB PHY.
    See <dt-bindings/phy/phy-pistachio-usb.h> for a list of valid values.
 
diff --git a/Documentation/devicetree/bindings/phy/pxa1928-usb-phy.txt b/Documentation/devicetree/bindings/phy/pxa1928-usb-phy.txt
index 660a13ca90b3..da94426aa694 100644
--- a/Documentation/devicetree/bindings/phy/pxa1928-usb-phy.txt
+++ b/Documentation/devicetree/bindings/phy/pxa1928-usb-phy.txt
@@ -4,7 +4,7 @@ Required properties:
 - compatible: "marvell,pxa1928-usb-phy" or "marvell,pxa1928-hsic-phy"
 - reg: base address and length of the registers
 - clocks - A single clock. From common clock binding.
-- #phys-cells: should be 0. From commmon phy binding.
+- #phys-cells: should be 0. From common phy binding.
 - resets: reference to the reset controller
 
 Example:
diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
index 0e6505e9da50..5ac994b3c0aa 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Heiko Stuebner <heiko@sntech.de>
 
 description: |
-  The Rockchip SoC has a MIPI CSI D-PHY based on an Innosilicon IP wich
+  The Rockchip SoC has a MIPI CSI D-PHY based on an Innosilicon IP which
   connects to the ISP1 (Image Signal Processing unit v1.0) for CSI cameras.
 
 properties:
diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index 9ea30eaba314..3f16ff14484d 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -59,7 +59,7 @@ properties:
     description:
       GPIO to signal Type-C cable orientation for lane swap.
       If GPIO is active, lane 0 and lane 1 of SERDES will be swapped to
-      achieve the funtionality of an external type-C plug flip mux.
+      achieve the functionality of an external type-C plug flip mux.
 
   typec-dir-debounce-ms:
     minimum: 100
diff --git a/Documentation/devicetree/bindings/phy/ti-phy.txt b/Documentation/devicetree/bindings/phy/ti-phy.txt
index 60c9d0ac75e6..7c7936b89f2c 100644
--- a/Documentation/devicetree/bindings/phy/ti-phy.txt
+++ b/Documentation/devicetree/bindings/phy/ti-phy.txt
@@ -62,7 +62,7 @@ Deprecated properties:
  - ctrl-module : phandle of the control module used by PHY driver to power on
    the PHY.
 
-Recommended properies:
+Recommended properties:
  - syscon-phy-power : phandle/offset pair. Phandle to the system control
    module and the register offset to power on/off the PHY.
 
diff --git a/Documentation/devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml
index 467016cbb037..450240570314 100644
--- a/Documentation/devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml
@@ -97,7 +97,7 @@ patternProperties:
   # It's pretty scary, but the basic idea is that:
   #   - One node name can start with either s- or r- for PRCM nodes,
   #   - Then, the name itself can be any repetition of <string>- (to
-  #     accomodate with nodes like uart4-rts-cts-pins), where each
+  #     accommodate with nodes like uart4-rts-cts-pins), where each
   #     string can be either starting with 'p' but in a string longer
   #     than 3, or something that doesn't start with 'p',
   #   - Then, the bank name is optional and will be between pa and pg,
diff --git a/Documentation/devicetree/bindings/pinctrl/canaan,k210-fpioa.yaml b/Documentation/devicetree/bindings/pinctrl/canaan,k210-fpioa.yaml
index 739a08f00467..beb769e887c7 100644
--- a/Documentation/devicetree/bindings/pinctrl/canaan,k210-fpioa.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/canaan,k210-fpioa.yaml
@@ -11,7 +11,7 @@ maintainers:
 
 description:
   The Canaan Kendryte K210 SoC Fully Programmable IO Array (FPIOA)
-  controller allows assiging any of 256 possible functions to any of
+  controller allows assigning any of 256 possible functions to any of
   48 IO pins of the SoC. Pin function configuration is performed on
   a per-pin basis.
 
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
index 7f0e2d6cd6d9..3bbc00df5548 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
@@ -159,7 +159,7 @@ patternProperties:
 
           mediatek,pull-up-adv:
             description: |
-              Pull up setings for 2 pull resistors, R0 and R1. User can
+              Pull up settings for 2 pull resistors, R0 and R1. User can
               configure those special pins. Valid arguments are described as
               below:
               0: (R1, R0) = (0, 0) which means R1 disabled and R0 disabled.
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6795-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6795-pinctrl.yaml
index 601d86aecdd4..68e91c05f122 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6795-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6795-pinctrl.yaml
@@ -130,7 +130,7 @@ patternProperties:
 
           mediatek,pull-up-adv:
             description: |
-              Pull up setings for 2 pull resistors, R0 and R1. User can
+              Pull up settings for 2 pull resistors, R0 and R1. User can
               configure those special pins. Valid arguments are described as
               below:
               0: (R1, R0) = (0, 0) which means R1 disabled and R0 disabled.
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7981-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7981-pinctrl.yaml
index 10717cee9058..74d52a741f6f 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7981-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7981-pinctrl.yaml
@@ -386,7 +386,7 @@ patternProperties:
           mediatek,pull-up-adv:
             description: |
               Valid arguments for 'mediatek,pull-up-adv' are '0', '1', '2', '3'
-              Pull up setings for 2 pull resistors, R0 and R1. Valid arguments
+              Pull up settings for 2 pull resistors, R0 and R1. Valid arguments
               are described as below:
               0: (R1, R0) = (0, 0) which means R1 disabled and R0 disabled.
               1: (R1, R0) = (0, 1) which means R1 disabled and R0 enabled.
@@ -398,7 +398,7 @@ patternProperties:
           mediatek,pull-down-adv:
             description: |
               Valid arguments for 'mediatek,pull-up-adv' are '0', '1', '2', '3'
-              Pull down setings for 2 pull resistors, R0 and R1. Valid arguments
+              Pull down settings for 2 pull resistors, R0 and R1. Valid arguments
               are described as below:
               0: (R1, R0) = (0, 0) which means R1 disabled and R0 disabled.
               1: (R1, R0) = (0, 1) which means R1 disabled and R0 enabled.
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7986-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7986-pinctrl.yaml
index 0f615ada290a..5ad65135fe1c 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7986-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7986-pinctrl.yaml
@@ -332,7 +332,7 @@ patternProperties:
           mediatek,pull-up-adv:
             description: |
               Valid arguments for 'mediatek,pull-up-adv' are '0', '1', '2', '3'
-              Pull up setings for 2 pull resistors, R0 and R1. Valid arguments
+              Pull up settings for 2 pull resistors, R0 and R1. Valid arguments
               are described as below:
               0: (R1, R0) = (0, 0) which means R1 disabled and R0 disabled.
               1: (R1, R0) = (0, 1) which means R1 disabled and R0 enabled.
@@ -344,7 +344,7 @@ patternProperties:
           mediatek,pull-down-adv:
             description: |
               Valid arguments for 'mediatek,pull-up-adv' are '0', '1', '2', '3'
-              Pull down setings for 2 pull resistors, R0 and R1. Valid arguments
+              Pull down settings for 2 pull resistors, R0 and R1. Valid arguments
               are described as below:
               0: (R1, R0) = (0, 0) which means R1 disabled and R0 disabled.
               1: (R1, R0) = (0, 1) which means R1 disabled and R0 enabled.
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml
index ff24cf29eea7..8507bd15f243 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml
@@ -143,7 +143,7 @@ patternProperties:
 
           mediatek,pull-up-adv:
             description: |
-              Pull up setings for 2 pull resistors, R0 and R1. User can
+              Pull up settings for 2 pull resistors, R0 and R1. User can
               configure those special pins. Valid arguments are described as
               below:
               0: (R1, R0) = (0, 0) which means R1 disabled and R0 disabled.
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml
index 61b33b5416f5..7b43e7857281 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml
@@ -149,7 +149,7 @@ patternProperties:
             deprecated: true
             description: |
               DEPRECATED: Please use bias-pull-up instead.
-              Pull up setings for 2 pull resistors, R0 and R1. User can
+              Pull up settings for 2 pull resistors, R0 and R1. User can
               configure those special pins. Valid arguments are described as
               below:
               0: (R1, R0) = (0, 0) which means R1 disabled and R0 disabled.
diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-max77620.txt b/Documentation/devicetree/bindings/pinctrl/pinctrl-max77620.txt
index 511fc234558b..28fbca180068 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl-max77620.txt
+++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-max77620.txt
@@ -38,7 +38,7 @@ Valid values for function properties are:
 	gpio, lpm-control-in, fps-out, 32k-out, sd0-dvs-in, sd1-dvs-in,
 	reference-out
 
-Theres is also customised properties for the GPIO1, GPIO2 and GPIO3. These
+There are also customised properties for the GPIO1, GPIO2 and GPIO3. These
 customised properties are required to configure FPS configuration parameters
 of these GPIOs. Please refer <devicetree/bindings/mfd/max77620.txt> for more
 detail of Flexible Power Sequence (FPS).
diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt b/Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt
index 939cb5b6ffea..6ad49e51c72e 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt
+++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt
@@ -40,7 +40,7 @@ on default.
 
 Valid values for function properties are: gpio.
 
-Theres is also not customised properties for any GPIO.
+There are also not customised properties for any GPIO.
 
 Example:
 --------
diff --git a/Documentation/devicetree/bindings/pinctrl/sprd,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/sprd,pinctrl.txt
index b1cea7a3a071..779b8ef0f6e6 100644
--- a/Documentation/devicetree/bindings/pinctrl/sprd,pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/sprd,pinctrl.txt
@@ -8,7 +8,7 @@ to configure for some global common configuration, such as domain
 pad driving level, system control select and so on ("domain pad
 driving level": One pin can output 3.0v or 1.8v, depending on the
 related domain pad driving selection, if the related domain pad
-slect 3.0v, then the pin can output 3.0v. "system control" is used
+select 3.0v, then the pin can output 3.0v. "system control" is used
 to choose one function (like: UART0) for which system, since we
 have several systems (AP/CP/CM4) on one SoC.).
 
diff --git a/Documentation/devicetree/bindings/pmem/pmem-region.txt b/Documentation/devicetree/bindings/pmem/pmem-region.txt
index 5cfa4f016a00..cd79975e85ec 100644
--- a/Documentation/devicetree/bindings/pmem/pmem-region.txt
+++ b/Documentation/devicetree/bindings/pmem/pmem-region.txt
@@ -19,7 +19,7 @@ Required properties:
 	- compatible = "pmem-region"
 
 	- reg = <base, size>;
-		The reg property should specificy an address range that is
+		The reg property should specify an address range that is
 		translatable to a system physical address range. This address
 		range should be mappable as normal system memory would be
 		(i.e cacheable).
@@ -30,7 +30,7 @@ Required properties:
 		node implies no special relationship between the two ranges.
 
 Optional properties:
-	- Any relevant NUMA assocativity properties for the target platform.
+	- Any relevant NUMA associativity properties for the target platform.
 
 	- volatile; This property indicates that this region is actually
 	  backed by non-persistent memory. This lets the OS know that it
diff --git a/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.yaml b/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.yaml
index 559718997de7..fba6914ec40d 100644
--- a/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.yaml
+++ b/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.yaml
@@ -58,7 +58,7 @@ $defs:
   pd-node:
     type: object
     description:
-      PM domain node representing a PM domain.  This node hould be named by
+      PM domain node representing a PM domain.  This node should be named by
       the real power area name, and thus its name should be unique.
 
     properties:
diff --git a/Documentation/devicetree/bindings/power/supply/sbs,sbs-manager.yaml b/Documentation/devicetree/bindings/power/supply/sbs,sbs-manager.yaml
index 99f506d6b0a0..f255f3858d08 100644
--- a/Documentation/devicetree/bindings/power/supply/sbs,sbs-manager.yaml
+++ b/Documentation/devicetree/bindings/power/supply/sbs,sbs-manager.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/power/supply/sbs,sbs-manager.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: SBS compliant manger
+title: SBS compliant manager
 
 maintainers:
   - Sebastian Reichel <sre@kernel.org>
diff --git a/Documentation/devicetree/bindings/powerpc/fsl/cpus.txt b/Documentation/devicetree/bindings/powerpc/fsl/cpus.txt
index 801c66069121..4787db8de23f 100644
--- a/Documentation/devicetree/bindings/powerpc/fsl/cpus.txt
+++ b/Documentation/devicetree/bindings/powerpc/fsl/cpus.txt
@@ -28,6 +28,6 @@ PROPERTIES
 	Snoop ID Port Mapping registers, which are part of the CoreNet
 	Coherency fabric (CCF), provide a CoreNet Coherency Subdomain
 	ID/CoreNet Snoop ID to cpu mapping functions.  Certain bits from
-	these registers should be set if the coresponding CPU should be
+	these registers should be set if the corresponding CPU should be
 	snooped.  This property defines a bitmask which selects the bit
 	that should be set if this cpu should be snooped.
diff --git a/Documentation/devicetree/bindings/powerpc/fsl/dcsr.txt b/Documentation/devicetree/bindings/powerpc/fsl/dcsr.txt
index 4b01e1afafda..62744afb5b75 100644
--- a/Documentation/devicetree/bindings/powerpc/fsl/dcsr.txt
+++ b/Documentation/devicetree/bindings/powerpc/fsl/dcsr.txt
@@ -185,10 +185,10 @@ PROPERTIES
 	with distinct functionality.
 
 	The first register range describes the CoreNet Debug Controller
-	functionalty to perform transaction and transaction attribute matches.
+	functionality to perform transaction and transaction attribute matches.
 
 	The second register range describes the CoreNet Debug Controller
-	functionalty to trigger event notifications and debug traces.
+	functionality to trigger event notifications and debug traces.
 
 EXAMPLE
 		dcsr-corenet {
diff --git a/Documentation/devicetree/bindings/powerpc/fsl/raideng.txt b/Documentation/devicetree/bindings/powerpc/fsl/raideng.txt
index 4ad29b9ac2ac..ea902bc5873d 100644
--- a/Documentation/devicetree/bindings/powerpc/fsl/raideng.txt
+++ b/Documentation/devicetree/bindings/powerpc/fsl/raideng.txt
@@ -60,7 +60,7 @@ Optional property:
 - fsl,liodn:	Specifies the LIODN to be used for Job Ring. This
 		property is normally set by firmware. Value
 		is of 12-bits which is the LIODN number for this JR.
-		This property is used by the IOMMU (PAMU) to distinquish
+		This property is used by the IOMMU (PAMU) to distinguish
 		transactions from this JR and than be able to do address
 		translation & protection accordingly.
 
diff --git a/Documentation/devicetree/bindings/powerpc/nintendo/gamecube.txt b/Documentation/devicetree/bindings/powerpc/nintendo/gamecube.txt
index b558585b1aaf..3826bd1219d1 100644
--- a/Documentation/devicetree/bindings/powerpc/nintendo/gamecube.txt
+++ b/Documentation/devicetree/bindings/powerpc/nintendo/gamecube.txt
@@ -42,7 +42,7 @@ Nintendo GameCube device tree
 
   - compatible : should be "nintendo,flipper-pic"
 
-1.c) The Digital Signal Procesor (DSP) node
+1.c) The Digital Signal Processor (DSP) node
 
   Represents the digital signal processor interface, designed to offload
   audio related tasks.
diff --git a/Documentation/devicetree/bindings/powerpc/nintendo/wii.txt b/Documentation/devicetree/bindings/powerpc/nintendo/wii.txt
index 3ff6ebbb4998..6f69a9dfe198 100644
--- a/Documentation/devicetree/bindings/powerpc/nintendo/wii.txt
+++ b/Documentation/devicetree/bindings/powerpc/nintendo/wii.txt
@@ -53,7 +53,7 @@ Nintendo Wii device tree
   - compatible : should be "nintendo,flipper-pic"
   - interrupt-controller
 
-1.c) The Digital Signal Procesor (DSP) node
+1.c) The Digital Signal Processor (DSP) node
 
   Represents the digital signal processor interface, designed to offload
   audio related tasks.
diff --git a/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml b/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml
index 9aabdb373afa..4d0b5964443d 100644
--- a/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml
+++ b/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml
@@ -18,7 +18,7 @@ description:
 
   The IP block has a version register so this can be used for detection
   instead of having to encode the IP version number in the device tree
-  comaptible.
+  compatible.
 
 allOf:
   - $ref: pwm.yaml#
diff --git a/Documentation/devicetree/bindings/regulator/regulator-max77620.txt b/Documentation/devicetree/bindings/regulator/regulator-max77620.txt
index 1c4bfe786736..bcf788897e44 100644
--- a/Documentation/devicetree/bindings/regulator/regulator-max77620.txt
+++ b/Documentation/devicetree/bindings/regulator/regulator-max77620.txt
@@ -35,7 +35,7 @@ information for that regulator. The definition for each of these
 nodes is defined using the standard binding for regulators found at
 <Documentation/devicetree/bindings/regulator/regulator.txt>.
 
-Theres are also additional properties for SD/LDOs. These additional properties
+There are also additional properties for SD/LDOs. These additional properties
 are required to configure FPS configuration parameters for SDs and LDOs.
 Please refer <devicetree/bindings/mfd/max77620.txt> for more detail of Flexible
 Power Sequence (FPS).
diff --git a/Documentation/devicetree/bindings/regulator/regulator.yaml b/Documentation/devicetree/bindings/regulator/regulator.yaml
index e158c2d3d3f9..9daf0fc2465f 100644
--- a/Documentation/devicetree/bindings/regulator/regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator.yaml
@@ -126,7 +126,7 @@ properties:
 
   regulator-oc-error-microamp:
     description: Set over current error limit. This is a limit where part of
-      the hardware propably is malfunctional and damage prevention is requested.
+      the hardware probably is malfunctional and damage prevention is requested.
       Zero can be passed to disable error detection and value '1' indicates
       that detection should be enabled but limit setting can be omitted.
 
@@ -146,7 +146,7 @@ properties:
 
   regulator-ov-error-microvolt:
     description: Set over voltage error limit. This is a limit where part of
-      the hardware propably is malfunctional and damage prevention is requested
+      the hardware probably is malfunctional and damage prevention is requested
       Zero can be passed to disable error detection and value '1' indicates
       that detection should be enabled but limit setting can be omitted. Limit
       is given as microvolt offset from voltage set to regulator.
@@ -168,7 +168,7 @@ properties:
 
   regulator-uv-error-microvolt:
     description: Set under voltage error limit. This is a limit where part of
-      the hardware propably is malfunctional and damage prevention is requested
+      the hardware probably is malfunctional and damage prevention is requested
       Zero can be passed to disable error detection and value '1' indicates
       that detection should be enabled but limit setting can be omitted. Limit
       is given as microvolt offset from voltage set to regulator.
@@ -189,7 +189,7 @@ properties:
 
   regulator-temp-error-kelvin:
     description: Set over temperature error limit. This is a limit where part of
-      the hardware propably is malfunctional and damage prevention is requested
+      the hardware probably is malfunctional and damage prevention is requested
       Zero can be passed to disable error detection and value '1' indicates
       that detection should be enabled but limit setting can be omitted.
 
diff --git a/Documentation/devicetree/bindings/regulator/richtek,rt5190a-regulator.yaml b/Documentation/devicetree/bindings/regulator/richtek,rt5190a-regulator.yaml
index edb411be0390..89341fdaa3af 100644
--- a/Documentation/devicetree/bindings/regulator/richtek,rt5190a-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/richtek,rt5190a-regulator.yaml
@@ -11,7 +11,7 @@ maintainers:
 
 description: |
   The RT5190A integrates 1 channel buck controller, 3 channels high efficiency
-  synchronous buck converters, 1 LDO, I2C control interface and peripherial
+  synchronous buck converters, 1 LDO, I2C control interface and peripheral
   logical control.
 
   It also supports mute AC OFF depop sound and quick setting storage while
diff --git a/Documentation/devicetree/bindings/regulator/vctrl.txt b/Documentation/devicetree/bindings/regulator/vctrl.txt
index 601328d7fdbb..e940377cfd69 100644
--- a/Documentation/devicetree/bindings/regulator/vctrl.txt
+++ b/Documentation/devicetree/bindings/regulator/vctrl.txt
@@ -21,7 +21,7 @@ Optional properties:
 			  margin from the expected value for a given control
 			  voltage. On larger voltage decreases this can occur
 			  undesiredly since the output voltage does not adjust
-			  inmediately to changes in the control voltage. To
+			  immediately to changes in the control voltage. To
 			  avoid this situation the vctrl driver breaks down
 			  larger voltage decreases into multiple steps, where
 			  each step is within the OVP threshold.
diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
index fcc3db97fe8f..54eecc567e0b 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
@@ -102,7 +102,7 @@ patternProperties:
       caches. Each of the TCMs can be enabled or disabled independently and
       either of them can be configured to appear at that R5F's address 0x0.
 
-      The cores do not use an MMU, but has a Region Address Translater
+      The cores do not use an MMU, but has a Region Address Translator
       (RAT) module that is accessible only from the R5Fs for providing
       translations between 32-bit CPU addresses into larger system bus
       addresses. Cache and memory access settings are provided through a
diff --git a/Documentation/devicetree/bindings/reset/ti-syscon-reset.txt b/Documentation/devicetree/bindings/reset/ti-syscon-reset.txt
index 86945502ccb5..61a0ff33e89f 100644
--- a/Documentation/devicetree/bindings/reset/ti-syscon-reset.txt
+++ b/Documentation/devicetree/bindings/reset/ti-syscon-reset.txt
@@ -43,7 +43,7 @@ Required properties:
 			    Cell #6 : bit position of the reset in the
 			              reset status register
 			    Cell #7 : Flags used to control reset behavior,
-			              availible flags defined in the DT include
+			              available flags defined in the DT include
 			              file <dt-bindings/reset/ti-syscon.h>
 
 SysCon Reset Consumer Nodes
diff --git a/Documentation/devicetree/bindings/rng/omap_rng.yaml b/Documentation/devicetree/bindings/rng/omap_rng.yaml
index ccf54fae8302..c0ac4f68ea54 100644
--- a/Documentation/devicetree/bindings/rng/omap_rng.yaml
+++ b/Documentation/devicetree/bindings/rng/omap_rng.yaml
@@ -30,8 +30,8 @@ properties:
   clocks:
     minItems: 1
     items:
-      - description: EIP150 gatable clock
-      - description: Main gatable clock
+      - description: EIP150 gateable clock
+      - description: Main gateable clock
 
   clock-names:
     minItems: 1
diff --git a/Documentation/devicetree/bindings/rtc/rtc-cmos.txt b/Documentation/devicetree/bindings/rtc/rtc-cmos.txt
index b94b35f3600b..7d7b5f6bda65 100644
--- a/Documentation/devicetree/bindings/rtc/rtc-cmos.txt
+++ b/Documentation/devicetree/bindings/rtc/rtc-cmos.txt
@@ -10,7 +10,7 @@ Optional properties:
   - ctrl-reg : Contains the initial value of the control register also
     called "Register B".
   - freq-reg : Contains the initial value of the frequency register also
-    called "Regsiter A".
+    called "Register A".
 
 "Register A" and "B" are usually initialized by the firmware (BIOS for
 instance). If this is not done, it can be performed by the driver.
diff --git a/Documentation/devicetree/bindings/serial/nvidia,tegra20-hsuart.txt b/Documentation/devicetree/bindings/serial/nvidia,tegra20-hsuart.txt
index f709304036c2..e9fca995dfe9 100644
--- a/Documentation/devicetree/bindings/serial/nvidia,tegra20-hsuart.txt
+++ b/Documentation/devicetree/bindings/serial/nvidia,tegra20-hsuart.txt
@@ -49,7 +49,7 @@ Baud Rate tolerance:
   listed below.
   0 to 9600 has 1% deviation
   9600 to 115200 2% deviation
-  This slight deviation is expcted and Tegra UART is expected to handle it. Due
+  This slight deviation is expected and Tegra UART is expected to handle it. Due
   to the issue stated above, baud rate on Tegra UART should be set equal to or
   above deviation observed for avoiding frame errors.
   Property should be set like this
diff --git a/Documentation/devicetree/bindings/serial/st-asc.txt b/Documentation/devicetree/bindings/serial/st-asc.txt
index 75d877f5968f..a1b9b6f3490a 100644
--- a/Documentation/devicetree/bindings/serial/st-asc.txt
+++ b/Documentation/devicetree/bindings/serial/st-asc.txt
@@ -8,7 +8,7 @@ Required properties:
 
 Optional properties:
 - st,hw-flow-ctrl	bool flag to enable hardware flow control.
-- st,force-m1		bool flat to force asc to be in Mode-1 recommeded
+- st,force-m1		bool flat to force asc to be in Mode-1 recommended
 			for high bit rates (above 19.2K)
 Example:
 serial@fe440000{
diff --git a/Documentation/devicetree/bindings/soc/mediatek/mediatek,mt7986-wo-ccif.yaml b/Documentation/devicetree/bindings/soc/mediatek/mediatek,mt7986-wo-ccif.yaml
index 8e6ba2ec8a43..f0fa92b04b32 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/mediatek,mt7986-wo-ccif.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/mediatek,mt7986-wo-ccif.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 description:
   The MediaTek wo-ccif provides a configuration interface for WED WO
-  controller used to perfrom offload rx packet processing (e.g. 802.11
+  controller used to perform offload rx packet processing (e.g. 802.11
   aggregation packet reordering or rx header translation) on MT7986 soc.
 
 properties:
diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml
index 04ffee3a7c59..365a9fed5914 100644
--- a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml
+++ b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml
@@ -12,7 +12,7 @@ maintainers:
 description: |
   PolarFire SoC devices include a microcontroller acting as the system controller,
   which provides "services" to the main processor and to the FPGA fabric. These
-  services include hardware rng, reprogramming of the FPGA and verfification of the
+  services include hardware rng, reprogramming of the FPGA and verification of the
   eNVM contents etc. More information on these services can be found online, at
   https://onlinedocs.microchip.com/pr/GUID-1409CF11-8EF9-4C24-A94E-70979A688632-en-US-1/index.html
 
diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
index 9dc8e48c8af4..d1c7c2be865f 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
@@ -77,7 +77,7 @@ patternProperties:
     description:
       The AOSS side channel also provides the controls for three cooling devices,
       these are expressed as subnodes of the QMP node. The name of the node is
-      used to identify the resource and must therefor be "cx", "mx" or "ebi".
+      used to identify the resource and must therefore be "cx", "mx" or "ebi".
 
     properties:
       "#cooling-cells":
diff --git a/Documentation/devicetree/bindings/sound/axentia,tse850-pcm5142.txt b/Documentation/devicetree/bindings/sound/axentia,tse850-pcm5142.txt
index 9d049d4bfd58..b6cc5f6f78c2 100644
--- a/Documentation/devicetree/bindings/sound/axentia,tse850-pcm5142.txt
+++ b/Documentation/devicetree/bindings/sound/axentia,tse850-pcm5142.txt
@@ -29,7 +29,7 @@ The schematics explaining the gpios are as follows:
    IN2 +---o--+------------+--o---+ OUT2
                loop2 relays
 
-The 'loop1' gpio pin controlls two relays, which are either in loop position,
+The 'loop1' gpio pin controls two relays, which are either in loop position,
 meaning that input and output are directly connected, or they are in mixer
 position, meaning that the signal is passed through the 'Sum' mixer. Similarly
 for 'loop2'.
diff --git a/Documentation/devicetree/bindings/sound/cs35l35.txt b/Documentation/devicetree/bindings/sound/cs35l35.txt
index 7915897f8a81..e84f30c5c39b 100644
--- a/Documentation/devicetree/bindings/sound/cs35l35.txt
+++ b/Documentation/devicetree/bindings/sound/cs35l35.txt
@@ -110,7 +110,7 @@ Optional Monitor Signal Format sub-node:
 
   See Sections 4.8.2 through 4.8.4 Serial-Port Control in the Datasheet
 
-  -cirrus,monitor-signal-format : Sub-node for the Monitor Signaling Formating
+  -cirrus,monitor-signal-format : Sub-node for the Monitor Signaling Formatting
   on the I2S Port. Each of the 3 8 bit values in the array contain the settings
   for depth, location, and frame.
 
diff --git a/Documentation/devicetree/bindings/sound/cs35l36.txt b/Documentation/devicetree/bindings/sound/cs35l36.txt
index 912bd162b477..d34117b8558e 100644
--- a/Documentation/devicetree/bindings/sound/cs35l36.txt
+++ b/Documentation/devicetree/bindings/sound/cs35l36.txt
@@ -33,7 +33,7 @@ Optional properties:
   one amplifier in the system. If more than one it is best to Hi-Z the ASP
   port to prevent bus contention on the output signal
 
-  - cirrus,boost-ctl-select : Boost conerter control source selection.
+  - cirrus,boost-ctl-select : Boost converter control source selection.
   Selects the source of the BST_CTL target VBST voltage for the boost
   converter to generate.
   0x00 - Control Port Value
diff --git a/Documentation/devicetree/bindings/sound/cs53l30.txt b/Documentation/devicetree/bindings/sound/cs53l30.txt
index 4dbfb8274cd9..dc256adb35a2 100644
--- a/Documentation/devicetree/bindings/sound/cs53l30.txt
+++ b/Documentation/devicetree/bindings/sound/cs53l30.txt
@@ -30,7 +30,7 @@ Optional properties:
 			* frame using two different ways:
 			* 1) Normal I2S mode on two data pins -- each SDOUT
 			*    carries 2-channel data in the same time.
-			* 2) TDM mode on one signle data pin -- SDOUT1 carries
+			* 2) TDM mode on one single data pin -- SDOUT1 carries
 			*    4-channel data per frame.
 
 Example:
diff --git a/Documentation/devicetree/bindings/sound/fsl,esai.txt b/Documentation/devicetree/bindings/sound/fsl,esai.txt
index 0a2480aeecf0..90112ca1ff42 100644
--- a/Documentation/devicetree/bindings/sound/fsl,esai.txt
+++ b/Documentation/devicetree/bindings/sound/fsl,esai.txt
@@ -44,7 +44,7 @@ Required properties:
   - fsl,esai-synchronous: This is a boolean property. If present, indicating
 			  that ESAI would work in the synchronous mode, which
 			  means all the settings for Receiving would be
-			  duplicated from Transmition related registers.
+			  duplicated from Transmission related registers.
 
 Optional properties:
 
diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-afe.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-afe.yaml
index e6cb711ece77..e49da939c52f 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-afe.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-afe.yaml
@@ -135,7 +135,7 @@ patternProperties:
     maxItems: 16
     description:
       This is a list of channel IDs which should be disabled.
-      By default, all data received from ETDM pins will be outputed to
+      By default, all data received from ETDM pins will be outputted to
       memory. etdm in supports disable_out in direct mode(w/o interconn),
       so user can disable the specified channels by the property.
     uniqueItems: true
diff --git a/Documentation/devicetree/bindings/sound/mt2701-afe-pcm.txt b/Documentation/devicetree/bindings/sound/mt2701-afe-pcm.txt
index 560762e0a168..f548e6a58240 100644
--- a/Documentation/devicetree/bindings/sound/mt2701-afe-pcm.txt
+++ b/Documentation/devicetree/bindings/sound/mt2701-afe-pcm.txt
@@ -1,7 +1,7 @@
 Mediatek AFE PCM controller for mt2701
 
 Required properties:
-- compatible: should be one of the followings.
+- compatible: should be one of the following.
 	      - "mediatek,mt2701-audio"
 	      - "mediatek,mt7622-audio"
 - interrupts: should contain AFE and ASYS interrupts
diff --git a/Documentation/devicetree/bindings/sound/mt8195-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mt8195-afe-pcm.yaml
index d5adf07d46e0..5c8dba2b3a81 100644
--- a/Documentation/devicetree/bindings/sound/mt8195-afe-pcm.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8195-afe-pcm.yaml
@@ -111,7 +111,7 @@ patternProperties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
       etdm modules can share the same external clock pin. Specify
-      which etdm clock source is required by this etdm in moudule.
+      which etdm clock source is required by this etdm in module.
     enum:
       - 0 # etdm1_in
       - 1 # etdm2_in
@@ -122,7 +122,7 @@ patternProperties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
       etdm modules can share the same external clock pin. Specify
-      which etdm clock source is required by this etdm out moudule.
+      which etdm clock source is required by this etdm out module.
     enum:
       - 0 # etdm1_in
       - 1 # etdm2_in
diff --git a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-analog.txt b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-analog.txt
index e7d17dda55db..1973c0da4cc0 100644
--- a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-analog.txt
+++ b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-analog.txt
@@ -35,7 +35,7 @@ Optional Properties:
  - qcom,mbhc-vthreshold-low: Array of 5 threshold voltages in mV for 5 buttons
 			     detection on headset when the mbhc is powered up
 			     by internal current source, this is a low power.
- - qcom,mbhc-vthreshold-high: Array of 5 thresold voltages in mV for 5 buttons
+ - qcom,mbhc-vthreshold-high: Array of 5 threshold voltages in mV for 5 buttons
 			      detection on headset when mbhc is powered up
 			       from micbias.
 - qcom,micbias-lvl:  Voltage (mV) for Mic Bias
diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.txt b/Documentation/devicetree/bindings/sound/renesas,rsnd.txt
index b731f16aea84..dfd768b1ad7d 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.txt
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.txt
@@ -94,7 +94,7 @@ see "Example: simple sound card for Asynchronous mode"
  [xx]ch        [yy]ch
  ------> [CTU] -------->
 
-CTU can convert [xx]ch to [yy]ch, or exchange outputed channel.
+CTU can convert [xx]ch to [yy]ch, or exchange outputted channel.
 CTU conversion needs matrix settings.
 For more detail information, see below
 
diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3288-hdmi-analog.txt b/Documentation/devicetree/bindings/sound/rockchip,rk3288-hdmi-analog.txt
index e5430d1d34e4..73577ac1b89c 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,rk3288-hdmi-analog.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip,rk3288-hdmi-analog.txt
@@ -12,7 +12,7 @@ Required properties:
 		    source. For this driver the first string should always be
 		    "Analog".
 
-Optionnal properties:
+Optional properties:
 - rockchip,hp-en-gpios = The phandle of the GPIO that power up/down the
   headphone (when the analog output is an headphone).
 - rockchip,hp-det-gpios = The phandle of the GPIO that detects the headphone
diff --git a/Documentation/devicetree/bindings/sound/rt5663.txt b/Documentation/devicetree/bindings/sound/rt5663.txt
index 2a55e9133408..24a6dab28f25 100644
--- a/Documentation/devicetree/bindings/sound/rt5663.txt
+++ b/Documentation/devicetree/bindings/sound/rt5663.txt
@@ -28,7 +28,7 @@ Optional properties:
   If the value is 0, it means the impedance sensing is not supported.
 - "realtek,impedance_sensing_table"
   The matrix rows of the impedance sensing table are consisted by impedance
-  minimum, impedance maximun, volume, DC offset w/o and w/ mic of each L and
+  minimum, impedance maximum, volume, DC offset w/o and w/ mic of each L and
   R channel accordingly. Example is shown as following.
   <   0    300  7  0xffd160  0xffd1c0  0xff8a10  0xff8ab0
     301  65535  4  0xffe470  0xffe470  0xffb8e0  0xffb8e0>
diff --git a/Documentation/devicetree/bindings/sound/serial-midi.yaml b/Documentation/devicetree/bindings/sound/serial-midi.yaml
index 4afc29376efc..f6a807329a5a 100644
--- a/Documentation/devicetree/bindings/sound/serial-midi.yaml
+++ b/Documentation/devicetree/bindings/sound/serial-midi.yaml
@@ -20,7 +20,7 @@ description:
   parent serial device. If the standard MIDI baud of 31.25 kBaud is needed
   (as would be the case if interfacing with arbitrary external MIDI devices),
   configure the clocks of the parent serial device so that a requested baud of 38.4 kBaud
-  resuts in the standard MIDI baud rate, and set the 'current-speed' property to 38400 (default)
+  results in the standard MIDI baud rate, and set the 'current-speed' property to 38400 (default)
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/sound/sprd-pcm.txt b/Documentation/devicetree/bindings/sound/sprd-pcm.txt
index 4b23e84b2e57..fbbcade2181d 100644
--- a/Documentation/devicetree/bindings/sound/sprd-pcm.txt
+++ b/Documentation/devicetree/bindings/sound/sprd-pcm.txt
@@ -1,4 +1,4 @@
-* Spreadtrum DMA platfrom bindings
+* Spreadtrum DMA platform bindings
 
 Required properties:
 - compatible: Should be "sprd,pcm-platform".
diff --git a/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
index 56d206f97a96..59df8a832310 100644
--- a/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
+++ b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
@@ -63,7 +63,7 @@ patternProperties:
     additionalProperties: false
     description:
       Two subnodes corresponding to SAI sub-block instances A et B
-      can be defined. Subnode can be omitted for unsused sub-block.
+      can be defined. Subnode can be omitted for unused sub-block.
 
     properties:
       compatible:
diff --git a/Documentation/devicetree/bindings/sound/ti,j721e-cpb-ivi-audio.yaml b/Documentation/devicetree/bindings/sound/ti,j721e-cpb-ivi-audio.yaml
index 859d369c71e2..5b2874a80a4d 100644
--- a/Documentation/devicetree/bindings/sound/ti,j721e-cpb-ivi-audio.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,j721e-cpb-ivi-audio.yaml
@@ -13,7 +13,7 @@ maintainers:
 
 description: |
   The Infotainment board plugs into the Common Processor Board, the support of the
-  extension board is extending the CPB audio support, decribed in:
+  extension board is extending the CPB audio support, described in:
   sound/ti,j721e-cpb-audio.txt
 
   The audio support on the Infotainment Expansion Board consists of McASP0
diff --git a/Documentation/devicetree/bindings/sound/ti,tas2781.yaml b/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
index 8d60e4e236d6..a69e6c223308 100644
--- a/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
@@ -29,7 +29,7 @@ properties:
   reg:
     description:
       I2C address, in multiple tas2781s case, all the i2c address
-      aggreate as one Audio Device to support multiple audio slots.
+      aggregate as one Audio Device to support multiple audio slots.
     maxItems: 8
     minItems: 1
     items:
diff --git a/Documentation/devicetree/bindings/sound/tlv320adcx140.yaml b/Documentation/devicetree/bindings/sound/tlv320adcx140.yaml
index c16e1760cf85..f3274bcc4c05 100644
--- a/Documentation/devicetree/bindings/sound/tlv320adcx140.yaml
+++ b/Documentation/devicetree/bindings/sound/tlv320adcx140.yaml
@@ -32,7 +32,7 @@ properties:
   reg:
     maxItems: 1
     description: |
-      I2C addresss of the device can be one of these 0x4c, 0x4d, 0x4e or 0x4f
+      I2C address of the device can be one of these 0x4c, 0x4d, 0x4e or 0x4f
 
   reset-gpios:
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index fb44b89a754e..7d60a9654912 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -159,7 +159,7 @@ properties:
   qcom,ports-hstart:
     $ref: /schemas/types.yaml#/definitions/uint8-array
     description:
-      Identifying lowerst numbered coloum in SoundWire Frame,
+      Identifying lowerst numbered column in SoundWire Frame,
       i.e. left edge of the Transport sub-frame for each port.
       Out ports followed by In ports.
       Value of 0xff indicates that this option is not implemented
@@ -176,7 +176,7 @@ properties:
   qcom,ports-hstop:
     $ref: /schemas/types.yaml#/definitions/uint8-array
     description:
-      Identifying highest numbered coloum in SoundWire Frame,
+      Identifying highest numbered column in SoundWire Frame,
       i.e. the right edge of the Transport
       sub-frame for each port. Out ports followed by In ports.
       Value of 0xff indicates that this option is not implemented
diff --git a/Documentation/devicetree/bindings/spi/brcm,bcm2835-aux-spi.txt b/Documentation/devicetree/bindings/spi/brcm,bcm2835-aux-spi.txt
index 9887b0724759..d7668f41b03b 100644
--- a/Documentation/devicetree/bindings/spi/brcm,bcm2835-aux-spi.txt
+++ b/Documentation/devicetree/bindings/spi/brcm,bcm2835-aux-spi.txt
@@ -1,4 +1,4 @@
-Broadcom BCM2835 auxiliar SPI1/2 controller
+Broadcom BCM2835 auxiliary SPI1/2 controller
 
 The BCM2835 contains two forms of SPI master controller, one known simply as
 SPI0, and the other known as the "Universal SPI Master"; part of the
@@ -9,7 +9,7 @@ Required properties:
 - reg: Should contain register location and length for the spi block
 - interrupts: Should contain shared interrupt of the aux block
 - clocks: The clock feeding the SPI controller - needs to
-	  point to the auxiliar clock driver of the bcm2835,
+	  point to the auxiliary clock driver of the bcm2835,
 	  as this clock will enable the output gate for the specific
 	  clock.
 - cs-gpios: the cs-gpios (native cs is NOT supported)
diff --git a/Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml b/Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml
index 28222aae3077..45975f40d943 100644
--- a/Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 description: |
   The Broadcom SPI controller is a SPI master found on various SOCs, including
-  BRCMSTB (BCM7XXX), Cygnus, NSP and NS2. The Broadcom Master SPI hw IP consits
+  BRCMSTB (BCM7XXX), Cygnus, NSP and NS2. The Broadcom Master SPI hw IP consists
   of:
     MSPI : SPI master controller can read and write to a SPI slave device
     BSPI : Broadcom SPI in combination with the MSPI hw IP provides acceleration
@@ -20,7 +20,7 @@ description: |
            io with 3-byte and 4-byte addressing support.
 
   Supported Broadcom SoCs have one instance of MSPI+BSPI controller IP.
-  MSPI master can be used wihout BSPI. BRCMSTB SoCs have an additional instance
+  MSPI master can be used without BSPI. BRCMSTB SoCs have an additional instance
   of a MSPI master without the BSPI to use with non flash slave devices that
   use SPI protocol.
 
diff --git a/Documentation/devicetree/bindings/spi/omap-spi.yaml b/Documentation/devicetree/bindings/spi/omap-spi.yaml
index 352affa4b7f8..ff4d361707bd 100644
--- a/Documentation/devicetree/bindings/spi/omap-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/omap-spi.yaml
@@ -68,7 +68,7 @@ properties:
   dma-names:
     description:
       List of DMA request names. These strings correspond 1:1 with
-      the DMA sepecifiers listed in dmas. The string names is to be
+      the DMA specifiers listed in dmas. The string names is to be
       "rxN" and "txN" for RX and TX requests, respectively. Where N
       is the chip select number.
     minItems: 1
diff --git a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.txt b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.txt
index aea4a2a178b9..24b07c24b8ec 100644
--- a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.txt
+++ b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.txt
@@ -85,7 +85,7 @@ Optional properties:
   which the soctherm hardware will assert the thermal trigger signal to the
   Power Management IC, which can be configured to reset or shutdown the device.
   It is an array of pairs where each pair represents a tsensor id followed by a
-  temperature in milli Celcius. In the absence of this property the critical
+  temperature in milli Celsius. In the absence of this property the critical
   trip point will be used for thermtrip temperature.
 
 Note:
diff --git a/Documentation/devicetree/bindings/timer/snps,arc-timer.txt b/Documentation/devicetree/bindings/timer/snps,arc-timer.txt
index 147ef3e74452..b02ab0af10ce 100644
--- a/Documentation/devicetree/bindings/timer/snps,arc-timer.txt
+++ b/Documentation/devicetree/bindings/timer/snps,arc-timer.txt
@@ -1,7 +1,7 @@
 Synopsys ARC Local Timer with Interrupt Capabilities
 - Found on all ARC CPUs (ARC700/ARCHS)
 - Can be optionally programmed to interrupt on Limit
-- Two idential copies TIMER0 and TIMER1 exist in ARC cores and historically
+- Two identical copies TIMER0 and TIMER1 exist in ARC cores and historically
   TIMER0 used as clockevent provider (true for all ARC cores)
   TIMER1 used for clocksource (mandatory for ARC700, optional for ARC HS)
 
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index ba2bfb547909..f473b9a6e424 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -193,13 +193,13 @@ properties:
           - maxim,max1237
             # Temperature Sensor, I2C interface
           - maxim,max1619
-            # 10-bit 10 kOhm linear programable voltage divider
+            # 10-bit 10 kOhm linear programmable voltage divider
           - maxim,max5481
-            # 10-bit 50 kOhm linear programable voltage divider
+            # 10-bit 50 kOhm linear programmable voltage divider
           - maxim,max5482
-            # 10-bit 10 kOhm linear programable variable resistor
+            # 10-bit 10 kOhm linear programmable variable resistor
           - maxim,max5483
-            # 10-bit 50 kOhm linear programable variable resistor
+            # 10-bit 50 kOhm linear programmable variable resistor
           - maxim,max5484
             # PECI-to-I2C translator for PECI-to-SMBus/I2C protocol conversion
           - maxim,max6621
diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
index 782402800d4a..91f135c3495b 100644
--- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
+++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
@@ -167,7 +167,7 @@ properties:
       at RTL is 0, so this property only affects siTD.
 
       If this property is not set, the max packet size is 1023 bytes, and
-      if the total of packet size for pervious transactions are more than
+      if the total of packet size for previous transactions are more than
       256 bytes, it can't accept any transactions within this frame. The
       use case is single transaction, but higher frame rate.
 
diff --git a/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml b/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
index 3fb4feb6d3d9..9ea1e4cd0709 100644
--- a/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
@@ -52,7 +52,7 @@ properties:
   fsl,permanently-attached:
     type: boolean
     description:
-      Indicates if the device atached to a downstream port is
+      Indicates if the device attached to a downstream port is
       permanently attached.
 
   fsl,disable-port-power-control:
diff --git a/Documentation/devicetree/bindings/usb/msm-hsusb.txt b/Documentation/devicetree/bindings/usb/msm-hsusb.txt
index 8654a3ec23e4..afc30e98b123 100644
--- a/Documentation/devicetree/bindings/usb/msm-hsusb.txt
+++ b/Documentation/devicetree/bindings/usb/msm-hsusb.txt
@@ -53,7 +53,7 @@ Optional properties:
 - dr_mode:      One of "host", "peripheral" or "otg". Defaults to "otg"
 
 - switch-gpio:  A phandle + gpio-specifier pair. Some boards are using Dual
-                SPDT USB Switch, witch is cotrolled by GPIO to de/multiplex
+                SPDT USB Switch, witch is controlled by GPIO to de/multiplex
                 D+/D- USB lines between connectors.
 
 - qcom,phy-init-sequence: PHY configuration sequence values. This is related to Device
diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1719.yaml b/Documentation/devicetree/bindings/usb/richtek,rt1719.yaml
index 4ced2f68e2a9..07bec1fe6ebf 100644
--- a/Documentation/devicetree/bindings/usb/richtek,rt1719.yaml
+++ b/Documentation/devicetree/bindings/usb/richtek,rt1719.yaml
@@ -10,7 +10,7 @@ maintainers:
   - ChiYuan Huang <cy_huang@richtek.com>
 
 description: |
-  The RT1719 is a sink-only USB Type-C contoller that complies with the latest
+  The RT1719 is a sink-only USB Type-C controller that complies with the latest
   USB Type-C and PD standards. It does the USB Type-C detection including attach
   and orientation. It integrates the physical layer of the USB BMC power
   delivery protocol to allow up to 100W of power. The BMC PD block enables full
-- 
2.34.1

