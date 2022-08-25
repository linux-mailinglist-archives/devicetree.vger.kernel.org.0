Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE4F85A1949
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 21:03:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240803AbiHYTDM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 15:03:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235785AbiHYTDM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 15:03:12 -0400
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7CFFB9F8A
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 12:03:09 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id n124so13470583oih.7
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 12:03:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=w9ZddLkQn5RJWnVOF96luwCs657dxGPr1iCxaB2gGN4=;
        b=07R/jerw5NCDqUqlo2fprS0KzwjMDELALB+MbXXFlTPwdHn//TZAeOFIYBDRJ5Ndxn
         47kwGWY3YVrRuVjRwLHrgYVOeuNn7k4X6rbQe1NGoXNbAA+0opwZs1Qv8k7Uqx/LBYgC
         B8nRYzkiKNK/CIRmfc8WMSXXWh/gkQJ7EmHIlTnG5dV+LYXx37qnkhrSoDZxKARckiEd
         vbev7LI4uA862XOU4EiLzzebPes3ujXSDjA8mvlEvvN+Z+XXBIMOaXjJT0Eptb250zYB
         2jo3FfumcIKH3xN0d5pWHHZwx0T3PCBOxeTJ9uCVbT2ZIArws5DNx2a5kHt6jYEh2Gnu
         +1Rw==
X-Gm-Message-State: ACgBeo1viqTjei/sWaynp/r9gpnuFd6tq+h58m6Zjd+ugT9+EYpOchBA
        ql3iE0gi4iZeC6i460bxDpLN28cBAw==
X-Google-Smtp-Source: AA6agR7Yfc0CYsRdgmfemw67ufnGBKyZJSn9aMaqHfgUEaC+d7gHr8pi4iz86DZkGCYaarkGzLUCyQ==
X-Received: by 2002:a54:4004:0:b0:345:3cbf:be4a with SMTP id x4-20020a544004000000b003453cbfbe4amr166022oie.55.1661454188881;
        Thu, 25 Aug 2022 12:03:08 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f18-20020a05680814d200b003451c927e0dsm50177oiw.38.2022.08.25.12.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 12:03:08 -0700 (PDT)
Received: (nullmailer pid 1505467 invoked by uid 1000);
        Thu, 25 Aug 2022 19:03:02 -0000
Date:   Thu, 25 Aug 2022 14:03:02 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: Remove 'Device Tree Bindings' from end of
 title:
