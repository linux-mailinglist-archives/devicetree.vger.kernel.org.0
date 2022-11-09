Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 743D3622E08
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 15:35:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231586AbiKIOfB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 09:35:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231589AbiKIOe7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 09:34:59 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D5A11A206
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 06:34:58 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id u2so26090339ljl.3
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 06:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bZx04SasLwqf9ldsbI3VPQRqwyw8Z+v7jFzXUXT/Qrk=;
        b=e/YNifEm6OOdJN1uo9vjMAfEYEwXuDqJI1RrWqXrnhUw3evyiKD0XWQvBMzEKnukK9
         dZsehmTY7c4A2rfwLSJfR7SrRAMTHZLrQwrzhpS5DkJb/CIM+cxzVrUlyI1zWvdYlWni
         FA+Odi1FWqwTckjIAyfG0Nyyxnhbsm7bTCmRU4U9cnGmJfNiZ0k1OWhO9q/OWwCJQ2cB
         D1PtgrAC3lqX6LWC0SC6sU/zo0uxnL00CbyTWGqCJLxkdjhIYwk66O/2LFWoiyUJBfS2
         E/0AExbznOJ/bVZem/EoVeRNPJckFoPY3s8vJ/TSKMteBRPm7S4LrV6UygCGQA/YO23m
         oKSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bZx04SasLwqf9ldsbI3VPQRqwyw8Z+v7jFzXUXT/Qrk=;
        b=JmIfQphAFjnN+9kw0bLjXmW+0hkopja0U9+xsSAagGV7ngWB2jLf8/5ke3pVuq1nWz
         6XYNCrT+7f9Fp1GnK1gAVVAdUlVzQEggtElB6++WxVWzMr/u4apkzDEEQwxTCilwDmaD
         nPwe0x1xkZh03AI/v6389WQjhW6Vo00cE3OCWzdre1rTa4rGma5gxPsPiPL0E+gs4M0R
         BCTkrtreHbaRkZvX3v8FZ7qe+XVr+iMotjHr46oH3vd/px07fnavWdau01l4cHKB79z3
         Wq4NTOQLTsHAcfE2QsmFqFGlkWHVMHMKIXREFmiQ+JkB1D2tdNHM6rO19KZJBjktoGZY
         G9dw==
X-Gm-Message-State: ACrzQf3YmHF1NfBjWJGXrmJoBrQgG9OiyiNN5H/x1UVhVRiq9gbrlw2t
        C3mbgseZ1Wh5P2/zdDRtri8Vtg==
X-Google-Smtp-Source: AMsMyM4AD345kQHxbb29mwZgIXzAJUVPAIIuQlNzTJmQbHVxyVpmlXcw4YovKLJWDOUZOKFrOOfcnQ==
X-Received: by 2002:a05:651c:1073:b0:277:35ca:5eef with SMTP id y19-20020a05651c107300b0027735ca5eefmr20592048ljm.150.1668004496937;
        Wed, 09 Nov 2022 06:34:56 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id f14-20020ac2508e000000b0049478cc4eb9sm2246056lfm.230.2022.11.09.06.34.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 06:34:56 -0800 (PST)
Message-ID: <7254aaa7-c235-aa4f-1706-be68e49f2244@linaro.org>
Date:   Wed, 9 Nov 2022 15:34:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/3] dt-bindings: mmc: sdhci-msm: Document the SM6375
 compatible
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     patches@linaro.org, Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221109142623.53052-1-konrad.dybcio@linaro.org>
 <20221109142623.53052-2-konrad.dybcio@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221109142623.53052-2-konrad.dybcio@linaro.org>
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

On 09/11/2022 15:26, Konrad Dybcio wrote:
> Document the compatible for SDHCI on SM6375.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

