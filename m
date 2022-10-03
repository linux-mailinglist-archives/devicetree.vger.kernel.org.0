Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF8315F2BD8
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 10:32:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230365AbiJCIcK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 04:32:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230378AbiJCIbs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 04:31:48 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1796A7F270
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 01:04:23 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id bj12so20364383ejb.13
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 01:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Ua3/Yq6pE+E6VT066jpB76qJ00RlV5Rf+my1G3LOuw8=;
        b=NnAGWf0fgEthCAU1J7h0H6oBj4jtdnSVSxUs9RsOK7nxkcEjVus6mDRXoEKHDuJElP
         KOJ91f/rZwSo30DKuqCR4uZRjKzY+JhfpXvndGYE7FnRojh0BqlvQEUNGF6oS3q980uR
         5lT2VjcsbRuFJfO7cwRUvRcuMqTcec0pEL0wCP5qF5mmsz8zSiAGihntt2lsX3v/yoLd
         W9NhdfyVl0lsAX5RS+oHTz44oTBs50jL0ybGzravM+/uOAZ60/67ol9LW3cKxn87jTJ/
         L4zRHQPM+Iy/t+NiXvaYdQSqhXW8C8liG2PowgI1ZPoru9YostcDUoNS7BfNnCo+OQzh
         rQ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Ua3/Yq6pE+E6VT066jpB76qJ00RlV5Rf+my1G3LOuw8=;
        b=iWJqFB2JdyUuEX+uMjsQzOslgBMAP0nr6pJdsDfZCA05UV17q61CPkbUf6C/ZK2G7j
         lqaBY87496Hx/cafvz9z0Fzf6jOju2vUQ1Kv7r5UkR2ex0bI1YNjHd1Uw0E2euuaoXZm
         /pG0/AX5vLcX7l6y717k+dm3klxpl6gFeDAgRBiKXvBpndhl6pobL0Y7tTADqBCyfekf
         lP7+cH6ppUyGvbCo7FVmpK1R9tnw3y9jLH+reZFGUwKoKIjcmIGGKOHlcQdoz/HHHN7g
         ZgtdlDXvMNgLhbpTPEqYw5X0w72/5bgryj0vx6LU5VH7OoJ3NPUrOQGAklbVXaCUdXa2
         +b6Q==
X-Gm-Message-State: ACrzQf3KMU3ukLMSqwIv9VlWRvkRoQzckhKBXbcSfflaOcOLRaTKNgjC
        jTqoukLNmeGcSLuDXyTajnDhSWcIF91YGw==
X-Google-Smtp-Source: AMsMyM4kUIkDgRtU08BCBHxyQw19PsWsHSzVj2+D9Dyfae9PXxMLabP6hVXquujn84cf0DteJirSAA==
X-Received: by 2002:a05:6512:11e9:b0:49d:7909:ff9b with SMTP id p9-20020a05651211e900b0049d7909ff9bmr6530866lfs.568.1664781928013;
        Mon, 03 Oct 2022 00:25:28 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f5-20020a056512228500b00492e570e036sm1347482lfu.54.2022.10.03.00.25.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 00:25:27 -0700 (PDT)
Message-ID: <b20c81a6-42fc-cdcd-80da-7aa2e574c318@linaro.org>
Date:   Mon, 3 Oct 2022 09:25:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 2/6] dt-bindings: i2c: qcom,i2c-cci: Document MSM8226
 compatible
Content-Language: en-US
To:     =?UTF-8?Q?Matti_Lehtim=c3=a4ki?= <matti.lehtimaki@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221002122859.75525-1-matti.lehtimaki@gmail.com>
 <20221002122859.75525-3-matti.lehtimaki@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221002122859.75525-3-matti.lehtimaki@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/10/2022 14:28, Matti Lehtimäki wrote:
> MSM8226's Camera Control Interface has one master and 3 clocks.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> ---
>  .../devicetree/bindings/i2c/qcom,i2c-cci.yaml | 22 +++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

