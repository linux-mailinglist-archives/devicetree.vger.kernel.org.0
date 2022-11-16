Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2B4862BC9F
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:54:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229757AbiKPLx6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:53:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232080AbiKPLx0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:53:26 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 513884387D
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:44:19 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id b3so29071951lfv.2
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rhkxa1BnRWWj45GOqN+hYkfIBY5C7zyuz6t5kZ6f2Eo=;
        b=MWW9HBXCHSPxeFAKGGxXleYbVa+tx8EcDs6ot7AklMwf69S2CJOHR/ZdTAcUolFRzQ
         cp/bb2fDvECLT0O99HvpNnUOi77FtFDxq27r5qPW7E3EIPvVI1HKm7OL67E//jsPtfIl
         vvQA1Piyb/l25nrNJLAAWmcFjUXVqllKZSM6Qk8Z8qcQuEdx6hngPJI3YtQukf54GJGo
         GbM2LmXap8ThHKxHr4aIgGosstmZH/sinLrFk5N+BJDvKJIc9o6gjz51szrGYt+jnZzr
         sK7c6RzSR+jXU0wJNVLLPb9yobXFdvRkv6UGTSYUZIFTk1hBfoofnF43TqlsgC19yFEe
         x1ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rhkxa1BnRWWj45GOqN+hYkfIBY5C7zyuz6t5kZ6f2Eo=;
        b=E1pTd5qjTtBWVb1GU9jDl8A75Ja7o9fd5F5QdiEKTFgZpo/m2nw2y6vIrcBnAEN0UR
         5aBNk0GgheLjb0z25ZnM4HBEcF4P/salkbuU2jzsrcAdyGZIlhRFfTkyBnFBG1Yt3Xtt
         X08aDMwQf345DlQL19EUSJAgb1UwM6JMsSMtaNZUh0koptSl8kyoUu88qKSqA35ARgJC
         XBE0yp7e3hDGRn/g7LUHGckcWSVQ486FVdp1phNvwUwd3JSK58KBlfUzam4VBgVFqBGf
         wWPwCmVL3O7rOZg7P8c2a0N5NUrdXPN2l51nU10ws6NgEaYES7wiMFjbbolK2z20rYi+
         qrjw==
X-Gm-Message-State: ANoB5plK3NXt+EWfgYFWYPe7KD1F19s1tU/ZUZI0ods9S7XXKFLbURJ8
        iq/wkhB5WqhlW9MB6/DQxidrbg==
X-Google-Smtp-Source: AA0mqf5FqZaeA5gMVK8IMJXojfeD1ykEZMAdHNylNYCrDuMgO8lLQS5s66dCO7D+o2bX/dDJjXB9pw==
X-Received: by 2002:a05:6512:e9a:b0:4b4:11c0:f572 with SMTP id bi26-20020a0565120e9a00b004b411c0f572mr6855777lfb.583.1668599057711;
        Wed, 16 Nov 2022 03:44:17 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v26-20020ac258fa000000b004a8b9c68728sm2566110lfo.105.2022.11.16.03.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 03:44:17 -0800 (PST)
Message-ID: <9c86ba22-fac8-ff9b-b0cc-86b48d4bcfe5@linaro.org>
Date:   Wed, 16 Nov 2022 12:44:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: mailbox: qcom-ipcc: Add compatible for
 SM8550
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20221116113457.2660792-1-abel.vesa@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221116113457.2660792-1-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/11/2022 12:34, Abel Vesa wrote:
> Document the compatible for SM8550 mailbox.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

