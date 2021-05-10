Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CDD03793A8
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 18:23:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231157AbhEJQYi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 12:24:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230285AbhEJQYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 12:24:37 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 990C5C061574
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 09:23:32 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id x5so17236365wrv.13
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 09:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=pAVO1X2g83KFpJr+VRtjEpm1xy0mTpiwbotFKSCDfrM=;
        b=tho8uH6lS0ZKz9TYE1ODbtUPO4F0IC0NoPyVTkDKcmjOx/a77heA+Voc353oVfwv/j
         cNVBQwrUateA8/7ee9rl2Tnp/FvBHcLTIjRf+HtdO9cZVMJnt9yOFAGesDVDCPGKJUaA
         UpfMWkDvv3fIEYKHsdt5HM2ARc0M97lNetHf5cIRr9A3Pgc96RCgq5RZ/BcluSRAj7uY
         ioX9/j4YpAgFh/1FH3RLKMd340B7xDqOqwmfhd+lUsXD3xXr1UNL/Fnl0sdZEJsiCSUp
         uDdjl9q/jGqNwj2UloLIfaSCHuEQ0WZvyJPuBAqEicaj3g7o2Dx42McOY6swZ6QAbMZO
         hVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=pAVO1X2g83KFpJr+VRtjEpm1xy0mTpiwbotFKSCDfrM=;
        b=JgigsHtM/O3DH2CK2yEYGXqTCvR4FyuxYiV4+JrcjKWc8bdoUC06ProB5CFkbpzrYA
         Cy4jrzy9xbhFnMNZwiaPcC2/gmMspljLK15Lku+QOm+LBvY4d1gMIC5To+yyzGw3Ag7c
         Ij1+uV30qVC9Jr8a+KpjLHFSdwAR6Lx+F59Vzp0OBntoG5868M/ZH0kBXpym85bRih9Q
         bifCh03Gc/JkF4Uear9OzOObHLVnM5MwefRv14csMp/THpd8QU3m7DCkfp0EUKMsRnIx
         q/awssN6iCW9IDG5P1pky8Bu8S5R7BNk68xRXimMRDEX8YGkHSj6BM5bryqTt4w9P+lt
         GIXQ==
X-Gm-Message-State: AOAM531PHldUdGEYt+8KR+XojlM/t2MrUrMgwmztPf8uqVpCt6mxr2wv
        RKswWDpw7R6DiHbOksz2wXiTWA==
X-Google-Smtp-Source: ABdhPJxgGEJ4wLrGR1leB3+o+J/MnMHhPZjJSNbo1DWxXfho0aqsuWaGKYLAqW8svfbRAxIyws6U5g==
X-Received: by 2002:adf:dcc5:: with SMTP id x5mr32374719wrm.1.1620663811271;
        Mon, 10 May 2021 09:23:31 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id m11sm18604803wmq.33.2021.05.10.09.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 09:23:30 -0700 (PDT)
Date:   Mon, 10 May 2021 17:23:29 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, heiko@sntech.de, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v9 1/4] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210510162329.GD751702@dell>
References: <20210505140854.15929-1-macroalpha82@gmail.com>
 <20210505140854.15929-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210505140854.15929-2-macroalpha82@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 05 May 2021, Chris Morgan wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add rk817 codec support cell to rk808 mfd driver.
> 
> Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Nit: These should be chronological.

> ---
> Changes in v9:
>  - Add cover letter.
>  - Remove documentation for interrupt parent per Rob Herring's request.
>  - Remove unused MODULE_DEVICE_TABLE to fix a bug identified by kernel test
>    robot.
> Changes in v8:
>  - Added additional documentation for missing properties of #sound-dai-cells,
>    interrupt-parent, and wakeup-source for mfd documentation.
>  - Corrected order of elements descriptions in device tree documentation.
>  - Changed name of "mic-in-differential" to "rockchip,mic-in-differential".
>  - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
>  - Removed unused resets and reset-names from the i2s1_2ch node.
> Changes in v7:
>  - Removed ifdef around register definitions for MFD.
>  - Replaced codec documentation with updates to MFD documentation.
>  - Reordered elements in example to comply with upstream rules.
>  - Added binding update back for Odroid Go Advance as requested.
>  - Submitting patches from gmail now.
> Changes in v6:
>  - Included additional project maintainers for correct subsystems.
>  - Removed unneeded compatible from DT documentation.
>  - Removed binding update for Odroid Go Advance (will do in seperate series).
> Changes in v5:
>  - Move register definitions from rk817_codec.h to main rk808.h register
>    definitions.
>  - Add volatile register for codec bits.
>  - Add default values for codec bits.
>  - Removed of_compatible from mtd driver (not necessary).
>  - Switched to using parent regmap instead of private regmap for codec.
> Changes in v4:
>  - Created set_pll() call.
>  - Created user visible gain control in mic.
>  - Check for return value of clk_prepare_enable().
>  - Removed duplicate clk_prepare_enable().
>  - Split DT documentation to separate commit.
> Changes in v3:
>  - Use DAPM macros to set audio path.
>  - Updated devicetree binding (as every rk817 has this codec chip).
>  - Changed documentation to yaml format.
>  - Split MFD changes to separate commit.
> Changes in v2:
>  - Fixed audio path registers to solve some bugs.
> 
>  drivers/mfd/rk808.c       | 85 +++++++++++++++++++++++++++++++++++++++
>  include/linux/mfd/rk808.h | 81 +++++++++++++++++++++++++++++++++++++
>  2 files changed, 166 insertions(+)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index ad923dd4e007..9231209184e0 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -65,6 +65,7 @@ static bool rk817_is_volatile_reg(struct device *dev, unsigned int reg)
>  	switch (reg) {
>  	case RK817_SECONDS_REG ... RK817_WEEKS_REG:
>  	case RK817_RTC_STATUS_REG:
> +	case RK817_CODEC_DTOP_LPT_SRST:
>  	case RK817_INT_STS_REG0:
>  	case RK817_INT_STS_REG1:
>  	case RK817_INT_STS_REG2:
> @@ -163,6 +164,11 @@ static const struct mfd_cell rk817s[] = {
>  		.num_resources = ARRAY_SIZE(rk817_rtc_resources),
>  		.resources = &rk817_rtc_resources[0],
>  	},
> +#ifdef CONFIG_SND_SOC_RK817
> +	{
> +		.name = "rk817-codec",
> +	},
> +#endif

No #ifery please.

Just replace it with a comment.

If no associated driver exists, it just won't match/bind.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
