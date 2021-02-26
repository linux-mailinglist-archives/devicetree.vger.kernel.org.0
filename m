Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B94032664A
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 18:27:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230107AbhBZR0q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 12:26:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbhBZR0p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 12:26:45 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEC52C06174A
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 09:26:04 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id a18so1111312wrc.13
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 09:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Bqhbgu1Yp7BWdaUz/Li+kTuQBD64JpudY4kka6cuYOU=;
        b=de/+gQcXIlBR8jVkGwRajly9Ur7JLImRwKdA+cqTXTZs2N9AXIZdKdqD63bPpunD4X
         skq0DwsLCISevZLfmV9iOR6B/XV8PPTB0urSK1KY3HiY0yFlCuOSPH1MXrt8FHbRz5dq
         qm9yXsuQ9A/7hySFuR9vYhZQXbjIhgI0PgCuHk+GmglnrOlbRmcijDueB9SRpR8saq8X
         Si6LEabKe9dqZqHszSD2dChA8chYp7GnBZgSNV1yPlWZYAX+1UB7xHqJLcqjV4ESJ+mW
         XmgfxsxOViwwKJgHzfnSA+RUuMgpP09C2JcsYvCwhZoLeuwu+l1MLZTugYxD1FPiG2gG
         YggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Bqhbgu1Yp7BWdaUz/Li+kTuQBD64JpudY4kka6cuYOU=;
        b=JhIGO3H+PkCVBti5F46Y4n9jxxF0K4t0xOIr9nfrD7VXIBetLldMUOuFhZQObQI71b
         tOp/JuhCKVLwU8u3YnN73VeLWh7lbdK8fuTGvqXkYWyvZ2FdpgzdSFKPMnI6lr7VGPyW
         voKrbjOgbD/XSRUcDG171GXRbUmsrFr6cCnM81AW5IzxXT8hypUkAyzjXIS7i4PW/IhU
         9kcmlUmyyp2mEm5yI1FSL+3CBrV/awB7ACryhfA6S3QQUQBIfqka4S2JJePjf9pt6Qn6
         gwLz7vO8qT4G1OXxLIIv6m8LbHL/qlzCmvsz49zJu/RNsZ/O50Ae741LmHAioa6qO96/
         GV3Q==
X-Gm-Message-State: AOAM530/++d1S2PoX1GC7rC6WjCkJ5zx98JeBl2+FOKJfuz8r1TVMQnx
        kLYeZRtYWVusBh94M8SICfjBjg==
X-Google-Smtp-Source: ABdhPJxv59nbOS4VjGoDEpvCB0o1HoLwhHwNNBMlJkKj6HsOImMA6tQWRJDOfwNGqiBMHmLBgvAGBQ==
X-Received: by 2002:adf:e409:: with SMTP id g9mr4219176wrm.423.1614360363351;
        Fri, 26 Feb 2021 09:26:03 -0800 (PST)
Received: from maple.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id m9sm57861wro.52.2021.02.26.09.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 09:26:02 -0800 (PST)
Date:   Fri, 26 Feb 2021 17:26:01 +0000
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Kiran Gunda <kgunda@codeaurora.org>
Cc:     bjorn.andersson@linaro.org, jingoohan1@gmail.com,
        lee.jones@linaro.org, b.zolnierkie@samsung.com,
        dri-devel@lists.freedesktop.org, jacek.anaszewski@gmail.com,
        pavel@ucw.cz, robh+dt@kernel.org, mark.rutland@arm.com,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH V2 2/2] backlight: qcom-wled: Correct the sync_toggle
 sequence
Message-ID: <20210226172601.aknj2d4hghkkqjol@maple.lan>
References: <1614341544-5306-1-git-send-email-kgunda@codeaurora.org>
 <1614341544-5306-3-git-send-email-kgunda@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1614341544-5306-3-git-send-email-kgunda@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 26, 2021 at 05:42:24PM +0530, Kiran Gunda wrote:
> As per the current implementation, after FSC (Full Scale Current)
> and brightness update the sync bits are transitioned from 1 to 0.

This still seems to incorrectly describe the current behaviour.

Surely in most cases (i.e. every time except the first) the value of the
sync bit is 0 when the function is called and we get both a 0 to 1
and then a 1 to 0 transition.

That is why I recommended set-then-clear terminology to describe the
current behaviour. It is concise and correct.


Daniel.



> But, the FSC and brightness sync takes place during a 0 to 1
> transition of the sync bits. So the hardware team recommends a
> clear-then-set approach in order to guarantee such a transition
> regardless of the previous register state.
> 
> Signed-off-by: Kiran Gunda <kgunda@codeaurora.org>
> ---
>  drivers/video/backlight/qcom-wled.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/video/backlight/qcom-wled.c b/drivers/video/backlight/qcom-wled.c
> index aef52b9..19f83ac 100644
> --- a/drivers/video/backlight/qcom-wled.c
> +++ b/drivers/video/backlight/qcom-wled.c
> @@ -337,13 +337,13 @@ static int wled3_sync_toggle(struct wled *wled)
>  
>  	rc = regmap_update_bits(wled->regmap,
>  				wled->ctrl_addr + WLED3_SINK_REG_SYNC,
> -				mask, mask);
> +				mask, WLED3_SINK_REG_SYNC_CLEAR);
>  	if (rc < 0)
>  		return rc;
>  
>  	rc = regmap_update_bits(wled->regmap,
>  				wled->ctrl_addr + WLED3_SINK_REG_SYNC,
> -				mask, WLED3_SINK_REG_SYNC_CLEAR);
> +				mask, mask);
>  
>  	return rc;
>  }
> @@ -353,17 +353,17 @@ static int wled5_mod_sync_toggle(struct wled *wled)
>  	int rc;
>  	u8 val;
>  
> -	val = (wled->cfg.mod_sel == MOD_A) ? WLED5_SINK_REG_SYNC_MOD_A_BIT :
> -					     WLED5_SINK_REG_SYNC_MOD_B_BIT;
>  	rc = regmap_update_bits(wled->regmap,
>  				wled->sink_addr + WLED5_SINK_REG_MOD_SYNC_BIT,
> -				WLED5_SINK_REG_SYNC_MASK, val);
> +				WLED5_SINK_REG_SYNC_MASK, 0);
>  	if (rc < 0)
>  		return rc;
>  
> +	val = (wled->cfg.mod_sel == MOD_A) ? WLED5_SINK_REG_SYNC_MOD_A_BIT :
> +					     WLED5_SINK_REG_SYNC_MOD_B_BIT;
>  	return regmap_update_bits(wled->regmap,
>  				  wled->sink_addr + WLED5_SINK_REG_MOD_SYNC_BIT,
> -				  WLED5_SINK_REG_SYNC_MASK, 0);
> +				  WLED5_SINK_REG_SYNC_MASK, val);
>  }
>  
>  static int wled_ovp_fault_status(struct wled *wled, bool *fault_set)
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
>  a Linux Foundation Collaborative Project
> 
