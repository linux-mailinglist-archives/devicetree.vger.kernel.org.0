Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27DF45A0712
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 04:04:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230353AbiHYCEx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 22:04:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232020AbiHYCEw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 22:04:52 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F485B7B
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 19:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:
        Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:
        MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
        Content-Description:Content-Disposition:In-Reply-To:References;
        bh=Ff7UqFpGtsqcE0ReWvp3xPjgvqS5HZAx31ZNYrbVmsI=; b=LKpMi19H15KtyjDQUoX+nJdNvV
        KMWww2z3D6ld7qe/OxgstxmKqwbeYpk2irDdRa5m6oPi9oeizP6YyTNysr4YvactD4/9n6htNIWgH
        uqqIeGq2Bh/1tv1aAwYhb4fLYRJ6imm1or3Wj0aFZbOkVNPzaT4zUZ8D7Ud8FO6qlufg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oR2Eb-00EWHv-GU; Thu, 25 Aug 2022 04:04:41 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Rob Herring <robh@kernel.org>
Cc:     Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH] dt-bindings: Remove 'Device Tree Bindings' from end of title:
Date:   Thu, 25 Aug 2022 04:04:27 +0200
Message-Id: <20220825020427.3460650-1-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As indicated in
link: https://lore.kernel.org/all/20220822204945.GA808626-robh@kernel.org/

DT schema files should not have 'Device Tree Binding' as part of there
title: line. Remove this in most .yaml files, so hopefully preventing
developers copying it into new .yaml files, and being asked to remove
it.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 Documentation/devicetree/bindings/arm/actions.yaml              | 2 +-
 Documentation/devicetree/bindings/arm/airoha.yaml               | 2 +-
 Documentation/devicetree/bindings/arm/altera.yaml               | 2 +-
 Documentation/devicetree/bindings/arm/amazon,al.yaml            | 2 +-
 Documentation/devicetree/bindings/arm/amlogic.yaml              | 2 +-
 Documentation/devicetree/bindings/arm/apple.yaml                | 2 +-
 Documentation/devicetree/bindings/arm/arm,cci-400.yaml          | 2 +-
 Documentation/devicetree/bindings/arm/arm,corstone1000.yaml     | 2 +-
 Documentation/devicetree/bindings/arm/arm,integrator.yaml       | 2 +-
 Documentation/devicetree/bindings/arm/arm,realview.yaml         | 2 +-
 Documentation/devicetree/bindings/arm/arm,versatile.yaml        | 2 +-
 Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml    | 2 +-
 Documentation/devicetree/bindings/arm/atmel-at91.yaml           | 2 +-
 Documentation/devicetree/bindings/arm/axxia.yaml                | 2 +-
 Documentation/devicetree/bindings/arm/bitmain.yaml              | 2 +-
 Documentation/devicetree/bindings/arm/calxeda.yaml              | 2 +-
 Documentation/devicetree/bindings/arm/digicolor.yaml            | 2 +-
 Documentation/devicetree/bindings/arm/fsl.yaml                  | 2 +-
 Documentation/devicetree/bindings/arm/intel,keembay.yaml        | 2 +-
 Documentation/devicetree/bindings/arm/intel,socfpga.yaml        | 2 +-
 Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml         | 2 +-
 Documentation/devicetree/bindings/arm/mediatek.yaml             | 2 +-
 Documentation/devicetree/bindings/arm/microchip,sparx5.yaml     | 2 +-
 Documentation/devicetree/bindings/arm/moxart.yaml               | 2 +-
 .../devicetree/bindings/arm/nvidia,tegra194-ccplex.yaml         | 2 +-
 Documentation/devicetree/bindings/arm/qcom.yaml                 | 2 +-
 Documentation/devicetree/bindings/arm/rda.yaml                  | 2 +-
 Documentation/devicetree/bindings/arm/realtek.yaml              | 2 +-
 Documentation/devicetree/bindings/arm/renesas.yaml              | 2 +-
 Documentation/devicetree/bindings/arm/rockchip.yaml             | 2 +-
 Documentation/devicetree/bindings/arm/spear.yaml                | 2 +-
 Documentation/devicetree/bindings/arm/sti.yaml                  | 2 +-
 Documentation/devicetree/bindings/arm/sunxi.yaml                | 2 +-
 Documentation/devicetree/bindings/arm/tegra.yaml                | 2 +-
 Documentation/devicetree/bindings/arm/tesla.yaml                | 2 +-
 Documentation/devicetree/bindings/arm/toshiba.yaml              | 2 +-
 Documentation/devicetree/bindings/arm/ux500.yaml                | 2 +-
 Documentation/devicetree/bindings/arm/vt8500.yaml               | 2 +-
 Documentation/devicetree/bindings/arm/xilinx.yaml               | 2 +-
 .../devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml       | 2 +-
 .../devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml        | 2 +-
 Documentation/devicetree/bindings/bus/palmbus.yaml              | 2 +-
 Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml  | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml  | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml  | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml      | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml  | 2 +-
 .../bindings/clock/allwinner,sun4i-a10-display-clk.yaml         | 2 +-
 .../bindings/clock/allwinner,sun4i-a10-gates-clk.yaml           | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml  | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml  | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml | 2 +-
 .../bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml        | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml  | 2 +-
 .../devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml   | 2 +-
 .../devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml  | 2 +-
 .../devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml  | 2 +-
 .../devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml | 2 +-
 .../bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml        | 2 +-
 .../devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml  | 2 +-
 .../devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun9i-a80-de-clks.yaml  | 2 +-
 .../devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml   | 2 +-
 .../bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml      | 2 +-
 .../devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml | 2 +-
 .../devicetree/bindings/clock/allwinner,sun9i-a80-usb-clks.yaml | 2 +-
 .../bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml         | 2 +-
 .../bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml         | 2 +-
 .../devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml      | 2 +-
 Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml   | 2 +-
 Documentation/devicetree/bindings/clock/canaan,k210-clk.yaml    | 2 +-
 .../devicetree/bindings/clock/mediatek,mt7621-sysc.yaml         | 2 +-
 Documentation/devicetree/bindings/clock/sprd,sc9863a-clk.yaml   | 2 +-
 .../devicetree/bindings/clock/toshiba,tmpv770x-pipllct.yaml     | 2 +-
 .../devicetree/bindings/clock/toshiba,tmpv770x-pismu.yaml       | 2 +-
 .../devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml  | 2 +-
 .../devicetree/bindings/crypto/intel,keembay-ocs-aes.yaml       | 2 +-
 .../devicetree/bindings/crypto/intel,keembay-ocs-ecc.yaml       | 2 +-
 .../devicetree/bindings/crypto/intel,keembay-ocs-hcu.yaml       | 2 +-
 Documentation/devicetree/bindings/crypto/xlnx,zynqmp-aes.yaml   | 2 +-
 .../bindings/display/allwinner,sun4i-a10-display-backend.yaml   | 2 +-
 .../bindings/display/allwinner,sun4i-a10-display-engine.yaml    | 2 +-
 .../bindings/display/allwinner,sun4i-a10-display-frontend.yaml  | 2 +-
 .../devicetree/bindings/display/allwinner,sun4i-a10-hdmi.yaml   | 2 +-
 .../devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml   | 2 +-
 .../bindings/display/allwinner,sun4i-a10-tv-encoder.yaml        | 2 +-
 .../devicetree/bindings/display/allwinner,sun6i-a31-drc.yaml    | 2 +-
 .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml          | 2 +-
 .../bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml        | 2 +-
 .../bindings/display/allwinner,sun8i-a83t-dw-hdmi.yaml          | 2 +-
 .../bindings/display/allwinner,sun8i-a83t-hdmi-phy.yaml         | 2 +-
 .../bindings/display/allwinner,sun8i-r40-tcon-top.yaml          | 2 +-
 .../devicetree/bindings/display/allwinner,sun9i-a80-deu.yaml    | 2 +-
 .../devicetree/bindings/display/brcm,bcm2711-hdmi.yaml          | 2 +-
 Documentation/devicetree/bindings/display/ilitek,ili9486.yaml   | 2 +-
 .../devicetree/bindings/display/simple-framebuffer.yaml         | 2 +-
 Documentation/devicetree/bindings/display/sitronix,st7735r.yaml | 2 +-
 .../devicetree/bindings/dma/allwinner,sun4i-a10-dma.yaml        | 2 +-
 .../devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml       | 2 +-
 .../devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml        | 2 +-
 .../devicetree/bindings/dma/nvidia,tegra186-gpc-dma.yaml        | 2 +-
 .../devicetree/bindings/fpga/xilinx-zynq-fpga-mgr.yaml          | 2 +-
 .../devicetree/bindings/fpga/xlnx,zynqmp-pcap-fpga.yaml         | 2 +-
 Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml        | 2 +-
 Documentation/devicetree/bindings/gnss/mediatek.yaml            | 2 +-
 Documentation/devicetree/bindings/gnss/sirfstar.yaml            | 2 +-
 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml       | 2 +-
 Documentation/devicetree/bindings/gpio/gpio-zynq.yaml           | 2 +-
 Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml | 2 +-
 .../devicetree/bindings/gpio/x-powers,axp209-gpio.yaml          | 2 +-
 .../devicetree/bindings/hwmon/adi,axi-fan-control.yaml          | 2 +-
 Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml          | 2 +-
 .../devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml       | 2 +-
 Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml           | 2 +-
 Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml       | 2 +-
 Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml  | 2 +-
 Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml    | 2 +-
 Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml  | 2 +-
 Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml  | 2 +-
 Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml         | 2 +-
 .../bindings/input/allwinner,sun4i-a10-lradc-keys.yaml          | 2 +-
 Documentation/devicetree/bindings/input/imx-keypad.yaml         | 2 +-
 .../devicetree/bindings/input/mediatek,mt6779-keypad.yaml       | 2 +-
 Documentation/devicetree/bindings/input/regulator-haptic.yaml   | 2 +-
 .../devicetree/bindings/input/sprd,sc27xx-vibrator.yaml         | 2 +-
 .../bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml   | 2 +-
 .../interrupt-controller/allwinner,sun6i-a31-r-intc.yaml        | 2 +-
 .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml        | 2 +-
 .../devicetree/bindings/interrupt-controller/idt,32434-pic.yaml | 2 +-
 .../devicetree/bindings/interrupt-controller/st,stm32-exti.yaml | 2 +-
 .../devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml    | 2 +-
 Documentation/devicetree/bindings/media/allegro,al5e.yaml       | 2 +-
 .../devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml      | 2 +-
 .../devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml       | 2 +-
 .../bindings/media/allwinner,sun4i-a10-video-engine.yaml        | 2 +-
 .../devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml      | 2 +-
 .../bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml           | 2 +-
 .../bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml         | 2 +-
 .../bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml          | 2 +-
 .../bindings/media/allwinner,sun8i-h3-deinterlace.yaml          | 2 +-
 .../devicetree/bindings/media/mediatek-jpeg-decoder.yaml        | 2 +-
 .../devicetree/bindings/media/mediatek-jpeg-encoder.yaml        | 2 +-
 Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml      | 2 +-
 Documentation/devicetree/bindings/media/rc.yaml                 | 2 +-
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml      | 2 +-
 Documentation/devicetree/bindings/media/ti,cal.yaml             | 2 +-
 Documentation/devicetree/bindings/media/ti,vpe.yaml             | 2 +-
 .../devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml         | 2 +-
 .../devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml       | 2 +-
 .../devicetree/bindings/mfd/allwinner,sun8i-a23-prcm.yaml       | 2 +-
 .../devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml       | 2 +-
 .../devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml      | 2 +-
 .../devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml       | 2 +-
 .../devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml       | 2 +-
 .../devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml       | 2 +-
 .../devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml       | 2 +-
 Documentation/devicetree/bindings/mfd/canaan,k210-sysctl.yaml   | 2 +-
 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml           | 2 +-
 Documentation/devicetree/bindings/mfd/syscon.yaml               | 2 +-
 .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 +-
 Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml       | 2 +-
 Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml      | 2 +-
 Documentation/devicetree/bindings/mips/ralink.yaml              | 2 +-
 Documentation/devicetree/bindings/mips/realtek-rtl.yaml         | 2 +-
 .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml        | 2 +-
 .../devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml          | 2 +-
 Documentation/devicetree/bindings/mmc/mmc-card.yaml             | 2 +-
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml     | 2 +-
 .../devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml       | 2 +-
 .../devicetree/bindings/mtd/arasan,nand-controller.yaml         | 2 +-
 Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml  | 2 +-
 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml       | 2 +-
 Documentation/devicetree/bindings/mtd/mtd.yaml                  | 2 +-
 .../devicetree/bindings/mtd/mxicy,nand-ecc-engine.yaml          | 2 +-
 Documentation/devicetree/bindings/mtd/renesas-nandc.yaml        | 2 +-
 Documentation/devicetree/bindings/mtd/spi-nand.yaml             | 2 +-
 .../devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml       | 2 +-
 .../devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml       | 2 +-
 .../devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml       | 2 +-
 .../devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml      | 2 +-
 Documentation/devicetree/bindings/net/brcm,amac.yaml            | 2 +-
 Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml     | 2 +-
 Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml        | 2 +-
 Documentation/devicetree/bindings/net/qcom,ipq4019-mdio.yaml    | 2 +-
 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml    | 2 +-
 Documentation/devicetree/bindings/net/snps,dwmac.yaml           | 2 +-
 Documentation/devicetree/bindings/net/sunplus,sp7021-emac.yaml  | 2 +-
 Documentation/devicetree/bindings/net/ti,cpsw-switch.yaml       | 2 +-
 .../devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml          | 2 +-
 Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml     | 2 +-
 Documentation/devicetree/bindings/net/vertexcom-mse102x.yaml    | 2 +-
 .../devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml      | 2 +-
 Documentation/devicetree/bindings/nvmem/imx-iim.yaml            | 2 +-
 Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml          | 2 +-
 Documentation/devicetree/bindings/nvmem/nintendo-otp.yaml       | 2 +-
 Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml     | 2 +-
 Documentation/devicetree/bindings/nvmem/nvmem.yaml              | 2 +-
 Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml     | 2 +-
 .../bindings/opp/allwinner,sun50i-h6-operating-points.yaml      | 2 +-
 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml        | 2 +-
 Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml  | 2 +-
 Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml  | 2 +-
 .../devicetree/bindings/pci/toshiba,visconti-pcie.yaml          | 2 +-
 Documentation/devicetree/bindings/peci/peci-aspeed.yaml         | 2 +-
 Documentation/devicetree/bindings/peci/peci-controller.yaml     | 2 +-
 .../devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml    | 2 +-
 .../devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml   | 2 +-
 .../devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml    | 2 +-
 .../devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml    | 2 +-
 .../devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml  | 2 +-
 .../devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml    | 2 +-
 .../devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml    | 2 +-
 .../devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml   | 2 +-
 .../devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml     | 2 +-
 .../devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml    | 2 +-
 .../devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml    | 2 +-
 .../devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml    | 2 +-
 Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml         | 2 +-
 Documentation/devicetree/bindings/phy/cdns,dphy.yaml            | 2 +-
 Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml    | 2 +-
 Documentation/devicetree/bindings/phy/intel,lgm-emmc-phy.yaml   | 2 +-
 Documentation/devicetree/bindings/phy/intel,lgm-usb-phy.yaml    | 2 +-
 .../devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml         | 2 +-
 .../devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml        | 2 +-
 Documentation/devicetree/bindings/phy/mediatek,tphy.yaml        | 2 +-
 Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml       | 2 +-
 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml    | 2 +-
 .../devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml         | 2 +-
 .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml         | 2 +-
 .../devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml        | 2 +-
 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml      | 2 +-
 Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml    | 2 +-
 .../bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml           | 2 +-
 .../devicetree/bindings/pinctrl/canaan,k210-fpioa.yaml          | 2 +-
 .../devicetree/bindings/pinctrl/intel,pinctrl-keembay.yaml      | 2 +-
 .../devicetree/bindings/pinctrl/intel,pinctrl-thunderbay.yaml   | 2 +-
 .../devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml    | 2 +-
 .../devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml    | 2 +-
 .../devicetree/bindings/pinctrl/mediatek,mt6797-pinctrl.yaml    | 2 +-
 .../devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml    | 2 +-
 .../devicetree/bindings/pinctrl/mediatek,mt7986-pinctrl.yaml    | 2 +-
 .../devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml    | 2 +-
 .../devicetree/bindings/pinctrl/starfive,jh7100-pinctrl.yaml    | 2 +-
 .../devicetree/bindings/pinctrl/sunplus,sp7021-pinctrl.yaml     | 2 +-
 Documentation/devicetree/bindings/ptp/ptp-idt82p33.yaml         | 2 +-
 Documentation/devicetree/bindings/ptp/ptp-idtcm.yaml            | 2 +-
 .../devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml        | 2 +-
 Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml    | 2 +-
 Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml    | 2 +-
 .../devicetree/bindings/regulator/silergy,sy8106a.yaml          | 2 +-
 .../devicetree/bindings/reserved-memory/google,open-dice.yaml   | 2 +-
 .../devicetree/bindings/reserved-memory/memory-region.yaml      | 2 +-
 .../bindings/reserved-memory/nvidia,tegra210-emc-table.yaml     | 2 +-
 .../devicetree/bindings/reserved-memory/reserved-memory.yaml    | 2 +-
 .../bindings/reset/allwinner,sun6i-a31-clock-reset.yaml         | 2 +-
 Documentation/devicetree/bindings/reset/canaan,k210-rst.yaml    | 2 +-
 .../devicetree/bindings/reset/starfive,jh7100-reset.yaml        | 2 +-
 Documentation/devicetree/bindings/riscv/microchip.yaml          | 2 +-
 .../devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml        | 2 +-
 .../devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml        | 2 +-
 Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml | 2 +-
 .../devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml          | 2 +-
 Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml   | 2 +-
 Documentation/devicetree/bindings/rtc/microcrystal,rv3032.yaml  | 2 +-
 Documentation/devicetree/bindings/rtc/mstar,msc313-rtc.yaml     | 2 +-
 Documentation/devicetree/bindings/serial/cdns,uart.yaml         | 2 +-
 .../devicetree/bindings/serial/sunplus,sp7021-uart.yaml         | 2 +-
 .../devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml      | 2 +-
 Documentation/devicetree/bindings/sound/adi,max98396.yaml       | 2 +-
 Documentation/devicetree/bindings/sound/ak4375.yaml             | 2 +-
 Documentation/devicetree/bindings/sound/ak4613.yaml             | 2 +-
 Documentation/devicetree/bindings/sound/ak4642.yaml             | 2 +-
 .../devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml    | 2 +-
 .../devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml      | 2 +-
 .../devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml    | 2 +-
 .../bindings/sound/allwinner,sun50i-a64-codec-analog.yaml       | 2 +-
 .../bindings/sound/allwinner,sun8i-a23-codec-analog.yaml        | 2 +-
 .../devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml    | 2 +-
 Documentation/devicetree/bindings/sound/audio-graph-card.yaml   | 2 +-
 Documentation/devicetree/bindings/sound/audio-graph-card2.yaml  | 2 +-
 Documentation/devicetree/bindings/sound/audio-graph.yaml        | 2 +-
 Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml  | 2 +-
 Documentation/devicetree/bindings/sound/linux,bt-sco.yaml       | 2 +-
 Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml    | 2 +-
 Documentation/devicetree/bindings/sound/mchp,spdifrx.yaml       | 2 +-
 Documentation/devicetree/bindings/sound/mchp,spdiftx.yaml       | 2 +-
 Documentation/devicetree/bindings/sound/mt6359.yaml             | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra186-asrc.yaml         | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra186-dspk.yaml         | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra210-admaif.yaml       | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra210-adx.yaml          | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra210-ahub.yaml         | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra210-amx.yaml          | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra210-dmic.yaml         | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra210-i2s.yaml          | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra210-mixer.yaml        | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra210-mvc.yaml          | 2 +-
 .../devicetree/bindings/sound/nvidia,tegra210-sfc.yaml          | 2 +-
 Documentation/devicetree/bindings/sound/renesas,rsnd.yaml       | 2 +-
 .../devicetree/bindings/sound/simple-audio-amplifier.yaml       | 2 +-
 Documentation/devicetree/bindings/sound/simple-card.yaml        | 2 +-
 Documentation/devicetree/bindings/sound/sound-dai.yaml          | 2 +-
 Documentation/devicetree/bindings/sound/test-component.yaml     | 2 +-
 Documentation/devicetree/bindings/sound/wlf,wm8940.yaml         | 2 +-
 Documentation/devicetree/bindings/sound/wlf,wm8978.yaml         | 2 +-
 .../devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml        | 2 +-
 .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml        | 2 +-
 Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml   | 2 +-
 Documentation/devicetree/bindings/spi/mxicy,mx25f0a-spi.yaml    | 2 +-
 Documentation/devicetree/bindings/spi/spi-cadence.yaml          | 2 +-
 Documentation/devicetree/bindings/spi/spi-xilinx.yaml           | 2 +-
 Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml      | 2 +-
 Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml   | 2 +-
 .../bindings/sram/allwinner,sun4i-a10-system-control.yaml       | 2 +-
 .../devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml   | 2 +-
 .../devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml    | 2 +-
 .../devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml  | 2 +-
 .../devicetree/bindings/timer/mstar,msc313e-timer.yaml          | 2 +-
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml  | 2 +-
 Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml     | 2 +-
 Documentation/devicetree/bindings/timestamp/hte-consumer.yaml   | 2 +-
 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml   | 2 +-
 .../devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml       | 2 +-
 Documentation/devicetree/bindings/usb/brcm,bcm7445-ehci.yaml    | 2 +-
 Documentation/devicetree/bindings/usb/brcm,usb-pinmap.yaml      | 2 +-
 Documentation/devicetree/bindings/usb/generic-ehci.yaml         | 2 +-
 Documentation/devicetree/bindings/usb/generic-ohci.yaml         | 2 +-
 Documentation/devicetree/bindings/usb/generic-xhci.yaml         | 2 +-
 Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml    | 2 +-
 Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml        | 2 +-
 Documentation/devicetree/bindings/usb/mediatek,musb.yaml        | 2 +-
 Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml  | 2 +-
 Documentation/devicetree/bindings/usb/smsc,usb3503.yaml         | 2 +-
 Documentation/devicetree/bindings/usb/usb-drd.yaml              | 2 +-
 Documentation/devicetree/bindings/usb/usb-hcd.yaml              | 2 +-
 Documentation/devicetree/bindings/usb/usb-xhci.yaml             | 2 +-
 Documentation/devicetree/bindings/usb/usb.yaml                  | 2 +-
 Documentation/devicetree/bindings/w1/w1-gpio.yaml               | 2 +-
 .../devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml   | 2 +-
 .../devicetree/bindings/watchdog/mstar,msc313e-wdt.yaml         | 2 +-
 351 files changed, 351 insertions(+), 351 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/actions.yaml b/Documentation/devicetree/bindings/arm/actions.yaml
index 02dc72c97645..e012f612f039 100644
--- a/Documentation/devicetree/bindings/arm/actions.yaml
+++ b/Documentation/devicetree/bindings/arm/actions.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/actions.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Actions Semi platforms device tree bindings
+title: Actions Semi platforms
 
 maintainers:
   - Andreas Färber <afaerber@suse.de>
diff --git a/Documentation/devicetree/bindings/arm/airoha.yaml b/Documentation/devicetree/bindings/arm/airoha.yaml
index fc19b1a6f37b..3292c669ee11 100644
--- a/Documentation/devicetree/bindings/arm/airoha.yaml
+++ b/Documentation/devicetree/bindings/arm/airoha.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/airoha.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Airoha SoC based Platforms Device Tree Bindings
+title: Airoha SoC based Platforms
 
 maintainers:
   - Felix Fietkau <nbd@nbd.name>
diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index e6de1d7f516c..3eee03aa935c 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/altera.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Altera's SoCFPGA platform device tree bindings
+title: Altera's SoCFPGA platform
 
 maintainers:
   - Dinh Nguyen <dinguyen@kernel.org>
diff --git a/Documentation/devicetree/bindings/arm/amazon,al.yaml b/Documentation/devicetree/bindings/arm/amazon,al.yaml
index 0f03135d91b6..37dbb4768e5b 100644
--- a/Documentation/devicetree/bindings/arm/amazon,al.yaml
+++ b/Documentation/devicetree/bindings/arm/amazon,al.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/amazon,al.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Amazon's Annapurna Labs Alpine Platform Device Tree Bindings
+title: Amazon's Annapurna Labs Alpine Platform
 
 maintainers:
   - Hanna Hawa <hhhawa@amazon.com>
diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 61a6cabb375b..fd12226634be 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/amlogic.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Amlogic MesonX device tree bindings
+title: Amlogic MesonX
 
 maintainers:
   - Kevin Hilman <khilman@baylibre.com>
diff --git a/Documentation/devicetree/bindings/arm/apple.yaml b/Documentation/devicetree/bindings/arm/apple.yaml
index 8d93e8a6cc18..7262f3c09867 100644
--- a/Documentation/devicetree/bindings/arm/apple.yaml
+++ b/Documentation/devicetree/bindings/arm/apple.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/apple.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Apple ARM Machine Device Tree Bindings
+title: Apple ARM Machine
 
 maintainers:
   - Hector Martin <marcan@marcan.st>
diff --git a/Documentation/devicetree/bindings/arm/arm,cci-400.yaml b/Documentation/devicetree/bindings/arm/arm,cci-400.yaml
index 1706134b75a3..d28303d909e1 100644
--- a/Documentation/devicetree/bindings/arm/arm,cci-400.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,cci-400.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/arm,cci-400.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ARM CCI Cache Coherent Interconnect Device Tree Binding
+title: ARM CCI Cache Coherent Interconnect
 
 maintainers:
   - Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
diff --git a/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml b/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
index a77f88223801..693f3fe7be60 100644
--- a/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/arm,corstone1000.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ARM Corstone1000 Device Tree Bindings
+title: ARM Corstone1000
 
 maintainers:
   - Vishnu Banavath <vishnu.banavath@arm.com>
diff --git a/Documentation/devicetree/bindings/arm/arm,integrator.yaml b/Documentation/devicetree/bindings/arm/arm,integrator.yaml
index 528eee64290a..98ff5698ae1f 100644
--- a/Documentation/devicetree/bindings/arm/arm,integrator.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,integrator.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/arm,integrator.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ARM Integrator Boards Device Tree Bindings
+title: ARM Integrator Boards
 
 maintainers:
   - Linus Walleij <linus.walleij@linaro.org>
diff --git a/Documentation/devicetree/bindings/arm/arm,realview.yaml b/Documentation/devicetree/bindings/arm/arm,realview.yaml
index 4f9b21f49e84..8d3ed2e4ed31 100644
--- a/Documentation/devicetree/bindings/arm/arm,realview.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,realview.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/arm,realview.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ARM RealView Boards Device Tree Bindings
+title: ARM RealView Boards
 
 maintainers:
   - Linus Walleij <linus.walleij@linaro.org>
diff --git a/Documentation/devicetree/bindings/arm/arm,versatile.yaml b/Documentation/devicetree/bindings/arm/arm,versatile.yaml
index 34b437c72751..13e52ba92060 100644
--- a/Documentation/devicetree/bindings/arm/arm,versatile.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,versatile.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/arm,versatile.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ARM Versatile Boards Device Tree Bindings
+title: ARM Versatile Boards
 
 maintainers:
   - Linus Walleij <linus.walleij@linaro.org>
diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
index a4b4452afc1d..eec190a96225 100644
--- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/arm,vexpress-juno.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ARM Versatile Express and Juno Boards Device Tree Bindings
+title: ARM Versatile Express and Juno Boards
 
 maintainers:
   - Sudeep Holla <sudeep.holla@arm.com>
diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 2b7848bb7769..5cb06d14a225 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/atmel-at91.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Atmel AT91 device tree bindings.
+title: Atmel AT91.
 
 maintainers:
   - Alexandre Belloni <alexandre.belloni@bootlin.com>
diff --git a/Documentation/devicetree/bindings/arm/axxia.yaml b/Documentation/devicetree/bindings/arm/axxia.yaml
index e0d2bb71cf50..d60907e43efc 100644
--- a/Documentation/devicetree/bindings/arm/axxia.yaml
+++ b/Documentation/devicetree/bindings/arm/axxia.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/axxia.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Axxia AXM55xx device tree bindings
+title: Axxia AXM55xx
 
 maintainers:
   - Anders Berg <anders.berg@lsi.com>
diff --git a/Documentation/devicetree/bindings/arm/bitmain.yaml b/Documentation/devicetree/bindings/arm/bitmain.yaml
index 90ba02be48ce..55a5a570b5bc 100644
--- a/Documentation/devicetree/bindings/arm/bitmain.yaml
+++ b/Documentation/devicetree/bindings/arm/bitmain.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/bitmain.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Bitmain platform device tree bindings
+title: Bitmain platform
 
 maintainers:
   - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
diff --git a/Documentation/devicetree/bindings/arm/calxeda.yaml b/Documentation/devicetree/bindings/arm/calxeda.yaml
index 46f78addebb0..3e9f5e1d862e 100644
--- a/Documentation/devicetree/bindings/arm/calxeda.yaml
+++ b/Documentation/devicetree/bindings/arm/calxeda.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/calxeda.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Calxeda Platforms Device Tree Bindings
+title: Calxeda Platforms
 
 maintainers:
   - Rob Herring <robh@kernel.org>
diff --git a/Documentation/devicetree/bindings/arm/digicolor.yaml b/Documentation/devicetree/bindings/arm/digicolor.yaml
index a35de3c9e284..0cf9ddaa527e 100644
--- a/Documentation/devicetree/bindings/arm/digicolor.yaml
+++ b/Documentation/devicetree/bindings/arm/digicolor.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/digicolor.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Conexant Digicolor Platforms Device Tree Bindings
+title: Conexant Digicolor Platforms
 
 maintainers:
   - Baruch Siach <baruch@tkos.co.il>
diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7431579ab0e8..6f84cb6de9a5 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/fsl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Freescale i.MX Platforms Device Tree Bindings
+title: Freescale i.MX Platforms
 
 maintainers:
   - Shawn Guo <shawnguo@kernel.org>
diff --git a/Documentation/devicetree/bindings/arm/intel,keembay.yaml b/Documentation/devicetree/bindings/arm/intel,keembay.yaml
index 107e686ab207..53d2ce02b207 100644
--- a/Documentation/devicetree/bindings/arm/intel,keembay.yaml
+++ b/Documentation/devicetree/bindings/arm/intel,keembay.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/intel,keembay.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Keem Bay platform device tree bindings
+title: Keem Bay platform
 
 maintainers:
   - Paul J. Murphy <paul.j.murphy@intel.com>
diff --git a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
index 61a454a40e87..4b4dcf551eb6 100644
--- a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
+++ b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/intel,socfpga.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel SoCFPGA platform device tree bindings
+title: Intel SoCFPGA platform
 
 maintainers:
   - Dinh Nguyen <dinguyen@kernel.org>
diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
index 230bffeec0e5..553dcbc70e35 100644
--- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
+++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/intel-ixp4xx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel IXP4xx Device Tree Bindings
+title: Intel IXP4xx
 
 maintainers:
   - Linus Walleij <linus.walleij@linaro.org>
diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 07c0ea94e850..d76ce4c3819d 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/mediatek.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MediaTek SoC based Platforms Device Tree Bindings
+title: MediaTek SoC based Platforms
 
 maintainers:
   - Sean Wang <sean.wang@mediatek.com>
diff --git a/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml b/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
index 6193388c6318..9a0d54e9799c 100644
--- a/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
+++ b/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/microchip,sparx5.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip Sparx5 Boards Device Tree Bindings
+title: Microchip Sparx5 Boards
 
 maintainers:
   - Lars Povlsen <lars.povlsen@microchip.com>
diff --git a/Documentation/devicetree/bindings/arm/moxart.yaml b/Documentation/devicetree/bindings/arm/moxart.yaml
index 670d24ce8ec5..42565280914c 100644
--- a/Documentation/devicetree/bindings/arm/moxart.yaml
+++ b/Documentation/devicetree/bindings/arm/moxart.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/moxart.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MOXA ART device tree bindings
+title: MOXA ART
 
 maintainers:
   - Jonas Jensen <jonas.jensen@gmail.com>
diff --git a/Documentation/devicetree/bindings/arm/nvidia,tegra194-ccplex.yaml b/Documentation/devicetree/bindings/arm/nvidia,tegra194-ccplex.yaml
index c9675c4cdc1b..b6f57d79a753 100644
--- a/Documentation/devicetree/bindings/arm/nvidia,tegra194-ccplex.yaml
+++ b/Documentation/devicetree/bindings/arm/nvidia,tegra194-ccplex.yaml
@@ -4,7 +4,7 @@
 $id: "http://devicetree.org/schemas/arm/nvidia,tegra194-ccplex.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: NVIDIA Tegra194 CPU Complex device tree bindings
+title: NVIDIA Tegra194 CPU Complex
 
 maintainers:
   - Thierry Reding <thierry.reding@gmail.com>
diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index fb1d00bcc847..19c2f4314741 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/qcom.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: QCOM device tree bindings
+title: QCOM
 
 maintainers:
   - Bjorn Andersson <bjorn.andersson@linaro.org>
diff --git a/Documentation/devicetree/bindings/arm/rda.yaml b/Documentation/devicetree/bindings/arm/rda.yaml
index a5c0444aa2b4..09241ea1d228 100644
--- a/Documentation/devicetree/bindings/arm/rda.yaml
+++ b/Documentation/devicetree/bindings/arm/rda.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/rda.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: RDA Micro platforms device tree bindings
+title: RDA Micro platforms
 
 maintainers:
   - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml b/Documentation/devicetree/bindings/arm/realtek.yaml
index 9fb0297fe1ce..ddd9a85099e9 100644
--- a/Documentation/devicetree/bindings/arm/realtek.yaml
+++ b/Documentation/devicetree/bindings/arm/realtek.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/realtek.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Realtek platforms device tree bindings
+title: Realtek platforms
 
 maintainers:
   - Andreas Färber <afaerber@suse.de>
diff --git a/Documentation/devicetree/bindings/arm/renesas.yaml b/Documentation/devicetree/bindings/arm/renesas.yaml
index ff80152f092f..0d43f4e7fffd 100644
--- a/Documentation/devicetree/bindings/arm/renesas.yaml
+++ b/Documentation/devicetree/bindings/arm/renesas.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/renesas.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Renesas SH-Mobile, R-Mobile, and R-Car Platform Device Tree Bindings
+title: Renesas SH-Mobile, R-Mobile, and R-Car Platform
 
 maintainers:
   - Geert Uytterhoeven <geert+renesas@glider.be>
diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..d4ec499fa6d6 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/rockchip.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Rockchip platforms device tree bindings
+title: Rockchip platforms
 
 maintainers:
   - Heiko Stuebner <heiko@sntech.de>
diff --git a/Documentation/devicetree/bindings/arm/spear.yaml b/Documentation/devicetree/bindings/arm/spear.yaml
index 605ad3f882ef..a465c9eca76e 100644
--- a/Documentation/devicetree/bindings/arm/spear.yaml
+++ b/Documentation/devicetree/bindings/arm/spear.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/spear.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ST SPEAr Platforms Device Tree Bindings
+title: ST SPEAr Platforms
 
 maintainers:
   - Viresh Kumar <vireshk@kernel.org>
diff --git a/Documentation/devicetree/bindings/arm/sti.yaml b/Documentation/devicetree/bindings/arm/sti.yaml
index a41cd8764885..3ca054c64377 100644
--- a/Documentation/devicetree/bindings/arm/sti.yaml
+++ b/Documentation/devicetree/bindings/arm/sti.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/sti.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ST STi Platforms Device Tree Bindings
+title: ST STi Platforms
 
 maintainers:
   - Patrice Chotard <patrice.chotard@foss.st.com>
diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 0c2356778208..3ad1cd50e3fe 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/sunxi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner platforms device tree bindings
+title: Allwinner platforms
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documentation/devicetree/bindings/arm/tegra.yaml
index 49841ca272ee..1f62253f9410 100644
--- a/Documentation/devicetree/bindings/arm/tegra.yaml
+++ b/Documentation/devicetree/bindings/arm/tegra.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/tegra.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: NVIDIA Tegra device tree bindings
+title: NVIDIA Tegra
 
 maintainers:
   - Thierry Reding <thierry.reding@gmail.com>
diff --git a/Documentation/devicetree/bindings/arm/tesla.yaml b/Documentation/devicetree/bindings/arm/tesla.yaml
index 09856da657dc..d670a0d56222 100644
--- a/Documentation/devicetree/bindings/arm/tesla.yaml
+++ b/Documentation/devicetree/bindings/arm/tesla.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/tesla.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tesla Full Self Driving(FSD) platforms device tree bindings
+title: Tesla Full Self Driving(FSD) platforms
 
 maintainers:
   - Alim Akhtar <alim.akhtar@samsung.com>
