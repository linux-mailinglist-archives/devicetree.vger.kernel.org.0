Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0282D603279
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 20:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229691AbiJRSaQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 14:30:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229972AbiJRSaO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 14:30:14 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B96257B784
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 11:30:06 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id 8so9244133qka.1
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 11:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BK5yk15LkKfIrAj2R6RMYbj0RdizV7gUhlXw7YTHuck=;
        b=S8z7ViILNWv6pSSoxpuj/F/EYGFfWIFaN7il1DWvpL18xqGZcNZUAQfdS1OoechpTt
         sK1h7Hg6LerSvf+o6QdYAXBqi796Yvaz+JeibS5CoyetsXV42bOX8mqWETc9k96d+N5L
         Xxx7R9SCKEijUzuvOg+SUMer/s9EUFXzrFH87JB14uQpyoXoYGwkDx6mburJYJ3BTCXx
         s5XCERItoFaBUGwLV/CSTYRVJHPl4ET9rJbCDstnJco4kAacYirsKbJRviRK2kwo9ytt
         OEX6IrVCI9Jhjh6fAqr8LHlGezBmkX+p2TVL4mYXjve0evSn1s+FOvo9kKpb87LUg7/S
         Z0Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BK5yk15LkKfIrAj2R6RMYbj0RdizV7gUhlXw7YTHuck=;
        b=f6T6bD2OF0EFKukbbHMjpLVPf86LSIDusY3W7gkSC5OX2LFQoucR1vT63mYCdFqCoq
         CD7Yf5S2RVh1VFumIg20nmOtUjHXxSe3OvPePvjNEWQC9HEqeFHXUMxnz62mlUSduiyy
         bp0k//fgnChepYc9FMWBF56xtvUfH7KeffZC2JUMHy7V+9vnsv6Xl0NTOGVK7eLErylJ
         wiBNdumYCo9izWw9b9XPGV+pRHuco2R82nRNYmvsEzEng1DKsXzFPwtMZYjz+4IdnyJy
         1xfQGxNeKUJlJ561ODyJwGrfTif1J9tuykZfqFhXcjjr6JZhFdcPF3Z0i0wpaRGR/I3H
         rfFQ==
X-Gm-Message-State: ACrzQf3ene3/Av/83dmBYfZqem1JGiuKJoysW592w6nsD0/LNDANeKJ+
        RR0MumOM2QbtguB80RmRv1qmOQ==
X-Google-Smtp-Source: AMsMyM4kK8z6bP4sSqyzi35kzNH1G8VJ027Py0bbB36RNpqYcPKjKDrRGf2YgUcA/R6HCsTR+aiB9A==
X-Received: by 2002:a05:620a:4548:b0:6ee:deba:2795 with SMTP id u8-20020a05620a454800b006eedeba2795mr2837278qkp.621.1666117804589;
        Tue, 18 Oct 2022 11:30:04 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id cf17-20020a05622a401100b0039c7b9522ecsm2405829qtb.35.2022.10.18.11.30.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 11:30:03 -0700 (PDT)
Message-ID: <8a418360-400f-ff00-4230-865af883f17d@linaro.org>
Date:   Tue, 18 Oct 2022 14:30:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 2/2] dt-bingdings: mmc: Mediatek: add ICE clock
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Mengqi Zhang <mengqi.zhang@mediatek.com>,
        chaotian.jing@mediatek.com, ulf.hansson@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, wenbin.mei@mediatek.com
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221017142007.5408-1-mengqi.zhang@mediatek.com>
 <20221017142007.5408-3-mengqi.zhang@mediatek.com>
 <5d87f1c3-1c73-054b-dca1-9f52939e187d@linaro.org>
In-Reply-To: <5d87f1c3-1c73-054b-dca1-9f52939e187d@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/10/2022 14:29, Krzysztof Kozlowski wrote:
> On 17/10/2022 10:20, Mengqi Zhang wrote:
>> Document the binding for crypto clock of the Inline Crypto Engine
>> of Mediatek SoCs.
> > This does not match the patch contents at all.

Ah, my bad, I read "crypto block", not clock, so it matches. :)

However you are not documenting a binding for it. You are adding
optional clock.

> 
>>
>> Signed-off-by: Mengqi Zhang <mengqi.zhang@mediatek.com>
>> ---
>>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
> 
> Best regards,
> Krzysztof
> 

Best regards,
Krzysztof

