Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 860565E5BE4
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 09:10:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230011AbiIVHKd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 03:10:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbiIVHKb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 03:10:31 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE1A7B1C2
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:10:30 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id o2so13125549lfc.10
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=+UzXS09SHc8/NrA6s9IEtWZ9LL+BrDTcoGV33B1WFWs=;
        b=rldSwPkc246dYUhm7aJnPBpqe6gTN8yppc0aS2NIIHlJTDMx9BtTfru5RVrxqJutrJ
         FPMVJHO5jqCggzEDee2aVYetpt9V8CPXHPbu/wJ5sxTilSXcsA0N9FgY1Mf3aJZevnpE
         TO/SVJN/jgEf0rxNil7Yc5zCc1Wbd5NpwtC1XYPTsQqrB1j+Y/ePE+KVa9t54cNlGOEI
         yKv42dH3/EIWZVsJfI1oXEGEofo0cl6gzlMwiww/n8pIXRPZ7wpE3uNOH2jEYxDm3G6W
         IbjspM99I/oe0fcCRcS9JAxrdtqM/62/QXoHTIU5ej3gx6OGjWDbXPJWVahq0D5HyWKY
         4iYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=+UzXS09SHc8/NrA6s9IEtWZ9LL+BrDTcoGV33B1WFWs=;
        b=tRhUsaILn/RGDGI138pQZYvOtcBVMIQK3wRAd1/gCYL7mk0QHq8JfsGbu1VLIvNwl1
         PLmr14KGreCHTfV8J2sPwHfV6HBbEbWSvuVeEJcdBoW02Q6JGdS5P2Nb9Sw9hfeZlhL3
         0LDfzNr/NIGBEiqqqbc+72cZDZn23+5ct2Hh9/uTriPQTNe6ODhr3cdtAvubEE1Uyxcu
         JKd0J66szpskay1eKoRm3UpCwKy8gFQivZ+MUW4j9iNp8vleOiLFWAuYgS/z/kJt3fIf
         8+RwqWq1UoeF51o7k11X7cTOQu/GQOBVIKxLW5kOKDfqUmqEJuhCJ+ZuC1FSPgRyLKkY
         dFoQ==
X-Gm-Message-State: ACrzQf1Ce8Bhip1JKgAowkKJAlB5iJ7p/F8Fw2T9k1WVFtp1AO3Qxe18
        ZpbPoImVJvDFCLKuZPxvbWVRDw==
X-Google-Smtp-Source: AMsMyM5F7VkHhJgjVqBB1a1ONBQ5olwuUXN2RSxZX/ri2ZPBesm/WyDGH/ppzmGo8yVAuFQDj4KZmQ==
X-Received: by 2002:a05:6512:3e10:b0:498:f317:e57e with SMTP id i16-20020a0565123e1000b00498f317e57emr745349lfv.328.1663830627881;
        Thu, 22 Sep 2022 00:10:27 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c3-20020a05651221a300b0048b08e25979sm788559lft.199.2022.09.22.00.10.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:10:27 -0700 (PDT)
Message-ID: <278583ee-0607-9b4f-56ff-143d47573a47@linaro.org>
Date:   Thu, 22 Sep 2022 09:10:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v7 12/12] dt-bindings: display/msm: add support for the
 display on SM8250
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220915133742.115218-1-dmitry.baryshkov@linaro.org>
 <20220915133742.115218-13-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220915133742.115218-13-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/09/2022 15:37, Dmitry Baryshkov wrote:
> Add DPU and MDSS schemas to describe MDSS and DPU blocks on the Qualcomm
> SM8250 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/display/msm/mdss-common.yaml     |   4 +-
>  .../bindings/display/msm/qcom,sm8250-dpu.yaml |  92 ++++++++++++++++
>  .../display/msm/qcom,sm8250-mdss.yaml         | 103 ++++++++++++++++++
>  3 files changed, 197 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8250-mdss.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/mdss-common.yaml b/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
> index 2a476bd0215e..27d7242657b2 100644
> --- a/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
> @@ -27,11 +27,11 @@ properties:
>  
>    clocks:
>      minItems: 2
> -    maxItems: 3
> +    maxItems: 4
>  
>    clock-names:
>      minItems: 2
> -    maxItems: 3
> +    maxItems: 4
>  
>    interrupts:
>      maxItems: 1
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml
> new file mode 100644
> index 000000000000..9ff8a265c85f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/msm/qcom,sm8250-dpu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SM8250 Display DPU
> +
> +maintainers:
> +  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> +
> +$ref: /schemas/display/msm/dpu-common.yaml#

Same problem as in other bindings.


Best regards,
Krzysztof