diff --git a/Documentation/devicetree/bindings/arm/toshiba.yaml b/Documentation/devicetree/bindings/arm/toshiba.yaml
index 9c1cacbdc916..716ba4a3cab4 100644
--- a/Documentation/devicetree/bindings/arm/toshiba.yaml
+++ b/Documentation/devicetree/bindings/arm/toshiba.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/toshiba.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Toshiba Visconti Platform Device Tree Bindings
+title: Toshiba Visconti Platform
 
 maintainers:
   - Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
diff --git a/Documentation/devicetree/bindings/arm/ux500.yaml b/Documentation/devicetree/bindings/arm/ux500.yaml
index 17accb31bca0..b42d20fa4359 100644
--- a/Documentation/devicetree/bindings/arm/ux500.yaml
+++ b/Documentation/devicetree/bindings/arm/ux500.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/ux500.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Ux500 platforms device tree bindings
+title: Ux500 platforms
 
 maintainers:
   - Linus Walleij <linus.walleij@linaro.org>
diff --git a/Documentation/devicetree/bindings/arm/vt8500.yaml b/Documentation/devicetree/bindings/arm/vt8500.yaml
index 7b762bfc11e7..5d5ad5a60451 100644
--- a/Documentation/devicetree/bindings/arm/vt8500.yaml
+++ b/Documentation/devicetree/bindings/arm/vt8500.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/vt8500.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: VIA/Wondermedia VT8500 Platforms Device Tree Bindings
+title: VIA/Wondermedia VT8500 Platforms
 
 maintainers:
   - Tony Prisk <linux@prisktech.co.nz>
diff --git a/Documentation/devicetree/bindings/arm/xilinx.yaml b/Documentation/devicetree/bindings/arm/xilinx.yaml
index 4dc0e0195974..969cfe6dc434 100644
--- a/Documentation/devicetree/bindings/arm/xilinx.yaml
+++ b/Documentation/devicetree/bindings/arm/xilinx.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/arm/xilinx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Xilinx Zynq Platforms Device Tree Bindings
+title: Xilinx Zynq Platforms
 
 maintainers:
   - Michal Simek <michal.simek@xilinx.com>
diff --git a/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml b/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
index ad313ccaaaef..85c4a979aec4 100644
--- a/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
+++ b/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/bus/allwinner,sun50i-a64-de2.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A64 Display Engine Bus Device Tree Bindings
+title: Allwinner A64 Display Engine Bus
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml b/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
index 3d719f468a5b..bee5f53f837f 100644
--- a/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
+++ b/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/bus/allwinner,sun8i-a23-rsb.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A23 RSB Device Tree Bindings
+title: Allwinner A23 RSB
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/bus/palmbus.yaml b/Documentation/devicetree/bindings/bus/palmbus.yaml
index f5cbfaf52d53..30fa6526cfc2 100644
--- a/Documentation/devicetree/bindings/bus/palmbus.yaml
+++ b/Documentation/devicetree/bindings/bus/palmbus.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/bus/palmbus.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Ralink PalmBus Device Tree Bindings
+title: Ralink PalmBus
 
 maintainers:
   - Sergio Paracuellos <sergio.paracuellos@gmail.com>
diff --git a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
index d60e74654809..79b0752faa91 100644
--- a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
+++ b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/airoha,en7523-scu.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: EN7523 Clock Device Tree Bindings
+title: EN7523 Clock
 
 maintainers:
   - Felix Fietkau <nbd@nbd.name>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml
index 558db4b6ed17..93587b700476 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-ahb-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 AHB Clock Device Tree Bindings
+title: Allwinner A10 AHB Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml
index b1e3d739beb2..e14e1aad9fd6 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-apb0-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 APB0 Bus Clock Device Tree Bindings
+title: Allwinner A10 APB0 Bus Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml
index 51b7a6d4ea54..8a4747ebe0ba 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-apb1-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 APB1 Bus Clock Device Tree Bindings
+title: Allwinner A10 APB1 Bus Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml
index d801158e15de..aa08dd49dd61 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-axi-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 AXI Clock Device Tree Bindings
+title: Allwinner A10 AXI Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
index 15ed64d35261..1690b9d99c3d 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-ccu.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner Clock Control Unit Device Tree Bindings
+title: Allwinner Clock Control Unit
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml
index 0dfafba1a168..08d073520cfa 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-cpu-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 CPU Clock Device Tree Bindings
+title: Allwinner A10 CPU Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-display-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-display-clk.yaml
index 7484a7ab7dea..e665e50c1785 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-display-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-display-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-display-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Display Clock Device Tree Bindings
+title: Allwinner A10 Display Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-gates-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-gates-clk.yaml
index 9a37a357cb4e..c4714d0fbe07 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-gates-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-gates-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-gates-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Bus Gates Clock Device Tree Bindings
+title: Allwinner A10 Bus Gates Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml
index 18f131e262b4..e824e33489b6 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-mbus-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 MBUS Clock Device Tree Bindings
+title: Allwinner A10 MBUS Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml
index 5199285a661a..c612f94befb9 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-mmc-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Module 1 Clock Device Tree Bindings
+title: Allwinner A10 Module 1 Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml
index 3e2abe3e67c1..80ae3a7a588c 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-mod0-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Module 0 Clock Device Tree Bindings
+title: Allwinner A10 Module 0 Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml
index 7ddb55c75cff..4f9a8d44d42a 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-mod1-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Module 1 Clock Device Tree Bindings
+title: Allwinner A10 Module 1 Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml
index c604822cda07..52a7b6e7124c 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-osc-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Gatable Oscillator Clock Device Tree Bindings
+title: Allwinner A10 Gatable Oscillator Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml
index e5d9d45dab8a..b13a1f21d5da 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-pll1-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 CPU PLL Device Tree Bindings
+title: Allwinner A10 CPU PLL
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml
index 4b80a42fb3da..418d207d23b8 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-pll3-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Video PLL Device Tree Bindings
+title: Allwinner A10 Video PLL
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml
index 415bd77de53d..76ef3f0c7f2c 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-pll5-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 DRAM PLL Device Tree Bindings
+title: Allwinner A10 DRAM PLL
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml
index ec5652f76027..a94c93c90ece 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-pll6-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Peripheral PLL Device Tree Bindings
+title: Allwinner A10 Peripheral PLL
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml
index 0a335c615efd..6646b2a99fc1 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 TCON Channel 0 Clock Device Tree Bindings
+title: Allwinner A10 TCON Channel 0 Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml
index cd95d25bfe7c..5103b675e488 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-usb-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 USB Clock Device Tree Bindings
+title: Allwinner A10 USB Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml
index 5dfd0c1c27b4..80337e38d6e5 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-ve-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Video Engine Clock Device Tree Bindings
+title: Allwinner A10 Video Engine Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml
index 99add7991c48..c6a6fbb6863b 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun5i-a13-ahb-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A13 AHB Clock Device Tree Bindings
+title: Allwinner A13 AHB Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml
index 5f377205af71..7d6a6a34d20c 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun6i-a31-pll6-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 Peripheral PLL Device Tree Bindings
+title: Allwinner A31 Peripheral PLL
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml
index 59e5dce1b65a..b6202de35707 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun7i-a20-gmac-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A20 GMAC TX Clock Device Tree Bindings
+title: Allwinner A20 GMAC TX Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml
index c745733bcf04..fde7f7dc3d34 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun7i-a20-out-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A20 Output Clock Device Tree Bindings
+title: Allwinner A20 Output Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
index 17caf78f0ccf..70369bd633e4 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun8i-a83t-de2-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A83t Display Engine 2/3 Clock Controller Device Tree Bindings
+title: Allwinner A83t Display Engine 2/3 Clock Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml
index 3eb2bf65b230..45b9e2c7c1d1 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun8i-h3-bus-gates-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Bus Gates Clock Device Tree Bindings
+title: Allwinner A10 Bus Gates Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml
index d178da90aaec..f0f65af8ae22 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-ahb-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 AHB Clock Device Tree Bindings
+title: Allwinner A80 AHB Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml
index 0351c79bd221..e9f9bc8f5794 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-apb0-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 APB0 Bus Clock Device Tree Bindings
+title: Allwinner A80 APB0 Bus Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml
index 24d5b2f1a314..c48db2d49340 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-cpus-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 CPUS Clock Device Tree Bindings
+title: Allwinner A80 CPUS Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-de-clks.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-de-clks.yaml
index a82c7c7e942b..e9f81a343be1 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-de-clks.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-de-clks.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-de-clks.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 Display Engine Clock Controller Device Tree Bindings
+title: Allwinner A80 Display Engine Clock Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml
index 43963c3062c8..d3ce5eb18d4e 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-gt-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 GT Bus Clock Device Tree Bindings
+title: Allwinner A80 GT Bus Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml
index 20dc115fa211..65ee5afe83cc 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-mmc-config-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 MMC Configuration Clock Device Tree Bindings
+title: Allwinner A80 MMC Configuration Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml
index b76bab6a30e9..261264a8aef6 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-pll4-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 Peripheral PLL Device Tree Bindings
+title: Allwinner A80 Peripheral PLL
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-clks.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-clks.yaml
index 6532fb6821bc..515c15d5f661 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-clks.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-clks.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-usb-clks.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 USB Clock Controller Device Tree Bindings
+title: Allwinner A80 USB Clock Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml
index 15218d10e78e..3f7b8d9511f1 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-usb-mod-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 USB Module Clock Device Tree Bindings
+title: Allwinner A80 USB Module Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml
index 2569041684e6..0d49072d47ca 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-usb-phy-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 USB PHY Clock Device Tree Bindings
+title: Allwinner A80 USB PHY Clock
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
index 4b8669f870ec..d98d95d8e8c9 100644
--- a/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
+++ b/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/amlogic,meson8-ddr-clkc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Amlogic DDR Clock Controller Device Tree Bindings
+title: Amlogic DDR Clock Controller
 
 maintainers:
   - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
diff --git a/Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml b/Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml
index 08543ecbe35b..2d40df2d34df 100644
--- a/Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml
+++ b/Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/brcm,bcm2711-dvp.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom BCM2711 HDMI DVP Device Tree Bindings
+title: Broadcom BCM2711 HDMI DVP
 
 maintainers:
   - Maxime Ripard <mripard@kernel.org>
diff --git a/Documentation/devicetree/bindings/clock/canaan,k210-clk.yaml b/Documentation/devicetree/bindings/clock/canaan,k210-clk.yaml
index 7f5cf4001f76..998e5cce652f 100644
--- a/Documentation/devicetree/bindings/clock/canaan,k210-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/canaan,k210-clk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/canaan,k210-clk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Canaan Kendryte K210 Clock Device Tree Bindings
+title: Canaan Kendryte K210 Clock
 
 maintainers:
   - Damien Le Moal <damien.lemoal@wdc.com>
diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
index 0c0b0ae5e2ac..b42f0f5c11b7 100644
--- a/Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/mediatek,mt7621-sysc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MT7621 Clock Device Tree Bindings
+title: MT7621 Clock
 
 maintainers:
   - Sergio Paracuellos <sergio.paracuellos@gmail.com>
diff --git a/Documentation/devicetree/bindings/clock/sprd,sc9863a-clk.yaml b/Documentation/devicetree/bindings/clock/sprd,sc9863a-clk.yaml
index 47e1ab08c95d..785a12797a42 100644
--- a/Documentation/devicetree/bindings/clock/sprd,sc9863a-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/sprd,sc9863a-clk.yaml
@@ -5,7 +5,7 @@
 $id: "http://devicetree.org/schemas/clock/sprd,sc9863a-clk.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: SC9863A Clock Control Unit Device Tree Bindings
+title: SC9863A Clock Control Unit
 
 maintainers:
   - Orson Zhai <orsonzhai@gmail.com>
diff --git a/Documentation/devicetree/bindings/clock/toshiba,tmpv770x-pipllct.yaml b/Documentation/devicetree/bindings/clock/toshiba,tmpv770x-pipllct.yaml
index 7b7300ce96d6..d36558aa39f3 100644
--- a/Documentation/devicetree/bindings/clock/toshiba,tmpv770x-pipllct.yaml
+++ b/Documentation/devicetree/bindings/clock/toshiba,tmpv770x-pipllct.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/toshiba,tmpv770x-pipllct.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Toshiba Visconti5 TMPV770X PLL Controller Device Tree Bindings
+title: Toshiba Visconti5 TMPV770X PLL Controller
 
 maintainers:
   - Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
diff --git a/Documentation/devicetree/bindings/clock/toshiba,tmpv770x-pismu.yaml b/Documentation/devicetree/bindings/clock/toshiba,tmpv770x-pismu.yaml
index ed79f16fe6bc..081f85b1eb88 100644
--- a/Documentation/devicetree/bindings/clock/toshiba,tmpv770x-pismu.yaml
+++ b/Documentation/devicetree/bindings/clock/toshiba,tmpv770x-pismu.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/clock/toshiba,tmpv770x-pismu.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Toshiba Visconti5 TMPV770x SMU controller Device Tree Bindings
+title: Toshiba Visconti5 TMPV770x SMU controller
 
 maintainers:
   - Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
index dedc99e34ebc..0401c11da8d9 100644
--- a/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/crypto/allwinner,sun4i-a10-crypto.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Security System Device Tree Bindings
+title: Allwinner A10 Security System
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-aes.yaml b/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-aes.yaml
index ee2c099981b2..fedd8be56ad6 100644
--- a/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-aes.yaml
+++ b/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-aes.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/crypto/intel,keembay-ocs-aes.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel Keem Bay OCS AES Device Tree Bindings
+title: Intel Keem Bay OCS AES
 
 maintainers:
   - Daniele Alessandrelli <daniele.alessandrelli@intel.com>
diff --git a/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-ecc.yaml b/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-ecc.yaml
index a3c16451b1ad..2bb95247b64f 100644
--- a/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-ecc.yaml
+++ b/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-ecc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/crypto/intel,keembay-ocs-ecc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel Keem Bay OCS ECC Device Tree Bindings
+title: Intel Keem Bay OCS ECC
 
 maintainers:
   - Daniele Alessandrelli <daniele.alessandrelli@intel.com>
diff --git a/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-hcu.yaml b/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-hcu.yaml
index acb92706d280..46e2853ab8f4 100644
--- a/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-hcu.yaml
+++ b/Documentation/devicetree/bindings/crypto/intel,keembay-ocs-hcu.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/crypto/intel,keembay-ocs-hcu.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel Keem Bay OCS HCU Device Tree Bindings
+title: Intel Keem Bay OCS HCU
 
 maintainers:
   - Declan Murphy <declan.murphy@intel.com>
diff --git a/Documentation/devicetree/bindings/crypto/xlnx,zynqmp-aes.yaml b/Documentation/devicetree/bindings/crypto/xlnx,zynqmp-aes.yaml
index 55dd6e3d270d..9e8fbd02b150 100644
--- a/Documentation/devicetree/bindings/crypto/xlnx,zynqmp-aes.yaml
+++ b/Documentation/devicetree/bindings/crypto/xlnx,zynqmp-aes.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/crypto/xlnx,zynqmp-aes.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Xilinx ZynqMP AES-GCM Hardware Accelerator Device Tree Bindings
+title: Xilinx ZynqMP AES-GCM Hardware Accelerator
 
 maintainers:
   - Kalyani Akula <kalyani.akula@xilinx.com>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-backend.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-backend.yaml
index 3d8ea3c2d8dd..ba06d1857b7d 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-backend.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-backend.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun4i-a10-display-backend.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Display Engine Backend Device Tree Bindings
+title: Allwinner A10 Display Engine Backend
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
index c9c346e6228e..e6088f379f70 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun4i-a10-display-engine.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Display Engine Pipeline Device Tree Bindings
+title: Allwinner A10 Display Engine Pipeline
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-frontend.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-frontend.yaml
index 055157fbf3bf..98e8240a05bd 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-frontend.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-frontend.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun4i-a10-display-frontend.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Display Engine Frontend Device Tree Bindings
+title: Allwinner A10 Display Engine Frontend
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-hdmi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-hdmi.yaml
index 7f11452539f4..55703caacb9c 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-hdmi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun4i-a10-hdmi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 HDMI Controller Device Tree Bindings
+title: Allwinner A10 HDMI Controller
 
 description: |
   The HDMI Encoder supports the HDMI video and audio outputs, and does
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
index f8168986a0a9..724d93b9193b 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun4i-a10-tcon.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Timings Controller (TCON) Device Tree Bindings
+title: Allwinner A10 Timings Controller (TCON)
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tv-encoder.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tv-encoder.yaml
index afc0ed799e0e..c39e90a5945f 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tv-encoder.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tv-encoder.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun4i-a10-tv-encoder.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 TV Encoder Device Tree Bindings
+title: Allwinner A10 TV Encoder
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-drc.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-drc.yaml
index 71cce5687580..895506d93f4c 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-drc.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-drc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun6i-a31-drc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 Dynamic Range Controller Device Tree Bindings
+title: Allwinner A31 Dynamic Range Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
index bf0bdf54e5f9..7910831fa4b8 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun6i-a31-mipi-dsi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 MIPI-DSI Controller Device Tree Bindings
+title: Allwinner A31 MIPI-DSI Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
index cb243bc58ef7..b75c1ec686ad 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun8i-a83t-de2-mixer.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner Display Engine 2.0 Mixer Device Tree Bindings
+title: Allwinner Display Engine 2.0 Mixer
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-dw-hdmi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-dw-hdmi.yaml
index 4951b5ef5c6a..60fd927b5a06 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-dw-hdmi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun8i-a83t-dw-hdmi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A83t DWC HDMI TX Encoder Device Tree Bindings
+title: Allwinner A83t DWC HDMI TX Encoder
 
 description: |
   The HDMI transmitter is a Synopsys DesignWare HDMI 1.4 TX controller
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-hdmi-phy.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-hdmi-phy.yaml
index a97366aaf924..1b47f3d99a78 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-hdmi-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun8i-a83t-hdmi-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A83t HDMI PHY Device Tree Bindings
+title: Allwinner A83t HDMI PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
index 845e226d7aff..7d849c4095a3 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun8i-r40-tcon-top.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner R40 TCON TOP Device Tree Bindings
+title: Allwinner R40 TCON TOP
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun9i-a80-deu.yaml b/Documentation/devicetree/bindings/display/allwinner,sun9i-a80-deu.yaml
index 637372ec4614..193afee2c3c1 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun9i-a80-deu.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun9i-a80-deu.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/allwinner,sun9i-a80-deu.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 Detail Enhancement Unit Device Tree Bindings
+title: Allwinner A80 Detail Enhancement Unit
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
index a9d34dd7bbc5..5b35adf34c7b 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/brcm,bcm2711-hdmi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom BCM2711 HDMI Controller Device Tree Bindings
+title: Broadcom BCM2711 HDMI Controller
 
 maintainers:
   - Eric Anholt <eric@anholt.net>
