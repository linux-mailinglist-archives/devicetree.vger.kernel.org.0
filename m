Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D09836A542D
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 09:10:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbjB1IKt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 03:10:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229694AbjB1IKs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 03:10:48 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D34D8241FF
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 00:10:46 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id v16so5949395wrn.0
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 00:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677571845;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1lZT49oy95m22EGxr6coWHrOvpI9jNUmdpagNrbHvNM=;
        b=kmrYBY92z4EHdQLcGzm06sr1j17uqz820eu2pjqPJ8grXAAIC+X9CD01WC8LQfAqfA
         Xbl2nB4N8aeoIDPb363pGNI1rt5EnVhSxTZAk1qWlKDbmYpfymiP8UexOKNLkgU7FIsR
         z+nDLz0PesWcQeHRlP6O37cnA9m5yy3XaKUt90BzlDFwdn5HWO94gN/PqpoErkRNxrpu
         J4p9eCwIEUQylukbzrmG1BtfJ6SSrSz1Y7jicXY8g1i3h5gxnAlV2url3bckgAUcfuym
         s2bmRLrN14puvOiP39jkOYkl9s+O/mGUo1Rr6QyO9SYPyWK//ro8DVZRFtt8w0OY6x95
         HbXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677571845;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1lZT49oy95m22EGxr6coWHrOvpI9jNUmdpagNrbHvNM=;
        b=kyuDxFMmCWD5guGoQODLu5RBiEnB9aRyl5gBpLRWVlK9t5Kw61lTZ0/AbIceuJWYyQ
         FTsPeHU4IlutQeiVIQfnoMroOMx4Lty5jvQCAayc5TcjyrnvcghbGdZK9MDWaCjO/4hK
         qUnhyiGTMr35ghA7mPdz3C1Xqjp+9DaSHJMLlzVSBe+Qo6h9rR0yTjH/p4qifX6CkMHu
         MzpzYoD/u/SU+PNFVD4/thdpUiUYJmBaq0DL1ZDhDioqMJB+jGQTWVGjhS00gGdg5Kx3
         kkI2C8lomQws4LG8h/a/5xsZ27rA5ZUQvWTHDkn9dZdSCJ9oZN2IqhWkXKgSYrza4nsE
         Hpyg==
X-Gm-Message-State: AO0yUKVE30hynJLZoaRfZa5Hy8WDvqZQPgJ1v7lWtytaSoouTDERc7qL
        YYUpVKy/dP49UwFMrlBg33G/nQ==
X-Google-Smtp-Source: AK7set9jNkGwv2a2WSq4/mD4IKvMJUFZALH8OCkO/Q+zbLQobS0DnHUXEdt/GO1AVrEG/l1GhQKgjA==
X-Received: by 2002:a05:6000:d1:b0:2c6:e87f:30cc with SMTP id q17-20020a05600000d100b002c6e87f30ccmr1388533wrx.48.1677571845301;
        Tue, 28 Feb 2023 00:10:45 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i14-20020a05600c354e00b003e91b9a92c9sm12145345wmq.24.2023.02.28.00.10.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Feb 2023 00:10:44 -0800 (PST)
Message-ID: <947af937-3178-48ad-998f-b048245f3ffe@linaro.org>
Date:   Tue, 28 Feb 2023 09:10:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: imx8mn: specify #sound-dai-cells for SAI
 nodes
To:     Marco Felsch <m.felsch@pengutronix.de>, Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Abel Vesa <abelvesa@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Jacky Bai <ping.bai@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Michael Turquette <mturquette@baylibre.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20230227174535.87657-1-marex@denx.de>
 <20230227190123.znifdqympsantpt6@pengutronix.de>
 <a519eb0b-dc40-deec-03d3-676648a52f15@denx.de>
 <20230227200039.ugmtvpli6gvux3fi@pengutronix.de>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230227200039.ugmtvpli6gvux3fi@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/02/2023 21:00, Marco Felsch wrote:
>>>> +					#sound-dai-cells = <0>;
>>>
>>> Please don't add it in front of the compatible and the reg property.
>>
>> The #address-cells and #size-cells are also always on top, why should the
>> #sound-dai-cells be any different ? Where should they be ?
> 
> As of now my understanding of specifying a devicetree node was:
> 
> node-name@reg-nr {
> 	compatible = "";
> 	reg = <>;
> 	// all pending properties below
> 	...
> };
> 
> @Rob, @Krzysztof:
> Is this a (unwritten) rule/policy?
> 

Each platform has its own coding style around this but I am not aware of
a coding style which puts address and size cells at the top. To me it is
really odd placement. First property is always "compatible", as the most
important. Then for most platforms second is "reg", as the one easiest
to compare with unit address. Some platforms put status as last property.

Best regards,
Krzysztof

