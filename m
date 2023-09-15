Return-Path: <devicetree+bounces-354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D9C7A15A4
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:46:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8CA701C2121B
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 05:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35CA146B1;
	Fri, 15 Sep 2023 05:46:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C34F3FE4
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:46:42 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A3DB2716
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 22:46:39 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-52bcd4db4c0so3901122a12.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 22:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1694756798; x=1695361598; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dBFecL9CWJp1g51f9tBvXZNbnBULvxEsI9jL0YhvbgI=;
        b=VFpOepHyhERpGBZraBCMkTsmwtJXinh95opofI3a4yui2AxBH/On8d1BeVKLiT4hrK
         BBNicKwuLfjRmWo7KFbCFb5ruwxAzFZTlXPwE3zTT65SzRapaBVAzOVEdUYEVZq2u1ht
         zd+7bgo5EPY9J69KftU/scB9i6PSLhQq3STqdFl1Tv8gZ9GHLzSV/xt+cEw3bbVNOMce
         zHCJ6pDN8BtgJrbGkSmzgf/MKHZSF0UZHHC7wBCEUB4kidM+KYlGgGbhbw15hAaBbQXE
         Inh2942nc5OaLQGQh29gu5HwzpewqjIcWBcgj28oQzAkwcm6eLac8o8lYIw47PaMyWjU
         zQOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694756798; x=1695361598;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dBFecL9CWJp1g51f9tBvXZNbnBULvxEsI9jL0YhvbgI=;
        b=CnbNDFqvxWwfQ+1HXa+FlMRG5KvvQW5ga9tYcWARzeIil9i9gHUZfpPJHk75IXLMXM
         0NCAi3B5HbFqfD4ZJFGEdPeg0s/RGjz+08s+e7aPvBaU3+DMQ9tTgdBND/YwRVrVsblk
         Hm7FEW5LIJ+v0+g2M7J45OX25+5LP6avKZ/RgXT9abYOQwAuv/HE6sfOuP1FYQPdk4yB
         1MRaKMql0Gy0MUemVhfpPNPTrmTQJ0w7vVAPJIT6eEB/8a8Xgcm5SDbuXMjhYl5Trx88
         t+UBJ4p/IAgjMAsT1hWFuaYtlsG3VNuVUUUjDJRQq95Nlp+a6bHW265+iMt2TEoTnYha
         /Afg==
X-Gm-Message-State: AOJu0YwMOn+qL/uTJLX1SeygE/rduFozSey+rzFEv5cK/IpKJ3ceMcKO
	df1ZE+IhQ3zRpZ752PtFUOPfMw==
X-Google-Smtp-Source: AGHT+IEODL+RpbrigRr6ILUXdOUTmvcIqPQeQU6mBp3NXEa+wUaHYHJhFKWyE/sQXCzyI5YAWAIO1Q==
X-Received: by 2002:a05:6402:3485:b0:522:c226:34ea with SMTP id v5-20020a056402348500b00522c22634eamr4759852edc.7.1694756797898;
        Thu, 14 Sep 2023 22:46:37 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id u23-20020aa7d997000000b0052a3edff5c3sm1742625eds.87.2023.09.14.22.46.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 22:46:37 -0700 (PDT)
Message-ID: <305ec65a-bc73-62fc-84a4-4f84ccd1ff1a@tuxon.dev>
Date: Fri, 15 Sep 2023 08:46:35 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 07/37] clk: renesas: rzg2l: lock around writes to mux
 register
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
 <20230912045157.177966-8-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdXo14JwdJE+b1zdnJ7Re5cn8ugzxueD1a=-n=PUQz7VKw@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdXo14JwdJE+b1zdnJ7Re5cn8ugzxueD1a=-n=PUQz7VKw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 14.09.2023 15:13, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Tue, Sep 12, 2023 at 6:52 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> SD MUX output (SD0) is further divided by 4 in G2{L, UL}. The divided
>> clock is SD0_DIV4. SD0_DIV4 is registered with CLK_SET_RATE_PARENT which
>> means a rate request for it is propagated to the MUX and could reach
>> rzg2l_cpg_sd_clk_mux_set_parent() concurrently with the users of SD0.
>> Add proper locking to avoid concurrent access on SD MUX set rate
>> registers.
>>
>> Fixes: eaff33646f4cb ("clk: renesas: rzg2l: Add SDHI clk mux support")
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>> @@ -189,6 +189,7 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
>>         u32 shift = GET_SHIFT(hwdata->conf);
>>         const u32 clk_src_266 = 2;
>>         u32 msk, val, bitmask;
>> +       unsigned long flags;
>>         int ret;
>>
>>         /*
>> @@ -203,25 +204,27 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
>>          * the index to value mapping is done by adding 1 to the index.
>>          */
>>         bitmask = (GENMASK(GET_WIDTH(hwdata->conf) - 1, 0) << shift) << 16;
>> +       spin_lock_irqsave(&priv->rmw_lock, flags);
>>         if (index != clk_src_266) {
>>                 writel(bitmask | ((clk_src_266 + 1) << shift), priv->base + off);
>>
>>                 msk = off ? CPG_CLKSTATUS_SELSDHI1_STS : CPG_CLKSTATUS_SELSDHI0_STS;
>>
>> -               ret = readl_poll_timeout(priv->base + CPG_CLKSTATUS, val,
>> -                                        !(val & msk), 100,
>> -                                        CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
>> -               if (ret) {
>> -                       dev_err(priv->dev, "failed to switch clk source\n");
>> -                       return ret;
>> -               }
>> +               ret = readl_poll_timeout_atomic(priv->base + CPG_CLKSTATUS, val,
>> +                                               !(val & msk), 100,
> 
> According to the read_poll_timeout_atomic() documentation,
> delay_us should be less than ~10us.

I'll update it, thanks for pointing it.

> 
>> +                                               CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
> 
> CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US = 20 ms, which is a long timeout
> for an atomic poll.

I'll have to find the the rationale behind the original timeout. It may be
random, experimental or hardware related.

> 
>> +               if (ret)
>> +                       goto unlock;
>>         }
>>
>>         writel(bitmask | ((index + 1) << shift), priv->base + off);
>>
>> -       ret = readl_poll_timeout(priv->base + CPG_CLKSTATUS, val,
>> -                                !(val & msk), 100,
>> -                                CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
>> +       ret = readl_poll_timeout_atomic(priv->base + CPG_CLKSTATUS, val,
>> +                                       !(val & msk), 100,
>> +                                       CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
> 
> Likewise.
> 
>> +unlock:
>> +       spin_unlock_irqrestore(&priv->rmw_lock, flags);
>> +
>>         if (ret)
>>                 dev_err(priv->dev, "failed to switch clk source\n");
> 
> The rest LGTM.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

