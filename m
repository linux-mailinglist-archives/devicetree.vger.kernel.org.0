Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB4FA34DF27
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 05:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230501AbhC3DUW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 23:20:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230347AbhC3DTt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 23:19:49 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AE55C061762
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 20:19:38 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id g8-20020a9d6c480000b02901b65ca2432cso14303285otq.3
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 20:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=vWMcwuXDEaOZKZXHrlr3QkkmeaCK7d19Zw1sSbsXamU=;
        b=iIcw4Em6TJlBVVKIcfj5QDSHtwSU2JpH4Flqmgc65pLlbwZ1TPgxQYivXJ5GAajbjB
         NwQflMsCdsCURjEqoYdLIgTnlp6EkYiJhvfbWmSrZCl7AkP/+89j18Dx9gb5E7sIXxJd
         pa8/j9YQM/4VuGDDWUFNiPLlL/SblndGa1OMdekP3rMNTOqLQF/yVe0G+/M9X2UwIpVq
         GhwI2rbGbvlU869yveYuM0AsDqynrQtAX4u0799JkPhQTPs4iD4bcAqObzgaQOhZM04d
         r9PP1TXpxSaLTe9RqenPlyhng9vmq67/SreMOBfXm9TD2/JYjHXFnjh19Bwfoy+a3I+6
         /cSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vWMcwuXDEaOZKZXHrlr3QkkmeaCK7d19Zw1sSbsXamU=;
        b=BjUbTdTdAPL89M4OlIwNP0mlp5usHZ6GYihhIEWbYroDOVmqjCNju5B1FM4socHCaf
         2PPs7fnrCBfGVJ3MpIY6kY9Eii1kKcDFqoVETUQPncYFcSb8X627w18hr+1osEFAIhWd
         Qx+SrFnqkLwCgjKlDVqUjfhZ3kIxhZ8YhCvnZKzS3rv97OGfmzUS4p3FY8xQMvt3BFJ7
         iDomSKmsqsGiTd8kFh6DgjN4j1Ixzsb6/qC5LDN8RFdwtvwIl9umBRmdFB1SV/VGCNH0
         cY55gQAnc1uqn5YU6QDUxF9TDZ8G/F6yRAtPmwcqXWRO2KYIlGMqtdgF2OqE9BbNXt+1
         GfZw==
X-Gm-Message-State: AOAM5330vRZ2POfFq3iD8u88+aQR43hyi+DXBCY6nJnMbBc+Xvxf0abZ
        fGhtg/sm7o4MOvN8OmqXtA9hLWJm49nxTw==
X-Google-Smtp-Source: ABdhPJwy+FkuqOTsb99byi8EQNHEvnvxx2x9E+x/5qazQK1aiu8eRuAU9E7X3yQdMjNMqdnnVzmdpw==
X-Received: by 2002:a05:6830:243c:: with SMTP id k28mr24450959ots.306.1617074377672;
        Mon, 29 Mar 2021 20:19:37 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id v23sm4975200ots.63.2021.03.29.20.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 20:19:37 -0700 (PDT)
Date:   Mon, 29 Mar 2021 22:19:35 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Clark <robdclark@gmail.com>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>, Sean Paul <sean@poorly.run>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 3/4] drm/msm: add compatibles for sm8150/sm8250 display
Message-ID: <YGKYx1AcjSBIUwqr@builder.lan>
References: <20210329120051.3401567-1-dmitry.baryshkov@linaro.org>
 <20210329120051.3401567-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210329120051.3401567-4-dmitry.baryshkov@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 29 Mar 07:00 CDT 2021, Dmitry Baryshkov wrote:

> From: Jonathan Marek <jonathan@marek.ca>
> 
> The driver already has support for sm8150/sm8250, but the compatibles were
> never added.
> 
> Also inverse the non-mdp4 condition in add_display_components() to avoid
> having to check every new compatible in the condition.
> 
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Rob, will you pick patch 2 and 3 for 5.13?

I've picked patch 1 and would like to pick patch 4 through my tree...

Regards,
Bjorn

> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 2 ++
>  drivers/gpu/drm/msm/msm_drv.c           | 6 +++---
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> index 5a8e3e1fc48c..fff12a4c8bfc 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> @@ -1219,6 +1219,8 @@ static const struct dev_pm_ops dpu_pm_ops = {
>  static const struct of_device_id dpu_dt_match[] = {
>  	{ .compatible = "qcom,sdm845-dpu", },
>  	{ .compatible = "qcom,sc7180-dpu", },
> +	{ .compatible = "qcom,sm8150-dpu", },
> +	{ .compatible = "qcom,sm8250-dpu", },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dpu_dt_match);
> diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
> index 94525ac76d4e..928f13d4bfbc 100644
> --- a/drivers/gpu/drm/msm/msm_drv.c
> +++ b/drivers/gpu/drm/msm/msm_drv.c
> @@ -1185,9 +1185,7 @@ static int add_display_components(struct device *dev,
>  	 * Populate the children devices, find the MDP5/DPU node, and then add
>  	 * the interfaces to our components list.
>  	 */
> -	if (of_device_is_compatible(dev->of_node, "qcom,mdss") ||
> -	    of_device_is_compatible(dev->of_node, "qcom,sdm845-mdss") ||
> -	    of_device_is_compatible(dev->of_node, "qcom,sc7180-mdss")) {
> +	if (!of_device_is_compatible(dev->of_node, "qcom,mdp4")) {
>  		ret = of_platform_populate(dev->of_node, NULL, NULL, dev);
>  		if (ret) {
>  			DRM_DEV_ERROR(dev, "failed to populate children devices\n");
> @@ -1320,6 +1318,8 @@ static const struct of_device_id dt_match[] = {
>  	{ .compatible = "qcom,mdss", .data = (void *)KMS_MDP5 },
>  	{ .compatible = "qcom,sdm845-mdss", .data = (void *)KMS_DPU },
>  	{ .compatible = "qcom,sc7180-mdss", .data = (void *)KMS_DPU },
> +	{ .compatible = "qcom,sm8150-mdss", .data = (void *)KMS_DPU },
> +	{ .compatible = "qcom,sm8250-mdss", .data = (void *)KMS_DPU },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dt_match);
> -- 
> 2.30.2
> 
