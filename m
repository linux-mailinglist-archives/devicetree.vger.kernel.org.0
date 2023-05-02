Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C81A86F4236
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 13:02:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbjEBLCr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 07:02:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233807AbjEBLCr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 07:02:47 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A09AC4686
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 04:02:45 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=igor.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1ptnmN-0000tr-DN; Tue, 02 May 2023 13:02:43 +0200
References: <20230411083045.2850138-1-s.trumtrar@pengutronix.de>
User-agent: mu4e 1.8.14; emacs 30.0.50
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [Linux-stm32] [PATCH v8 00/10] ARM: stm32: add support for
 Phycore        STM32MP1
Date:   Tue, 02 May 2023 13:02:16 +0200
In-reply-to: <20230411083045.2850138-1-s.trumtrar@pengutronix.de>
Message-ID: <87v8hbuhbi.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 2023-04-11 at 10:30 +02, Steffen Trumtrar <s.trumtrar@pengutronix.de> wrote:

> Hi,
>
> this is the eighth installement of my series for adding support for the
> Phytec STM32MP1-based SoM and board.
>
> Phytec itself calls the board "Phycore STM32MP1-3" and has other
> endnumbers. I only have access to the "-3" and that's what this series
> adds.
>
>     Changes since v7:
>       - remove unused gpu_reservde memory range
>       - get rid of duplicate ethernet clock assignments
>       - remove secure-status for sdmmc
>
>     Changes since v6:
>       - rename mdio0->mdio
>
>     Changes since v5:
>       - add reviewed/acked-by
>       - cleanup dt_bindings_check warnings
>
>     Changes since v4:
>       - cleanup usage of "status = okay|disabled"
>       - fix remaining non-generic node names
>       - rework sai nodes to not duplicate the existing settings in stm32mp151.dtsi
>
>     Changes since v3:
>       - cleanup board-compatible
>       - cleanup aliases
>       - rename nodes according to schema
>       - use interrupt flag
>
> Steffen Trumtrar (10):
>   ARM: dts: stm32: Add alternate pinmux for ethernet
>   ARM: dts: stm32: Add alternate pinmux for sai2b
>   ARM: dts: stm32: Add new pinmux for sdmmc1_b4
>   ARM: dts: stm32: Add new pinmux for sdmmc2_d47
>   ARM: dts: stm32: Add pinmux for USART1 pins
>   ARM: dts: stm32: Add idle/sleep pinmux for USART3
>   ARM: dts: stm32: Add sleep pinmux for SPI1 pins_a
>   dt-bindings: arm: stm32: Add Phytec STM32MP1 board
>   ARM: dts: stm32: add STM32MP1-based Phytec SoM
>   ARM: dts: stm32: add STM32MP1-based Phytec board
>
>  .../devicetree/bindings/arm/stm32/stm32.yaml  |   6 +
>  arch/arm/boot/dts/Makefile                    |   3 +-
>  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi      | 231 +++++++
>  .../dts/stm32mp157c-phycore-stm32mp1-3.dts    |  60 ++
>  .../stm32mp157c-phycore-stm32mp15-som.dtsi    | 577 ++++++++++++++++++
>  5 files changed, 876 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts
>  create mode 100644 arch/arm/boot/dts/stm32mp157c-phycore-stm32mp15-som.dtsi

Gentle ping. Anything I need to fix?

Best regards,
Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |
