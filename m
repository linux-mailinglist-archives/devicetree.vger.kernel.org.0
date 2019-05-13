Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 88D8F1BC7C
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2019 20:00:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732138AbfEMSAM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 May 2019 14:00:12 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:43237 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732152AbfEMSAH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 May 2019 14:00:07 -0400
Received: by mail-oi1-f194.google.com with SMTP id t187so6723013oie.10
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 11:00:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=q6URL/rwDu6Pp+CMhBJXlnaSMXyflxy97TNjl7/LfUQ=;
        b=WKVBvaoQRuAAu+P743IW1ith7P/gys3P2FjRa9hzfFHCFUBOHURPBrS92xwZQPv5xo
         QUbOw/w1BMjZGDMaXzR0iNAPM8i6fjUUo7XvcHB2K5DiSFgNyApmYF/0eR49eqMTpnYS
         MtE8csKKLPFxjC4KA+9GI7F1GHUa+EBK4PrhSbM9sVfdo0QAqbvo7gZ7YwWcIFd1DLU4
         PCmVSZRUqPM2+kwSQou54E3BVpB43dpCCjzpTFEocHuY6HBLs3aqc6Z1F5Jky0FOsXNb
         hQutgxzfb+TgNLwBvARF0175YNvfWuHzNiVRJpSfSBi0hpRdCryoQKzfhhZUMCuj7lR8
         Q7WA==
X-Gm-Message-State: APjAAAXDGmvOdcamoA0dRDygeUxQsgktPLdpXb5alcF21MN4Ch3Ku7vo
        EmoDIEja6VGjqJFUDYVfQg==
X-Google-Smtp-Source: APXvYqyJcgLtww9JnWUlMJGg5ICP5nnN0u3c6qBR0WdmUGfnd56RpcvLOyDFFrLTTq/H+SXGq4ldRA==
X-Received: by 2002:aca:3d42:: with SMTP id k63mr270007oia.156.1557770405731;
        Mon, 13 May 2019 11:00:05 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id o10sm5374544oif.41.2019.05.13.11.00.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 May 2019 11:00:04 -0700 (PDT)
Date:   Mon, 13 May 2019 13:00:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     Aisheng Dong <aisheng.dong@nxp.com>
Cc:     Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        Michael Turquette <mturquette@baylibre.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH V2 1/2] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Message-ID: <20190513180004.GA26344@bogus>
References: <1556846821-8581-1-git-send-email-aisheng.dong@nxp.com>
 <1556846821-8581-2-git-send-email-aisheng.dong@nxp.com>
 <CAL_JsqLJ+Lc_3huQizy4BVFgVV94Yg8KsOOgXLv4dQU8H=WfWw@mail.gmail.com>
 <AM0PR04MB4211B2F21350CAE370D7A93780360@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <CAL_JsqLNRnYxUGyhpiL2OFxOT1wXZH2LG4XUH7qf14TpA5Dk=A@mail.gmail.com>
 <AM0PR04MB421180CD45226B30082BDE4D80320@AM0PR04MB4211.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM0PR04MB421180CD45226B30082BDE4D80320@AM0PR04MB4211.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 08, 2019 at 07:16:11AM +0000, Aisheng Dong wrote:
