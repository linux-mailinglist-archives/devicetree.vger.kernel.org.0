Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 119DC6C2BD0
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 08:59:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229610AbjCUH7s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 03:59:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbjCUH7r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 03:59:47 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E07DA3A843
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 00:59:44 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=igor.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1peWuF-00037K-8t; Tue, 21 Mar 2023 08:59:43 +0100
References: <20230320132755.2150384-1-s.trumtrar@pengutronix.de>
 <20230320132755.2150384-10-s.trumtrar@pengutronix.de>
 <a37db3a8-a3e6-8755-2b7c-c33a1fdca469@foss.st.com>
User-agent: mu4e 1.8.14; emacs 30.0.50
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 09/10] ARM: dts: stm32: add STM32MP1-based Phytec SoM
Date:   Tue, 21 Mar 2023 08:14:52 +0100
In-reply-to: <a37db3a8-a3e6-8755-2b7c-c33a1fdca469@foss.st.com>
Message-ID: <87o7omedqr.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Alexandre,

Alexandre TORGUE <alexandre.torgue@foss.st.com> writes:

> [1. text/plain]
> Hi Steffen
>
> On 3/20/23 14:27, Steffen Trumtrar wrote:
>> The Phytec STM32MP1 based SoMs feature up to 1 GB DDR3LP RAM, up to 1 GB
>> eMMC, up to 16 MB QSPI and up to 128 GB NAND flash.
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> ---
>> Notes:
>>      checkpatch warns about un-documented binding
>>           According to checkpatch the binding for "winbond,w25q128"
>>      used in this dtsi is un-documented.
>>      However, 'jedec,spi-nor.yaml' defines the pattern
>>               (winbond,)?w25q(16|32(w|dw)?|64(dw)?|80bl|128(fw)?|256))$"
>>           so, this should be good!?
>
> We recently added some yaml fixes and we continue to send others (i.e., GPU yaml
> error fix is under review) so please don't add new ones. Some of follownig
> errors are directly linked to your board so please fix them.
>

sorry about that, seems like I wasn't using dt_binding_check correctly :(
However, how did you generate these?

> arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dtb:
> /soc/i2c@40012000/touch@44: failed to match any schema with compatible:
> ['st,stmpe811']
> arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dtb:
> /soc/i2c@40012000/touch@44/touchscreen: failed to match any schema with
> compatible: ['st,stmpe-ts']
> arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dtb: /soc/i2c@40012000/leds@62:
> failed to match any schema with compatible: ['nxp,pca9533']

The bindings are there and if I explicitly run dt_bindings_check with
e.g. Documentation/devicetree/bindings/leds there is no warning/error.

I will fixup the rest.

Best regards,
Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |
