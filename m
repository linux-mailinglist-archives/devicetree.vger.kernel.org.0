Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (unknown [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D66BE533BCF
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 13:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242760AbiEYLd1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 May 2022 07:33:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230476AbiEYLd0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 May 2022 07:33:26 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF68592D05
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 04:33:23 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id j10so12053659lfe.12
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 04:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EZsTbG5Ghb36/veeiU7rdV///7+Ve3p/GIrx5IOFMMk=;
        b=UNaoBdpvQ0Wuh39ejXqVAxIdtogtZgXrbpaaU46uoIDB3jLwniE+a2Gw/eeD8rR8Yx
         IXV3H3QXBNtA1tMANean66atO0lGhtSaBj/Jzj5RNfrNPf8kn0oSAKPugUTe2FTz20/o
         5TH60Q4367rsBz1G9RGjIz8XELgZW7TyE43vX+m7/UlPP+AwpSJmlD2QG95/0zMEZsWS
         tr5G30OGEiKdG5GnVwT8nCeszSZH6QYxn2Btg/docx5if5P9QbJdALM7qEVNf96vCbI4
         8PVPsXCLlqa2JHW3+x+10k92IUQqj7bsSWQeFQsKgTrtK1cAELhcGiPxPVFOQXESnO70
         CPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EZsTbG5Ghb36/veeiU7rdV///7+Ve3p/GIrx5IOFMMk=;
        b=DOth8xDsXicMSKRU31iM4ctMAdZYv0Mcez1FcUhEbPhrkuCaOda8i2wtIsTS8eYwR1
         3ld4gS5EI34YzRbyDVr9aMnHKH13Ag6PS5r5jE5EmRrozm1XeXDVEzuPYLcN1o8s0VtV
         ZKSbup4xJBp1auCozpcqUwcXt4q9aL32AhYKrr8Su0a68j1F79uXQn8oyeVMC8xq87H+
         x/bhcoU69P3Qi+FTvS+2G1QrTINuY82YbyG4Wut7A7h+A4VjkeKd2C9MkZB/R4bJx/lq
         c8HfsqZhovaTbiWQGg/bKPxWRzhbfkkVKD8r0c7KUeKtE8Mqpot68ZKIOkZ+yC7KOOEr
         WqPg==
X-Gm-Message-State: AOAM531UjLKNRzEeRw+h1I82/Gq89sEptLTdAwPNQKGml2racslPpdyP
        H48ZHk8wZllucFgtADA77si1gA==
X-Google-Smtp-Source: ABdhPJwxUQcyyc6kFYuWc0GAmuft5s7f8VFDf0BcrceocIyXBLKMhyRoxJLAZ62FMvqZdolc+cbblg==
X-Received: by 2002:a05:6512:10c2:b0:478:8ea5:f6f9 with SMTP id k2-20020a05651210c200b004788ea5f6f9mr5197816lfg.1.1653478402086;
        Wed, 25 May 2022 04:33:22 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h26-20020a19701a000000b0047255d210fesm3063191lfc.45.2022.05.25.04.33.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 May 2022 04:33:20 -0700 (PDT)
Message-ID: <1abe03bf-5de5-f73e-1043-46872a38e815@linaro.org>
Date:   Wed, 25 May 2022 14:33:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/7] media: camss: ispif: Correctly reset based on the
 VFE ID
Content-Language: en-GB
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        kholk11@gmail.com, Robert Foss <robert.foss@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, mchehab@kernel.org,
        robh+dt@kernel.org, marijns95@gmail.com, konradybcio@gmail.com,
        martin.botka1@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, todor.too@gmail.com
References: <20201022174706.8813-1-kholk11@gmail.com>
 <20201022174706.8813-2-kholk11@gmail.com>
 <899412f2-5ee4-cd32-393f-688fc6351437@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <899412f2-5ee4-cd32-393f-688fc6351437@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Wow, a patchset from 2020.

On 25/05/2022 12:03, Vladimir Zapolskiy wrote:
> On 10/22/20 20:47, kholk11@gmail.com wrote:
>> From: AngeloGioacchino Del Regno <kholk11@gmail.com>
>>
>> Resetting the ISPIF VFE0 context is wrong if we are using the VFE1
>> for dual-camera or simply because a secondary camera is connected
>> to it: in this case the reset will always happen on the VFE0 ctx
>> of the ISPIF, which is .. useless.
>>
>> Fix this usecase by adding the ISPIF_RST_CMD_1 address and choose
>> where to do the (or what to) reset based on the VFE line id.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <kholk11@gmail.com>
>> Reviewed-by: Robert Foss <robert.foss@linaro.org>
>> ---
>>   .../media/platform/qcom/camss/camss-ispif.c   | 85 ++++++++++++-------
>>   .../media/platform/qcom/camss/camss-ispif.h   |  2 +-
>>   2 files changed, 56 insertions(+), 31 deletions(-)
>>

[skipped]

>> @@ -355,7 +379,7 @@ static int ispif_set_power(struct v4l2_subdev *sd, 
>> int on)
>>               goto exit;
>>           }
>> -        ret = ispif_reset(ispif);
>> +        ret = ispif_reset(ispif, line->vfe_id);
> 
> But in fact here is an error.
> 
> line->vfe_id is never set.
> 
> I'm unable to test any fix, since I don't have a correspondent hardware,
> but I can write a fix for someone's testing.

I have a sda660 device, but I don't have cameras attached. So one will 
have to use TPG.

-- 
With best wishes
Dmitry
