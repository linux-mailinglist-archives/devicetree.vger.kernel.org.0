Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6454967E54C
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 13:34:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233476AbjA0MeF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 07:34:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233288AbjA0MeE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 07:34:04 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D02747EFF
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:34:03 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id q8so3335343wmo.5
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gkkZWm0jYbAzVOnv75XVFVpaSeVft9HvU2ScU/AepsU=;
        b=k6DtoBkkWQ+VKkR925OP60Ow6nAWC9Su+jNMeYPJyLL+L5/wosMlLGEb82S51fkfSq
         zyyx16z7Tv2m3eiK4sWoBzVBMd8ERfg/aLU4JhtDgjIjTKdNFLGhmZ+2vZTh/gaMJtpE
         G8u+d2x8p8DN3pt6V0hVTbQ/tpOo62seP4JwSZyk33zeCKc4lBOCKNYi1zfBZrkWhHqL
         /HJwtNSlGZYbHKsAbA5j4Wyu6ZL0rwo0qU3W6KbsK6WtrFQLd1whgD5Zzr2RCPPIyHeb
         cAk3CKYIX32eulJXfS330bmChr2irCoU+Sa3Xg/VP/oyYjCLPHoMsQrhLnIMA/Vwrn9W
         VHhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gkkZWm0jYbAzVOnv75XVFVpaSeVft9HvU2ScU/AepsU=;
        b=hiMYggPKvIQdM74vmfPafgLlD+F7GF5qx+FfoyBh0mr4hsdE55XMKZm28jkWWFmS4T
         6ofUwtvJ22ne7ekMwEaHkU3wrZunknhzWuQsx6ICFoVoPmNxlPj7xRH59B+NbkNxWHWF
         MYo+5SPnYCu/1GFDzIrWWJuxnZXdTjD2oKgSYE35xYvIcN0tkoy9NHFRYUx6Do5ohEQ9
         MSs9tiFGHWHBZnsV3QiJZP/LEX9Pn6/Y8PNk5cZV4fwD2LSW8lRaKSBC1hJ2/FoXhjjN
         Fc9Md5l1zHrk6iIJO2dU5+7XoF9WJc+aKfye1ijB3Ev7uULy9LEmJTfa/laCdMASOa2w
         GkJw==
X-Gm-Message-State: AO0yUKXVoTfc2IvxSFYfxoDvejIcYDG5te3//X7XoYj5oT9PSacUStWe
        0osadZphArj5nqyvnSUArPf8sg==
X-Google-Smtp-Source: AK7set9syTDWnXModInkzSuSIyW5gANkugJsvCMPlZofBuFLNZbDcKgQgsf9aTY2EMbgJHQmE9bfng==
X-Received: by 2002:a05:600c:b56:b0:3dc:353c:8b34 with SMTP id k22-20020a05600c0b5600b003dc353c8b34mr2357486wmr.7.1674822841774;
        Fri, 27 Jan 2023 04:34:01 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id g9-20020a05600c308900b003db0dbbea53sm4016008wmn.30.2023.01.27.04.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 04:34:01 -0800 (PST)
Date:   Fri, 27 Jan 2023 14:34:00 +0200
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8550: add specific SMMU compatible
Message-ID: <Y9PEuMD6TIHghzTo@linaro.org>
References: <20230127115513.268843-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230127115513.268843-1-krzysztof.kozlowski@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-01-27 12:55:13, Krzysztof Kozlowski wrote:
> Generic SMMU compatibles are not allowed alone and we expect specific
> one.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
> 
> Compatible is documented here:
> https://lore.kernel.org/all/20221116114001.2669003-1-abel.vesa@linaro.org/
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 0307b853ec4f..e385432e7a22 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3053,7 +3053,7 @@ data-pins {
>  		};
>  
>  		apps_smmu: iommu@15000000 {
> -			compatible = "qcom,smmu-500", "arm,mmu-500";
> +			compatible = "qcom,sm8550-smmu-500", "qcom,smmu-500", "arm,mmu-500";
>  			reg = <0 0x15000000 0 0x100000>;
>  			#iommu-cells = <2>;
>  			#global-interrupts = <1>;
> -- 
> 2.34.1
> 
