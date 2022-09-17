Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F6695BB9AD
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 19:03:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbiIQRD4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 13:03:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbiIQRDy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 13:03:54 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA2E42F382
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 10:03:52 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id j9so6358824ljg.2
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 10:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=HxlvNOXZLDG+QAIKe3QTAJIirgGJ27Umf7SxlY8og3I=;
        b=wzvdrzIqrI+LUTbx/MmJddxco13vT4hEIDk9erf0mNozNVKNgWDArVxjCVTq73waN3
         B/Wot8PS0C1rCYL6ZTDvG0akTSU/Mu/hmKXsq5BfzRufeqrVtoLdsXym940Vq2Hqhrff
         MCYBSvrddc2I8xRM1/gzbzP2qHxTll2w+fRHwuXYdxE0zLKYlJWh5RFIiuQNKalDvlhd
         qFi9lhlTs7Fa/ZO+OdHk4BPCd7n9WJODCxeMLXyvs8cALKsqqE6YVg6dA/3ITuarAzA/
         v+OMZBeaPicHjW+emkdndPjqXGT5sOPkkiWbgVr+MI2dDrzH68l5fn4HtHi9U7kIK25s
         98hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=HxlvNOXZLDG+QAIKe3QTAJIirgGJ27Umf7SxlY8og3I=;
        b=GsVbgdlYA2gEE7u868ZQ0Pbb0okjq5JGT6MFTe2zZWnxr346gOAL0Bk77+uo4Q/wnf
         et6rBTeRi3paasCfKLI4oLDOKr0Nkolvm4xn+hmNm8OptfQHuGFc4ACzkntVAlDBQszw
         N4r/3VwIyCpy12zrq9GctfPnJxckbQ0r0ihrTqWWmxLQDXOX24hcN/LM8Z0LDlEjYsKv
         V4jgLbtRufWWnOirk3LFnWeM2gPCi6SXJm275Nf6eNGGTpp/f9TPpIzJZDmAO1mkGRZc
         F7/7qCRijNBJfomfmeh9TNWTO0QfM3+FcnPpaByWSIOdSgd/ynkhlaPTOXRjzxuY7lkN
         DO1A==
X-Gm-Message-State: ACrzQf2MJYtu/a3JM9xaa0tiB+yXrY5nJtbTZ30krWAKrNVRbnNFNNlH
        cSh48ePklDbCEbJIp9X2wCgPXA==
X-Google-Smtp-Source: AMsMyM7E3ohSRcsc0DEgiFc7auF3agQpdAzdPLS7MkWX0g6/rZVD0aNMJrIwBQNIa2mXTpRMcRNH4A==
X-Received: by 2002:a2e:be2b:0:b0:261:c0d4:8264 with SMTP id z43-20020a2ebe2b000000b00261c0d48264mr2765511ljq.16.1663434231131;
        Sat, 17 Sep 2022 10:03:51 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f34-20020a0565123b2200b0049f54a976efsm975945lfv.29.2022.09.17.10.03.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Sep 2022 10:03:50 -0700 (PDT)
Message-ID: <38335ade-d993-c2ee-0921-7a4655e612dd@linaro.org>
Date:   Sat, 17 Sep 2022 18:03:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Document huawei,sturgeon
 device
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220917152829.23568-1-luca@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220917152829.23568-1-luca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/09/2022 16:28, Luca Weiss wrote:
> Document the Huawei Watch ("sturgeon") which is a smartwatch based on
> Snapdragon 400 SoC.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