diff --git a/Documentation/devicetree/bindings/display/ilitek,ili9486.yaml b/Documentation/devicetree/bindings/display/ilitek,ili9486.yaml
index aecff34f505d..1f8f2182e2f1 100644
--- a/Documentation/devicetree/bindings/display/ilitek,ili9486.yaml
+++ b/Documentation/devicetree/bindings/display/ilitek,ili9486.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/ilitek,ili9486.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Ilitek ILI9486 display panels device tree bindings
+title: Ilitek ILI9486 display panels
 
 maintainers:
   - Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>
diff --git a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
index 1f905d85dd9c..dd64f70b5014 100644
--- a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
+++ b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/simple-framebuffer.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Simple Framebuffer Device Tree Bindings
+title: Simple Framebuffer
 
 maintainers:
   - Hans de Goede <hdegoede@redhat.com>
diff --git a/Documentation/devicetree/bindings/display/sitronix,st7735r.yaml b/Documentation/devicetree/bindings/display/sitronix,st7735r.yaml
index 53f181ef3670..621f27148419 100644
--- a/Documentation/devicetree/bindings/display/sitronix,st7735r.yaml
+++ b/Documentation/devicetree/bindings/display/sitronix,st7735r.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/sitronix,st7735r.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Sitronix ST7735R Display Panels Device Tree Bindings
+title: Sitronix ST7735R Display Panels
 
 maintainers:
   - David Lechner <david@lechnology.com>
diff --git a/Documentation/devicetree/bindings/dma/allwinner,sun4i-a10-dma.yaml b/Documentation/devicetree/bindings/dma/allwinner,sun4i-a10-dma.yaml
index 83808199657b..26d0d8ab7984 100644
--- a/Documentation/devicetree/bindings/dma/allwinner,sun4i-a10-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/allwinner,sun4i-a10-dma.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/dma/allwinner,sun4i-a10-dma.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 DMA Controller Device Tree Bindings
+title: Allwinner A10 DMA Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml b/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
index e712444abff1..bd599bda2653 100644
--- a/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/dma/allwinner,sun50i-a64-dma.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A64 DMA Controller Device Tree Bindings
+title: Allwinner A64 DMA Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml b/Documentation/devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml
index a6df6f8b54db..344dc7e04931 100644
--- a/Documentation/devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/dma/allwinner,sun6i-a31-dma.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 DMA Controller Device Tree Bindings
+title: Allwinner A31 DMA Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/dma/nvidia,tegra186-gpc-dma.yaml b/Documentation/devicetree/bindings/dma/nvidia,tegra186-gpc-dma.yaml
index 7e575296df0c..c8894476b6ab 100644
--- a/Documentation/devicetree/bindings/dma/nvidia,tegra186-gpc-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/nvidia,tegra186-gpc-dma.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/dma/nvidia,tegra186-gpc-dma.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: NVIDIA Tegra GPC DMA Controller Device Tree Bindings
+title: NVIDIA Tegra GPC DMA Controller
 
 description: |
   The Tegra General Purpose Central (GPC) DMA controller is used for faster
diff --git a/Documentation/devicetree/bindings/fpga/xilinx-zynq-fpga-mgr.yaml b/Documentation/devicetree/bindings/fpga/xilinx-zynq-fpga-mgr.yaml
index 29daca4be47f..f47b6140a742 100644
--- a/Documentation/devicetree/bindings/fpga/xilinx-zynq-fpga-mgr.yaml
+++ b/Documentation/devicetree/bindings/fpga/xilinx-zynq-fpga-mgr.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/fpga/xilinx-zynq-fpga-mgr.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Xilinx Zynq FPGA Manager Device Tree Bindings
+title: Xilinx Zynq FPGA Manager
 
 maintainers:
   - Michal Simek <michal.simek@xilinx.com>
diff --git a/Documentation/devicetree/bindings/fpga/xlnx,zynqmp-pcap-fpga.yaml b/Documentation/devicetree/bindings/fpga/xlnx,zynqmp-pcap-fpga.yaml
index 6cd2bdc06b5f..00a8d92ff736 100644
--- a/Documentation/devicetree/bindings/fpga/xlnx,zynqmp-pcap-fpga.yaml
+++ b/Documentation/devicetree/bindings/fpga/xlnx,zynqmp-pcap-fpga.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/fpga/xlnx,zynqmp-pcap-fpga.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Xilinx Zynq Ultrascale MPSoC FPGA Manager Device Tree Bindings
+title: Xilinx Zynq Ultrascale MPSoC FPGA Manager
 
 maintainers:
   - Nava kishore Manne <navam@xilinx.com>
diff --git a/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml b/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml
index e62b30386ac2..c21549e0fba6 100644
--- a/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml
+++ b/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/gnss/brcm,bcm4751.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom BCM4751 family GNSS Receiver Device Tree Bindings
+title: Broadcom BCM4751 family GNSS Receiver
 
 maintainers:
   - Johan Hovold <johan@kernel.org>
diff --git a/Documentation/devicetree/bindings/gnss/mediatek.yaml b/Documentation/devicetree/bindings/gnss/mediatek.yaml
index 45cf01b27700..c0eb35beb2ef 100644
--- a/Documentation/devicetree/bindings/gnss/mediatek.yaml
+++ b/Documentation/devicetree/bindings/gnss/mediatek.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/gnss/mediatek.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek GNSS Receiver Device Tree Bindings
+title: Mediatek GNSS Receiver
 
 maintainers:
   - Johan Hovold <johan@kernel.org>
diff --git a/Documentation/devicetree/bindings/gnss/sirfstar.yaml b/Documentation/devicetree/bindings/gnss/sirfstar.yaml
index 991599cdaa6b..0bbe684d82e1 100644
--- a/Documentation/devicetree/bindings/gnss/sirfstar.yaml
+++ b/Documentation/devicetree/bindings/gnss/sirfstar.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/gnss/sirfstar.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: SiRFstar GNSS Receiver Device Tree Bindings
+title: SiRFstar GNSS Receiver
 
 maintainers:
   - Johan Hovold <johan@kernel.org>
diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
index 35a760cfd343..4835a280b3bf 100644
--- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
+++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/gnss/u-blox,neo-6m.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: U-blox GNSS Receiver Device Tree Bindings
+title: U-blox GNSS Receiver
 
 allOf:
   - $ref: gnss-common.yaml#
diff --git a/Documentation/devicetree/bindings/gpio/gpio-zynq.yaml b/Documentation/devicetree/bindings/gpio/gpio-zynq.yaml
index 29c27eadbac8..572e1718f501 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-zynq.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-zynq.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/gpio/gpio-zynq.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Xilinx Zynq GPIO controller Device Tree Bindings
+title: Xilinx Zynq GPIO controller
 
 maintainers:
   - Michal Simek <michal.simek@xilinx.com>
diff --git a/Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml b/Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml
index 110651eafa70..26bd7e3986d5 100644
--- a/Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/gpio/microchip,mpfs-gpio.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip MPFS GPIO Controller Device Tree Bindings
+title: Microchip MPFS GPIO Controller
 
 maintainers:
   - Conor Dooley <conor.dooley@microchip.com>
diff --git a/Documentation/devicetree/bindings/gpio/x-powers,axp209-gpio.yaml b/Documentation/devicetree/bindings/gpio/x-powers,axp209-gpio.yaml
index 14486aee97b4..7f26f6b1eea1 100644
--- a/Documentation/devicetree/bindings/gpio/x-powers,axp209-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/x-powers,axp209-gpio.yaml
@@ -4,7 +4,7 @@
 $id: "http://devicetree.org/schemas/gpio/x-powers,axp209-gpio.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: X-Powers AXP209 GPIO Device Tree Bindings
+title: X-Powers AXP209 GPIO
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml b/Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
index 6747b870f297..f2f99afb3a3b 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/hwmon/adi,axi-fan-control.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Analog Devices AXI FAN Control Device Tree Bindings
+title: Analog Devices AXI FAN Control
 
 maintainers:
   - Nuno Sá <nuno.sa@analog.com>
diff --git a/Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml b/Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml
index f5a6cc3efd33..e1ccbd30e0eb 100644
--- a/Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml
+++ b/Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml
@@ -4,7 +4,7 @@
 $id: "http://devicetree.org/schemas/hwmon/iio-hwmon.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: ADC-attached Hardware Sensor Device Tree Bindings
+title: ADC-attached Hardware Sensor
 
 maintainers:
   - Jonathan Cameron <jic23@kernel.org>
diff --git a/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml b/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
index 1b03810d4b4d..5a799246a373 100644
--- a/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
+++ b/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/i2c/allwinner,sun6i-a31-p2wi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 P2WI (Push/Pull 2 Wires Interface) Device Tree Bindings
+title: Allwinner A31 P2WI (Push/Pull 2 Wires Interface)
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml b/Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml
index f597f73ccd87..869b4d633353 100644
--- a/Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/i2c/aspeed,i2c.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ASPEED I2C on the AST24XX, AST25XX, and AST26XX SoCs Device Tree Bindings
+title: ASPEED I2C on the AST24XX, AST25XX, and AST26XX SoCs
 
 maintainers:
   - Rayn Chen <rayn_chen@aspeedtech.com>
diff --git a/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml b/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
index 1ca1cd19bd1d..2e95cda7262a 100644
--- a/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
+++ b/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
@@ -4,7 +4,7 @@
 $id: "http://devicetree.org/schemas/i2c/cdns,i2c-r1p10.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Cadence I2C controller Device Tree Bindings
+title: Cadence I2C controller
 
 maintainers:
   - Michal Simek <michal.simek@xilinx.com>
diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
index 0ec033e48830..eebd7c0a3f6a 100644
--- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/i2c/marvell,mv64xxx-i2c.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Marvell MV64XXX I2C Controller Device Tree Bindings
+title: Marvell MV64XXX I2C Controller
 
 maintainers:
   - Gregory CLEMENT <gregory.clement@bootlin.com>
diff --git a/Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml b/Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml
index 7bad4b946a34..afa3db726229 100644
--- a/Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/i2c/microchip,corei2c.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip MPFS I2C Controller Device Tree Bindings
+title: Microchip MPFS I2C Controller
 
 maintainers:
   - Daire McNamara <daire.mcnamara@microchip.com>
diff --git a/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml b/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
index 09d2591e1fa3..00eb6ff6f5b1 100644
--- a/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/i2c/nuvoton,npcm7xx-i2c.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: nuvoton NPCM7XX I2C Controller Device Tree Bindings
+title: nuvoton NPCM7XX I2C Controller
 
 description: |
   I2C bus controllers of the NPCM series support both master and
diff --git a/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml b/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
index 715dcfa5a922..8d241a703d85 100644
--- a/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
+++ b/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
@@ -4,7 +4,7 @@
 $id: "http://devicetree.org/schemas/i2c/xlnx,xps-iic-2.00.a.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Xilinx IIC controller Device Tree Bindings
+title: Xilinx IIC controller
 
 maintainers:
   - info@mocean-labs.com
diff --git a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
index 04da001fc6ec..c002afdbfc7c 100644
--- a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
+++ b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
@@ -4,7 +4,7 @@
 $id: "http://devicetree.org/schemas/i3c/mipi-i3c-hci.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: MIPI I3C HCI Device Tree Bindings
+title: MIPI I3C HCI
 
 maintainers:
   - Nicolas Pitre <npitre@baylibre.com>
diff --git a/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml b/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml
index 9700dc468b25..5d631f7137e7 100644
--- a/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml
+++ b/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/input/allwinner,sun4i-a10-lradc-keys.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 LRADC Device Tree Bindings
+title: Allwinner A10 LRADC
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/input/imx-keypad.yaml b/Documentation/devicetree/bindings/input/imx-keypad.yaml
index f21db81206b4..7514df62b592 100644
--- a/Documentation/devicetree/bindings/input/imx-keypad.yaml
+++ b/Documentation/devicetree/bindings/input/imx-keypad.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/input/imx-keypad.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Freescale i.MX Keypad Port(KPP) device tree bindings
+title: Freescale i.MX Keypad Port(KPP)
 
 maintainers:
   - Liu Ying <gnuiyl@gmail.com>
diff --git a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
index 03ebd2665d07..7d1ab25a9c21 100644
--- a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
+++ b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/input/mediatek,mt6779-keypad.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek's Keypad Controller device tree bindings
+title: Mediatek's Keypad Controller
 
 maintainers:
   - Mattijs Korpershoek <mkorpershoek@baylibre.com>
diff --git a/Documentation/devicetree/bindings/input/regulator-haptic.yaml b/Documentation/devicetree/bindings/input/regulator-haptic.yaml
index b1ae72f9cd2d..627891e1ef55 100644
--- a/Documentation/devicetree/bindings/input/regulator-haptic.yaml
+++ b/Documentation/devicetree/bindings/input/regulator-haptic.yaml
@@ -4,7 +4,7 @@
 $id: "http://devicetree.org/schemas/input/regulator-haptic.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Regulator Haptic Device Tree Bindings
+title: Regulator Haptic
 
 maintainers:
   - Jaewon Kim <jaewon02.kim@samsung.com>
diff --git a/Documentation/devicetree/bindings/input/sprd,sc27xx-vibrator.yaml b/Documentation/devicetree/bindings/input/sprd,sc27xx-vibrator.yaml
index 5d67fc8ebc18..a401a0bfcbec 100644
--- a/Documentation/devicetree/bindings/input/sprd,sc27xx-vibrator.yaml
+++ b/Documentation/devicetree/bindings/input/sprd,sc27xx-vibrator.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/input/sprd,sc27xx-vibrator.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Spreadtrum SC27xx PMIC Vibrator Device Tree Bindings
+title: Spreadtrum SC27xx PMIC Vibrator
 
 maintainers:
   - Orson Zhai <orsonzhai@gmail.com>
diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
index 953d875b5e74..a713633be733 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun4i-a10-ic.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Interrupt Controller Device Tree Bindings
+title: Allwinner A10 Interrupt Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun6i-a31-r-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun6i-a31-r-intc.yaml
index 4db24b8a9ffe..4fa6fd400eef 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun6i-a31-r-intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun6i-a31-r-intc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun6i-a31-r-intc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 NMI/Wakeup Interrupt Controller Device Tree Bindings
+title: Allwinner A31 NMI/Wakeup Interrupt Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
index 7fc9ad5ef38c..83603180d8d9 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A20 Non-Maskable Interrupt Controller Device Tree Bindings
+title: Allwinner A20 Non-Maskable Interrupt Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/interrupt-controller/idt,32434-pic.yaml b/Documentation/devicetree/bindings/interrupt-controller/idt,32434-pic.yaml
index 160ff4b07cac..afb3dd80b643 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/idt,32434-pic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/idt,32434-pic.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/interrupt-controller/idt,32434-pic.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: IDT 79RC32434 Interrupt Controller Device Tree Bindings
+title: IDT 79RC32434 Interrupt Controller
 
 maintainers:
   - Thomas Bogendoerfer <tsbogend@alpha.franken.de>
diff --git a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
index e44daa09b137..00c10a8258f1 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/interrupt-controller/st,stm32-exti.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: STM32 External Interrupt Controller Device Tree Bindings
+title: STM32 External Interrupt Controller
 
 maintainers:
   - Alexandre Torgue <alexandre.torgue@foss.st.com>
diff --git a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
index 5e125cf2a88b..e20016f12017 100644
--- a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/iommu/allwinner,sun50i-h6-iommu.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner H6 IOMMU Device Tree Bindings
+title: Allwinner H6 IOMMU
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/media/allegro,al5e.yaml b/Documentation/devicetree/bindings/media/allegro,al5e.yaml
index 135bea94b587..2899d26d690e 100644
--- a/Documentation/devicetree/bindings/media/allegro,al5e.yaml
+++ b/Documentation/devicetree/bindings/media/allegro,al5e.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/allegro,al5e.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allegro DVT Video IP Codecs Device Tree Bindings
+title: Allegro DVT Video IP Codecs
 
 maintainers:
   - Michael Tretter <m.tretter@pengutronix.de>
diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
index 6ced94064215..617264ce477d 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/allwinner,sun4i-a10-csi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
+title: Allwinner A10 CMOS Sensor Interface (CSI)
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
index 6d8395d6bca0..704033e21ee8 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/allwinner,sun4i-a10-ir.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Infrared Controller Device Tree Bindings
+title: Allwinner A10 Infrared Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
index ee7fc3515d89..541325f900a1 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/allwinner,sun4i-a10-video-engine.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Video Engine Device Tree Bindings
+title: Allwinner A10 Video Engine
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
index 8551c4a711dc..f1ccca35a790 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-csi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 CMOS Sensor Interface (CSI) Device Tree Bindings
+title: Allwinner A31 CMOS Sensor Interface (CSI)
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
index 09725ca955f6..54e15ab8a7f5 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-mipi-csi2.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 MIPI CSI-2 Device Tree Bindings
+title: Allwinner A31 MIPI CSI-2
 
 maintainers:
   - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml
index a258832d520c..c2f292dd01ed 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/allwinner,sun8i-a83t-de2-rotate.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A83T DE2 Rotate Device Tree Bindings
+title: Allwinner A83T DE2 Rotate
 
 maintainers:
   - Jernej Skrabec <jernej.skrabec@siol.net>
diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
index 5b27482b5687..3cac68a87ad7 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/allwinner,sun8i-a83t-mipi-csi2.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A83T MIPI CSI-2 Device Tree Bindings
+title: Allwinner A83T MIPI CSI-2
 
 maintainers:
   - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
index b80980b1908e..3ccd52164f5b 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/allwinner,sun8i-h3-deinterlace.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner H3 Deinterlace Device Tree Bindings
+title: Allwinner H3 Deinterlace
 
 maintainers:
   - Jernej Skrabec <jernej.skrabec@siol.net>
diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml b/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml
index 052e752157b4..5e8d001492cc 100644
--- a/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/mediatek-jpeg-decoder.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MediaTek JPEG Decoder Device Tree Bindings
+title: MediaTek JPEG Decoder
 
 maintainers:
   - Xia Jiang <xia.jiang@mediatek.com>
diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
index 4fd390c042a9..fc727300b493 100644
--- a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/mediatek-jpeg-encoder.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MediaTek JPEG Encoder Device Tree Bindings
+title: MediaTek JPEG Encoder
 
 maintainers:
   - Xia Jiang <xia.jiang@mediatek.com>
