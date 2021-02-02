Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E360330CF44
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 23:45:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235798AbhBBWpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 17:45:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232672AbhBBWop (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 17:44:45 -0500
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4F3FC061573
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 14:44:04 -0800 (PST)
Received: by mail-oo1-xc2a.google.com with SMTP id y21so2228234oot.12
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 14:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=0vZ3YcfNTrEDHTub1a0I5in6++E8pUyLjuHipyelgv0=;
        b=TlroDxZALA7adkHZsaLn1EdLYcWFwjy/3DgjeuOlax5HyLXb2Cp95fHSAlmqX21Ysb
         0mRW1xup6B6Tn6VR8We5RAs/VXNQQvk9sBYcWAtYWa6y58h0R7pfEsKfhtA2V0ksS62D
         pb6fvoYVyg5Cg8MWqgxGN+glnTC0aUG8Xnu+6AT/Tc3INbxegw0vwtwiH7k1C9lCCX3L
         9W4f1CZdzXP12/zH5ccXgZiRcmedOSaG1ZmCZ5s51ItZHvH+JjmwEb2pmxkTRcasuzzp
         DwPIC1OCcbEIUzW3iZTX/8XpVla4lVJYMS4nyZ7atVnZq7sDWkhE68YA9pBFiTwNwTrz
         Oc/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0vZ3YcfNTrEDHTub1a0I5in6++E8pUyLjuHipyelgv0=;
        b=CiKolTzLK6nVvEENXaHANxuAomcyOblmOJ25pj5Q8U4vD7DbYhj4WO4I9NnnFo6Tr4
         TgFP8yLyzTnRImSG3NWY5UvM02kHFehW3JWiZ7BtuUlxE/VXJw5Om2mrdz9LNlqgleEa
         z0IbLXQ1VQDACI0xqAqzUaM/YQk5gY++2RuKPJeEjhw1deJzNxolQTSbpfl46TJD1h8O
         ov06hmLUZkGKobX+w0t1h0fRgbrIVRpIqCZg7Y/YGV5JFJHcswSa4Eec+B38zKumaDO0
         kU9uX98t9KDJ2xfGCC5HyEe9Uefg0RSaW99jZKgs9SlJ0pcky9E1YQJDz3AN/sPlkkOG
         joPw==
X-Gm-Message-State: AOAM532umJkM6HM3sDVSbrTi1bsbtumhmNJZNh7TjZT3szaSxcZD63qn
        RTltZvt0sKPVJaiB7CWm5zDCXw==
X-Google-Smtp-Source: ABdhPJyQxK7ApxN5cN8J+Y8i+q7EZN3p5maNtMDesuW24WwOPyUgHgXZbgEd5Gzl2zG7lxSemAT0Gg==
X-Received: by 2002:a4a:8c6b:: with SMTP id v40mr28142ooj.23.1612305844299;
        Tue, 02 Feb 2021 14:44:04 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 7sm72819oiz.43.2021.02.02.14.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 14:44:03 -0800 (PST)
Date:   Tue, 2 Feb 2021 16:44:01 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Robert Foss <robert.foss@linaro.org>
Cc:     agross@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
        shawnguo@kernel.org, leoyang.li@nxp.com, geert+renesas@glider.be,
        arnd@arndb.de, Anson.Huang@nxp.com, michael@walle.cc,
        agx@sigxcpu.org, max.oss.09@gmail.com,
        angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: Re: [PATCH v3 19/22] arm64: defconfig: Build Qcom CAMSS as module
Message-ID: <YBnVsUTapsiosHtF@builder.lan>
References: <20210127144930.2158242-1-robert.foss@linaro.org>
 <20210127144930.2158242-20-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210127144930.2158242-20-robert.foss@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 27 Jan 08:49 CST 2021, Robert Foss wrote:

> Build camera ISP driver as a module.
> 

Isn't this enabled since b47c5fc15d88 ("arm64: defconfig: Enable
Qualcomm CAMCC, CAMSS and CCI drivers")?

Regards,
Bjorn

> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 838301650a79..cb224d2af6a0 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -640,6 +640,7 @@ CONFIG_VIDEO_RENESAS_FDP1=m
>  CONFIG_VIDEO_RENESAS_FCP=m
>  CONFIG_VIDEO_RENESAS_VSP1=m
>  CONFIG_SDR_PLATFORM_DRIVERS=y
> +CONFIG_VIDEO_QCOM_CAMSS=m
>  CONFIG_VIDEO_RCAR_DRIF=m
>  CONFIG_VIDEO_IMX219=m
>  CONFIG_VIDEO_OV5645=m
> -- 
> 2.27.0
> 
