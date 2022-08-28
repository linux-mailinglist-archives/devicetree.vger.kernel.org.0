Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D445F5A3C47
	for <lists+devicetree@lfdr.de>; Sun, 28 Aug 2022 08:42:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231874AbiH1GmX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Aug 2022 02:42:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231496AbiH1GmW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Aug 2022 02:42:22 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A117552811
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 23:42:21 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id m5so7191334lfj.4
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 23:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=7Z2MVTrx+8XosRuc2Y0DzRfrNKrAHd0V8sNT4/qug8U=;
        b=bC/WvUz9U4twqm4fiBe6atLcph822ki9/Z1BrbgAubum7g5pc3U3FgO/4Dr+qe5a5W
         ogxdI2RbgqBCHMQAB32yB/H2tfrrcQjhFXAPIC8rO8pDSD8l6PSZv7wv63Pupy7vWxoQ
         d9AdHpGiE559iUnr3NZ6tbgnzv2Nj2gDYmjqPwnNSYLAwYKrzhvmsPs+o5Qx+f2cAINo
         g/xNZ4nWw9ZNnJb3JqSHJKw1uFnLtH881xJ9/NP0PhHXiGa0p786jgNZ5tRLoWzlp+ZD
         cXFkKQlttZ+2ksO+6iiVpat5kL25yoe3Snlc+2N3Txvj8FVJIMLLlRg6H0FqkP38FHGE
         G33w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=7Z2MVTrx+8XosRuc2Y0DzRfrNKrAHd0V8sNT4/qug8U=;
        b=nmddB7WIUfPq76ijGF400si9mYIe8HDp/zlY+ZKPPY66Vdoi0mZlEUIbDSmPOq/lmy
         Bl6BSFd49+AvdbWwhTgz79JJ2Lk3+THn19MyRFVU0nvyFR5e2egGp0eDjC3/2WItxo7A
         kRqvzaYvJuJSXYMXKpau6nIgaK7nUZSLXjiA8YW+H+ZFwIOE3T8rjavaVd9wQWFw7spt
         JbUtgchHujGtv6R/T7V/X1QG7sfKLAtMeDEa1+mU6xRlBWpaYOVLa9GyNDut9qbdTaxU
         LPkTd/1RyD5cO/aPL1VGNvLFcapymZeXqdAdHnzsn1txQicUBurysuk4Hb1ehWslBdfw
         U+0g==
X-Gm-Message-State: ACgBeo0wMHVdfvbcfr5v8EXFGLOocdekfRBFC/y0/QJTNxw/+FyY1oj3
        CazM+8tpbCjdw4MT+vUWUFAP8A==
X-Google-Smtp-Source: AA6agR6aO9eEAmoEQbJ9QOzlR7kpGXMXhNDCfgaUE8PDhtLnwFXs0cteoPWquQon+NFPXbIuNYhBOQ==
X-Received: by 2002:a05:6512:3f06:b0:492:f6b6:ad8b with SMTP id y6-20020a0565123f0600b00492f6b6ad8bmr4517470lfa.544.1661668939899;
        Sat, 27 Aug 2022 23:42:19 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id u15-20020ac2518f000000b00492d064e8f8sm861537lfi.263.2022.08.27.23.42.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Aug 2022 23:42:19 -0700 (PDT)
Message-ID: <7da2d069-1f42-5e4c-385d-0218b9e97173@linaro.org>
Date:   Sun, 28 Aug 2022 09:42:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 1/2] dt-bindings: spmi: Drop PWM reg dependency
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220827145640.3530878-1-bryan.odonoghue@linaro.org>
 <20220827145640.3530878-2-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220827145640.3530878-2-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/08/2022 17:56, Bryan O'Donoghue wrote:
> The PWM node is not a separate device and is expected to be part of parent
> SPMI PMIC node, thus it obtains the address space from the parent. One IO
> address in "reg" is also not correct description because LPG block maps to
> several regions.
> 
> Fixes: 3f5117be9584 ("dt-bindings: mfd: convert to yaml Qualcomm SPMI PMIC")
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
