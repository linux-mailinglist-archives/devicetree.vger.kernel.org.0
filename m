Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B2FE666C64
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 09:30:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234628AbjALIaf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 03:30:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238848AbjALIa1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 03:30:27 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 929764D701
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 00:30:25 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id i9so25830776edj.4
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 00:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1sGupF3Ck/dRKM6EjPk7oLT7n2MFX4yEau10b/s5uxY=;
        b=G2o5mRKiFwOUJy8Zu2EVX5hH4lqotszlLxJ6e0323IedMP9nYKJIQhCUELHp+gY+Nb
         yhfQgtmkK2mcmxEDhNKT0/kSAS3qx1bRUD+W2A6sPcRAX+KkRZ4zHVPhAmJ5uptNHSHZ
         6rzCiPY8YQmN8kJPZWBVZGUR1/J07dQt9VLAPaFg1Z7Uk9WKhlVE9dNXlegcSJAwcgaC
         yA9DA05VpddHVfB/fwGfHnNsNgmlNrg9dgxda/OOrA1GRE5F0CowkSgup6nRW1hXTzhV
         C7wU6vGHneZJZWgGLCHlVm1jVTwSArBi2rVeI9JJ7061cXKzxtINVR0Ps4V/kV0Lfoap
         q2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1sGupF3Ck/dRKM6EjPk7oLT7n2MFX4yEau10b/s5uxY=;
        b=3KcgPWVcfMXGftJ/uij/MEnkJwB2ZsNpT3i7McsTF/yAIa/oXxDjF67M5xEpfsx9F2
         9EP/R/7h+t5o5HJY4BE5DrqaYyuLPOa2E0Qn+cSz5ga6TI9oYk9v9V8BRfmBAYIGFvvl
         gKNGag+LtIY9TNHqKnyn7qrCP97q7i9XgQSbWRJC7m7XvNK91Kb7xkdY6vNIrKJyC+Eg
         aKFgE8nyM46QE10emLxXMuUay/pu4ZdkOGUxTrCIkqBRTlV4UD1DMUD9X1e44bzHLYGX
         OaS662DUrqKiQ5lpVi2x5IOF0N1aN8ywanazTuDuJo8PH8ouAdRd1nwStOSW9Ma1xHL0
         kMHQ==
X-Gm-Message-State: AFqh2kraMjlMF+1ncmkXiZACIhjhZBPQNyPm/BGDa52bp2ErLuEgMcDI
        4P7UsLHQ3RGllepfYZ39vP0wqA==
X-Google-Smtp-Source: AMrXdXulwhmao9r1Sj9fEOmUMjEhrCofpMfjwuEanSqwH7MSMZ1dOpfGVKyDhRsJhbd8wzCgwg9Njg==
X-Received: by 2002:aa7:d308:0:b0:496:952f:cbd4 with SMTP id p8-20020aa7d308000000b00496952fcbd4mr19668247edq.1.1673512223737;
        Thu, 12 Jan 2023 00:30:23 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s1-20020aa7cb01000000b00463b9d47e1fsm6893311edt.71.2023.01.12.00.30.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 00:30:23 -0800 (PST)
Message-ID: <d57b1ac4-fd88-cf3e-731a-cb165d996d5c@linaro.org>
Date:   Thu, 12 Jan 2023 09:30:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: qcom,tcsr: Add compatible for
 sm8450
Content-Language: en-US
To:     Mukesh Ojha <quic_mojha@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <1673511014-4721-1-git-send-email-quic_mojha@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1673511014-4721-1-git-send-email-quic_mojha@quicinc.com>
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

On 12/01/2023 09:10, Mukesh Ojha wrote:
> Document the qcom,tcsr-sm8450 compatible.
> 
> Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---
> Change in v2:
>   - Considering here it as v2 as this patch came out from comment
>     made on its v1 https://lore.kernel.org/lkml/c5dc8042-717b-22eb-79f6-d18ab10d6685@linaro.org/
> 
>  Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
> index adcae6c..bdf7ab4 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
> +++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
> @@ -37,6 +37,7 @@ properties:
>            - qcom,tcsr-msm8960
>            - qcom,tcsr-msm8974
>            - qcom,tcsr-msm8996
> +          - qcom,tcsr-sm8450

Don't use deprecated name here, you can see there already new devices
with proper naming, so sm8450-tcsr


Best regards,
Krzysztof

