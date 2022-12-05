Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2633642C03
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 16:40:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230280AbiLEPk3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 10:40:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230228AbiLEPk2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 10:40:28 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74089B4
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 07:40:27 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id p36so14830854lfa.12
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 07:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PhKkA5tycsJ0qFdcUE4QASrD53Au+/QL7B6lmd+GfDg=;
        b=soN1btbOUk5Z2fCDx3oXoEaXWdvTv1pLMt4eIlDrIREH/H985Y4hPdpCV2Qv4LEsjc
         oJRKzXPbzAqAbkJv4aLqv65EUbaeNMI68oFJo9afTy9L8178aoMHMVuJ2WiW4xYEzx3+
         IIPdg6LX3Mb+jZVV39+Voym3NaLX8h7wGlR1rwCUgvDaF7cRAGwH5yLwQYjCp3ciXW5l
         9fkVrnlxOd5zaPC3RTH5zGQK7jmT29dAs2SC2q4K4b3WthWB/+ZhzeA50/v66WrxQHWl
         FReFtBsLz4QwRZjqHzPg0zHCfGiYyC6G8VzHDryeyMUtiHmalV4ARwF/X3uYjatf/nwo
         bdwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PhKkA5tycsJ0qFdcUE4QASrD53Au+/QL7B6lmd+GfDg=;
        b=7sSmAHS+etexqyz6IpRj+DfImxgusGv8LBd4MZgniX9MCJ2ei2betPYdHSwMcT3Qwh
         QOSqn2ABuMbTzjtqRY0m/ChDohZffu+8qnlj/cyY5lm6UbcVjeIa5Vfuv8a0l6vj5T+n
         q/z7iUe0tX0AYjbouqyWmWyCI7vlLwICvEhT4DvW/IrlP7kJ3vBxgtSOEwiJnQRsA1I9
         lHbG+H5hbTor6wUml0qu8b5b/nvF2rpbWhyMycoarMxRMoEs6xAYcLNHX46u2El1kqY4
         PaRCEvFRQw0V4RZPLByL4NxgWQZnoabKynVzmE/zc1zn1JCqBW7WFCZbzSaTokvvyUTa
         yxZA==
X-Gm-Message-State: ANoB5pmn4KuJm0cRN2Z65hF4XqzvAtbb8nPLwzGKtEFV0TfYBSdmmRGn
        mX6rW4j4y5ec7kGt3Q2M+NZbUA==
X-Google-Smtp-Source: AA0mqf7f4CglkXZbEQxzrk+7oSKBBV1pglDSoHu4JmLPzgvKJt/bPMeqZaK8MVWgAln1AgCLEGiW7g==
X-Received: by 2002:a05:6512:1593:b0:4af:b4ac:c2d6 with SMTP id bp19-20020a056512159300b004afb4acc2d6mr6874873lfb.219.1670254825832;
        Mon, 05 Dec 2022 07:40:25 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id e11-20020a19674b000000b0049adf925d00sm2159502lfj.1.2022.12.05.07.40.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 07:40:25 -0800 (PST)
Message-ID: <49299fbb-e6e6-a95b-ac34-e81c71607356@linaro.org>
Date:   Mon, 5 Dec 2022 16:40:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 2/5] arm64: dts: qcom: sm8450: add display hardware
 devices
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
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20221123210720.3593671-1-dmitry.baryshkov@linaro.org>
 <20221123210720.3593671-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221123210720.3593671-3-dmitry.baryshkov@linaro.org>
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

On 23/11/2022 22:07, Dmitry Baryshkov wrote:
> Add devices tree nodes describing display hardware on SM8450:
> - Display Clock Controller
> - MDSS
> - MDP
> - two DSI controllers and DSI PHYs
> 
> This does not provide support for DP controllers present on SM8450.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 283 ++++++++++++++++++++++++++-
>  1 file changed, 279 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 8cc9f62f7645..31fcf3908b2a 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2394,6 +2394,281 @@ camcc: clock-controller@ade0000 {
>  			status = "disabled";
>  		};
>  
> +		mdss: mdss@ae00000 {

According to:
https://lore.kernel.org/all/dfd2d1b5-4d1b-2381-ad11-5ea9e6654a55@linaro.org/

this should be "display-subsystem"

Best regards,
Krzysztof

