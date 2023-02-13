Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3C8C694B78
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 16:44:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229944AbjBMPoD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 10:44:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbjBMPoC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 10:44:02 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B1DF193E9
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 07:44:01 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id by3so11385654wrb.10
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 07:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2n1P+oxHN3aWLMoTlDV1sEh1xrBUj1nJ88KGxvBB7eo=;
        b=GQxiPXdmDktffRQCnppmyv0xFEog6TPxrD2bymnw/uSvXzcoEYBoRfFoJQEgRdPwGW
         /5x93+HS/fjxAeUe7aG1GCWt3OTViEd2o8qTxeBw11eXInsf/nAF5YEa3S0bQEtJ8oXy
         pLF7Op8HU3AU19EtCPFGXhg7GTTzAlIzSyhFbLBYZHc7mfphPdNAgKOhjUFMpl2Mnqp4
         bcAyneP743z3I6CdGGE/GTMGk7EPr6seWsk27jC/gSLBultzTr2IYeKSAVdmzN2L6kn1
         ikj+nFHYXsuuG6QBT3R13WZ9yZ57KvKH4mTZtrBNW1nctKu01Lg9lSivCkn97K8fX0TQ
         VleA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2n1P+oxHN3aWLMoTlDV1sEh1xrBUj1nJ88KGxvBB7eo=;
        b=et+wKrCLuP4sC2FK+jIjR/z5irZer2Xi9jMqgdQdy+R/PTmOx8k16m9RNFnT05XMdV
         BbtZo1gQcTomdTKbVnQK+SPpA2IdRiUOCW0/Hvf8EIxemtMyaWwPcGZ/v/KhoMSOMcRR
         cK4EnKwLpHhqVGV+cH8scehqsWOtsNiMuWmLhZ001u+FJ7LntzClF2I7apyAbxow/DvU
         /MdfWLNEkvduNDCr1UMACaR9MywvMS36f9stM8h/3kZQnXSXC/OkH0iBjFqz2P0MRn+n
         5EKjeagcPXjQ6kswFSj2SC1vM9mKC0pGCN/M4J6AjShZ0njXWLrmGue3yYa622xn0lHJ
         1Ugw==
X-Gm-Message-State: AO0yUKVyqZtUDKm0Bw8awa2DfRMf2BkKd3C5Xzw/KE0gmseflrOGDb78
        uN8q6z9WjZGkxuY19NggpjVvGg==
X-Google-Smtp-Source: AK7set+KF3h1+YGzYPh0y156dCFx+9jGfO3uVnyyofEcfGGK9uX+dB6tZ571mwgmhxAYwQ1kdZTrwg==
X-Received: by 2002:adf:f14f:0:b0:2c5:561e:808e with SMTP id y15-20020adff14f000000b002c5561e808emr3415217wro.12.1676303039995;
        Mon, 13 Feb 2023 07:43:59 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a1-20020adff7c1000000b002c54a2037d1sm8657866wrq.75.2023.02.13.07.43.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 07:43:59 -0800 (PST)
Message-ID: <2b67050c-7429-8528-de24-2d923e3c9671@linaro.org>
Date:   Mon, 13 Feb 2023 16:43:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 17/17] arm64: dts: apple: t8112: Initial t8112 (M2) device
 trees
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>
Cc:     Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Kettenis <kettenis@openbsd.org>, asahi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230202-asahi-t8112-dt-v1-0-cb5442d1c229@jannau.net>
 <20230202-asahi-t8112-dt-v1-17-cb5442d1c229@jannau.net>
 <1ea2107a-bb86-8c22-0bbc-82c453ab08ce@linaro.org>
 <20230213140113.GE17933@jannau.net>
 <16804864-dce2-d68c-ce81-b6fdeb20a527@linaro.org>
 <20230213150823.GF17933@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230213150823.GF17933@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 16:08, Janne Grunau wrote:
> On 2023-02-13 15:36:33 +0100, Krzysztof Kozlowski wrote:
>> On 13/02/2023 15:01, Janne Grunau wrote:
>>>>> +
>>>>> +		pmgr: power-management@23b700000 {
>>>>> +			compatible = "apple,t8112-pmgr", "apple,pmgr", "syscon", "simple-mfd";
>>>>
>>>> Why this is simple-mfd?
>>>
>>> I suppose because the syscon device is not limited to power domain 
>>> controls. The dt-bindings in arm/apple/apple,pmgr.yaml specify those 
>>> compatibles. See the original discussion in:
>>>
>>> https://lore.kernel.org/linux-devicetree/57991dac-196e-a76d-831a-d4ac166bfe29@marcan.st/  
>>
>> This did not answer my concerns. There are no children here.
> 
> The child nodes are in t8112-pmgr.dtsi

Ahhh, so this is overridden? Then it's fine.

Best regards,
Krzysztof

