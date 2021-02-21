Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AA47320C9D
	for <lists+devicetree@lfdr.de>; Sun, 21 Feb 2021 19:33:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230190AbhBUSdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Feb 2021 13:33:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230187AbhBUSdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Feb 2021 13:33:15 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E1CDC061786
        for <devicetree@vger.kernel.org>; Sun, 21 Feb 2021 10:32:29 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id o16so47123154ljj.11
        for <devicetree@vger.kernel.org>; Sun, 21 Feb 2021 10:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KnNvc8EPgAx6SFv/2GAEQjKe2GV3xaTl29BVLyaHG1A=;
        b=sPxaFy2teHxek9ZwAYyQLq4BAN2yriXneA6XqSIUakBHus4R2fWf2VAx+DpiKVqcOg
         BYWjVm6Dq4AJwskJjhqMGg+jDYvGQl0nIe44dAg7ujBRMtGHXC5+V+mo7ba/1xKwpkZg
         LN7wi6imAENmzxuy7pNMHTP551UtRy+ZP00YxUo1/TIasZJ1kT6im4w6zET+N7+Q7kVS
         PqgeEb56Qa6rFBPrx6Ypai1JWoZIDUR5WhOROfG2IP0mXaSR9CM2l8+E7vdWzox9c/hV
         4ht3Gb2snTnVKCbD34Yhzs779GijQcWDvOmgHhTZP48vJ+58EQDeatLNx1UNVyXZInk6
         tNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KnNvc8EPgAx6SFv/2GAEQjKe2GV3xaTl29BVLyaHG1A=;
        b=SzGa0NxA8F2lIDP3wOcl5tZp5LuICFG6lld6r3Ou5ifNOuab5I8c0ZlDMo6k9mNEEY
         p7ghvCl7PQ+02XGjfBI54XSrOwSeDUpK/7wR2v+7/kC19iIwWBXMp2O2mReodPQEQCCu
         ZX2q6AXSz2HiM7gKqyeU/arS4NmLPirGmXxkw/3dUr4adMlfDsjULjfz/HGDJdV90h/m
         s3KXbNfcpFJ7xtfCjdNbPMFHWsy7JkwB/jZi9Z/enqTva/CnfDnM01gcn4ah0MXgjQ8a
         cwbkVexW8rBMTwdnohXISvfALmYsDkSXv6j9NI/IGi/ouC6vaF+sECAdK5QGDIfaSZ0Z
         ixHg==
X-Gm-Message-State: AOAM531kd+0kkJdup/lNYKRu3N3WziNcgJD0qhxdJNmk8yaowCPt6nZd
        DPVekZY50XMaviodytN66zU53w==
X-Google-Smtp-Source: ABdhPJyO9wGxLPfW83lUqa6KMxZJgDCDIcYL2eNHDXQJVCxLHga07ApWXios5psvXhrtUroVBJr6Gw==
X-Received: by 2002:a2e:9e17:: with SMTP id e23mr12317090ljk.501.1613932347509;
        Sun, 21 Feb 2021 10:32:27 -0800 (PST)
Received: from [192.168.118.216] ([85.249.43.69])
        by smtp.gmail.com with ESMTPSA id t7sm1635563lfl.141.2021.02.21.10.32.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Feb 2021 10:32:27 -0800 (PST)
Subject: Re: [PATCH v5 13/22] media: camss: Enable SDM845
To:     Robert Foss <robert.foss@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, todor.too@gmail.com,
        mchehab@kernel.org, robh+dt@kernel.org,
        angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Nicolas Boichat <drinkcat@chromium.org>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
References: <20210217112122.424236-1-robert.foss@linaro.org>
 <20210217112122.424236-14-robert.foss@linaro.org>
From:   Andrey Konovalov <andrey.konovalov@linaro.org>
Message-ID: <b13ef7b5-9830-3a25-c8fc-3fb71bf74381@linaro.org>
Date:   Sun, 21 Feb 2021 21:32:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210217112122.424236-14-robert.foss@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Robert,

Thank you for your patch!

Reviewed-by: Andrey Konovalov <andrey.konovalov@linaro.org>

Thanks,
Andrey

On 17.02.2021 14:21, Robert Foss wrote:
> Enable support for SDM845 based Titan 170 ISPs.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 17 +++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h |  6 ++++--
>   2 files changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 3c45537b2cfb..3bd3153b7905 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -894,6 +894,12 @@ static int camss_init_subdevices(struct camss *camss)
>   		csid_res = csid_res_660;
>   		ispif_res = &ispif_res_660;
>   		vfe_res = vfe_res_660;
> +	}  else if (camss->version == CAMSS_845) {
> +		csiphy_res = csiphy_res_845;
> +		csid_res = csid_res_845;
> +		/* Titan VFEs don't have an ISPIF  */
> +		ispif_res = NULL;
> +		vfe_res = vfe_res_845;
>   	} else {
>   		return -EINVAL;
>   	}
> @@ -1196,6 +1202,8 @@ static int camss_configure_pd(struct camss *camss)
>   	if (camss->version == CAMSS_8x96 ||
>   	    camss->version == CAMSS_660)
>   		nbr_pm_domains = PM_DOMAIN_CAMSS_COUNT;
> +	else if (camss->version == CAMSS_845)
> +		nbr_pm_domains = PM_DOMAIN_TITAN_COUNT;
>   
>   	for (i = 0; i < nbr_pm_domains; i++) {
>   		camss->genpd[i] = dev_pm_domain_attach_by_id(camss->dev, i);
> @@ -1264,6 +1272,12 @@ static int camss_probe(struct platform_device *pdev)
>   		camss->csiphy_num = 3;
>   		camss->csid_num = 4;
>   		camss->vfe_num = 2;
> +	} else if (of_device_is_compatible(dev->of_node,
> +					   "qcom,sdm845-camss")) {
> +		camss->version = CAMSS_845;
> +		camss->csiphy_num = 4;
> +		camss->csid_num = 3;
> +		camss->vfe_num = 3;
>   	} else {
>   		ret = -EINVAL;
>   		goto err_free;
> @@ -1395,6 +1409,8 @@ void camss_delete(struct camss *camss)
>   	if (camss->version == CAMSS_8x96 ||
>   	    camss->version == CAMSS_660)
>   		nbr_pm_domains = PM_DOMAIN_CAMSS_COUNT;
> +	else if (camss->version == CAMSS_845)
> +		nbr_pm_domains = PM_DOMAIN_TITAN_COUNT;
>   
>   	for (i = 0; i < nbr_pm_domains; i++) {
>   		device_link_del(camss->genpd_link[i]);
> @@ -1428,6 +1444,7 @@ static const struct of_device_id camss_dt_match[] = {
>   	{ .compatible = "qcom,msm8916-camss" },
>   	{ .compatible = "qcom,msm8996-camss" },
>   	{ .compatible = "qcom,sdm660-camss" },
> +	{ .compatible = "qcom,sdm845-camss" },
>   	{ }
>   };
>   
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 7560d85b3352..2f853557ed16 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -60,6 +60,8 @@ enum pm_domain {
>   	PM_DOMAIN_VFE0 = 0,
>   	PM_DOMAIN_VFE1 = 1,
>   	PM_DOMAIN_CAMSS_COUNT = 2,	/* CAMSS series of ISPs */
> +	PM_DOMAIN_VFELITE = 2,		/* VFELITE / TOP GDSC */
> +	PM_DOMAIN_TITAN_COUNT = 3,	/* Titan series of ISPs */
>   };
>   
>   enum camss_version {
> @@ -83,8 +85,8 @@ struct camss {
>   	int vfe_num;
>   	struct vfe_device *vfe;
>   	atomic_t ref_count;
> -	struct device *genpd[PM_DOMAIN_CAMSS_COUNT];
> -	struct device_link *genpd_link[PM_DOMAIN_CAMSS_COUNT];
> +	struct device *genpd[PM_DOMAIN_TITAN_COUNT];
> +	struct device_link *genpd_link[PM_DOMAIN_TITAN_COUNT];
>   };
>   
>   struct camss_camera_interface {
> 
