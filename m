Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 740F965092F
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 10:14:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231197AbiLSJOX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 04:14:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231360AbiLSJN4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 04:13:56 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61D6FE3A
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 01:13:55 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id b3so12748639lfv.2
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 01:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LUx5MYCfnj/1H50qfkuVhePLMPUMVD211tZ96Ux4Qkk=;
        b=DofmNMWGgHsV98OYuQkE+JUWgwRoAIXoeP52WsseD0nBLTqXRTQjn1VYoAkcLzL/Y4
         6R7vqOqCyqtUEHNU8CM2jJ0yMYPbNsI2wCAq170/0rtiDOrl24hfv0+D4m2GYJ5soB0X
         jE1lr79kHyFcszGiB1iFNF7Yo0x/WiQ7o9t+PaBd9mTv4zSRsYpSPmKJfG2MHMKJWgQb
         qMP1kLAMJs1X8FaGhFysiZ6XRHJ4lrV5GxJgjI/TyTNnYE3PMKUcVctEpngq/FAFQ7fC
         eM1cuN2qBR/KC6zaCp3OZw8sJyeWpeNj7Y7jQGckggi/SgORSpW5CQ3JgvSd2R7CPykR
         SVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LUx5MYCfnj/1H50qfkuVhePLMPUMVD211tZ96Ux4Qkk=;
        b=6/ZqoWKX/NCYIU5ZfxqtmidHksqe/p9WPixc5FsFtn4NKa1szqBaCl97CPfpNrvLPv
         f5sQpPND++SF3rGTXzfL2RuBjbjTQDM1FSB0Xqj10q3e1D+GETt95sROPHHVVJifpNrt
         QLUSnNwQ3ew4oF5+CGdWDJDzNaIzW26ky6EhuT7CEQlm1UKLPRgWvY1oyhrhZywhMrR2
         8gbYm2WwfvzgnEHE9+Bt82yLJvR+xpxdz9WBBYLY4cybqKTlSfJ5hFyd2V2rr/QlbVon
         5Vts9hfBr5MNviYBDrVxJN4m9Uv9udKH/xIuIVpWsqdC4pHjM1alc1vvWz2mZ3WXMchI
         uf4w==
X-Gm-Message-State: ANoB5pmwqWquplEVJ926n/shfK46e1BWEUwajUm5y8n6MWXIcyIX5dX0
        XM73134y1ne3QRxx15TJ31CYQw==
X-Google-Smtp-Source: AA0mqf5TYBkDMS+bjG24i/C65vIRXR7GqJJINJdikUEPOM+mTn+Z97RYzXcjrWzLcUo2K1yNlfpLpg==
X-Received: by 2002:a05:6512:2527:b0:4b6:edce:a192 with SMTP id be39-20020a056512252700b004b6edcea192mr9283232lfb.4.1671441233793;
        Mon, 19 Dec 2022 01:13:53 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m18-20020a056512359200b004b523766c23sm1051457lfr.202.2022.12.19.01.13.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 01:13:53 -0800 (PST)
Message-ID: <eb1fb1a2-d31d-2a1f-39e3-0c329cbcae7b@linaro.org>
Date:   Mon, 19 Dec 2022 10:13:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 02/15] dt-bindings: clock: qcom: gcc-qcs404: switch to
 gcc.yaml
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20221217001730.540502-1-dmitry.baryshkov@linaro.org>
 <20221217001730.540502-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221217001730.540502-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/12/2022 01:17, Dmitry Baryshkov wrote:
> Now as the gcc-qcs404 gained support for GDSC and requires using
> the #power-domain-cells property, switch the qcom,gcc-qcs404.yaml schema
> to use common gcc.yaml.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

