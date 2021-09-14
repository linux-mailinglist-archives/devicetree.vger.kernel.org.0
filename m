Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CC3D40B630
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 19:47:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbhINRs4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 13:48:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229861AbhINRsz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 13:48:55 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E09CC061762
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 10:47:38 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id n13-20020a17090a4e0d00b0017946980d8dso2797221pjh.5
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 10:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qNpmfocRQgc6fMij3WcOQJkyWY3Uzb6MR8R5s1ErrCg=;
        b=KPCtsR38LKdUoGcNa9GMqU/wR3GKGsaGwGVWLrf7cTsNP0tMwfHxiVnXeNBD+J0bAR
         OHt4glvZNHZEuQOxJxkSV+mHRlUouRr5v75HCVBtg55LVtrbl0JZYNZmWf9abdpTZ1fT
         dj9O41H7PaVBseG2hxBbfB6v157CkHzc4Y/Ea6KgpQ0sVUXicjK75+Zga8zquLhgUCKA
         Ja7hIRiZ5TLpu5k4poKYNPfN7e81zIYxp3lGPNvTTzmCT2OHek/ME9QQOHOLa7VmD/50
         yISaCDIX6r0w38d0AMn+uFFne4g8Tl7IaEmMbyF9Sto+JeSPDSlxK6/PP9RoG8JJ6ow7
         WTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qNpmfocRQgc6fMij3WcOQJkyWY3Uzb6MR8R5s1ErrCg=;
        b=MVKkUKeqqF04n//wSj6CzcEIgcxHzBzSp3t/RJ4tMn/nH2hpOApPbDXtIQZ33Y4tpS
         PB7JzsFB31pApzpa4zuPODs4jrxjw85s4xKq8DkGo1l7KhI3SyCDrHpxwiWNBM/Ej21e
         LKO8MBaAp9dt1hT9rN4McG/YQpRzSRoxOqFGeTTjpuvtc9KvxV6r+sa6b9WBlyMqDdyG
         JSJdfc3ppHly8TvV8lNJr4NmMyiZ15P2Ws7eS/hPXMTWFQDAb+ZjBs286rWf8oq2AG2S
         lIJ9NywYeBJJ4B7pA2/CfT0JeDnDtPm1MY+snl2FJAa4l7f34ct59StNXs4oPM4QRa94
         X5sw==
X-Gm-Message-State: AOAM531oi+j32vaHFrz3ct5IMfb7LfcAbdf/fDUngwg78TGagVLbAMAV
        OFGQL/G+tSe2c87gNw8E/smydA==
X-Google-Smtp-Source: ABdhPJw3+2cqCp32kqlVBigVqINzGynUgq9CRlUWcOXHDpqwoO/bewGBpusqKzF/M2PyOYPCRpivjw==
X-Received: by 2002:a17:902:dacc:b0:135:960b:1754 with SMTP id q12-20020a170902dacc00b00135960b1754mr15957252plx.77.1631641657742;
        Tue, 14 Sep 2021 10:47:37 -0700 (PDT)
Received: from p14s (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id x15sm11970896pgt.34.2021.09.14.10.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 10:47:36 -0700 (PDT)
Date:   Tue, 14 Sep 2021 11:47:34 -0600
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Shengjiu Wang <shengjiu.wang@nxp.com>
Cc:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, daniel.baluta@nxp.com, linux-imx@nxp.com,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        shengjiu.wang@gmail.com
Subject: Re: [PATCH v4 2/4] remoteproc: imx_rproc: Add IMX_RPROC_SCU_API
 method
Message-ID: <20210914174734.GC1719994@p14s>
References: <1631092255-25150-1-git-send-email-shengjiu.wang@nxp.com>
 <1631092255-25150-3-git-send-email-shengjiu.wang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1631092255-25150-3-git-send-email-shengjiu.wang@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 08, 2021 at 05:10:53PM +0800, Shengjiu Wang wrote:
> On i.MX8QM and i.MX8QXP, most devices are controlled
> by System Control Unit, so add IMX_RPROC_SCU_API
> method for these platform.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  drivers/remoteproc/imx_rproc.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/remoteproc/imx_rproc.h b/drivers/remoteproc/imx_rproc.h
> index 23d8e808d27f..1c7e2127c758 100644
> --- a/drivers/remoteproc/imx_rproc.h
> +++ b/drivers/remoteproc/imx_rproc.h
> @@ -22,6 +22,8 @@ enum imx_rproc_method {
>  	IMX_RPROC_MMIO,
>  	/* Through ARM SMCCC */
>  	IMX_RPROC_SMC,
> +	/* Through System Control Unit API */
> +	IMX_RPROC_SCU_API,

So much better now...

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  };
>  
>  struct imx_rproc_dcfg {
> -- 
> 2.17.1
> 
