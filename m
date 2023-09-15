Return-Path: <devicetree+bounces-355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDCD7A15B3
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:48:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1980928258D
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 05:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40CE746B6;
	Fri, 15 Sep 2023 05:48:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F083C05
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:48:08 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71E932D5D
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 22:47:47 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99c1c66876aso215998666b.2
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 22:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1694756866; x=1695361666; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mClZXEGSNnJrMU5yPF0CrbEDF0lrJX5nJWaXZOJ3BUU=;
        b=DvW/ksLHY7MnOj0pAEb1t1YI/9qJK8E1UmLGDS4Iiz6fuhRE6+KCGXlySorsn3T/BZ
         0G7AJGGazd+k37SJg/0IxXJvjcykzNosgwOgsygvydsEsiZLbw/f/vMMRbMVJnqrF5QV
         bHHFrr/1/HpKk0lckp9gzrJi2CDFPognvNY7sWJndYskxko1XXYKo+94CFRmevkCK1Tc
         1O98iLzmTUSV7Bz1260UUG/NMqhee2yyloyy7Ww+n3dZvQED02QjpO7lT4B5GnpPvkSx
         X3Qlbcpw9vzD69UlGzXCjnMC3PjO48nNLRUPrZJX7eRmnYUitzENSGIrqv9v0/J8zGiI
         2gIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694756866; x=1695361666;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mClZXEGSNnJrMU5yPF0CrbEDF0lrJX5nJWaXZOJ3BUU=;
        b=cd7QBVwKxIA+5qYS9aYzGKWegxBRAJodlhy/Tgxp0+pVDE45Dhookmf2ZY5mGDGxWS
         dFaQFGoapJKkXbd2U+101Fk27ft6NA6BvdSGGnyFTLEyB6cukQIyiaN/bfKTi9xph31U
         9db/+8CO55dr8+dy5xiHTKOZaeTfok+1QmdjXw7AmtN9iA1E1T+mSJ78UsMWPK3lpgcF
         Cl70Xct3VvoFKRysUCOEjBtT8uHeV0alR8Ytn5GkCsrRLfImA3p4JuLO9oZDYx0y2Qm5
         AQPO2ltox0Z2KiazCrO27H01ir8XBlTh8m4H2ICSOROiqLU9Hih+mbafK524QyDENwq9
         GHmA==
X-Gm-Message-State: AOJu0YwfKVhp/cE6JBp1z615DASvdJl7fx28SbhcpBgfSggu2FlG2h1+
	o0UlHysOe+rN6KLlkLHsibxLXg==
X-Google-Smtp-Source: AGHT+IEWyeCL57OiTdtKjnW1JuwK01GRM8ZngJ1bXmSbU/Ry+SkKEz1+OxX0DHA+bCIRCpJqJ8Y/9A==
X-Received: by 2002:a17:906:220e:b0:9a1:beb2:1cb8 with SMTP id s14-20020a170906220e00b009a1beb21cb8mr484383ejs.39.1694756865698;
        Thu, 14 Sep 2023 22:47:45 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id r11-20020a170906350b00b009a5f1d1564dsm1893684eja.126.2023.09.14.22.47.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 22:47:45 -0700 (PDT)
Message-ID: <d54e14b2-9897-fbd4-7f5f-f5dd44c40f5e@tuxon.dev>
Date: Fri, 15 Sep 2023 08:47:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 10/37] clk: renesas: rzg2l: use core->name for clock name
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 ulf.hansson@linaro.org, linus.walleij@linaro.org,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, magnus.damm@gmail.com,
 catalin.marinas@arm.com, will@kernel.org,
 prabhakar.mahadev-lad.rj@bp.renesas.com, biju.das.jz@bp.renesas.com,
 quic_bjorande@quicinc.com, arnd@arndb.de, konrad.dybcio@linaro.org,
 neil.armstrong@linaro.org, nfraprado@collabora.com, rafal@milecki.pl,
 wsa+renesas@sang-engineering.com, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
 <20230912045157.177966-11-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdV+54heFxPGmN53OMmP0cu4+3-t0ARZWH0c+qgZA_G73g@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdV+54heFxPGmN53OMmP0cu4+3-t0ARZWH0c+qgZA_G73g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 14.09.2023 16:04, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Tue, Sep 12, 2023 at 6:52 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> core->name already contains the clock name thus, there is no
>> need to check the GET_SHIFT(core->conf) to decide on it.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>> @@ -266,7 +266,7 @@ rzg2l_cpg_sd_mux_clk_register(const struct cpg_core_clk *core,
>>         clk_hw_data->priv = priv;
>>         clk_hw_data->conf = core->conf;
>>
>> -       init.name = GET_SHIFT(core->conf) ? "sd1" : "sd0";
>> +       init.name = core->name;
> 
> Note that this does change the case of the names (e.g. "SD0" => "sd0").
> I guess no one cares...

As of my experiments and investigation we should be good with it.

> 
>>         init.ops = &rzg2l_cpg_sd_clk_mux_ops;
>>         init.flags = 0;
>>         init.num_parents = core->num_parents;
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

