Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 193C16BC651
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 07:50:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229794AbjCPGuj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 02:50:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbjCPGui (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 02:50:38 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2821C5A6F4
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 23:50:36 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id w9so3608753edc.3
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 23:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678949434;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FSmqR42JI8zcqdZRW9LGFpXnT9CY9HrPjFJaVqu4ZgY=;
        b=LtSG7S1Is6GOySgnfXlDFq9WmlpDcL15eYIvGJGE5wawcnUtwzMePaKmAhMuLgEhUs
         xTJTs+bkX4okGEn38efRN2rttgtE4dB+4IsT4Ilvtd1XhKAc6NzWUyoWa3WqXvoL7u2T
         ggWDnwAJN0nv2Blhx7wMVb7yHDJnjqMnbjcCCh46Ezk8oV0RRn56Sk1eQOIxncoCALCT
         T/AHI0c1h3r4Kgd1Eqtqbds7fp/dpooQMq2CMoxqPxH6aUv8XVPKbT47IrkpLhjEySj2
         9VIqK63JW8wx7Fc61X7ttVzGNgKM6hkgeC53bC3iIqBQY63I047h4js0OPc8tQoaa5yE
         A56w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678949434;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FSmqR42JI8zcqdZRW9LGFpXnT9CY9HrPjFJaVqu4ZgY=;
        b=pUS1//RU6v6E14ddS+gWkWWC5mfDstkbf/ahq3P2wICnufu705UZdHhC3NKX6rRaEs
         TtjSLbanBcG6WrbnClVfo6T4XwlqnYAbGkYfXUi0eJCmi+HLU/hTkf/QZZja/pJ1cMeI
         7FAnOSta35kkXyztoTNCWC6xkFwMCuHSywoFiPK3icifvPuq4a8BKjsLSQUO8mQgr3BO
         LY+hjo1BxshsA71tFZQ1LvdjVnHzqv5deACgsWIT4unfRmMRyV/lBis2NJUHFpfG6/sT
         EvE5p+3GlfMhQ8Nat0WdXq5oPWVJx/FTZ//Ta14CH0tlxFhlT4IaMXLQAjwu4vf9/O1u
         hJLg==
X-Gm-Message-State: AO0yUKXNTN5E6b3j2jO1Hq3xXIe/lnGP6brGCxSUPu1qKph6EYPfvZSy
        SHM5GK1qWhbF5EJp4WUvkEo0Ow==
X-Google-Smtp-Source: AK7set+PiE/udqoIZYh3NUnUhUQW7Ogs6QpL8HNi52GXZ5TS0E9frxcNkNS0kfUthl780jLDuZxS7g==
X-Received: by 2002:a17:906:c9ce:b0:889:58bd:86f1 with SMTP id hk14-20020a170906c9ce00b0088958bd86f1mr8988609ejb.14.1678949434663;
        Wed, 15 Mar 2023 23:50:34 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id w13-20020a1709060a0d00b0092707833d08sm3388745ejf.70.2023.03.15.23.50.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 23:50:34 -0700 (PDT)
Message-ID: <1f77b57b-e3dc-b44e-0afb-ac1b7c4cac83@linaro.org>
Date:   Thu, 16 Mar 2023 07:50:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 08/10] dt-bindings: display/msm: dsi-controller-main:
 Fix deprecated compatible
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>
References: <20230307-topic-dsi_qcm-v4-0-54b4898189cb@linaro.org>
 <20230307-topic-dsi_qcm-v4-8-54b4898189cb@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230307-topic-dsi_qcm-v4-8-54b4898189cb@linaro.org>
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

On 14/03/2023 13:13, Konrad Dybcio wrote:
> The point of the previous cleanup was to disallow "qcom,mdss-dsi-ctrl"
> alone. This however didn't quite work out and the property became
> undocumented instead of deprecated. Fix that.
> 
> Fixes: 0c0f65c6dd44 ("dt-bindings: msm: dsi-controller-main: Add compatible strings for every current SoC")
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> index 2494817c1bd6..94f4cdf88c95 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> @@ -34,7 +34,7 @@ properties:
>        - items:

This patch should drop the items - you have only one item, so no need
for list.

>            - enum:
>                - qcom,dsi-ctrl-6g-qcm2290
> -          - const: qcom,mdss-dsi-ctrl
> +              - qcom,mdss-dsi-ctrl # This should always come with an SoC-specific compatible
>          deprecated: true


Best regards,
Krzysztof

