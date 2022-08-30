Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD99F5A5FCC
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 11:50:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229551AbiH3JuK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 05:50:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbiH3JuJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 05:50:09 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5464A3CBC9
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 02:50:08 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id w8so5706453lft.12
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 02:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=2v5gr3EuoaAEuSb9CcBVwZKMWyYj0Ef79p2UK+9bBKo=;
        b=KF2dX+CvLFpRg9J23ANVR7KCb4VULoxeWuboROEmuS7MhUltPim3swe5eFY9EmBpxZ
         CmS3/XYpC+5Vd15RThF9gGCMveLEURCrW2q5qY+ZnUgD/k+ZUMzALZ1OKXI/90dyH+cb
         uVuF1B0/DbUvoN22Z9pmI7uMaVnp0bY1sDDPNU8c8FWVBoSaRlMWuLdK80EPYRdw6nr4
         +DQE5EEPiMSrseYy/k8y3aDwTrktBJ4vLxxkslTyJ4WChOMaAGED8KySJ5ugLwO6+iPT
         W37V+J/WDKT3vO8z4nn77WnDKPSbQ9eGpSQ2fwr4JZt6sTI/7hcDdGW+QM3rLZx8m95j
         J5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=2v5gr3EuoaAEuSb9CcBVwZKMWyYj0Ef79p2UK+9bBKo=;
        b=Tldh6VleV9SS9KkDWQjtWdpvktADL7PKTTbqwhySCL3t6V7zvFxbQyg3MftX73uJJb
         4/Lu3X1m2tbIGk4UERkSTJuHWmGHBBbzJ0q5LurbquVMFI9Z0oLzjqeFaaCG+yjUfEZg
         aMINAEHtp/YndqPY1lttUfdTcgEGKELQMxLx2NK5KLAQz3mt3hliNGY8SGZUxY2N3znF
         8MW1EuTGKZ7YtYlEi5/3u70R89EIAoGqmyPlZTdblg+HrOZvjw8ASawLafvhBDgHiXM3
         rGvWygDl5dAhps+VJoQ00Bte8eMW7Wf+Jd8u9ojKOgeNwZT1bznnT4Z8gVsyQP/YwsGj
         EXiw==
X-Gm-Message-State: ACgBeo1bLgGYctJKkTO9DHodat0eVSQ4xK+5piKF6J9ad+eY8PaJaIjM
        tvmvSTTKWUqf029KDNfpQgu/tA==
X-Google-Smtp-Source: AA6agR6TpZaAj9tXPHMAn+/T/7/VYkwQ6zc3UCxUpGnbbDE1QWyw8vznJKQEwWQym5CGS+TYrqCY0g==
X-Received: by 2002:a05:6512:3409:b0:48a:ef20:ddb with SMTP id i9-20020a056512340900b0048aef200ddbmr8369276lfr.597.1661853006723;
        Tue, 30 Aug 2022 02:50:06 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id u15-20020ac258cf000000b004917a30c82bsm1555014lfo.153.2022.08.30.02.50.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 02:50:06 -0700 (PDT)
Message-ID: <4dfbf55b-744d-b0b6-0afd-530a45becba0@linaro.org>
Date:   Tue, 30 Aug 2022 12:50:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] arm64: tegra: Add PWM controllers on Tegra234
Content-Language: en-US
To:     Sandipan Patra <spatra@nvidia.com>, thierry.reding@gmail.com,
        jonathanh@nvidia.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     bbasu@nvidia.com, kyarlagadda@nvidia.com
References: <20220829114432.19566-1-spatra@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220829114432.19566-1-spatra@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/08/2022 14:44, Sandipan Patra wrote:
> Tegra234 has eight single-channel PWM controllers, one of them in the
> AON block.
> 
> Signed-off-by: Sandipan Patra <spatra@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra234.dtsi | 84 ++++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> index 81a0f599685f..c2dc651f0842 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> @@ -840,6 +840,90 @@
>  			#pwm-cells = <2>;
>  		};
>  
> +		pwm2: pwm@3290000 {
> +			compatible = "nvidia,tegra194-pwm",
> +				     "nvidia,tegra186-pwm";

This does not match bindings. Either DTS or bindings need to be fixed.

Best regards,
Krzysztof
