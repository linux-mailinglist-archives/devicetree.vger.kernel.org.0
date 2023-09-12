Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C32CE79CC6A
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 11:52:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232917AbjILJwB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 05:52:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232721AbjILJwB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 05:52:01 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F8EABF
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 02:51:57 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4018af1038cso59057195e9.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 02:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694512315; x=1695117115; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9Tih3O3Ydm0JsrnuMZOZV7VpgdAG6a7rdj87uDAe7g0=;
        b=tNpr2Luhv5QXYSp/F9M7dO2M8hbskn0QSsw8l2LbQktKydPYLSin9HE0VUonRLK3OW
         5Ti1a3yh+08mDLjh1DaQAIU5dypp3XMJRRMjcEz/2DWkpO1UzEoUW3/gELX8TNkS+BqB
         LkCwowwAE71ls0KkASyazT+tdGtGwNlgt/4++yl9MoYpBe1sEXb2/3MzmfV3RjJE7OIt
         FpXpjRjX9mFZELTGdqivpjn1DQtpEf1nfXLLrlFbCJ97K7xwhxLcwgYTiXCP1TJTE40x
         ySaP7R3S4AYBpiM/CnS09wbNKjSp4eLgfDwxGibTwspiEdsHwyDFvLdx7MPHGx2KiEMF
         NEgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694512315; x=1695117115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Tih3O3Ydm0JsrnuMZOZV7VpgdAG6a7rdj87uDAe7g0=;
        b=CX2294CeHfmlyhf293KtdrRGzK64MHc/Y20w0RoQKLh0E6nP+JzOXObt4MYCD0th+m
         c2uWs7sFpVVL7NjwhHoMrFFwkjVpIryGM2i8MqeX4PkSycZGoXvM4yd7sbX3R7DwoCEI
         cp7lfAXI9IMbUiGFunoI1F3kKSbUwihG/9fmTp1eLjhILNUS4vWw8CdvTvzA6KGxuL2q
         7fr3p7Urw4roRvoyVAfciwdgTbGrg2/I5NWGMuYciramaj6RDBI/qb1TC93fWu0M13Ij
         3rtm9D9V+zCggO6/KvMA6vq2Soek/59aNtn0O9UCmwvVMeno3xWaJ/NSjX9pncLSHvvy
         sQzQ==
X-Gm-Message-State: AOJu0YyOjiQu86ATOYe7TGqk5Wp6kdrIoSXtiZ2o1geZoBEYtEs0jQLc
        wSaD0Bi/fedg3qQAELkmLAzgMg==
X-Google-Smtp-Source: AGHT+IFdTQBwPmY6vpkE2SrZ8u5W2o7R+C+UzAfq4FmfjMzRK7cKvY7JleoNcmONCEyN/T0Zmn4k1A==
X-Received: by 2002:a5d:560e:0:b0:314:1ebc:6e19 with SMTP id l14-20020a5d560e000000b003141ebc6e19mr9255106wrv.64.1694512315556;
        Tue, 12 Sep 2023 02:51:55 -0700 (PDT)
Received: from linaro.org ([84.232.191.193])
        by smtp.gmail.com with ESMTPSA id r15-20020a5d694f000000b003143c6e09ccsm12329116wrw.16.2023.09.12.02.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 02:51:55 -0700 (PDT)
Date:   Tue, 12 Sep 2023 12:51:53 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     David Heidelberg <david@ixit.cz>
Cc:     cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sdm845: Fix PSCI power domain
 names
Message-ID: <ZQA0uS9ZXtzUY3IG@linaro.org>
References: <20230912071205.11502-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230912071205.11502-1-david@ixit.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-09-12 12:42:03, David Heidelberg wrote:
> The original commit hasn't been updated according to
> refactoring done in sdm845.dtsi.
> 
> Fixes: a1ade6cac5a2 ("arm64: dts: qcom: sdm845: Switch PSCI cpu idle states from PC to OSI")
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
> v2:
>  - removed power-domains from apps_rsc
> 
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> index 50934d4ab3bc..e0ee91225eec 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> @@ -144,15 +144,15 @@ panel_in_edp: endpoint {
>  };
>  
>  &psci {
> -	/delete-node/ cpu0;
> -	/delete-node/ cpu1;
> -	/delete-node/ cpu2;
> -	/delete-node/ cpu3;
> -	/delete-node/ cpu4;
> -	/delete-node/ cpu5;
> -	/delete-node/ cpu6;
> -	/delete-node/ cpu7;
> -	/delete-node/ cpu-cluster0;
> +	/delete-node/ power-domain-cpu0;
> +	/delete-node/ power-domain-cpu1;
> +	/delete-node/ power-domain-cpu2;
> +	/delete-node/ power-domain-cpu3;
> +	/delete-node/ power-domain-cpu4;
> +	/delete-node/ power-domain-cpu5;
> +	/delete-node/ power-domain-cpu6;
> +	/delete-node/ power-domain-cpu7;
> +	/delete-node/ power-domain-cluster;
>  };
>  
>  &cpus {
> @@ -338,6 +338,8 @@ flash@0 {
>  
>  
>  &apps_rsc {
> +	/delete-property/ power-domains;
> +
>  	regulators-0 {
>  		compatible = "qcom,pm8998-rpmh-regulators";
>  		qcom,pmic-id = "a";
> -- 
> 2.40.1
> 