Message-ID: <20220825190302.GA1505256-robh@kernel.org>
References: <20220825020427.3460650-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220825020427.3460650-1-andrew@lunn.ch>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Aug 2022 04:04:27 +0200, Andrew Lunn wrote:
> As indicated in
> link: https://lore.kernel.org/all/20220822204945.GA808626-robh@kernel.org/
> 
> DT schema files should not have 'Device Tree Binding' as part of there
> title: line. Remove this in most .yaml files, so hopefully preventing
> developers copying it into new .yaml files, and being asked to remove
> it.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  Documentation/devicetree/bindings/arm/actions.yaml              | 2 +-
>  Documentation/devicetree/bindings/arm/airoha.yaml               | 2 +-
>  Documentation/devicetree/bindings/arm/altera.yaml               | 2 +-
>  Documentation/devicetree/bindings/arm/amazon,al.yaml            | 2 +-
>  Documentation/devicetree/bindings/arm/amlogic.yaml              | 2 +-
>  Documentation/devicetree/bindings/arm/apple.yaml                | 2 +-
>  Documentation/devicetree/bindings/arm/arm,cci-400.yaml          | 2 +-
>  Documentation/devicetree/bindings/arm/arm,corstone1000.yaml     | 2 +-
>  Documentation/devicetree/bindings/arm/arm,integrator.yaml       | 2 +-
>  Documentation/devicetree/bindings/arm/arm,realview.yaml         | 2 +-
>  Documentation/devicetree/bindings/arm/arm,versatile.yaml        | 2 +-
>  Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml    | 2 +-
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml           | 2 +-
>  Documentation/devicetree/bindings/arm/axxia.yaml                | 2 +-
>  Documentation/devicetree/bindings/arm/bitmain.yaml              | 2 +-
>  Documentation/devicetree/bindings/arm/calxeda.yaml              | 2 +-
>  Documentation/devicetree/bindings/arm/digicolor.yaml            | 2 +-
>  Documentation/devicetree/bindings/arm/fsl.yaml                  | 2 +-
>  Documentation/devicetree/bindings/arm/intel,keembay.yaml        | 2 +-
>  Documentation/devicetree/bindings/arm/intel,socfpga.yaml        | 2 +-
>  Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml         | 2 +-
>  Documentation/devicetree/bindings/arm/mediatek.yaml             | 2 +-
>  Documentation/devicetree/bindings/arm/microchip,sparx5.yaml     | 2 +-
>  Documentation/devicetree/bindings/arm/moxart.yaml               | 2 +-
>  .../devicetree/bindings/arm/nvidia,tegra194-ccplex.yaml         | 2 +-
>  Documentation/devicetree/bindings/arm/qcom.yaml                 | 2 +-
>  Documentation/devicetree/bindings/arm/rda.yaml                  | 2 +-
>  Documentation/devicetree/bindings/arm/realtek.yaml              | 2 +-
>  Documentation/devicetree/bindings/arm/renesas.yaml              | 2 +-
>  Documentation/devicetree/bindings/arm/rockchip.yaml             | 2 +-
>  Documentation/devicetree/bindings/arm/spear.yaml                | 2 +-
>  Documentation/devicetree/bindings/arm/sti.yaml                  | 2 +-
>  Documentation/devicetree/bindings/arm/sunxi.yaml                | 2 +-
>  Documentation/devicetree/bindings/arm/tegra.yaml                | 2 +-
>  Documentation/devicetree/bindings/arm/tesla.yaml                | 2 +-
>  Documentation/devicetree/bindings/arm/toshiba.yaml              | 2 +-
>  Documentation/devicetree/bindings/arm/ux500.yaml                | 2 +-
>  Documentation/devicetree/bindings/arm/vt8500.yaml               | 2 +-
>  Documentation/devicetree/bindings/arm/xilinx.yaml               | 2 +-
>  .../devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml       | 2 +-
>  .../devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml        | 2 +-
>  Documentation/devicetree/bindings/bus/palmbus.yaml              | 2 +-
>  Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml  | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml  | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml  | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml      | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml  | 2 +-
>  .../bindings/clock/allwinner,sun4i-a10-display-clk.yaml         | 2 +-
>  .../bindings/clock/allwinner,sun4i-a10-gates-clk.yaml           | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml  | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml  | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml | 2 +-
>  .../bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml        | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml  | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml   | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml  | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml  | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml | 2 +-
>  .../bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml        | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml  | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun9i-a80-de-clks.yaml  | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml   | 2 +-
>  .../bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml      | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml | 2 +-
>  .../devicetree/bindings/clock/allwinner,sun9i-a80-usb-clks.yaml | 2 +-
>  .../bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml         | 2 +-
>  .../bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml         | 2 +-
>  .../devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml      | 2 +-
>  Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml   | 2 +-
>  Documentation/devicetree/bindings/clock/canaan,k210-clk.yaml    | 2 +-
>  .../devicetree/bindings/clock/mediatek,mt7621-sysc.yaml         | 2 +-
>  Documentation/devicetree/bindings/clock/sprd,sc9863a-clk.yaml   | 2 +-
>  .../devicetree/bindings/clock/toshiba,tmpv770x-pipllct.yaml     | 2 +-
>  .../devicetree/bindings/clock/toshiba,tmpv770x-pismu.yaml       | 2 +-
>  .../devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml  | 2 +-
>  .../devicetree/bindings/crypto/intel,keembay-ocs-aes.yaml       | 2 +-
>  .../devicetree/bindings/crypto/intel,keembay-ocs-ecc.yaml       | 2 +-
>  .../devicetree/bindings/crypto/intel,keembay-ocs-hcu.yaml       | 2 +-
>  Documentation/devicetree/bindings/crypto/xlnx,zynqmp-aes.yaml   | 2 +-
>  .../bindings/display/allwinner,sun4i-a10-display-backend.yaml   | 2 +-
>  .../bindings/display/allwinner,sun4i-a10-display-engine.yaml    | 2 +-
>  .../bindings/display/allwinner,sun4i-a10-display-frontend.yaml  | 2 +-
>  .../devicetree/bindings/display/allwinner,sun4i-a10-hdmi.yaml   | 2 +-
>  .../devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml   | 2 +-
>  .../bindings/display/allwinner,sun4i-a10-tv-encoder.yaml        | 2 +-
>  .../devicetree/bindings/display/allwinner,sun6i-a31-drc.yaml    | 2 +-
>  .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml          | 2 +-
>  .../bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml        | 2 +-
>  .../bindings/display/allwinner,sun8i-a83t-dw-hdmi.yaml          | 2 +-
>  .../bindings/display/allwinner,sun8i-a83t-hdmi-phy.yaml         | 2 +-
>  .../bindings/display/allwinner,sun8i-r40-tcon-top.yaml          | 2 +-
>  .../devicetree/bindings/display/allwinner,sun9i-a80-deu.yaml    | 2 +-
>  .../devicetree/bindings/display/brcm,bcm2711-hdmi.yaml          | 2 +-
>  Documentation/devicetree/bindings/display/ilitek,ili9486.yaml   | 2 +-
>  .../devicetree/bindings/display/simple-framebuffer.yaml         | 2 +-
>  Documentation/devicetree/bindings/display/sitronix,st7735r.yaml | 2 +-
>  .../devicetree/bindings/dma/allwinner,sun4i-a10-dma.yaml        | 2 +-
>  .../devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml       | 2 +-
>  .../devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml        | 2 +-
>  .../devicetree/bindings/dma/nvidia,tegra186-gpc-dma.yaml        | 2 +-
>  .../devicetree/bindings/fpga/xilinx-zynq-fpga-mgr.yaml          | 2 +-
>  .../devicetree/bindings/fpga/xlnx,zynqmp-pcap-fpga.yaml         | 2 +-
>  Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml        | 2 +-
>  Documentation/devicetree/bindings/gnss/mediatek.yaml            | 2 +-
>  Documentation/devicetree/bindings/gnss/sirfstar.yaml            | 2 +-
>  Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml       | 2 +-
>  Documentation/devicetree/bindings/gpio/gpio-zynq.yaml           | 2 +-
>  Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml | 2 +-
>  .../devicetree/bindings/gpio/x-powers,axp209-gpio.yaml          | 2 +-
>  .../devicetree/bindings/hwmon/adi,axi-fan-control.yaml          | 2 +-
>  Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml          | 2 +-
>  .../devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml       | 2 +-
>  Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml           | 2 +-
>  Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml       | 2 +-
>  Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml  | 2 +-
>  Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml    | 2 +-
>  Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml  | 2 +-
>  Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml  | 2 +-
>  Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml         | 2 +-
>  .../bindings/input/allwinner,sun4i-a10-lradc-keys.yaml          | 2 +-
>  Documentation/devicetree/bindings/input/imx-keypad.yaml         | 2 +-
>  .../devicetree/bindings/input/mediatek,mt6779-keypad.yaml       | 2 +-
>  Documentation/devicetree/bindings/input/regulator-haptic.yaml   | 2 +-
>  .../devicetree/bindings/input/sprd,sc27xx-vibrator.yaml         | 2 +-
>  .../bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml   | 2 +-
>  .../interrupt-controller/allwinner,sun6i-a31-r-intc.yaml        | 2 +-
>  .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml        | 2 +-
>  .../devicetree/bindings/interrupt-controller/idt,32434-pic.yaml | 2 +-
>  .../devicetree/bindings/interrupt-controller/st,stm32-exti.yaml | 2 +-
>  .../devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml    | 2 +-
>  Documentation/devicetree/bindings/media/allegro,al5e.yaml       | 2 +-
>  .../devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml      | 2 +-
>  .../devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml       | 2 +-
>  .../bindings/media/allwinner,sun4i-a10-video-engine.yaml        | 2 +-
>  .../devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml      | 2 +-
>  .../bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml           | 2 +-
>  .../bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml         | 2 +-
>  .../bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml          | 2 +-
>  .../bindings/media/allwinner,sun8i-h3-deinterlace.yaml          | 2 +-
>  .../devicetree/bindings/media/mediatek-jpeg-decoder.yaml        | 2 +-
>  .../devicetree/bindings/media/mediatek-jpeg-encoder.yaml        | 2 +-
>  Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml      | 2 +-
>  Documentation/devicetree/bindings/media/rc.yaml                 | 2 +-
>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml      | 2 +-
>  Documentation/devicetree/bindings/media/ti,cal.yaml             | 2 +-
>  Documentation/devicetree/bindings/media/ti,vpe.yaml             | 2 +-
>  .../devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml         | 2 +-
>  .../devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml       | 2 +-
>  .../devicetree/bindings/mfd/allwinner,sun8i-a23-prcm.yaml       | 2 +-
>  .../devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml       | 2 +-
>  .../devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml      | 2 +-
>  .../devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml       | 2 +-
>  .../devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml       | 2 +-
>  .../devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml       | 2 +-
>  .../devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml       | 2 +-
>  Documentation/devicetree/bindings/mfd/canaan,k210-sysctl.yaml   | 2 +-
>  Documentation/devicetree/bindings/mfd/khadas,mcu.yaml           | 2 +-
>  Documentation/devicetree/bindings/mfd/syscon.yaml               | 2 +-
>  .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 +-
>  Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml       | 2 +-
>  Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml      | 2 +-
>  Documentation/devicetree/bindings/mips/ralink.yaml              | 2 +-
>  Documentation/devicetree/bindings/mips/realtek-rtl.yaml         | 2 +-
>  .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml        | 2 +-
>  .../devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml          | 2 +-
>  Documentation/devicetree/bindings/mmc/mmc-card.yaml             | 2 +-
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml     | 2 +-
>  .../devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml       | 2 +-
>  .../devicetree/bindings/mtd/arasan,nand-controller.yaml         | 2 +-
>  Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml  | 2 +-
>  Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml       | 2 +-
>  Documentation/devicetree/bindings/mtd/mtd.yaml                  | 2 +-
>  .../devicetree/bindings/mtd/mxicy,nand-ecc-engine.yaml          | 2 +-
>  Documentation/devicetree/bindings/mtd/renesas-nandc.yaml        | 2 +-
>  Documentation/devicetree/bindings/mtd/spi-nand.yaml             | 2 +-
>  .../devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml       | 2 +-
>  .../devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml       | 2 +-
>  .../devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml       | 2 +-
>  .../devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml      | 2 +-
>  Documentation/devicetree/bindings/net/brcm,amac.yaml            | 2 +-
>  Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml     | 2 +-
>  Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml        | 2 +-
>  Documentation/devicetree/bindings/net/qcom,ipq4019-mdio.yaml    | 2 +-
>  Documentation/devicetree/bindings/net/realtek-bluetooth.yaml    | 2 +-
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml           | 2 +-
>  Documentation/devicetree/bindings/net/sunplus,sp7021-emac.yaml  | 2 +-
>  Documentation/devicetree/bindings/net/ti,cpsw-switch.yaml       | 2 +-
>  .../devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml          | 2 +-
>  Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml     | 2 +-
>  Documentation/devicetree/bindings/net/vertexcom-mse102x.yaml    | 2 +-
>  .../devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml      | 2 +-
>  Documentation/devicetree/bindings/nvmem/imx-iim.yaml            | 2 +-
>  Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml          | 2 +-
>  Documentation/devicetree/bindings/nvmem/nintendo-otp.yaml       | 2 +-
>  Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml     | 2 +-
>  Documentation/devicetree/bindings/nvmem/nvmem.yaml              | 2 +-
>  Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml     | 2 +-
>  .../bindings/opp/allwinner,sun50i-h6-operating-points.yaml      | 2 +-
>  Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml        | 2 +-
>  Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml  | 2 +-
>  Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml  | 2 +-
>  .../devicetree/bindings/pci/toshiba,visconti-pcie.yaml          | 2 +-
>  Documentation/devicetree/bindings/peci/peci-aspeed.yaml         | 2 +-
>  Documentation/devicetree/bindings/peci/peci-controller.yaml     | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml    | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml   | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml    | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml    | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml  | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml    | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml    | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml   | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml     | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml    | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml    | 2 +-
>  .../devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml    | 2 +-
>  Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml         | 2 +-
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml            | 2 +-
>  Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml    | 2 +-
>  Documentation/devicetree/bindings/phy/intel,lgm-emmc-phy.yaml   | 2 +-
>  Documentation/devicetree/bindings/phy/intel,lgm-usb-phy.yaml    | 2 +-
>  .../devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml         | 2 +-
>  .../devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml        | 2 +-
>  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml        | 2 +-
>  Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml       | 2 +-
>  .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml    | 2 +-
>  .../devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml         | 2 +-
>  .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml         | 2 +-
>  .../devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml        | 2 +-
>  Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml      | 2 +-
>  Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml    | 2 +-
>  .../bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml           | 2 +-
>  .../devicetree/bindings/pinctrl/canaan,k210-fpioa.yaml          | 2 +-
>  .../devicetree/bindings/pinctrl/intel,pinctrl-keembay.yaml      | 2 +-
>  .../devicetree/bindings/pinctrl/intel,pinctrl-thunderbay.yaml   | 2 +-
>  .../devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml    | 2 +-
>  .../devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml    | 2 +-
>  .../devicetree/bindings/pinctrl/mediatek,mt6797-pinctrl.yaml    | 2 +-
>  .../devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml    | 2 +-
>  .../devicetree/bindings/pinctrl/mediatek,mt7986-pinctrl.yaml    | 2 +-
>  .../devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml    | 2 +-
>  .../devicetree/bindings/pinctrl/starfive,jh7100-pinctrl.yaml    | 2 +-
>  .../devicetree/bindings/pinctrl/sunplus,sp7021-pinctrl.yaml     | 2 +-
>  Documentation/devicetree/bindings/ptp/ptp-idt82p33.yaml         | 2 +-
>  Documentation/devicetree/bindings/ptp/ptp-idtcm.yaml            | 2 +-
>  .../devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml        | 2 +-
>  Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml    | 2 +-
>  Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml    | 2 +-
>  .../devicetree/bindings/regulator/silergy,sy8106a.yaml          | 2 +-
>  .../devicetree/bindings/reserved-memory/google,open-dice.yaml   | 2 +-
>  .../devicetree/bindings/reserved-memory/memory-region.yaml      | 2 +-
>  .../bindings/reserved-memory/nvidia,tegra210-emc-table.yaml     | 2 +-
>  .../devicetree/bindings/reserved-memory/reserved-memory.yaml    | 2 +-
>  .../bindings/reset/allwinner,sun6i-a31-clock-reset.yaml         | 2 +-
>  Documentation/devicetree/bindings/reset/canaan,k210-rst.yaml    | 2 +-
>  .../devicetree/bindings/reset/starfive,jh7100-reset.yaml        | 2 +-
>  Documentation/devicetree/bindings/riscv/microchip.yaml          | 2 +-
>  .../devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.yaml        | 2 +-
>  .../devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml        | 2 +-
>  Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml | 2 +-
>  .../devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml          | 2 +-
>  Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml   | 2 +-
>  Documentation/devicetree/bindings/rtc/microcrystal,rv3032.yaml  | 2 +-
>  Documentation/devicetree/bindings/rtc/mstar,msc313-rtc.yaml     | 2 +-
>  Documentation/devicetree/bindings/serial/cdns,uart.yaml         | 2 +-
>  .../devicetree/bindings/serial/sunplus,sp7021-uart.yaml         | 2 +-
>  .../devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml      | 2 +-
>  Documentation/devicetree/bindings/sound/adi,max98396.yaml       | 2 +-
>  Documentation/devicetree/bindings/sound/ak4375.yaml             | 2 +-
>  Documentation/devicetree/bindings/sound/ak4613.yaml             | 2 +-
>  Documentation/devicetree/bindings/sound/ak4642.yaml             | 2 +-
>  .../devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml    | 2 +-
>  .../devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml      | 2 +-
>  .../devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml    | 2 +-
>  .../bindings/sound/allwinner,sun50i-a64-codec-analog.yaml       | 2 +-
>  .../bindings/sound/allwinner,sun8i-a23-codec-analog.yaml        | 2 +-
>  .../devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml    | 2 +-
>  Documentation/devicetree/bindings/sound/audio-graph-card.yaml   | 2 +-
>  Documentation/devicetree/bindings/sound/audio-graph-card2.yaml  | 2 +-
>  Documentation/devicetree/bindings/sound/audio-graph.yaml        | 2 +-
>  Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml  | 2 +-
>  Documentation/devicetree/bindings/sound/linux,bt-sco.yaml       | 2 +-
>  Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml    | 2 +-
>  Documentation/devicetree/bindings/sound/mchp,spdifrx.yaml       | 2 +-
>  Documentation/devicetree/bindings/sound/mchp,spdiftx.yaml       | 2 +-
>  Documentation/devicetree/bindings/sound/mt6359.yaml             | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra186-asrc.yaml         | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra186-dspk.yaml         | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra210-admaif.yaml       | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra210-adx.yaml          | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra210-ahub.yaml         | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra210-amx.yaml          | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra210-dmic.yaml         | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra210-i2s.yaml          | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra210-mixer.yaml        | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra210-mvc.yaml          | 2 +-
>  .../devicetree/bindings/sound/nvidia,tegra210-sfc.yaml          | 2 +-
>  Documentation/devicetree/bindings/sound/renesas,rsnd.yaml       | 2 +-
>  .../devicetree/bindings/sound/simple-audio-amplifier.yaml       | 2 +-
>  Documentation/devicetree/bindings/sound/simple-card.yaml        | 2 +-
>  Documentation/devicetree/bindings/sound/sound-dai.yaml          | 2 +-
>  Documentation/devicetree/bindings/sound/test-component.yaml     | 2 +-
>  Documentation/devicetree/bindings/sound/wlf,wm8940.yaml         | 2 +-
>  Documentation/devicetree/bindings/sound/wlf,wm8978.yaml         | 2 +-
>  .../devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml        | 2 +-
>  .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml        | 2 +-
>  Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml   | 2 +-
>  Documentation/devicetree/bindings/spi/mxicy,mx25f0a-spi.yaml    | 2 +-
>  Documentation/devicetree/bindings/spi/spi-cadence.yaml          | 2 +-
>  Documentation/devicetree/bindings/spi/spi-xilinx.yaml           | 2 +-
>  Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml      | 2 +-
>  Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml   | 2 +-
>  .../bindings/sram/allwinner,sun4i-a10-system-control.yaml       | 2 +-
>  .../devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml   | 2 +-
>  .../devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml    | 2 +-
>  .../devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml  | 2 +-
>  .../devicetree/bindings/timer/mstar,msc313e-timer.yaml          | 2 +-
>  Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml  | 2 +-
>  Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml     | 2 +-
>  Documentation/devicetree/bindings/timestamp/hte-consumer.yaml   | 2 +-
>  Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml   | 2 +-
>  .../devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml       | 2 +-
>  Documentation/devicetree/bindings/usb/brcm,bcm7445-ehci.yaml    | 2 +-
>  Documentation/devicetree/bindings/usb/brcm,usb-pinmap.yaml      | 2 +-
>  Documentation/devicetree/bindings/usb/generic-ehci.yaml         | 2 +-
>  Documentation/devicetree/bindings/usb/generic-ohci.yaml         | 2 +-
>  Documentation/devicetree/bindings/usb/generic-xhci.yaml         | 2 +-
>  Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml    | 2 +-
>  Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml        | 2 +-
>  Documentation/devicetree/bindings/usb/mediatek,musb.yaml        | 2 +-
>  Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml  | 2 +-
>  Documentation/devicetree/bindings/usb/smsc,usb3503.yaml         | 2 +-
>  Documentation/devicetree/bindings/usb/usb-drd.yaml              | 2 +-
>  Documentation/devicetree/bindings/usb/usb-hcd.yaml              | 2 +-
>  Documentation/devicetree/bindings/usb/usb-xhci.yaml             | 2 +-
>  Documentation/devicetree/bindings/usb/usb.yaml                  | 2 +-
>  Documentation/devicetree/bindings/w1/w1-gpio.yaml               | 2 +-
>  .../devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml   | 2 +-
>  .../devicetree/bindings/watchdog/mstar,msc313e-wdt.yaml         | 2 +-
>  351 files changed, 351 insertions(+), 351 deletions(-)
> 

Applied, thanks!
