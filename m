Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C145861998D
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 15:22:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbiKDOWP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 10:22:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232178AbiKDOU6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 10:20:58 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4C3D2FC12
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 07:20:56 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id h21so3103868qtu.2
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 07:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bfe4QYAii/msXqogDnhvJDFD5ejC6/JC1TdZ0YZAnVI=;
        b=FyxE3aSUOkrzTK/QGnh5iwhxJxO5xXxYiHBPnlQynz1BLSctcEwCGCNrK6jxH+LRPN
         wi1al9drpsMVRxUoR0smZMxu2j0mE5aDRe63spjQNFBvpSYaL4yGKIkul4xq2Rugb7fZ
         V7qB0ImNu5yFaKKtsEJuh/eNL9JRTut59ys/uYhHfRd4dvXiMmVoa1rOn7plCP9oaH5d
         jkbWivYhY3PKK28TERpxgGsz5NoijL80qEi5BHDFkAD7CvnA69T6mVIPrh/qdzeSLXr4
         yAT+AOvd5JcuxdulYEJoJxCmT8saxJNVW8KLNMH1xnGGBzgKBtMyt5RaiOkaZuw/hqls
         IrcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bfe4QYAii/msXqogDnhvJDFD5ejC6/JC1TdZ0YZAnVI=;
        b=VNjY8vxeWH3TRxPYeLb8RaFgLFI6KEdp0dSeqLqJPEIKZhyrALa9bJqv/CH9r5l+E7
         qYGKZRPNZq+eU/MIsgjbzmwvWvoYynny30tbHIqDzbdQmBfM+7tX2q+80lwn49LSONeW
         a6dYX1P5D33Zmdh3wM7cnbEwQ/+XUgRjzlap/LActmmDVl2qw5kKEfpRkLSAZQflcNTZ
         uB4bowkGzE09mhST403+RGS1MKGDqtkWuOiKgCF8YihZ9PgCRpSn1omYG75NYvyo0s8j
         U9uZ1x3zw/bfDqn3kQxkS4OfZeZfAwNHzIJFrY/RSMqiVa7LgADIns9YakRCpijlD9L5
         vYSw==
X-Gm-Message-State: ACrzQf2JU2GiKgs1LqW9RJlAQeVT/EmI3A/LMDr16OpMBt9MNbGlTm9e
        i2vZ87cAvsEp2+zlNyGXxvP0QA==
X-Google-Smtp-Source: AMsMyM7CV19Vj9XYnilruJJvftU1TZeOxpARoRc6S+ODrtdXMN3RA8hrkRGI8BdB7SK5VPuSclcvsg==
X-Received: by 2002:a05:622a:1ba2:b0:39c:ed3c:6310 with SMTP id bp34-20020a05622a1ba200b0039ced3c6310mr28888623qtb.516.1667571655926;
        Fri, 04 Nov 2022 07:20:55 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id ey21-20020a05622a4c1500b003988b3d5280sm2518844qtb.70.2022.11.04.07.20.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 07:20:55 -0700 (PDT)
Message-ID: <aa1c6223-e56c-b0b3-ed74-25cdeee36fb7@linaro.org>
Date:   Fri, 4 Nov 2022 10:20:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 5/5] arm64: dts: qcom: sm8450-hdk: Enable HDMI Display
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
        freedreno@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>
References: <20221104131358.1025987-1-dmitry.baryshkov@linaro.org>
 <20221104131358.1025987-6-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104131358.1025987-6-dmitry.baryshkov@linaro.org>
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

On 04/11/2022 09:13, Dmitry Baryshkov wrote:
> From: Vinod Koul <vkoul@kernel.org>
> 
> Add the HDMI display nodes and link it to DSI. Also enable missing dispcc
> nodes
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Thank you for your patch. There is something to discuss/improve.

> +&dispcc {
> +	status = "okay";
> +};
> +
>  &dsi0 {
>  	status = "okay";
>  	vdda-supply = <&vreg_l6b_1p2>;
> +
> +	ports {
> +		port@1 {
> +			endpoint {
> +				remote-endpoint = <&lt9611_a>;
> +				data-lanes = <0 1 2 3>;
> +			};
> +		};
> +	};
> +

Drop blank line.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