> > From: Rob Herring [mailto:robh+dt@kernel.org]
> > Sent: Wednesday, May 8, 2019 2:03 AM
> > 
> > On Sat, May 4, 2019 at 7:19 AM Aisheng Dong <aisheng.dong@nxp.com>
> > wrote:
> > >
> > > > From: Rob Herring [mailto:robh+dt@kernel.org]
> > > > Sent: Friday, May 3, 2019 10:53 PM
> > > > Subject: Re: [PATCH V2 1/2] dt-bindings: firmware: imx-scu: new
> > > > binding to parse clocks from device tree
> > > >
> > > > On Thu, May 2, 2019 at 8:34 PM Aisheng Dong <aisheng.dong@nxp.com>
> > > > wrote:
> > > >
> > > > > There's a few limitations on the original one cell clock binding
> > > > > (#clock-cells = <1>) that we have to define all clock IDs for
> > > > > device tree to reference. This may cause troubles if we want to
> > > > > use common clock IDs for multi platforms support when the clock of
> > > > > those platforms are mostly the same.
> > > > > e.g. Current clock IDs name are defined with SS prefix.
> > > > >
> > > > > However the device may reside in different SS across CPUs, that
> > > > > means the SS prefix may not valid anymore for a new SoC.
> > > > > Furthermore, the device availability of those clocks may also vary a bit.
> > > > >
> > > > > For such situation, We formerly planned to add all new IDs for
> > > > > each SS and dynamically check availability for different SoC in
> > > > > driver. That can be done but that may involve a lot effort and may
> > > > > result in more changes and duplicated code in driver, also make
> > > > > device tree upstreaming hard which depends on Clock IDs.
> > > > >
> > > > > To relief this situation, we want to move the clock definition
> > > > > into device tree which can fully decouple the dependency of Clock
> > > > > ID definition from device tree. This can make us write a full
> > > > > generic clock driver for SCU based SoCs. No more frequent changes
> > > > > needed in clock driver any more.
> > > > >
> > > > > In the meanwhile, we can also use the existence of clock nodes in
> > > > > device tree to address the device and clock availability
> > > > > differences across different SoCs.
> > > > >
> > > > > For SCU clocks, only two params required. The first one is
> > > > > resource id which is encoded in reg property and the second is
> > > > > clock type index which is encoded in generic clock-indices property
> > they're not continuously.
> > > > >
> > > > > And as we also want to support clock set parent function, 'clocks'
> > > > > property is also used to pass all the possible input parents.
> > > > >
> > > > > Cc: Rob Herring <robh+dt@kernel.org>
> > > > > Cc: Stephen Boyd <sboyd@kernel.org>
> > > > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > > > Cc: Sascha Hauer <kernel@pengutronix.de>
> > > > > Cc: Michael Turquette <mturquette@baylibre.com>
> > > > > Cc: devicetree@vger.kernel.org
> > > > > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > > > ---
> > > > > ChangeLog:
> > > > > v1->v2:
> > > > >  * changed to one cell binding inspired by arm,scpi.txt
> > > > >    Documentation/devicetree/bindings/arm/arm,scpi.txt
> > > > >    Resource ID is encoded in 'reg' property.
> > > > >    Clock type is encoded in generic clock-indices property.
> > > > >    Then we don't have to search all the DT nodes to fetch
> > > > >    those two value to construct clocks which is relatively
> > > > >    low efficiency.
> > > > >  * Add required power-domain property as well.
> > > > > ---
> > > > >  .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 45
> > > > ++++++++++++++++++----
> > > > >  include/dt-bindings/firmware/imx/rsrc.h            | 17 ++++++++
> > > > >  2 files changed, 54 insertions(+), 8 deletions(-)
> > > > >
> > > > > diff --git
> > > > > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > > index 5d7dbab..2f46e89 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > > @@ -89,6 +89,27 @@ Required properties:
> > > > >                           "fsl,imx8qm-clock"
> > > > >                           "fsl,imx8qxp-clock"
> > > > >                         followed by "fsl,scu-clk"
> > > > > +- #address-cells:      Should be 1.
> > > > > +- #size-cells:         Should be 0.
> > > > > +
> > > > > +Sub nodes are required to represent all available SCU clocks
> > > > > +within this hardware subsystem and the following properties are
> > needed:
> > > > > +
> > > > > +- reg:                 Should contain the Resource ID of this SCU
> > clock.
> > > > > +- #clock-cells:                Should be 1.
> > > > > +- clock-indices:       Index of all clock types supported by this SCU
> > clock.
> > > > > +                       The order should match the
> > > > > +clock-output-names
> > > > array.
> > > > > +                       Refer to
> > > > <include/dt-bindings/firmware/imx/rsrc.h> for
> > > > > +                       available clock types supported by SCU.
> > > >
> > > > I would have expected the clock cell to contain the Resource ID.
> > > >
> > > > Also, this still has one clock per node which you should avoid
> > > > unless there's only a small number of clocks (say ~20). Move this
> > > > all to a single node with the list of clock IDs in clock-indices and
> > > > other properties like power-domains can match up with clock-indices.
> > > > IOW, both should have the same length (in elements).
> > > >
> > >
> > > Do you mean something like this?
> > >
> > > #define IMX_SCU_CLK_ID(rsrc, type)      (type << 16 | rsrc)
> > > scu_clk: scu-clock-controller {
> > >         compatible = "fsl,imx8qxp-scu-clk", "fsl,scu-clk";
> > >         #clock-cells = <1>;
> > >         clock-indices = <IMX_SCU_CLK_ID(IMX_SC_R_ENET_0,
> > IMX_SC_PM_CLK_PER)>,
> > >                         <IMX_SCU_CLK_ID(IMX_SC_R_ENET_0,
> > IMX_SC_PM_CLK_BYPASS)>,
> > >                         <IMX_SCU_CLK_ID(IMX_SC_R_ENET_0,
> > IMX_SC_PM_CLK_MISC0)>,
> > >                         <IMX_SCU_CLK_ID(IMX_SC_R_UART_0,
> > IMX_SC_PM_CLK_PER)>,
> > >                         ...
> > >
> > >         clock-output-names = "enet0_clk",
> > >                              "enet0_bypass_clk",
> > >                              "enet0_rgmii_clk",
> > >                              "uart0_clk",
> > >                              ...
> > >
> > >         power-domains = <&pd IMX_SC_R_ENET_0>,
> > >                         <&pd IMX_SC_R_ENET_0>,
> > >                         <&pd IMX_SC_R_ENET_0>,
> > >                         <&pd IMX_SC_R_UART_0>,
> > >                         ...
> > > };
> > 
> > Yes, but...
> > 
> > > serial@5a060000 {
> > >         ...
> > >         clocks = <&scu_clk IMX_SCU_CLK_ID(IMX_SC_R_UART_0,
> > > IMX_SC_PM_CLK_PER)>;
> > 
> > I thought devices got clocks from the LPCG?
> > 
> 
> Yes. Here is just an example of using SCU clocks.
> And for some devices without LPCG, it could also get clocks directly from SCU clock.
>  
> > >         power-domains = <&pd IMX_SC_R_UART_0>; };
> > >
> > > I wonder moving all clock resources into a single clock controller
> > > node may result in losing the configuration granularity of individual clocks
> > from device tree.
> > >
> > > For SCU based platforms, the resource availability (e.g.
> > > device/clocks/power) are configurable by SCU firmware according to the
> > different SW execution partition configuration.
> > > e.g. According to customer's requirements, we may allocate some
> > > resources to M4 partition like some I2C, CAN, audio resources which can't be
> > accessed by A core.
> > > And we may allocate even more for virtual machines running at another CPU
> > core.
> > > Thus, defining all the clock sources (fixed) in device tree for A core
> > > seems to be a little bit meaningless and it also causes us hard to extend for a
> > new SoC.
> > 
> > I'm not suggesting that. It's really just re-arranging all the same data from a
> > bunch of child nodes to a single node. Granted, it may be easier to add/delete
> > nodes than add/delete elements from an array of property values, but really
> > that's just a tooling problem
> > 
> 
> Okay, understood.
> So it seems we could still have a separate clock controller node for each SS but merge
> all the same data of child nodes data into it.
> 
> However, we still have one concern.
> Taking MX8QXP DMA SS as example, with one node description, it may be something
> like below:
> dma_scu_clk: dma-scu-clock-controller {
>         compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-clk";
>         #clock-cells = <1>;
>         clock-indices = <IMX_SCU_CLK_ID(IMX_SC_R_ADC_0, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_CAN_0, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_FTM_0, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_FTM_1, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_I2C_0, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_I2C_1, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_I2C_2, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_I2C_3, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_LCD_0, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_LCD_0_PWM_0, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_SPI_0, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_SPI_1, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_SPI_2, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_SPI_3, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_UART_0, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_UART_1, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_UART_2, IMX_SC_PM_CLK_PER)>,
>                         <IMX_SCU_CLK_ID(IMX_SC_R_UART_3, IMX_SC_PM_CLK_PER)>;
>         clock-output-names = "adc0_clk",
>                              "can0_clk",
>                              "ftm0_clk",
>                              "ftm1_clk",
>                              "i2c0_clk",
>                              "i2c1_clk",
>                              "i2c2_clk",
>                              "i2c3_clk",
>                              "lcd0_clk",
>                              "lcd0_pwm0_clk",
>                              "spi0_clk",
>                              "spi1_clk",
>                              "spi2_clk",
>                              "spi3_clk",
>                              "uart0_clk",
>                              "uart1_clk",
>                              "uart2_clk",
>                              "uart3_clk";
>         power-domains = <&pd IMX_SC_R_ADC_0>,
>                         <&pd IMX_SC_R_CAN_0>,
>                         <&pd IMX_SC_R_FTM_0>,
>                         <&pd IMX_SC_R_FTM_1>,
>                         <&pd IMX_SC_R_I2C_0>,
>                         <&pd IMX_SC_R_I2C_1>,
>                         <&pd IMX_SC_R_I2C_2>,
>                         <&pd IMX_SC_R_I2C_3>,
>                         <&pd IMX_SC_R_LCD_0>,
>                         <&pd IMX_SC_R_LCD_0_PWM_0>,
>                         <&pd IMX_SC_R_SPI_0>,
>                         <&pd IMX_SC_R_SPI_1>,
>                         <&pd IMX_SC_R_SPI_2>,
>                         <&pd IMX_SC_R_SPI_3>,
>                         <&pd IMX_SC_R_UART_0>,
>                         <&pd IMX_SC_R_UART_1>,
>                         <&pd IMX_SC_R_UART_2>,
>                         <&pd IMX_SC_R_UART_3>;
> };
> 
> For MX8QM, even if we have one more UART_4, then we still have to write
> all the same things again with an extra UART_4. It seems it's a bit violate our design
> that using a shared one and do incremental changes for new SoCs.
> Do you think if this is acceptable to you?

Yes, as it should be a one time thing to do per SoC.

> But if describe them per nodes, we do not have such issue.
> 
> Anyway, please tell me your choice, then I will follow.
> 
> BTW, I don't know how a tool can address this issue.

I meant you could write one that understands the binding. It's a bit 
more complicated having to parse and update properties compared to 
adding or removing nodes, but it can still be done.

Rob