diff --git a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
index 3cc6f42aeb76..3d9d1db37040 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/nxp,imx8-jpeg.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: i.MX8QXP/QM JPEG decoder/encoder Device Tree Bindings
+title: i.MX8QXP/QM JPEG decoder/encoder
 
 maintainers:
   - Mirela Rabulea <mirela.rabulea@nxp.com>
diff --git a/Documentation/devicetree/bindings/media/rc.yaml b/Documentation/devicetree/bindings/media/rc.yaml
index b11d14ab89c4..e732b7f3a635 100644
--- a/Documentation/devicetree/bindings/media/rc.yaml
+++ b/Documentation/devicetree/bindings/media/rc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/rc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Generic Infrared Remote Controller Device Tree Bindings
+title: Generic Infrared Remote Controller
 
 maintainers:
   - Mauro Carvalho Chehab <mchehab@kernel.org>
diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 3bcfb8e12333..08b02ec16755 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/rockchip,vdec.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Rockchip Video Decoder (VDec) Device Tree Bindings
+title: Rockchip Video Decoder (VDec)
 
 maintainers:
   - Heiko Stuebner <heiko@sntech.de>
diff --git a/Documentation/devicetree/bindings/media/ti,cal.yaml b/Documentation/devicetree/bindings/media/ti,cal.yaml
index 7e078424ca4d..f8e4d260d10a 100644
--- a/Documentation/devicetree/bindings/media/ti,cal.yaml
+++ b/Documentation/devicetree/bindings/media/ti,cal.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/ti,cal.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Texas Instruments DRA72x CAMERA ADAPTATION LAYER (CAL) Device Tree Bindings
+title: Texas Instruments DRA72x CAMERA ADAPTATION LAYER (CAL)
 
 maintainers:
   - Benoit Parrot <bparrot@ti.com>
diff --git a/Documentation/devicetree/bindings/media/ti,vpe.yaml b/Documentation/devicetree/bindings/media/ti,vpe.yaml
index ef473f287399..7fa8a367ed22 100644
--- a/Documentation/devicetree/bindings/media/ti,vpe.yaml
+++ b/Documentation/devicetree/bindings/media/ti,vpe.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/media/ti,vpe.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Texas Instruments DRA7x Video Processing Engine (VPE) Device Tree Bindings
+title: Texas Instruments DRA7x Video Processing Engine (VPE)
 
 maintainers:
   - Benoit Parrot <bparrot@ti.com>
diff --git a/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml b/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
index f591332fc462..93f5065a6280 100644
--- a/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
+++ b/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/allwinner,sun4i-a10-ts.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Resistive Touchscreen Controller Device Tree Bindings
+title: Allwinner A10 Resistive Touchscreen Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml b/Documentation/devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml
index d131759ccaf3..e9bbd7440829 100644
--- a/Documentation/devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml
+++ b/Documentation/devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/allwinner,sun6i-a31-prcm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 PRCM Device Tree Bindings
+title: Allwinner A31 PRCM
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/mfd/allwinner,sun8i-a23-prcm.yaml b/Documentation/devicetree/bindings/mfd/allwinner,sun8i-a23-prcm.yaml
index aa5e683b236c..c2d339d15c97 100644
--- a/Documentation/devicetree/bindings/mfd/allwinner,sun8i-a23-prcm.yaml
+++ b/Documentation/devicetree/bindings/mfd/allwinner,sun8i-a23-prcm.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/allwinner,sun8i-a23-prcm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A23 PRCM Device Tree Bindings
+title: Allwinner A23 PRCM
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml
index afc569bc15cf..148f1da47603 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/brcm,bcm6318-gpio-sysctl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom BCM6318 GPIO System Controller Device Tree Bindings
+title: Broadcom BCM6318 GPIO System Controller
 
 maintainers:
   - Álvaro Fernández Rojas <noltari@gmail.com>
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml
index c7771c86d7c1..7e582243ea76 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/brcm,bcm63268-gpio-sysctl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom BCM63268 GPIO System Controller Device Tree Bindings
+title: Broadcom BCM63268 GPIO System Controller
 
 maintainers:
   - Álvaro Fernández Rojas <noltari@gmail.com>
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml
index 33963c11ae62..2230848e11c3 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/brcm,bcm6328-gpio-sysctl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom BCM6328 GPIO System Controller Device Tree Bindings
+title: Broadcom BCM6328 GPIO System Controller
 
 maintainers:
   - Álvaro Fernández Rojas <noltari@gmail.com>
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml
index 3e44bea78b03..c06693b6f7aa 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/brcm,bcm6358-gpio-sysctl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom BCM6358 GPIO System Controller Device Tree Bindings
+title: Broadcom BCM6358 GPIO System Controller
 
 maintainers:
   - Álvaro Fernández Rojas <noltari@gmail.com>
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml
index 48d14a5fe0d5..c560bede0e37 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/brcm,bcm6362-gpio-sysctl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom BCM6362 GPIO System Controller Device Tree Bindings
+title: Broadcom BCM6362 GPIO System Controller
 
 maintainers:
   - Álvaro Fernández Rojas <noltari@gmail.com>
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml
index 307270b0cfed..c534f5f2404e 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/brcm,bcm6368-gpio-sysctl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom BCM6368 GPIO System Controller Device Tree Bindings
+title: Broadcom BCM6368 GPIO System Controller
 
 maintainers:
   - Álvaro Fernández Rojas <noltari@gmail.com>
diff --git a/Documentation/devicetree/bindings/mfd/canaan,k210-sysctl.yaml b/Documentation/devicetree/bindings/mfd/canaan,k210-sysctl.yaml
index c24ad45cabb5..e2046f07a40e 100644
--- a/Documentation/devicetree/bindings/mfd/canaan,k210-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/canaan,k210-sysctl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/canaan,k210-sysctl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Canaan Kendryte K210 System Controller Device Tree Bindings
+title: Canaan Kendryte K210 System Controller
 
 maintainers:
   - Damien Le Moal <damien.lemoal@wdc.com>
diff --git a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
index a3b976f101e8..7d7e20e904c5 100644
--- a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
+++ b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/khadas,mcu.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Khadas on-board Microcontroller Device Tree Bindings
+title: Khadas on-board Microcontroller
 
 maintainers:
   - Neil Armstrong <narmstrong@baylibre.com>
diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index c10f0b577268..9c79044e7b37 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/syscon.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: System Controller Registers R/W Device Tree Bindings
+title: System Controller Registers R/W
 
 description: |
   System controller node represents a register region containing a set
diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
index 73cffc45e056..1aeac43cad92 100644
--- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/mfd/ti,j721e-system-controller.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: TI J721e System Controller Registers R/W Device Tree Bindings
+title: TI J721e System Controller Registers R/W
 
 description: |
   This represents the Control Module registers (CTRL_MMR0) on the SoC.
diff --git a/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml b/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
index de330c9869ff..309606d2d806 100644
--- a/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
+++ b/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
@@ -4,7 +4,7 @@
 $id: "http://devicetree.org/schemas/mfd/x-powers,ac100.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: X-Powers AC100 Device Tree Bindings
+title: X-Powers AC100
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
index 3a53bae611bc..de1c3c6c7bc8 100644
--- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
+++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/x-powers,axp152.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: X-Powers AXP PMIC Device Tree Bindings
+title: X-Powers AXP PMIC
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/mips/ralink.yaml b/Documentation/devicetree/bindings/mips/ralink.yaml
index 0588cee25ae9..704b5b595127 100644
--- a/Documentation/devicetree/bindings/mips/ralink.yaml
+++ b/Documentation/devicetree/bindings/mips/ralink.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mips/ralink.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Ralink SoC based Platforms Device Tree Bindings
+title: Ralink SoC based Platforms
 
 maintainers:
   - Sergio Paracuellos <sergio.paracuellos@gmail.com>
diff --git a/Documentation/devicetree/bindings/mips/realtek-rtl.yaml b/Documentation/devicetree/bindings/mips/realtek-rtl.yaml
index aadff8ce0f49..f8ac309d2994 100644
--- a/Documentation/devicetree/bindings/mips/realtek-rtl.yaml
+++ b/Documentation/devicetree/bindings/mips/realtek-rtl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mips/realtek-rtl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Realtek RTL83xx/93xx SoC series device tree bindings
+title: Realtek RTL83xx/93xx SoC series
 
 maintainers:
   - Bert Vermeulen <bert@biot.com>
diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
index 7803597b6366..02ecc93417ef 100644
--- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
+++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mmc/allwinner,sun4i-a10-mmc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 MMC Controller Device Tree Bindings
+title: Allwinner A10 MMC Controller
 
 allOf:
   - $ref: "mmc-controller.yaml"
diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
index 60955acb8e57..1c391bec43dc 100644
--- a/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
+++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mmc/amlogic,meson-mx-sdhc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Amlogic Meson SDHC controller Device Tree Bindings
+title: Amlogic Meson SDHC controller
 
 allOf:
   - $ref: "mmc-controller.yaml"
diff --git a/Documentation/devicetree/bindings/mmc/mmc-card.yaml b/Documentation/devicetree/bindings/mmc/mmc-card.yaml
index b17d454442b3..fd347126449a 100644
--- a/Documentation/devicetree/bindings/mmc/mmc-card.yaml
+++ b/Documentation/devicetree/bindings/mmc/mmc-card.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mmc/mmc-card.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MMC Card / eMMC Generic Device Tree Bindings
+title: MMC Card / eMMC Generic
 
 maintainers:
   - Ulf Hansson <ulf.hansson@linaro.org>
diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 8d888b435817..bad28bc74b34 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mmc/rockchip-dw-mshc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Rockchip designware mobile storage host controller device tree bindings
+title: Rockchip designware mobile storage host controller
 
 description:
   Rockchip uses the Synopsys designware mobile storage host controller
diff --git a/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml b/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
index c033ac3f147d..4741864da48e 100644
--- a/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
+++ b/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mtd/allwinner,sun4i-a10-nand.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 NAND Controller Device Tree Bindings
+title: Allwinner A10 NAND Controller
 
 allOf:
   - $ref: "nand-controller.yaml"
diff --git a/Documentation/devicetree/bindings/mtd/arasan,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/arasan,nand-controller.yaml
index b32876933269..f013fb976d95 100644
--- a/Documentation/devicetree/bindings/mtd/arasan,nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/arasan,nand-controller.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mtd/arasan,nand-controller.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Arasan NAND Flash Controller with ONFI 3.1 support device tree bindings
+title: Arasan NAND Flash Controller with ONFI 3.1 support
 
 allOf:
   - $ref: "nand-controller.yaml"
diff --git a/Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml b/Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml
index 5f126bb9b202..023f3ef0fa13 100644
--- a/Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml
+++ b/Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mtd/arm,pl353-nand-r2p1.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: PL353 NAND Controller device tree bindings
+title: PL353 NAND Controller
 
 allOf:
   - $ref: "nand-controller.yaml"
diff --git a/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml b/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
index 30e0c66ab0eb..5d39ad7aa810 100644
--- a/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
+++ b/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mtd/intel,lgm-nand.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel LGM SoC NAND Controller Device Tree Bindings
+title: Intel LGM SoC NAND Controller
 
 allOf:
   - $ref: "nand-controller.yaml"
diff --git a/Documentation/devicetree/bindings/mtd/mtd.yaml b/Documentation/devicetree/bindings/mtd/mtd.yaml
index 376b679cfc70..3498e485679b 100644
--- a/Documentation/devicetree/bindings/mtd/mtd.yaml
+++ b/Documentation/devicetree/bindings/mtd/mtd.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mtd/mtd.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MTD (Memory Technology Device) Device Tree Bindings
+title: MTD (Memory Technology Device)
 
 maintainers:
   - Miquel Raynal <miquel.raynal@bootlin.com>
diff --git a/Documentation/devicetree/bindings/mtd/mxicy,nand-ecc-engine.yaml b/Documentation/devicetree/bindings/mtd/mxicy,nand-ecc-engine.yaml
index 804479999ccb..f92e7234deab 100644
--- a/Documentation/devicetree/bindings/mtd/mxicy,nand-ecc-engine.yaml
+++ b/Documentation/devicetree/bindings/mtd/mxicy,nand-ecc-engine.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mtd/mxicy,nand-ecc-engine.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Macronix NAND ECC engine device tree bindings
+title: Macronix NAND ECC engine
 
 maintainers:
   - Miquel Raynal <miquel.raynal@bootlin.com>
diff --git a/Documentation/devicetree/bindings/mtd/renesas-nandc.yaml b/Documentation/devicetree/bindings/mtd/renesas-nandc.yaml
index 7b18bc5cc8b3..f0dc78bb0515 100644
--- a/Documentation/devicetree/bindings/mtd/renesas-nandc.yaml
+++ b/Documentation/devicetree/bindings/mtd/renesas-nandc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mtd/renesas-nandc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Renesas R-Car Gen3 & RZ/N1x NAND flash controller device tree bindings
+title: Renesas R-Car Gen3 & RZ/N1x NAND flash controller
 
 maintainers:
   - Miquel Raynal <miquel.raynal@bootlin.com>
diff --git a/Documentation/devicetree/bindings/mtd/spi-nand.yaml b/Documentation/devicetree/bindings/mtd/spi-nand.yaml
index dd3cd1d53009..4d095e613204 100644
--- a/Documentation/devicetree/bindings/mtd/spi-nand.yaml
+++ b/Documentation/devicetree/bindings/mtd/spi-nand.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mtd/spi-nand.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: SPI-NAND flash device tree bindings
+title: SPI-NAND flash
 
 maintainers:
   - Miquel Raynal <miquel.raynal@bootlin.com>
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
index 098b2bf7d976..987b91b9afe9 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/allwinner,sun4i-a10-emac.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 EMAC Ethernet Controller Device Tree Bindings
+title: Allwinner A10 EMAC Ethernet Controller
 
 allOf:
   - $ref: "ethernet-controller.yaml#"
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml
index 767193ec1d32..ede977cdfb8d 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/allwinner,sun4i-a10-mdio.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 MDIO Controller Device Tree Bindings
+title: Allwinner A10 MDIO Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
index 703d0d886884..3bd912ed7c7e 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/allwinner,sun7i-a20-gmac.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A20 GMAC Device Tree Bindings
+title: Allwinner A20 GMAC
 
 allOf:
   - $ref: "snps,dwmac.yaml#"
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
index 55fc620c72cd..1432fda3b603 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/allwinner,sun8i-a83t-emac.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A83t EMAC Device Tree Bindings
+title: Allwinner A83t EMAC
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/net/brcm,amac.yaml b/Documentation/devicetree/bindings/net/brcm,amac.yaml
index 8f031932c8af..ee2eac8f5710 100644
--- a/Documentation/devicetree/bindings/net/brcm,amac.yaml
+++ b/Documentation/devicetree/bindings/net/brcm,amac.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/brcm,amac.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom AMAC Ethernet Controller Device Tree Bindings
+title: Broadcom AMAC Ethernet Controller
 
 maintainers:
   - Florian Fainelli <f.fainelli@gmail.com>
diff --git a/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml b/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
index 52a7fa4f49a4..d23fa3771210 100644
--- a/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
+++ b/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/intel,dwmac-plat.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel DWMAC glue layer Device Tree Bindings
+title: Intel DWMAC glue layer
 
 maintainers:
   - Vineetha G. Jaya Kumaran <vineetha.g.jaya.kumaran@intel.com>
diff --git a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
index 011363166789..4c155441acbf 100644
--- a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/nxp,dwmac-imx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: NXP i.MX8 DWMAC glue layer Device Tree Bindings
+title: NXP i.MX8 DWMAC glue layer
 
 maintainers:
   - Joakim Zhang <qiangqing.zhang@nxp.com>
diff --git a/Documentation/devicetree/bindings/net/qcom,ipq4019-mdio.yaml b/Documentation/devicetree/bindings/net/qcom,ipq4019-mdio.yaml
index 2af304341772..ad8b2b41c140 100644
--- a/Documentation/devicetree/bindings/net/qcom,ipq4019-mdio.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ipq4019-mdio.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/qcom,ipq4019-mdio.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm IPQ40xx MDIO Controller Device Tree Bindings
+title: Qualcomm IPQ40xx MDIO Controller
 
 maintainers:
   - Robert Marko <robert.marko@sartura.hr>
diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
index 157d606bf9cb..e329ef06e10f 100644
--- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: RTL8723BS/RTL8723CS/RTL8822CS Bluetooth Device Tree Bindings
+title: RTL8723BS/RTL8723CS/RTL8822CS Bluetooth
 
 maintainers:
   - Vasily Khoruzhick <anarsoul@gmail.com>
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 491597c02edf..73ce3f5d0b8d 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/snps,dwmac.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Synopsys DesignWare MAC Device Tree Bindings
+title: Synopsys DesignWare MAC
 
 maintainers:
   - Alexandre Torgue <alexandre.torgue@foss.st.com>
diff --git a/Documentation/devicetree/bindings/net/sunplus,sp7021-emac.yaml b/Documentation/devicetree/bindings/net/sunplus,sp7021-emac.yaml
index 62dffee27c3d..35ab268f87ab 100644
--- a/Documentation/devicetree/bindings/net/sunplus,sp7021-emac.yaml
+++ b/Documentation/devicetree/bindings/net/sunplus,sp7021-emac.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/net/sunplus,sp7021-emac.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Sunplus SP7021 Dual Ethernet MAC Device Tree Bindings
+title: Sunplus SP7021 Dual Ethernet MAC
 
 maintainers:
   - Wells Lu <wellslutw@gmail.com>
diff --git a/Documentation/devicetree/bindings/net/ti,cpsw-switch.yaml b/Documentation/devicetree/bindings/net/ti,cpsw-switch.yaml
index 31bf825c6598..4be6cabb510c 100644
--- a/Documentation/devicetree/bindings/net/ti,cpsw-switch.yaml
+++ b/Documentation/devicetree/bindings/net/ti,cpsw-switch.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/ti,cpsw-switch.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: TI SoC Ethernet Switch Controller (CPSW) Device Tree Bindings
+title: TI SoC Ethernet Switch Controller (CPSW)
 
 maintainers:
   - Grygorii Strashko <grygorii.strashko@ti.com>
diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
index b8281d8be940..2f404436b010 100644
--- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
+++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/ti,k3-am654-cpsw-nuss.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: The TI AM654x/J721E/AM642x SoC Gigabit Ethernet MAC (Media Access Controller) Device Tree Bindings
+title: The TI AM654x/J721E/AM642x SoC Gigabit Ethernet MAC (Media Access Controller)
 
 maintainers:
   - Grygorii Strashko <grygorii.strashko@ti.com>
diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
index b783ad0d1f53..f0a09a0d60e8 100644
--- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
+++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/ti,k3-am654-cpts.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: The TI AM654x/J721E Common Platform Time Sync (CPTS) module Device Tree Bindings
+title: The TI AM654x/J721E Common Platform Time Sync (CPTS) module
 
 maintainers:
   - Grygorii Strashko <grygorii.strashko@ti.com>
diff --git a/Documentation/devicetree/bindings/net/vertexcom-mse102x.yaml b/Documentation/devicetree/bindings/net/vertexcom-mse102x.yaml
index 8156a9aeb589..3ac2e361b9b3 100644
--- a/Documentation/devicetree/bindings/net/vertexcom-mse102x.yaml
+++ b/Documentation/devicetree/bindings/net/vertexcom-mse102x.yaml
@@ -4,7 +4,7 @@
 $id: "http://devicetree.org/schemas/net/vertexcom-mse102x.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: The Vertexcom MSE102x (SPI) Device Tree Bindings
+title: The Vertexcom MSE102x (SPI)
 
 maintainers:
   - Stefan Wahren <stefan.wahren@in-tech.com>
diff --git a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
index e558587ff885..14c170c6a86e 100644
--- a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
+++ b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/nvmem/allwinner,sun4i-a10-sid.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Security ID Device Tree Bindings
+title: Allwinner A10 Security ID
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/nvmem/imx-iim.yaml b/Documentation/devicetree/bindings/nvmem/imx-iim.yaml
index 9cc43e7a4b38..7aac1995cfaf 100644
--- a/Documentation/devicetree/bindings/nvmem/imx-iim.yaml
+++ b/Documentation/devicetree/bindings/nvmem/imx-iim.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/nvmem/imx-iim.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Freescale i.MX IC Identification Module (IIM) device tree bindings
+title: Freescale i.MX IC Identification Module (IIM)
 
 maintainers:
   - Anson Huang <Anson.Huang@nxp.com>
diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml b/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
index 8a43dc1283fe..d0a239d7e199 100644
--- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/nvmem/imx-ocotp.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Freescale i.MX6 On-Chip OTP Controller (OCOTP) device tree bindings
+title: Freescale i.MX6 On-Chip OTP Controller (OCOTP)
 
 maintainers:
   - Anson Huang <Anson.Huang@nxp.com>
diff --git a/Documentation/devicetree/bindings/nvmem/nintendo-otp.yaml b/Documentation/devicetree/bindings/nvmem/nintendo-otp.yaml
index dbe4ffdd644c..f93bc50c40d7 100644
--- a/Documentation/devicetree/bindings/nvmem/nintendo-otp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/nintendo-otp.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/nvmem/nintendo-otp.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Nintendo Wii and Wii U OTP Device Tree Bindings
+title: Nintendo Wii and Wii U OTP
 
 description: |
   This binding represents the OTP memory as found on a Nintendo Wii or Wii U,
diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
index b1da238c8bcb..a26633bf52db 100644
--- a/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
+++ b/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/nvmem/nvmem-consumer.yaml#
 $schema: http://devicetree.org/meta-schemas/base.yaml#
 
-title: NVMEM (Non Volatile Memory) Consumer Device Tree Bindings
+title: NVMEM (Non Volatile Memory) Consumer
 
 maintainers:
   - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
index 3bb349c634cb..1eb22dba364c 100644
--- a/Documentation/devicetree/bindings/nvmem/nvmem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/nvmem/nvmem.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: NVMEM (Non Volatile Memory) Device Tree Bindings
+title: NVMEM (Non Volatile Memory)
 
 maintainers:
   - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
index 104dd508565e..febee8129aa9 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/nvmem/rockchip-efuse.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Rockchip eFuse device tree bindings
+title: Rockchip eFuse
 
 maintainers:
   - Heiko Stuebner <heiko@sntech.de>
diff --git a/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml b/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml
index 729ae97b63d9..385b0692261c 100644
--- a/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml
+++ b/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/opp/allwinner,sun50i-h6-operating-points.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner H6 CPU OPP Device Tree Bindings
+title: Allwinner H6 CPU OPP
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 0f064e4222f3..7e15aae7d69e 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pci/brcm,stb-pcie.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Brcmstb PCIe Host Controller Device Tree Bindings
+title: Brcmstb PCIe Host Controller
 
 maintainers:
   - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
diff --git a/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml b/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
index edb4f81253c8..d2c1b3d46584 100644
--- a/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
+++ b/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pci/microchip,pcie-host.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip PCIe Root Port Bridge Controller Device Tree Bindings
+title: Microchip PCIe Root Port Bridge Controller
 
 maintainers:
   - Daire McNamara <daire.mcnamara@microchip.com>
diff --git a/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
index 445eed94b53f..f20ed7e709f7 100644
--- a/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pci/samsung,exynos-pcie.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Samsung SoC series PCIe Host Controller Device Tree Bindings
+title: Samsung SoC series PCIe Host Controller
 
 maintainers:
   - Marek Szyprowski <m.szyprowski@samsung.com>
diff --git a/Documentation/devicetree/bindings/pci/toshiba,visconti-pcie.yaml b/Documentation/devicetree/bindings/pci/toshiba,visconti-pcie.yaml
index 30b6396d83c8..48ed227fc5b9 100644
--- a/Documentation/devicetree/bindings/pci/toshiba,visconti-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/toshiba,visconti-pcie.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pci/toshiba,visconti-pcie.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Toshiba Visconti5 SoC PCIe Host Controller Device Tree Bindings
+title: Toshiba Visconti5 SoC PCIe Host Controller
 
 maintainers:
   - Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
diff --git a/Documentation/devicetree/bindings/peci/peci-aspeed.yaml b/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
index 1e68a801a92a..b01e0c8b963d 100644
--- a/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
+++ b/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/peci/peci-aspeed.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Aspeed PECI Bus Device Tree Bindings
+title: Aspeed PECI Bus
 
 maintainers:
   - Iwona Winiarska <iwona.winiarska@intel.com>
diff --git a/Documentation/devicetree/bindings/peci/peci-controller.yaml b/Documentation/devicetree/bindings/peci/peci-controller.yaml
index bbc3d3f3a929..d7853291b060 100644
--- a/Documentation/devicetree/bindings/peci/peci-controller.yaml
+++ b/Documentation/devicetree/bindings/peci/peci-controller.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/peci/peci-controller.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Generic Device Tree Bindings for PECI
+title: Generic for PECI
 
 maintainers:
   - Iwona Winiarska <iwona.winiarska@intel.com>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
index 77606c899fe2..4fff091bd534 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun4i-a10-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 USB PHY Device Tree Bindings
+title: Allwinner A10 USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
index 0fa4b32b097e..f557feca9763 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun50i-a64-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A64 USB PHY Device Tree Bindings
+title: Allwinner A64 USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml
index e632140722a2..4480fdedd669 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun50i-h6-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner H6 USB PHY Device Tree Bindings
+title: Allwinner H6 USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml
index 5bad9b06e2e7..1563e3df3052 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun5i-a13-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A13 USB PHY Device Tree Bindings
+title: Allwinner A13 USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
index 22636c9fdab8..dfb6a8993535 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun6i-a31-mipi-dphy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 MIPI D-PHY Controller Device Tree Bindings
+title: Allwinner A31 MIPI D-PHY Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml
index 922b4665e00d..4897a3d2fbc3 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun6i-a31-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 USB PHY Device Tree Bindings
+title: Allwinner A31 USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml
index a94019efc2f3..99de9c6889a0 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun8i-a23-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A23 USB PHY Device Tree Bindings
+title: Allwinner A23 USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml
index 33f3ddc0492d..73438d84de50 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun8i-a83t-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A83t USB PHY Device Tree Bindings
+title: Allwinner A83t USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
index e288450e0844..77539b4601c2 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun8i-h3-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner H3 USB PHY Device Tree Bindings
+title: Allwinner H3 USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml
index d947e50a49d2..2dd31630c13e 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun8i-r40-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner R40 USB PHY Device Tree Bindings
+title: Allwinner R40 USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml
index a2836c296cc4..395d33855d48 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun8i-v3s-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner V3s USB PHY Device Tree Bindings
+title: Allwinner V3s USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
index 2eb493fa64fd..bd9445f6f130 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A80 USB PHY Device Tree Bindings
+title: Allwinner A80 USB PHY
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
index 07be031d82e6..a76fba657de1 100644
--- a/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/cdns,dphy-rx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Cadence DPHY Rx Device Tree Bindings
+title: Cadence DPHY Rx
 
 maintainers:
   - Pratyush Yadav <p.yadav@ti.com>
diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
index f0e9ca8427bb..554b270112fd 100644
--- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/cdns,dphy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Cadence DPHY Device Tree Bindings
+title: Cadence DPHY
 
 maintainers:
   - Pratyush Yadav <p.yadav@ti.com>
diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
index b6421eedece3..0af765ba2793 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/fsl,imx8-pcie-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Freescale i.MX8 SoC series PCIe PHY Device Tree Bindings
+title: Freescale i.MX8 SoC series PCIe PHY
 
 maintainers:
   - Richard Zhu <hongxing.zhu@nxp.com>
diff --git a/Documentation/devicetree/bindings/phy/intel,lgm-emmc-phy.yaml b/Documentation/devicetree/bindings/phy/intel,lgm-emmc-phy.yaml
index 954e67571dfd..ca818f83579b 100644
--- a/Documentation/devicetree/bindings/phy/intel,lgm-emmc-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/intel,lgm-emmc-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/intel,lgm-emmc-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel Lightning Mountain(LGM) eMMC PHY Device Tree Bindings
+title: Intel Lightning Mountain(LGM) eMMC PHY
 
 maintainers:
   - Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
diff --git a/Documentation/devicetree/bindings/phy/intel,lgm-usb-phy.yaml b/Documentation/devicetree/bindings/phy/intel,lgm-usb-phy.yaml
index ce62c0b94daf..653a12286637 100644
--- a/Documentation/devicetree/bindings/phy/intel,lgm-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/intel,lgm-usb-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/intel,lgm-usb-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel LGM USB PHY Device Tree Bindings
+title: Intel LGM USB PHY
 
 maintainers:
   - Vadivel Murugan Ramuthevar <vadivel.muruganx.ramuthevar@linux.intel.com>
diff --git a/Documentation/devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml
index a97482179cf5..711de06bb0fc 100644
--- a/Documentation/devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/lantiq,vrx200-pcie-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Lantiq VRX200 and ARX300 PCIe PHY Device Tree Bindings
+title: Lantiq VRX200 and ARX300 PCIe PHY
 
 maintainers:
   - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
index 29d4123323c2..c2f4cb0b254a 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
@@ -4,7 +4,7 @@
 $id: "http://devicetree.org/schemas/phy/mediatek,mt7621-pci-phy.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Mediatek Mt7621 PCIe PHY Device Tree Bindings
+title: Mediatek Mt7621 PCIe PHY
 
 maintainers:
   - Sergio Paracuellos <sergio.paracuellos@gmail.com>
diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
index b3e409988c17..73fde3a229bc 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/phy/mediatek,tphy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MediaTek T-PHY Controller Device Tree Bindings
+title: MediaTek T-PHY Controller
 
 maintainers:
   - Chunfeng Yun <chunfeng.yun@mediatek.com>
diff --git a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
index 598fd2b95c29..a9e3139fd421 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/phy/mediatek,xsphy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MediaTek XS-PHY Controller Device Tree Bindings
+title: MediaTek XS-PHY Controller
 
 maintainers:
   - Chunfeng Yun <chunfeng.yun@mediatek.com>
diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index f14454401419..8d8698412de0 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Rockchip SoC Naneng Combo Phy Device Tree Bindings
+title: Rockchip SoC Naneng Combo Phy
 
 maintainers:
   - Heiko Stuebner <heiko@sntech.de>
diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
index bb4a2e4b8ab0..4b0b020921d5 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/rockchip-inno-csi-dphy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
+title: Rockchip SoC MIPI RX0 D-PHY
 
 maintainers:
   - Heiko Stuebner <heiko@sntech.de>
diff --git a/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml b/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
index 7d888d358823..5114e99b0035 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy-rx0.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
+title: Rockchip SoC MIPI RX0 D-PHY
 
 maintainers:
   - Helen Koike <helen.koike@collabora.com>
diff --git a/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
index ac0af40be52d..28e299a9609d 100644
--- a/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/samsung,exynos-pcie-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Samsung SoC series PCIe PHY Device Tree Bindings
+title: Samsung SoC series PCIe PHY
 
 maintainers:
   - Marek Szyprowski <m.szyprowski@samsung.com>
diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
index 8da99461e817..3307b58b1cac 100644
--- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/samsung,ufs-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Samsung SoC series UFS PHY Device Tree Bindings
+title: Samsung SoC series UFS PHY
 
 maintainers:
   - Alim Akhtar <alim.akhtar@samsung.com>
diff --git a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
index 79906519c652..cefbc8b53a83 100644
--- a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
+++ b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/xlnx,zynqmp-psgtr.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Xilinx ZynqMP Gigabit Transceiver PHY Device Tree Bindings
+title: Xilinx ZynqMP Gigabit Transceiver PHY
 
 maintainers:
   - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
diff --git a/Documentation/devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml
index d19d65c870aa..1e3c8de6cae1 100644
--- a/Documentation/devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/allwinner,sun4i-a10-pinctrl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Pin Controller Device Tree Bindings
+title: Allwinner A10 Pin Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/pinctrl/canaan,k210-fpioa.yaml b/Documentation/devicetree/bindings/pinctrl/canaan,k210-fpioa.yaml
index 533b4cfe33d2..a78cb2796001 100644
--- a/Documentation/devicetree/bindings/pinctrl/canaan,k210-fpioa.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/canaan,k210-fpioa.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/canaan,k210-fpioa.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Canaan Kendryte K210 FPIOA Device Tree Bindings
+title: Canaan Kendryte K210 FPIOA
 
 maintainers:
   - Damien Le Moal <damien.lemoal@wdc.com>
diff --git a/Documentation/devicetree/bindings/pinctrl/intel,pinctrl-keembay.yaml b/Documentation/devicetree/bindings/pinctrl/intel,pinctrl-keembay.yaml
index 5e99d79499b4..0bf5081da7b2 100644
--- a/Documentation/devicetree/bindings/pinctrl/intel,pinctrl-keembay.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/intel,pinctrl-keembay.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/intel,pinctrl-keembay.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel Keem Bay pin controller Device Tree Bindings
+title: Intel Keem Bay pin controller
 
 maintainers:
   - Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
diff --git a/Documentation/devicetree/bindings/pinctrl/intel,pinctrl-thunderbay.yaml b/Documentation/devicetree/bindings/pinctrl/intel,pinctrl-thunderbay.yaml
index 0ec476248f21..172038279f4e 100644
--- a/Documentation/devicetree/bindings/pinctrl/intel,pinctrl-thunderbay.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/intel,pinctrl-thunderbay.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/intel,pinctrl-thunderbay.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel Thunder Bay pin controller Device Tree Bindings
+title: Intel Thunder Bay pin controller
 
 maintainers:
   - Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
index 161088a8be33..33b5f79e741a 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/mediatek,mt65xx-pinctrl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek MT65xx Pin Controller Device Tree Bindings
+title: Mediatek MT65xx Pin Controller
 
 maintainers:
   - Sean Wang <sean.wang@kernel.org>
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
index e7601c0f5a69..9433b4d92eb8 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/mediatek,mt6779-pinctrl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek MT6779 Pin Controller Device Tree Bindings
+title: Mediatek MT6779 Pin Controller
 
 maintainers:
   - Andy Teng <andy.teng@mediatek.com>
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6797-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6797-pinctrl.yaml
index d42215f59afd..637a8386e23e 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6797-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6797-pinctrl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/mediatek,mt6797-pinctrl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek MT6797 Pin Controller Device Tree Bindings
+title: Mediatek MT6797 Pin Controller
 
 maintainers:
   - Sean Wang <sean.wang@kernel.org>
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml
index 78a0175cecc7..c9ea0cad489b 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek MT7622 Pin Controller Device Tree Bindings
+title: Mediatek MT7622 Pin Controller
 
 maintainers:
   - Sean Wang <sean.wang@kernel.org>
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7986-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7986-pinctrl.yaml
index 4eadea55df10..28c656b5f746 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7986-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7986-pinctrl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7986-pinctrl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek MT7986 Pin Controller Device Tree Bindings
+title: Mediatek MT7986 Pin Controller
 
 maintainers:
   - Sean Wang <sean.wang@kernel.org>
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml
index 2d13a57b8961..0d2484056a0f 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/mediatek,mt8183-pinctrl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek MT8183 Pin Controller Device Tree Bindings
+title: Mediatek MT8183 Pin Controller
 
 maintainers:
   - Sean Wang <sean.wang@kernel.org>
diff --git a/Documentation/devicetree/bindings/pinctrl/starfive,jh7100-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/starfive,jh7100-pinctrl.yaml
index 92963604422f..ed175da16377 100644
--- a/Documentation/devicetree/bindings/pinctrl/starfive,jh7100-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/starfive,jh7100-pinctrl.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pinctrl/starfive,jh7100-pinctrl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: StarFive JH7100 Pin Controller Device Tree Bindings
+title: StarFive JH7100 Pin Controller
 
 description: |
   Bindings for the JH7100 RISC-V SoC from StarFive Ltd.
diff --git a/Documentation/devicetree/bindings/pinctrl/sunplus,sp7021-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/sunplus,sp7021-pinctrl.yaml
index 15092fdd4b5b..347061eece9e 100644
--- a/Documentation/devicetree/bindings/pinctrl/sunplus,sp7021-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/sunplus,sp7021-pinctrl.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/pinctrl/sunplus,sp7021-pinctrl.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Sunplus SP7021 Pin Controller Device Tree Bindings
+title: Sunplus SP7021 Pin Controller
 
 maintainers:
   - Dvorkin Dmitry <dvorkin@tibbo.com>
diff --git a/Documentation/devicetree/bindings/ptp/ptp-idt82p33.yaml b/Documentation/devicetree/bindings/ptp/ptp-idt82p33.yaml
index 9bc664f414a1..51381e4cbb1f 100644
--- a/Documentation/devicetree/bindings/ptp/ptp-idt82p33.yaml
+++ b/Documentation/devicetree/bindings/ptp/ptp-idt82p33.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/ptp/ptp-idt82p33.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: IDT 82P33 PTP Clock Device Tree Bindings
+title: IDT 82P33 PTP Clock
 
 description: |
   IDT 82P33XXX Synchronization Management Unit (SMU) based PTP clock
