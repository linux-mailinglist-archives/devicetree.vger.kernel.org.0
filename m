Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2FEA6134D21
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 21:24:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726560AbgAHUYW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 15:24:22 -0500
Received: from mail-pg1-f193.google.com ([209.85.215.193]:41023 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726307AbgAHUYW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 15:24:22 -0500
Received: by mail-pg1-f193.google.com with SMTP id x8so2088185pgk.8
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 12:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UIXqgaiVWae8Bhi+dC+q5rSp1vgGUZgQyrqPawYppjo=;
        b=V7BfQX1BvUdYAxjWvcUf0XpDhT5nkjUkA7/08jlIQRhx+EBJ7vNuiDz6uNW55ElOpD
         hsXEXbULovv6CtYsUmmP6cBFmWd6MywDjCJSYYeSc8ucQtBommmqdgUbP6EJ6zN+e1eP
         dtZfTyZo4b40dD/x8Wkw0t+Dicv6+qPrkDRiqVXQqL1rmT4sV/U77jQgOXrxyZP5vDfp
         4q5GRwgZS5ACG6mznYllo0kxC96dCRgRlbhgId72HAuWs2GYQim0s3NTfCVKOHLLC0K8
         LjfoRs4N9OgE7vdhs5A0MOWe13w9B3OJN7hy28OuVnrgbcmXEyDz5l5FySrOn+8tbCBQ
         CqLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UIXqgaiVWae8Bhi+dC+q5rSp1vgGUZgQyrqPawYppjo=;
        b=JSuvS3Rw2TrIyQ+7Ghkt4W+pSNneZF1do6Yyzm6hvMRupUlrZ79WlQHNfPoqlKTvXM
         an5Z1PM2sp77vtgXL/R8V3Gf3clfEjo+vYffQVxMBYUSXmMLSyoRNZg2IgmMt4HvTkhI
         FhrNpZw2cspt9wxQV2k3VT6UibFsp9X93grvUiLXdcMJCaSNEI+IMjTwmoNP0UKjzLTB
         6iGExBOZQIO6Fehm+KwYCeEU3uspS9fY9TzBPR+VptLRED84Ys1pt8W+cgHfRU+a0iv5
         bS8IDrL9IcDJLrCI/X7KpVCBueQltHtnQUZ7jYNqwjZEqTkYqRZyfxg6Aa8Xf+D8C4YA
         nlJA==
X-Gm-Message-State: APjAAAW+TUGKArShoYl4jCUAW2cuCRmWw/H66wAyiH4xJGL3sXQuWKdv
        oQtIvRyfEm6YeSIdEsBmjWEYiQ==
X-Google-Smtp-Source: APXvYqx2eKy9DIhvgEVT2MvULvpoa3Atkfrm2Z7BVw2iAsxFD2KZjXe9EH7giHcTvLfHMGKdOcqaGA==
X-Received: by 2002:a63:1f0c:: with SMTP id f12mr7346558pgf.247.1578515061913;
        Wed, 08 Jan 2020 12:24:21 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
        by smtp.gmail.com with ESMTPSA id b98sm135319pjc.16.2020.01.08.12.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 12:24:21 -0800 (PST)
Date:   Wed, 8 Jan 2020 13:24:18 -0700
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Ohad Ben-Cohen <ohad@wizery.com>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] remoteproc: qcom: wcnss: Allow specifying firmware-name
Message-ID: <20200108202418.GA28145@xps15>
References: <20200108055252.639791-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200108055252.639791-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn,

On Tue, Jan 07, 2020 at 09:52:52PM -0800, Bjorn Andersson wrote:
> Introduce a firmware-name property, in order to be able to support
> device/platform specific firmware for the wireless connectivity
> subsystem; in line with other Qualcomm remoteproc drivers.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  .../devicetree/bindings/remoteproc/qcom,wcnss-pil.txt     | 6 ++++++
>  drivers/remoteproc/qcom_wcnss.c                           | 8 +++++++-
>  2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.txt b/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.txt
> index d420f84ddfb0..00844a5d2ccf 100644
> --- a/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.txt
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.txt
> @@ -34,6 +34,12 @@ on the Qualcomm WCNSS core.
>  	Definition: should be "wdog", "fatal", optionally followed by "ready",
>  		    "handover", "stop-ack"
>  
> +- firmware-name:
> +	Usage: optional
> +	Value type: <string>
> +	Definition: must list the relative firmware image path for the
> +		    WCNSS core.

Perhaps mention that if omitted the firmware name will default to "wcnss.mdt".

> +
>  - vddmx-supply:
>  - vddcx-supply:
>  - vddpx-supply:
> diff --git a/drivers/remoteproc/qcom_wcnss.c b/drivers/remoteproc/qcom_wcnss.c
> index dc135754bb9c..a0468b3cc76f 100644
> --- a/drivers/remoteproc/qcom_wcnss.c
> +++ b/drivers/remoteproc/qcom_wcnss.c
> @@ -457,6 +457,7 @@ static int wcnss_alloc_memory_region(struct qcom_wcnss *wcnss)
>  
>  static int wcnss_probe(struct platform_device *pdev)
>  {
> +	const char *fw_name = WCNSS_FIRMWARE_NAME;
>  	const struct wcnss_data *data;
>  	struct qcom_wcnss *wcnss;
>  	struct resource *res;
> @@ -474,8 +475,13 @@ static int wcnss_probe(struct platform_device *pdev)
>  		return -ENXIO;
>  	}
>  
> +	ret = of_property_read_string(pdev->dev.of_node, "firmware-name",
> +				      &fw_name);
> +	if (ret < 0 && ret != -EINVAL)
> +		return ret;
> +
>  	rproc = rproc_alloc(&pdev->dev, pdev->name, &wcnss_ops,
> -			    WCNSS_FIRMWARE_NAME, sizeof(*wcnss));
> +			    fw_name, sizeof(*wcnss));
>  	if (!rproc) {
>  		dev_err(&pdev->dev, "unable to allocate remoteproc\n");
>  		return -ENOMEM;

That is in line with what was done for q6v5_mss and q6v5_pas.  With or without
the above:

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> -- 
> 2.24.0
> 
