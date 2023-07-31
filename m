Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2741776919C
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:24:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232331AbjGaJYH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:24:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232253AbjGaJXr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:23:47 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 200F910FB
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:21:21 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3110ab7110aso4491126f8f.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690795279; x=1691400079;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xDLdel2Rhe994E8t59q5EvpZyXbsA6v8U1EBH//Jf5c=;
        b=pbT4tIkmhIxq47nniPh5aZTwDD69epwzhf1XUckiDQowVbTuSfSbBvW3qLnjjy1ROK
         gvsZCwxfXdvZ3jxZHoDJLPsDFvwG3jQ1DURoM7dKwASIrHQHoFCV4SjMwON7qL55B8U5
         xfAivgd0q/LxIhbZCycHq2xJvA14z3QOSdNeupHn0zfD+ch1ECbfKIwdHa9bBSuXJ1ba
         tt4sIpusTR4wk6dq84Awp+x/wIzKIScO+fDEBi7YMXHDFgQKlHBXGVYBYqIQKtL7t5ij
         jxFBpYd8UZAhtAGDtsxfbBGIXSeomf0UzY+zWDckX+kkE3jtjW2k6j0URGTu0BGu1REX
         Byvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690795279; x=1691400079;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xDLdel2Rhe994E8t59q5EvpZyXbsA6v8U1EBH//Jf5c=;
        b=H7eXpkaadQ19bHpp+QeYDIHlwYjbea/jQSJ/mJ4P2lEtdE39erdV7P1rNENr0F6EIo
         q6EKDPm3Gf9kLIBzc1EXgdYo455U48iY3fzq/3CKA0DBPw2LR2tkAfdCmp/IbKFpe64o
         93aUOMmVUK5EKvjEjbn/ttK1AJgkrwBVr1hHAVP5Pujpme3s1FbGAkeMbzFc64d9vvAT
         UOVuo/NIV01OpskOQ3wn8HONRM52sVXfN7bS2x37MjqoDpiRtq2obM+KQ41v1wPNRpdy
         Pq7D6iPpcFYkapwFaq2FukzIukKH0entuCElkWnoWZnjrIaUps7GQslqPTsH+2KrowTN
         X5KA==
X-Gm-Message-State: ABy/qLbHRSSMvZTwy8HOhVqpf7e/QjnfIQqpCzk/ZE3bxWQHUcKinhls
        wsF+06MOLo7WzipoCY/T0YPF5A==
X-Google-Smtp-Source: APBJJlHsHDdvsIJ2bUTb4wdaCXnh4rHnl50RqfKbzz7Urb20yM0+LICum4NymicbKaVsEd8soQLuyQ==
X-Received: by 2002:adf:dcc8:0:b0:30e:3caa:971b with SMTP id x8-20020adfdcc8000000b0030e3caa971bmr7529797wrm.51.1690795279502;
        Mon, 31 Jul 2023 02:21:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:14b8:9aa7:6bf0:256d? ([2a01:e0a:982:cbb0:14b8:9aa7:6bf0:256d])
        by smtp.gmail.com with ESMTPSA id g18-20020a5d6992000000b0031134bcdacdsm12437930wru.42.2023.07.31.02.21.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 02:21:19 -0700 (PDT)
Message-ID: <a867c31c-df94-5c6c-211c-e35138333922@linaro.org>
Date:   Mon, 31 Jul 2023 11:21:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: amlogic: meson-sm1-odroid: drop redundant
 status=okay
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230731090442.100856-1-krzysztof.kozlowski@linaro.org>
 <273bd185-4aa5-510f-0f1d-1a4cab2d4a2d@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <273bd185-4aa5-510f-0f1d-1a4cab2d4a2d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 11:19, Krzysztof Kozlowski wrote:
> On 31/07/2023 11:04, Krzysztof Kozlowski wrote:
>> status=okay is by default.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi | 1 -
>>   1 file changed, 1 deletion(-)
> 
> I found few more...

You're faster than me, I planned to get rid of them this week!

Neil

> 
> Best regards,
> Krzysztof
> 