diff --git a/Documentation/devicetree/bindings/ptp/ptp-idtcm.yaml b/Documentation/devicetree/bindings/ptp/ptp-idtcm.yaml
index 658cec67743e..7cf32663c806 100644
--- a/Documentation/devicetree/bindings/ptp/ptp-idtcm.yaml
+++ b/Documentation/devicetree/bindings/ptp/ptp-idtcm.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/ptp/ptp-idtcm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: IDT ClockMatrix (TM) PTP Clock Device Tree Bindings
+title: IDT ClockMatrix (TM) PTP Clock
 
 maintainers:
   - Vincent Cheng <vincent.cheng.xh@renesas.com>
diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
index e93e935564fb..4cc3cc7c50be 100644
--- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pwm/allwinner,sun4i-a10-pwm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 PWM Device Tree Bindings
+title: Allwinner A10 PWM
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml b/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
index ec9f6bab798c..5b18a5913ed1 100644
--- a/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/pwm/intel,keembay-pwm.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel Keem Bay PWM Device Tree Bindings
+title: Intel Keem Bay PWM
 
 maintainers:
   - Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
diff --git a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
index e4fe2d1bfef5..8c4f8bf62f7e 100644
--- a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
+++ b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/pwm/mediatek,pwm-disp.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MediaTek DISP_PWM Controller Device Tree Bindings
+title: MediaTek DISP_PWM Controller
 
 maintainers:
   - Jitao Shi <jitao.shi@mediatek.com>
diff --git a/Documentation/devicetree/bindings/regulator/silergy,sy8106a.yaml b/Documentation/devicetree/bindings/regulator/silergy,sy8106a.yaml
index a52a67c869b5..c3a902e11b5d 100644
--- a/Documentation/devicetree/bindings/regulator/silergy,sy8106a.yaml
+++ b/Documentation/devicetree/bindings/regulator/silergy,sy8106a.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/regulator/silergy,sy8106a.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Silergy SY8106A Voltage Regulator Device Tree Bindings
+title: Silergy SY8106A Voltage Regulator
 
 maintainers:
   - Ondrej Jirman <megous@megous.com>
diff --git a/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml b/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
index 257a0b51994a..a924fcfca085 100644
--- a/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
+++ b/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/reserved-memory/google,open-dice.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Open Profile for DICE Device Tree Bindings
+title: Open Profile for DICE
 
 description: |
   This binding represents a reserved memory region containing data
diff --git a/Documentation/devicetree/bindings/reserved-memory/memory-region.yaml b/Documentation/devicetree/bindings/reserved-memory/memory-region.yaml
index 83dfe499a259..592f180e6b0d 100644
--- a/Documentation/devicetree/bindings/reserved-memory/memory-region.yaml
+++ b/Documentation/devicetree/bindings/reserved-memory/memory-region.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/reserved-memory/memory-region.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Reserved Memory Region Device Tree Binding
+title: Reserved Memory Region
 
 maintainers:
   - devicetree-spec@vger.kernel.org
diff --git a/Documentation/devicetree/bindings/reserved-memory/nvidia,tegra210-emc-table.yaml b/Documentation/devicetree/bindings/reserved-memory/nvidia,tegra210-emc-table.yaml
index 035a50fe3ee4..b1b0421a4255 100644
--- a/Documentation/devicetree/bindings/reserved-memory/nvidia,tegra210-emc-table.yaml
+++ b/Documentation/devicetree/bindings/reserved-memory/nvidia,tegra210-emc-table.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/reserved-memory/nvidia,tegra210-emc-table.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: NVIDIA Tegra210 EMC Frequency Table Device Tree Bindings
+title: NVIDIA Tegra210 EMC Frequency Table
 
 maintainers:
   - Thierry Reding <thierry.reding@gmail.com>
diff --git a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
index 7a0744052ff6..44f72bcf1782 100644
--- a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
+++ b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/reserved-memory/reserved-memory.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: /reserved-memory Child Node Common Device Tree Bindings
+title: /reserved-memory Child Node Common
 
 maintainers:
   - devicetree-spec@vger.kernel.org
diff --git a/Documentation/devicetree/bindings/reset/allwinner,sun6i-a31-clock-reset.yaml b/Documentation/devicetree/bindings/reset/allwinner,sun6i-a31-clock-reset.yaml
index 001c0d2a8c1f..2a248e511c18 100644
--- a/Documentation/devicetree/bindings/reset/allwinner,sun6i-a31-clock-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/allwinner,sun6i-a31-clock-reset.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/reset/allwinner,sun6i-a31-clock-reset.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 Peripheral Reset Controller Device Tree Bindings
+title: Allwinner A31 Peripheral Reset Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/reset/canaan,k210-rst.yaml b/Documentation/devicetree/bindings/reset/canaan,k210-rst.yaml
index 53e4ede9c0bd..ee8a2dcf5dfa 100644
--- a/Documentation/devicetree/bindings/reset/canaan,k210-rst.yaml
+++ b/Documentation/devicetree/bindings/reset/canaan,k210-rst.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/reset/canaan,k210-rst.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Canaan Kendryte K210 Reset Controller Device Tree Bindings
+title: Canaan Kendryte K210 Reset Controller
 
 maintainers:
   - Damien Le Moal <damien.lemoal@wdc.com>
diff --git a/Documentation/devicetree/bindings/reset/starfive,jh7100-reset.yaml b/Documentation/devicetree/bindings/reset/starfive,jh7100-reset.yaml
index 300359a5e14b..2f5bd616b7ae 100644
--- a/Documentation/devicetree/bindings/reset/starfive,jh7100-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/starfive,jh7100-reset.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/reset/starfive,jh7100-reset.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: StarFive JH7100 SoC Reset Controller Device Tree Bindings
+title: StarFive JH7100 SoC Reset Controller
 
 maintainers:
   - Emil Renner Berthing <kernel@esmil.dk>
diff --git a/Documentation/devicetree/bindings/riscv/microchip.yaml b/Documentation/devicetree/bindings/riscv/microchip.yaml
index 1aa7336a9672..37f97ee4fe46 100644
--- a/Documentation/devicetree/bindings/riscv/microchip.yaml
+++ b/Documentation/devicetree/bindings/riscv/microchip.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/riscv/microchip.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip PolarFire SoC-based boards device tree bindings
+title: Microchip PolarFire SoC-based boards
 
 maintainers:
   - Cyril Jean <Cyril.Jean@microchip.com>
diff --git a/Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml b/Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml
index 478b0234e8fa..dede49431733 100644
--- a/Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/rtc/allwinner,sun4i-a10-rtc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 RTC Device Tree Bindings
+title: Allwinner A10 RTC
 
 allOf:
   - $ref: "rtc.yaml#"
diff --git a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
index 6b38bd7eb3b4..04947e166cef 100644
--- a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/rtc/allwinner,sun6i-a31-rtc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 RTC Device Tree Bindings
+title: Allwinner A31 RTC
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
index 994de43d17fa..0e5f0fcc26b0 100644
--- a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/rtc/atmel,at91rm9200-rtc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Atmel AT91 RTC Device Tree Bindings
+title: Atmel AT91 RTC
 
 allOf:
   - $ref: "rtc.yaml#"
diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml b/Documentation/devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml
index 0ef1b7ff4a77..b5cd20e89daf 100644
--- a/Documentation/devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml
+++ b/Documentation/devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/rtc/atmel,at91sam9260-rtt.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Atmel AT91 RTT Device Tree Bindings
+title: Atmel AT91 RTT
 
 allOf:
   - $ref: "rtc.yaml#"
diff --git a/Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml b/Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml
index 500c62becd6b..7742465b9383 100644
--- a/Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml
@@ -5,7 +5,7 @@ $id: http://devicetree.org/schemas/rtc/microchip,mfps-rtc.yaml#
 
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip PolarFire Soc (MPFS) RTC Device Tree Bindings
+title: Microchip PolarFire Soc (MPFS) RTC
 
 allOf:
   - $ref: rtc.yaml#
diff --git a/Documentation/devicetree/bindings/rtc/microcrystal,rv3032.yaml b/Documentation/devicetree/bindings/rtc/microcrystal,rv3032.yaml
index 60f9027e8299..dd6eebf06ea6 100644
--- a/Documentation/devicetree/bindings/rtc/microcrystal,rv3032.yaml
+++ b/Documentation/devicetree/bindings/rtc/microcrystal,rv3032.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/rtc/microcrystal,rv3032.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip RV-3032 RTC Device Tree Bindings
+title: Microchip RV-3032 RTC
 
 allOf:
   - $ref: "rtc.yaml#"
diff --git a/Documentation/devicetree/bindings/rtc/mstar,msc313-rtc.yaml b/Documentation/devicetree/bindings/rtc/mstar,msc313-rtc.yaml
index 114199cf4d28..585c185d1eb3 100644
--- a/Documentation/devicetree/bindings/rtc/mstar,msc313-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/mstar,msc313-rtc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/rtc/mstar,msc313-rtc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mstar MSC313e RTC Device Tree Bindings
+title: Mstar MSC313e RTC
 
 allOf:
   - $ref: "rtc.yaml#"
diff --git a/Documentation/devicetree/bindings/serial/cdns,uart.yaml b/Documentation/devicetree/bindings/serial/cdns,uart.yaml
index fcdbe6f87e98..876b8cf1cafb 100644
--- a/Documentation/devicetree/bindings/serial/cdns,uart.yaml
+++ b/Documentation/devicetree/bindings/serial/cdns,uart.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/serial/cdns,uart.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Cadence UART Controller Device Tree Bindings
+title: Cadence UART Controller
 
 maintainers:
   - Michal Simek <michal.simek@xilinx.com>
diff --git a/Documentation/devicetree/bindings/serial/sunplus,sp7021-uart.yaml b/Documentation/devicetree/bindings/serial/sunplus,sp7021-uart.yaml
index 2e9b64abde70..ea1e637661c7 100644
--- a/Documentation/devicetree/bindings/serial/sunplus,sp7021-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/sunplus,sp7021-uart.yaml
@@ -5,7 +5,7 @@
 $id: "http://devicetree.org/schemas/serial/sunplus,sp7021-uart.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Sunplus SoC SP7021 UART Controller Device Tree Bindings
+title: Sunplus SoC SP7021 UART Controller
 
 maintainers:
   - Hammer Hsieh <hammerh0314@gmail.com>
diff --git a/Documentation/devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml b/Documentation/devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml
index 2ecab8ed702a..7fa70fd1f291 100644
--- a/Documentation/devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml
+++ b/Documentation/devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/serio/allwinner,sun4i-a10-ps2.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 PS2 Host Controller Device Tree Bindings
+title: Allwinner A10 PS2 Host Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/sound/adi,max98396.yaml b/Documentation/devicetree/bindings/sound/adi,max98396.yaml
index 8d2ef991db40..cd0ab0d1e078 100644
--- a/Documentation/devicetree/bindings/sound/adi,max98396.yaml
+++ b/Documentation/devicetree/bindings/sound/adi,max98396.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/adi,max98396.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Analog Devices MAX98396 Speaker Amplifier Device Tree Bindings
+title: Analog Devices MAX98396 Speaker Amplifier
 
 maintainers:
   - Ryan Lee <ryans.lee@analog.com>
diff --git a/Documentation/devicetree/bindings/sound/ak4375.yaml b/Documentation/devicetree/bindings/sound/ak4375.yaml
index f1d5074a024d..5f0fc584bb38 100644
--- a/Documentation/devicetree/bindings/sound/ak4375.yaml
+++ b/Documentation/devicetree/bindings/sound/ak4375.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/ak4375.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: AK4375 DAC and headphones amplifier Device Tree Bindings
+title: AK4375 DAC and headphones amplifier
 
 maintainers:
   - Vincent Knecht <vincent.knecht@mailoo.org>
diff --git a/Documentation/devicetree/bindings/sound/ak4613.yaml b/Documentation/devicetree/bindings/sound/ak4613.yaml
index ef4055ef0ccd..aa8a258a9f1c 100644
--- a/Documentation/devicetree/bindings/sound/ak4613.yaml
+++ b/Documentation/devicetree/bindings/sound/ak4613.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/ak4613.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: AK4613 I2C transmitter Device Tree Bindings
+title: AK4613 I2C transmitter
 
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
diff --git a/Documentation/devicetree/bindings/sound/ak4642.yaml b/Documentation/devicetree/bindings/sound/ak4642.yaml
index 1e2caa29790e..48a5b2c3934e 100644
--- a/Documentation/devicetree/bindings/sound/ak4642.yaml
+++ b/Documentation/devicetree/bindings/sound/ak4642.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/ak4642.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: AK4642 I2C transmitter Device Tree Bindings
+title: AK4642 I2C transmitter
 
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
index 559aff13ae23..292fcb643999 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/allwinner,sun4i-a10-codec.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Codec Device Tree Bindings
+title: Allwinner A10 Codec
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
index 34f6ee9de392..dd30881ad2f5 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/allwinner,sun4i-a10-i2s.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 I2S Controller Device Tree Bindings
+title: Allwinner A10 I2S Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
index 444a432912bb..68c84e29ce57 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/allwinner,sun4i-a10-spdif.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 S/PDIF Controller Device Tree Bindings
+title: Allwinner A10 S/PDIF Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
index 66859eb8f79a..5800de63fc84 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/allwinner,sun50i-a64-codec-analog.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A64 Analog Codec Device Tree Bindings
+title: Allwinner A64 Analog Codec
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
index 26eca21e1f0f..1c21a1b390c7 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/allwinner,sun8i-a23-codec-analog.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A23 Analog Codec Device Tree Bindings
+title: Allwinner A23 Analog Codec
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
index 19f111f40225..4eb11a8e622b 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/allwinner,sun8i-a33-codec.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A33 Codec Device Tree Bindings
+title: Allwinner A33 Codec
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card.yaml b/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
index 109e55f9e597..274092ef36c5 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/audio-graph-card.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Audio Graph Card Device Tree Bindings
+title: Audio Graph Card
 
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card2.yaml b/Documentation/devicetree/bindings/sound/audio-graph-card2.yaml
index 7416067c945e..3de7b36829da 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-card2.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-card2.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/audio-graph-card2.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Audio Graph Card2 Device Tree Bindings
+title: Audio Graph Card2
 
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
diff --git a/Documentation/devicetree/bindings/sound/audio-graph.yaml b/Documentation/devicetree/bindings/sound/audio-graph.yaml
index 4b46794e5153..2efbfcaca760 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/audio-graph.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Audio Graph Device Tree Bindings
+title: Audio Graph
 
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
diff --git a/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml b/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml
index 803627e984f6..b2603f611af9 100644
--- a/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/sound/intel,keembay-i2s.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Intel KeemBay I2S Device Tree Bindings
+title: Intel KeemBay I2S
 
 maintainers:
   - Sia, Jee Heng <jee.heng.sia@intel.com>
diff --git a/Documentation/devicetree/bindings/sound/linux,bt-sco.yaml b/Documentation/devicetree/bindings/sound/linux,bt-sco.yaml
index e3a1f485f664..b97e0fcbdba3 100644
--- a/Documentation/devicetree/bindings/sound/linux,bt-sco.yaml
+++ b/Documentation/devicetree/bindings/sound/linux,bt-sco.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/linux,bt-sco.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Bluetooth SCO Audio Codec Device Tree Bindings
+title: Bluetooth SCO Audio Codec
 
 maintainers:
   - Mark Brown <broonie@kernel.org>
diff --git a/Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml b/Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml
index a4f9257e313d..808f6d2736c7 100644
--- a/Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml
+++ b/Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/linux,spdif-dit.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Dummy SPDIF Transmitter Device Tree Bindings
+title: Dummy SPDIF Transmitter
 
 maintainers:
   - Mark Brown <broonie@kernel.org>
diff --git a/Documentation/devicetree/bindings/sound/mchp,spdifrx.yaml b/Documentation/devicetree/bindings/sound/mchp,spdifrx.yaml
index 970311143253..70a47c6823b1 100644
--- a/Documentation/devicetree/bindings/sound/mchp,spdifrx.yaml
+++ b/Documentation/devicetree/bindings/sound/mchp,spdifrx.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/mchp,spdifrx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip S/PDIF Rx Controller Device Tree Bindings
+title: Microchip S/PDIF Rx Controller
 
 maintainers:
   - Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
diff --git a/Documentation/devicetree/bindings/sound/mchp,spdiftx.yaml b/Documentation/devicetree/bindings/sound/mchp,spdiftx.yaml
index d5c022e49526..d218e4ab9a7a 100644
--- a/Documentation/devicetree/bindings/sound/mchp,spdiftx.yaml
+++ b/Documentation/devicetree/bindings/sound/mchp,spdiftx.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/mchp,spdiftx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip S/PDIF Tx Controller Device Tree Bindings
+title: Microchip S/PDIF Tx Controller
 
 maintainers:
   - Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
diff --git a/Documentation/devicetree/bindings/sound/mt6359.yaml b/Documentation/devicetree/bindings/sound/mt6359.yaml
index a54f466f769d..23d411fc4200 100644
--- a/Documentation/devicetree/bindings/sound/mt6359.yaml
+++ b/Documentation/devicetree/bindings/sound/mt6359.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/mt6359.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek MT6359 Codec Device Tree Bindings
+title: Mediatek MT6359 Codec
 
 maintainers:
   - Eason Yen <eason.yen@mediatek.com>
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra186-asrc.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra186-asrc.yaml
index 520d0d063d1a..d82415c21271 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra186-asrc.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra186-asrc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra186-asrc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra186 ASRC Device Tree Bindings
+title: Tegra186 ASRC
 
 description: |
   Asynchronous Sample Rate Converter (ASRC) converts the sampling frequency
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra186-dspk.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra186-dspk.yaml
index 73b98b2f3543..3d538df878ea 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra186-dspk.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra186-dspk.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra186-dspk.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra186 DSPK Controller Device Tree Bindings
+title: Tegra186 DSPK Controller
 
 description: |
   The Digital Speaker Controller (DSPK) can be viewed as a Pulse
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra210-admaif.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra210-admaif.yaml
index 372043edd98f..15ab40aeab1e 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra210-admaif.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra210-admaif.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra210-admaif.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra210 ADMAIF Device Tree Bindings
+title: Tegra210 ADMAIF
 
 description: |
   ADMAIF is the interface between ADMA and AHUB. Each ADMA channel
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra210-adx.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra210-adx.yaml
index 8d8dc7fb3f0c..ea0dc0ece1bc 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra210-adx.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra210-adx.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra210-adx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra210 ADX Device Tree Bindings
+title: Tegra210 ADX
 
 description: |
   The Audio Demultiplexer (ADX) block takes an input stream with up to
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra210-ahub.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra210-ahub.yaml
index 47b6e712e4fb..89f7805de274 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra210-ahub.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra210-ahub.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra210-ahub.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra210 AHUB Device Tree Bindings
+title: Tegra210 AHUB
 
 description: |
   The Audio Hub (AHUB) comprises a collection of hardware accelerators
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra210-amx.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra210-amx.yaml
index f9e4fc6e0c47..1aff61f072bb 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra210-amx.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra210-amx.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra210-amx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra210 AMX Device Tree Bindings
+title: Tegra210 AMX
 
 description: |
   The Audio Multiplexer (AMX) block can multiplex up to four input streams
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra210-dmic.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra210-dmic.yaml
index bcb496d3ace5..0f9d2b461e02 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra210-dmic.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra210-dmic.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra210-dmic.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra210 DMIC Controller Device Tree Bindings
+title: Tegra210 DMIC Controller
 
 description: |
   The Digital MIC (DMIC) Controller is used to interface with Pulse
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra210-i2s.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra210-i2s.yaml
index 6188f561f878..12cd17eede99 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra210-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra210-i2s.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra210-i2s.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra210 I2S Controller Device Tree Bindings
+title: Tegra210 I2S Controller
 
 description: |
   The Inter-IC Sound (I2S) controller implements full-duplex,
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra210-mixer.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra210-mixer.yaml
index ee1e1d2da79a..570b03282aeb 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra210-mixer.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra210-mixer.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra210-mixer.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra210 Mixer Device Tree Bindings
+title: Tegra210 Mixer
 
 description: |
   The Mixer supports mixing of up to ten 7.1 audio input streams and
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra210-mvc.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra210-mvc.yaml
index c9888c553e78..4aecbc847b98 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra210-mvc.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra210-mvc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra210-mvc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra210 MVC Device Tree Bindings
+title: Tegra210 MVC
 
 description: |
   The Master Volume Control (MVC) provides gain or attenuation to a digital
diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra210-sfc.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra210-sfc.yaml
index 8579306fc56f..694f890d6305 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra210-sfc.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra210-sfc.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/nvidia,tegra210-sfc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Tegra210 SFC Device Tree Bindings
+title: Tegra210 SFC
 
 description: |
   The Sampling Frequency Converter (SFC) converts the sampling frequency
diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index e17c0245f77a..ac8e27e96850 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/renesas,rsnd.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Renesas R-Car Sound Driver Device Tree Bindings
+title: Renesas R-Car Sound Driver
 
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
diff --git a/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml b/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
index 8327846356d3..5428ba9e23a6 100644
--- a/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
+++ b/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/simple-audio-amplifier.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Simple Audio Amplifier Device Tree Bindings
+title: Simple Audio Amplifier
 
 maintainers:
   - Jerome Brunet <jbrunet@baylibre.com>
diff --git a/Documentation/devicetree/bindings/sound/simple-card.yaml b/Documentation/devicetree/bindings/sound/simple-card.yaml
index b261d49b9ddb..ed19899bc94b 100644
--- a/Documentation/devicetree/bindings/sound/simple-card.yaml
+++ b/Documentation/devicetree/bindings/sound/simple-card.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/simple-card.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Simple Audio Card Driver Device Tree Bindings
+title: Simple Audio Card Driver
 
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
diff --git a/Documentation/devicetree/bindings/sound/sound-dai.yaml b/Documentation/devicetree/bindings/sound/sound-dai.yaml
index 61c6f7abc4e7..ff9036e43c44 100644
--- a/Documentation/devicetree/bindings/sound/sound-dai.yaml
+++ b/Documentation/devicetree/bindings/sound/sound-dai.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/sound-dai.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Digital Audio Interface consumer Device Tree Bindings
+title: Digital Audio Interface consumer
 
 maintainers:
   - Rob Herring <robh@kernel.org>
diff --git a/Documentation/devicetree/bindings/sound/test-component.yaml b/Documentation/devicetree/bindings/sound/test-component.yaml
index 17fdb4317239..9c40a2122dfd 100644
--- a/Documentation/devicetree/bindings/sound/test-component.yaml
+++ b/Documentation/devicetree/bindings/sound/test-component.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/test-component.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Test Component Device Tree Bindings
+title: Test Component
 
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8940.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8940.yaml
index 8aadcbeed502..7386abb3a250 100644
--- a/Documentation/devicetree/bindings/sound/wlf,wm8940.yaml
+++ b/Documentation/devicetree/bindings/sound/wlf,wm8940.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/wlf,wm8940.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Wolfson WM8940 Codec Device Tree Bindings
+title: Wolfson WM8940 Codec
 
 maintainers:
   - patches@opensource.cirrus.com
diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
index 96cf9fc9c8b0..1c8985d4dd5a 100644
--- a/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
+++ b/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sound/wlf,wm8978.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Wolfson WM8978 Codec Device Tree Bindings
+title: Wolfson WM8978 Codec
 
 maintainers:
   - patches@opensource.cirrus.com
diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
index 8036499112f5..f1176a28fd87 100644
--- a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/spi/allwinner,sun4i-a10-spi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 SPI Controller Device Tree Bindings
+title: Allwinner A10 SPI Controller
 
 allOf:
   - $ref: "spi-controller.yaml"
diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
index ca4c95345a49..58b7056f4a70 100644
--- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/spi/allwinner,sun6i-a31-spi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A31 SPI Controller Device Tree Bindings
+title: Allwinner A31 SPI Controller
 
 allOf:
   - $ref: "spi-controller.yaml"
diff --git a/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml b/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
index 7326c0a28d16..e7c69bca4a90 100644
--- a/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/spi/microchip,mpfs-spi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip MPFS {Q,}SPI Controller Device Tree Bindings
+title: Microchip MPFS {Q,}SPI Controller
 
 maintainers:
   - Conor Dooley <conor.dooley@microchip.com>
diff --git a/Documentation/devicetree/bindings/spi/mxicy,mx25f0a-spi.yaml b/Documentation/devicetree/bindings/spi/mxicy,mx25f0a-spi.yaml
index 9202c44b4478..a3aa5e07c0e4 100644
--- a/Documentation/devicetree/bindings/spi/mxicy,mx25f0a-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/mxicy,mx25f0a-spi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/spi/mxicy,mx25f0a-spi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Macronix SPI controller device tree bindings
+title: Macronix SPI controller
 
 maintainers:
   - Miquel Raynal <miquel.raynal@bootlin.com>
diff --git a/Documentation/devicetree/bindings/spi/spi-cadence.yaml b/Documentation/devicetree/bindings/spi/spi-cadence.yaml
index 82d0ca5c00f3..64bf4e621142 100644
--- a/Documentation/devicetree/bindings/spi/spi-cadence.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-cadence.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/spi/spi-cadence.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Cadence SPI controller Device Tree Bindings
+title: Cadence SPI controller
 
 maintainers:
   - Michal Simek <michal.simek@xilinx.com>
diff --git a/Documentation/devicetree/bindings/spi/spi-xilinx.yaml b/Documentation/devicetree/bindings/spi/spi-xilinx.yaml
index 03e5dca7e933..bbb735603f29 100644
--- a/Documentation/devicetree/bindings/spi/spi-xilinx.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-xilinx.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/spi/spi-xilinx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Xilinx SPI controller Device Tree Bindings
+title: Xilinx SPI controller
 
 maintainers:
   - Michal Simek <michal.simek@xilinx.com>
diff --git a/Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml b/Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml
index fafde1c06be6..6bf0edc57f4a 100644
--- a/Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/spi/spi-zynqmp-qspi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Xilinx Zynq UltraScale+ MPSoC GQSPI controller Device Tree Bindings
+title: Xilinx Zynq UltraScale+ MPSoC GQSPI controller
 
 maintainers:
   - Michal Simek <michal.simek@xilinx.com>
diff --git a/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml b/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
index 2445c5e0b0ef..abcbbe13723f 100644
--- a/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
+++ b/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/spmi/mtk,spmi-mtk-pmif.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mediatek SPMI Controller Device Tree Bindings
+title: Mediatek SPMI Controller
 
 maintainers:
   - Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
diff --git a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
index 1c426c211e36..74f8d68c4909 100644
--- a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
+++ b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/sram/allwinner,sun4i-a10-system-control.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 System Control Device Tree Bindings
+title: Allwinner A10 System Control
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
index 6e0b110153b0..fbd4212285e2 100644
--- a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
+++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/thermal/allwinner,sun8i-a83t-ths.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner SUN8I Thermal Controller Device Tree Bindings
+title: Allwinner SUN8I Thermal Controller
 
 maintainers:
   - Vasily Khoruzhick <anarsoul@gmail.com>
diff --git a/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml b/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
index 3711872b6b99..b3538fac1ad2 100644
--- a/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/timer/allwinner,sun4i-a10-timer.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Timer Device Tree Bindings
+title: Allwinner A10 Timer
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml b/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml
index 2ecac754e1cd..f1853daec2f9 100644
--- a/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml
+++ b/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/timer/allwinner,sun5i-a13-hstimer.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A13 High-Speed Timer Device Tree Bindings
+title: Allwinner A13 High-Speed Timer
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/timer/mstar,msc313e-timer.yaml b/Documentation/devicetree/bindings/timer/mstar,msc313e-timer.yaml
index 03d5dba5d5b3..f118ca423e38 100644
--- a/Documentation/devicetree/bindings/timer/mstar,msc313e-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/mstar,msc313e-timer.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/timer/mstar,msc313e-timer.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Mstar MSC313e Timer Device Tree Bindings
+title: Mstar MSC313e Timer
 
 maintainers:
   - Daniel Palmer <daniel@0x0f.com>
diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index 5d157d87dad5..dc3bc1e62fe9 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/timer/rockchip,rk-timer.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Rockchip Timer Device Tree Bindings
+title: Rockchip Timer
 
 maintainers:
   - Daniel Lezcano <daniel.lezcano@linaro.org>
diff --git a/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml b/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml
index dd168d41d2e0..b1597db04263 100644
--- a/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/timer/xlnx,xps-timer.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Xilinx LogiCORE IP AXI Timer Device Tree Binding
+title: Xilinx LogiCORE IP AXI Timer
 
 maintainers:
   - Sean Anderson <sean.anderson@seco.com>
diff --git a/Documentation/devicetree/bindings/timestamp/hte-consumer.yaml b/Documentation/devicetree/bindings/timestamp/hte-consumer.yaml
index 6456515c3d26..5142d6d4fc0a 100644
--- a/Documentation/devicetree/bindings/timestamp/hte-consumer.yaml
+++ b/Documentation/devicetree/bindings/timestamp/hte-consumer.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/timestamp/hte-consumer.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: HTE Consumer Device Tree Bindings
+title: HTE Consumer
 
 maintainers:
   - Dipen Patel <dipenp@nvidia.com>
diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
index 2c715eec48b8..a9988798898d 100644
--- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/ufs/samsung,exynos-ufs.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Samsung SoC series UFS host controller Device Tree Bindings
+title: Samsung SoC series UFS host controller
 
 maintainers:
   - Alim Akhtar <alim.akhtar@samsung.com>
diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
index e5dbf4169bc9..8992eff6ce38 100644
--- a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
+++ b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/allwinner,sun4i-a10-musb.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 mUSB OTG Controller Device Tree Bindings
+title: Allwinner A10 mUSB OTG Controller
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/usb/brcm,bcm7445-ehci.yaml b/Documentation/devicetree/bindings/usb/brcm,bcm7445-ehci.yaml
index 2a9acf2b5a64..ad075407d85e 100644
--- a/Documentation/devicetree/bindings/usb/brcm,bcm7445-ehci.yaml
+++ b/Documentation/devicetree/bindings/usb/brcm,bcm7445-ehci.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/brcm,bcm7445-ehci.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom STB USB EHCI Controller Device Tree Bindings
+title: Broadcom STB USB EHCI Controller
 
 allOf:
   - $ref: "usb-hcd.yaml"
diff --git a/Documentation/devicetree/bindings/usb/brcm,usb-pinmap.yaml b/Documentation/devicetree/bindings/usb/brcm,usb-pinmap.yaml
index d4618d15ecc1..5cc81ced589d 100644
--- a/Documentation/devicetree/bindings/usb/brcm,usb-pinmap.yaml
+++ b/Documentation/devicetree/bindings/usb/brcm,usb-pinmap.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/brcm,usb-pinmap.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom USB pin map Controller Device Tree Bindings
+title: Broadcom USB pin map Controller
 
 maintainers:
   - Al Cooper <alcooperx@gmail.com>
diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
index 079f7cff0c24..c5f629c5bc61 100644
--- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/generic-ehci.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: USB EHCI Controller Device Tree Bindings
+title: USB EHCI Controller
 
 maintainers:
   - Greg Kroah-Hartman <gregkh@linuxfoundation.org>
diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
index 180361b79f52..f838f78d6164 100644
--- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/generic-ohci.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: USB OHCI Controller Device Tree Bindings
+title: USB OHCI Controller
 
 allOf:
   - $ref: "usb-hcd.yaml"
diff --git a/Documentation/devicetree/bindings/usb/generic-xhci.yaml b/Documentation/devicetree/bindings/usb/generic-xhci.yaml
index 23d73df96ea3..db841589fc33 100644
--- a/Documentation/devicetree/bindings/usb/generic-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-xhci.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/generic-xhci.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: USB xHCI Controller Device Tree Bindings
+title: USB xHCI Controller
 
 maintainers:
   - Mathias Nyman <mathias.nyman@intel.com>
diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
index b0e58b15b9ae..939623867a64 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/usb/mediatek,mtk-xhci.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MediaTek USB3 xHCI Device Tree Bindings
+title: MediaTek USB3 xHCI
 
 maintainers:
   - Chunfeng Yun <chunfeng.yun@mediatek.com>
diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
index e63b66545317..1d8667930565 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/usb/mediatek,mtu3.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MediaTek USB3 DRD Controller Device Tree Bindings
+title: MediaTek USB3 DRD Controller
 
 maintainers:
   - Chunfeng Yun <chunfeng.yun@mediatek.com>
diff --git a/Documentation/devicetree/bindings/usb/mediatek,musb.yaml b/Documentation/devicetree/bindings/usb/mediatek,musb.yaml
index 11a33f9b1f17..f16ab30a95d2 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,musb.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,musb.yaml
@@ -5,7 +5,7 @@
 $id: http://devicetree.org/schemas/usb/mediatek,musb.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MediaTek MUSB DRD/OTG Controller Device Tree Bindings
+title: MediaTek MUSB DRD/OTG Controller
 
 maintainers:
   - Min Guo <min.guo@mediatek.com>
diff --git a/Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml b/Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml
index 48c458c65848..c5e9ce2e7bc2 100644
--- a/Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml
+++ b/Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/microchip,mpfs-musb.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip MPFS USB Controller Device Tree Bindings
+title: Microchip MPFS USB Controller
 
 allOf:
   - $ref: usb-drd.yaml#
diff --git a/Documentation/devicetree/bindings/usb/smsc,usb3503.yaml b/Documentation/devicetree/bindings/usb/smsc,usb3503.yaml
index 321b6f166197..a09f4528aea3 100644
--- a/Documentation/devicetree/bindings/usb/smsc,usb3503.yaml
+++ b/Documentation/devicetree/bindings/usb/smsc,usb3503.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/smsc,usb3503.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: SMSC USB3503 High-Speed Hub Controller Device Tree Bindings
+title: SMSC USB3503 High-Speed Hub Controller
 
 maintainers:
   - Dongjin Kim <tobetter@gmail.com>
diff --git a/Documentation/devicetree/bindings/usb/usb-drd.yaml b/Documentation/devicetree/bindings/usb/usb-drd.yaml
index f229fc8068d9..1567549b05ce 100644
--- a/Documentation/devicetree/bindings/usb/usb-drd.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-drd.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/usb-drd.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Generic USB OTG Controller Device Tree Bindings
+title: Generic USB OTG Controller
 
 maintainers:
   - Greg Kroah-Hartman <gregkh@linuxfoundation.org>
diff --git a/Documentation/devicetree/bindings/usb/usb-hcd.yaml b/Documentation/devicetree/bindings/usb/usb-hcd.yaml
index 1dc3d5d7b44f..692dd60e3f73 100644
--- a/Documentation/devicetree/bindings/usb/usb-hcd.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-hcd.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/usb-hcd.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Generic USB Host Controller Device Tree Bindings
+title: Generic USB Host Controller
 
 maintainers:
   - Greg Kroah-Hartman <gregkh@linuxfoundation.org>
diff --git a/Documentation/devicetree/bindings/usb/usb-xhci.yaml b/Documentation/devicetree/bindings/usb/usb-xhci.yaml
index 965f87fef702..f2139a9f35fb 100644
--- a/Documentation/devicetree/bindings/usb/usb-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-xhci.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/usb-xhci.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Generic USB xHCI Controller Device Tree Bindings
+title: Generic USB xHCI Controller
 
 maintainers:
   - Mathias Nyman <mathias.nyman@intel.com>
diff --git a/Documentation/devicetree/bindings/usb/usb.yaml b/Documentation/devicetree/bindings/usb/usb.yaml
index 939f217b8c7b..326b14f05d1c 100644
--- a/Documentation/devicetree/bindings/usb/usb.yaml
+++ b/Documentation/devicetree/bindings/usb/usb.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/usb.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Generic USB Controller Device Tree Bindings
+title: Generic USB Controller
 
 maintainers:
   - Greg Kroah-Hartman <gregkh@linuxfoundation.org>
diff --git a/Documentation/devicetree/bindings/w1/w1-gpio.yaml b/Documentation/devicetree/bindings/w1/w1-gpio.yaml
index 8eef2380161b..b02b02237082 100644
--- a/Documentation/devicetree/bindings/w1/w1-gpio.yaml
+++ b/Documentation/devicetree/bindings/w1/w1-gpio.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/w1/w1-gpio.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Bitbanged GPIO 1-Wire Bus Device Tree Bindings
+title: Bitbanged GPIO 1-Wire Bus
 
 maintainers:
   - Daniel Mack <zonque@gmail.com>
diff --git a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
index ed6c1ca80dcc..026c2e5e77aa 100644
--- a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/watchdog/allwinner,sun4i-a10-wdt.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Allwinner A10 Watchdog Device Tree Bindings
+title: Allwinner A10 Watchdog
 
 allOf:
   - $ref: "watchdog.yaml#"
diff --git a/Documentation/devicetree/bindings/watchdog/mstar,msc313e-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mstar,msc313e-wdt.yaml
index e3e8b86dbf63..33794711c594 100644
--- a/Documentation/devicetree/bindings/watchdog/mstar,msc313e-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/mstar,msc313e-wdt.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/watchdog/mstar,msc313e-wdt.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: MStar Watchdog Device Tree Bindings
+title: MStar Watchdog
 
 maintainers:
   - Daniel Palmer <daniel@0x0f.com>
-- 
2.37.2

