Return-Path: <devicetree+bounces-974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 299577A4385
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:53:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 521FC1C20C73
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 07:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20EA1134A5;
	Mon, 18 Sep 2023 07:52:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B351C20
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 07:52:55 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6CB63AA4
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 00:50:47 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c00b37ad84so10732641fa.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 00:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695023432; x=1695628232; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3y431fp7zImpDWkvcmWfe4LAHrYOVE+zuYJQGH6Vve8=;
        b=SISV0CS8M5bxkkPkub1VMfMVIDBOE2nLvyt9OK5Yc8nrVfgdWuhLYOV0FuDEVzVBuA
         3y83V5Fj2s7lqszoHZ/V5ULI7nGf5pqU9hCRz6mXzxrub0WXLerP9+QVWPGbUhCvKq+h
         XXElYbaAKLNGJ260n5qM3flrj6P7SelcmSCBMAAy5TSpI5YnphYLFqBA790hDM9n0KQG
         CTgkQvZFbspQuu8HgG2bObtmiCLwn52G9O3D+c13cWV0dYQS4RUaBAnnhBQJeMuC8jAh
         j972D6N2rUmqCRyNSrUMYSNAQvkfsUT2QIyCl/EhbJSfRsSSB9MKqstiExrEqWgo+6Ps
         9j7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695023432; x=1695628232;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3y431fp7zImpDWkvcmWfe4LAHrYOVE+zuYJQGH6Vve8=;
        b=dH7kfO8ijHBz32M9QOcfW8iQiywEB5q5DV49Zq2feTVe2OBxZHohXbsqbzdlkOm9vI
         Y+drcut0Qn1SSiXESFUg2qjeu3xgxENHa1n9+EPUB84zXmQ4yQ1/nM+A/8C8n3KZKyNe
         H0ifop/W9BBWiklUdNobFh1mzUpqf2ftJD55Hrwv6wJKCUirtvcJMtSDsVHbCPSmxJBw
         WQQ4NoZE3IJtj4t3Aso5Y3L6PvEktmBb+RdoG8WHjL8TKqu+Kz+sgRdpUv9iHZVHPGLV
         iM0jKCKxCdGpRMS51xxz0F/tFK5Eu5hCwUUpr9tD2mC9fg6aOtE1sBDPdH0sNjrx5Dnu
         Lv+Q==
X-Gm-Message-State: AOJu0YxH0IL2O7vKP6D0KkWe6l6JSScS2iCfUYFLs69vCXB6JHBMf0zD
	bX9tzsoE3dQS1AskAXutZm+jBg==
X-Google-Smtp-Source: AGHT+IGDwTGCqvI7ErFSwd5+9EaU2bhKoinXXuDhfENDvQM6ygOX7ZuQ/7Sf1mEAGjlycsO7Ct0+tg==
X-Received: by 2002:a2e:9b87:0:b0:2bd:d4d:7fb6 with SMTP id z7-20020a2e9b87000000b002bd0d4d7fb6mr6798737lji.2.1695023431915;
        Mon, 18 Sep 2023 00:50:31 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id r11-20020a170906350b00b009a5f1d1564dsm5993808eja.126.2023.09.18.00.50.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 00:50:31 -0700 (PDT)
Message-ID: <701ee3bd-5d16-6b5f-2d34-4a4919c4c532@tuxon.dev>
Date: Mon, 18 Sep 2023 10:50:28 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 22/37] clk: renesas: add minimal boot support for RZ/G3S
 SoC
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
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
 <20230912045157.177966-23-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdUCpbPA3cDjNAq1irvr6z4Jux-5-tVDBuyr6nx_qOQGpg@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdUCpbPA3cDjNAq1irvr6z4Jux-5-tVDBuyr6nx_qOQGpg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Geert,

On 15.09.2023 15:52, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Tue, Sep 12, 2023 at 6:53 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Add minimal clock and reset support for RZ/G3S SoC to be able to boot
>> Linux from SD Card/eMMC. This includes necessary core clocks for booting
>> and GIC, SCIF, GPIO, SD0 mod clocks and resets.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 

[ ... ]

>> +       CLK_PLL3_DIV2_4,
>> +       CLK_PLL3_DIV2_8,
>> +       CLK_PLL3_DIV6,
>> +       CLK_PLL4,
>> +       CLK_PLL6,
>> +       CLK_PLL6_DIV2,
>> +       CLK_SEL_SDHI0,
>> +       CLK_SEL_PLL4,
>> +       CLK_P1_DIV2,
>> +       CLK_P3_DIV2,
> 
> Do you need CLK_P1_DIV2 and CLK_P3_DIV2?
> I don't see them in Figure 7.3 ("Clock System Diagram (2)").
> 

P1_DIV2 is clock source for MHU_PCLK or OTFDE_DDR_PCLK.
P3_DIV2 is clock source for DMAC_PCLK, OTFDE_SPI_PCLK.
These are expressed in clock list document
(RZG3S_clock_list_r1.00_20230602.xlsx).

It is true the functionality could be preserved even w/o these 2 clocks but
I kept them here as I saw them as core clocks even though they are not
present in the Clock System Diagram from HW manual.

With these, would you prefer to keep these clocks or just remove them?

Thank you,
Claudiu Beznea

