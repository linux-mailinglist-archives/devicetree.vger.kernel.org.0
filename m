Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B46E9182877
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2020 06:35:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387846AbgCLFfs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Mar 2020 01:35:48 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:46687 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387776AbgCLFfs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Mar 2020 01:35:48 -0400
Received: by mail-pl1-f194.google.com with SMTP id w12so2173244pll.13
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2020 22:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=SheGGD9VvRORuB+YjWtmYV6UdkIZ+YDt0GYXTwxkFwY=;
        b=QI2yaeJTxbAKLPQH0pkjzKp+KCo2eDQet9Ig6cqJPhHEquRvxiac45P3qf/0UGZniP
         5hWk1YbfNsLqCRoWrqE2NKrXHQGNuxEEWOoTauvZKasxXU2WfwtkPyBkOLtIIWroL3Cv
         1sYSyzYW1Igxtzlz9TTHPGTKHr883vKw+zscEwVMe/f52ixMYl53ao5yfjNtGeK1PmGs
         5lKsz1EQf/4MQRAwaasfI8033m6xGEplswXgiDo6pgvioQV274C+CPAvXK1+RiE2vNSR
         WqP1mRMJEjFr9OG96PPxJcfO7DHsJWoP2YhpPdlC2AgSk94Mlp92EhKGYZB5SZqo7Y2z
         c/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=SheGGD9VvRORuB+YjWtmYV6UdkIZ+YDt0GYXTwxkFwY=;
        b=TzqaZsrJ5KuqJPBHOes0hnG6LuzRKMb8/04YKHMQNMAR/w8hGzZhve+BRQjElO+fXG
         yr4g0p7orNyfWAQiQ9A4xucgn35HUbCDVsej2UNUz+Z/J8PTZb92FUwxS6jnGT9qMkZ5
         DYLhSscAT5FptRJjMXDQfOm3hvcdNJ9VBKK4Pbydp6a+a/vSXEf1ncr+HKghOtylP0+T
         Fn/00JIYw8hrb3+44lqLdpnPDl7IVPmph46xVbAJyTtZUe80F5tVuuJuh/lU1NL2InlQ
         ZmeXJVS5lO+d9ywprnoiY+wCCtWX1p5UW9a9D/7lgW+U0dIXmpWT4g9MjLi3LgISBfJS
         e/6g==
X-Gm-Message-State: ANhLgQ1ZY4AJl/ALXYpcODjQFiN4OVBuHjJxKA7oyPkzEqyzMGsqfszs
        pfdY+eiRIq8f+ppSI6yBgRtCAQ==
X-Google-Smtp-Source: ADFU+vs9fJDSMy2lBvj+aQy82yNPIdBrCy8YZQTsCPzP8m1hXpLVEkqnvIUqt9mGo7rUFkpJ+nWE9A==
X-Received: by 2002:a17:90a:9f93:: with SMTP id o19mr2359492pjp.76.1583991347467;
        Wed, 11 Mar 2020 22:35:47 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id g9sm44204468pfi.37.2020.03.11.22.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 22:35:46 -0700 (PDT)
Date:   Wed, 11 Mar 2020 22:35:44 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Robert Foss <robert.foss@linaro.org>
Cc:     agross@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
        catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
        olof@lixom.net, Anson.Huang@nxp.com, maxime@cerno.tech,
        leonard.crestez@nxp.com, dinguyen@kernel.org,
        marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Loic Poulain <loic.poulain@linaro.org>
Subject: Re: [v1 6/6] arm64: defconfig: Enable QCOM CAMCC, CAMSS and CCI
 drivers
Message-ID: <20200312053544.GY264362@yoga>
References: <20200311123501.18202-1-robert.foss@linaro.org>
 <20200311123501.18202-7-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311123501.18202-7-robert.foss@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 11 Mar 05:35 PDT 2020, Robert Foss wrote:

> Build camera clock, isp and controller drivers as modules.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>


Thanks for the series Robert!

Regards,
Bjorn

> ---
>  arch/arm64/configs/defconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 4db223dbc549..7cb6989249ab 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -376,6 +376,7 @@ CONFIG_I2C_MESON=y
>  CONFIG_I2C_MV64XXX=y
>  CONFIG_I2C_OWL=y
>  CONFIG_I2C_PXA=y
> +CONFIG_I2C_QCOM_CCI=m
>  CONFIG_I2C_QCOM_GENI=m
>  CONFIG_I2C_QUP=y
>  CONFIG_I2C_RK3X=y
> @@ -530,6 +531,7 @@ CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
>  CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
>  CONFIG_VIDEO_RENESAS_FCP=m
>  CONFIG_VIDEO_RENESAS_VSP1=m
> +CONFIG_VIDEO_QCOM_CAMSS=m
>  CONFIG_DRM=m
>  CONFIG_DRM_I2C_NXP_TDA998X=m
>  CONFIG_DRM_NOUVEAU=m
> @@ -732,6 +734,7 @@ CONFIG_MSM_GCC_8994=y
>  CONFIG_MSM_MMCC_8996=y
>  CONFIG_MSM_GCC_8998=y
>  CONFIG_QCS_GCC_404=y
> +CONFIG_SDM_CAMCC_845=m
>  CONFIG_SDM_GCC_845=y
>  CONFIG_SM_GCC_8150=y
>  CONFIG_QCOM_HFPLL=y
> @@ -762,6 +765,7 @@ CONFIG_QCOM_COMMAND_DB=y
>  CONFIG_QCOM_GENI_SE=y
>  CONFIG_QCOM_GLINK_SSR=m
>  CONFIG_QCOM_RMTFS_MEM=m
> +CONFIG_SDM_CAMCC_845=m
>  CONFIG_QCOM_RPMH=y
>  CONFIG_QCOM_RPMHPD=y
>  CONFIG_QCOM_SMEM=y
> -- 
> 2.20.1
> 
