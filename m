Return-Path: <devicetree+bounces-356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B277A15C2
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:51:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F063C1C21267
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 05:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D3584C8C;
	Fri, 15 Sep 2023 05:51:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6EA3D6A
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:51:51 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 731652710
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 22:51:46 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-52a49a42353so2025494a12.2
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 22:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1694757105; x=1695361905; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RAviJiHnDWn37yrY/+TDS6dv356bJe/3IP+axIRqyaY=;
        b=PrUxW2H8unYtNgDLDeqdFYWFgVpt/4cUd3x7liLJvrutVZVewvdFn8vZQkUsh32tSz
         ZXBIvEDbXswEYTir+wlToCQYaSglOSki/p1hSjqIxrlZ98tevtYKwMSOtX5vCCy7GYZY
         GLjmYY+8I8mOpLIzkBOdpa2o03l82+nU7GBqo0X8pgYRfIOEv20P4M1UAVGCBRjfz/JF
         c10y2w4bDG4IeIpbiqJE7DMu5lXfMzZ1NDVZ7VvZbxENFDgFV0fYMGml8jO4ekkKowBH
         7yXGxICf/yzY1VtbMJOl5ODVZPEH3srPhVkglre8iNFPIkdvwL37gJpAFpjL8ODJBd5m
         e5cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694757105; x=1695361905;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RAviJiHnDWn37yrY/+TDS6dv356bJe/3IP+axIRqyaY=;
        b=hFesN6coS7Y74cbpBcnUnjYVaZtwYHbzJUbNEswmHgyh7hh5njqqH6X9biAqSvhe87
         ImgfVYP2Tj3CTMQtVqg1asgqAWr8midOp8aHbeJUMi7hkJC2uZnAle8gitvzX28M1jHp
         h0V3qOFYPxOEn8m38paHhSdasGdl3vrQInONvo5rJheEkRdOFLTbwn4qhoVp7AAZllco
         wuLwBQ4GH8YRs32MNE7eo1Bx8j5HUGE/YM72WVLfrDiU3uzlSdlGFWYruFxw1SRp1B9B
         C5hHd821FiLubEJi4NXVrskr7r2Rm62W2PGy0x6kdDwcsqXFdCW8Nx9OAAmjeFWsQ4G0
         vErQ==
X-Gm-Message-State: AOJu0Yz76T9A6EDp3YabvOmkTULb0mFMNT4gNOVRvJvrrx/Ps1SWFY3U
	T0R5MrSlhku1051zeLU0Hu8EWQ==
X-Google-Smtp-Source: AGHT+IF8/RuLa2dvtV/6+atyydlIiT0muAbHJl0SRDscKsAC1bMSvB/A1IkkRbsxTp4mEQITtSGTeA==
X-Received: by 2002:a05:6402:164b:b0:523:2e63:b9b with SMTP id s11-20020a056402164b00b005232e630b9bmr571283edx.24.1694757104741;
        Thu, 14 Sep 2023 22:51:44 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id u24-20020a056402065800b005231e3d89efsm1747955edx.31.2023.09.14.22.51.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 22:51:44 -0700 (PDT)
Message-ID: <f0aa7983-0300-ce21-8726-41d033f6afbe@tuxon.dev>
Date: Fri, 15 Sep 2023 08:51:41 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 12/37] clk: renesas: rzg2l: reduce the critical area
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
 <20230912045157.177966-13-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVLx1d-6=5xx_GLAb7LxxRR9FwhAU56fxNc3b=9wj286g@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdVLx1d-6=5xx_GLAb7LxxRR9FwhAU56fxNc3b=9wj286g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 14.09.2023 16:12, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Tue, Sep 12, 2023 at 6:52 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> spinlock in rzg2l_mod_clock_endisable() is intended to protect the accesses
>> to hardware register. There is no need to protect the instructions that set
>> temporary variable which will be then written to register. Thus limit the
>> spinlock only to the hardware register access.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>> @@ -912,13 +912,13 @@ static int rzg2l_mod_clock_endisable(struct clk_hw *hw, bool enable)
>>
>>         dev_dbg(dev, "CLK_ON %u/%pC %s\n", CLK_ON_R(reg), hw->clk,
>>                 enable ? "ON" : "OFF");
>> -       spin_lock_irqsave(&priv->rmw_lock, flags);
>>
>>         value = bitmask << 16;
>>         if (enable)
>>                 value |= bitmask;
>> -       writel(value, priv->base + CLK_ON_R(reg));
>>
>> +       spin_lock_irqsave(&priv->rmw_lock, flags);
>> +       writel(value, priv->base + CLK_ON_R(reg));
>>         spin_unlock_irqrestore(&priv->rmw_lock, flags);
> 
> After this, it becomes obvious there is nothing to protect at all,
> so the locking can just be removed from this function?

I tend to be paranoid when writing to hardware resources thus I kept it.
Would you prefer to remove it at all?

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

