Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE2B563A6F2
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 12:18:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231228AbiK1LSI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 06:18:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231225AbiK1LRw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 06:17:52 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EAE2635E
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 03:17:50 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id p8so16786357lfu.11
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 03:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tBmx5gM1HUSGFAXNgKvH4/Z5Wwc3nSXAxC+/qB18ydM=;
        b=d8P29DNgM6zk6DvP7foPnQjFiGLcCG93PrYsmwjoD8PgpUNBVhDBgt0/jB4jfO5EqJ
         zwd5pAIcXybs3emROmpUpWQa4JcAKQSq6m5VejGtL7+pS/AcM6C7HlCmgqBx4X+hdpI6
         NccIZqwOZln0jwHauWRITUW7BT1RwqzurcDPm+3RPqxlnoilCG2lMwc+2PHcjyQ8PIs3
         c3zGNfyCh0oI/aYqSzENtxM4vSeOC9F+AiZo3cdMbDzS6ccdXf4aIhMtbfJvWl6zOdp2
         LI4mxl4i0qUpKXtOZ/fgSKHIkicqaXcp7AlonvlUHTorWvcbLk2UOPLIc4nKCwo/GxJX
         RilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tBmx5gM1HUSGFAXNgKvH4/Z5Wwc3nSXAxC+/qB18ydM=;
        b=oRu2y7/6r9K1vKaGuQGowSBtiZthjZDuN8ICRE/+dLdeAyoTvaJ27qyHA4OPuYAXu5
         9YXWZh0k15BBf10RLAisfIGnjqRgr5wKC86f0vYx+6rbAYm6eaaRe+nlXzCZJGvbtPq5
         9YRmKSrhKGZDXZhl1oawEEUVc4y9SOJuS2BWz3cehAsdHCiYnVGoP/vsgBN4FMHdykgB
         zaCILxKkhccZEpPnIQSKueMudjiajeOdABmR/NZV7ugMVntd/iDRm7mJ/CB989uXex5I
         5etttEOVgjzflaYO9zDVIX46f0zcjeM4Kei/BhDDDvCKz/owFgewrizhzr6ulfEB4xCz
         vjkA==
X-Gm-Message-State: ANoB5pnvIuFxMzrfF9VBMZoT20e0JL9xxsBtTtJfVF7vU9iGy+nlSr0p
        i/3BKxw9RDfGB8BskW1wVaeVeg==
X-Google-Smtp-Source: AA0mqf58DjNRcqLx332BX2KbrAmcyHS1EHrpnKwFkJJpWTuwx5iOEtDmizl4E6ASsmL2TwdG887eYg==
X-Received: by 2002:ac2:4189:0:b0:4b1:2447:6971 with SMTP id z9-20020ac24189000000b004b124476971mr11783136lfh.83.1669634268446;
        Mon, 28 Nov 2022 03:17:48 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h16-20020ac250d0000000b00498fe38ea0fsm1691138lfm.174.2022.11.28.03.17.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 03:17:47 -0800 (PST)
Message-ID: <f244d3c1-e52d-8226-0d6f-58f6b5503f47@linaro.org>
Date:   Mon, 28 Nov 2022 12:17:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v5 04/10] dt-bindings: display/msm: add support for the
 display on SM8450
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20221123210403.3593366-1-dmitry.baryshkov@linaro.org>
 <20221123210403.3593366-5-dmitry.baryshkov@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221123210403.3593366-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2022 22:03, Dmitry Baryshkov wrote:
> Add DPU and MDSS schemas to describe MDSS and DPU blocks on the Qualcomm
> SM8450 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/display/msm/qcom,sm8450-dpu.yaml | 139 +++++++
>  .../display/msm/qcom,sm8450-mdss.yaml         | 343 ++++++++++++++++++
>  2 files changed, 482 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8450-dpu.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8450-mdss.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

