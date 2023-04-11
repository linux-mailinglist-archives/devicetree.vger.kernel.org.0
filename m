Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49EDC6DD313
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 08:44:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbjDKGoF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 02:44:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbjDKGoE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 02:44:04 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B608E60
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 23:44:03 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=igor.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1pm7jV-0005aT-Kz; Tue, 11 Apr 2023 08:44:01 +0200
References: <20230330050408.3806093-1-s.trumtrar@pengutronix.de>
 <20230330050408.3806093-10-s.trumtrar@pengutronix.de>
 <dda2a928-dbdd-e8e7-fb5e-2bb062a3b2b9@foss.st.com>
User-agent: mu4e 1.8.14; emacs 28.2
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 09/10] ARM: dts: stm32: add STM32MP1-based Phytec SoM
Date:   Tue, 11 Apr 2023 08:42:50 +0200
In-reply-to: <dda2a928-dbdd-e8e7-fb5e-2bb062a3b2b9@foss.st.com>
Message-ID: <87cz4a5368.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Alexandre,

Alexandre TORGUE <alexandre.torgue@foss.st.com> writes:
>> +		gpu_reserved: gpu@f8000000 {
>> +			reg = <0xf8000000 0x8000000>;
>> +			no-map;
>> +		};
>
> It seems that this region is not used. Furthermore if you plan to use it to GPU
> note that it doesn't respect YAMl verification. So please remove it.
>

Ack. Will remove.

>> +&ethernet0 {
>> +	pinctrl-0 = <&ethernet0_rgmii_pins_d>;
>> +	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_d>;
>> +	pinctrl-names = "default", "sleep";
>> +	phy-mode = "rgmii-id";
>> +	max-speed = <1000>;
>> +	phy-handle = <&phy0>;
>> +	st,eth-clk-sel;
>> +	clock-names = "stmmaceth",
>> +		      "mac-clk-tx",
>> +		      "mac-clk-rx",
>> +		      "eth-ck",
>> +		      "syscfg-clk",
>> +		      "ethstp";
>> +	clocks = <&rcc ETHMAC>,
>> +		 <&rcc ETHTX>,
>> +		 <&rcc ETHRX>,
>> +		 <&rcc ETHCK_K>,
>> +		 <&rcc SYSCFG>,
>> +		 <&rcc ETHSTP>;
>
> Why do you re define those clocks ? They are all already defined in
> stm32mp151.dtsi
>

Just an oversight :( Will remove.


Thanks,
Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |
