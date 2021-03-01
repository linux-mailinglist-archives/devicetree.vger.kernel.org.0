Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25667327B7A
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 11:04:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231920AbhCAKE1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 05:04:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231622AbhCAKD2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 05:03:28 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD8E4C06178C
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 02:02:43 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id 7so15445019wrz.0
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 02:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=XZipS0r+2O0ULBwm6Jk3yIYPHelEH46+P8E8sbBaM9U=;
        b=GinUznSYZfF+VzEGo0tJV8PZ9XUk9HjQzr8yHcQVhrjWHd/iSlafH+RzuMh3ru33X/
         h1wy69UaUYiGTeedXN7yuV0KfkItl42fsYmy3J09hA7jc6zLThAWPsZtDtlmfAYK92VB
         85zhAumdUGFPzf89n5FCVN7YKcuIIQjY05rmYfVeCuzWPINd9RDF1Lf7PtN1DI9JLyHQ
         k87xgm0W8J/l6/Vty7+AYRyuEY2xEcO2WLDttvmnn18toZi5rmx3VCB26rUUKMkzKb8u
         H5Ed6gF96cS44epBs267nIRdnq8blQq9jbam/LnyDOksDi9w1L87zpEfBt0jtPYkNtHz
         D5IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XZipS0r+2O0ULBwm6Jk3yIYPHelEH46+P8E8sbBaM9U=;
        b=MCTpfydymfUQ3lyQ70M86Rp3m8YDd2B6Ef2sb5yMPg1OqKN9odb6O0SAbg6PhXP5GX
         EO8HvBnx/AGtvRaZvElXWqp9ARpLeW9z1BBuQju8qbD62ixsmCwj6L4AXNVwPmazdapu
         tZ/l2s87YY9cW/2Vob15i/ORNoWhvGOcKfkq8XRPW4ae2MKlkQkF91EipUmd1p/w8F94
         sE3GiDUUmapISfHjFiKdGlbBb2ERN+nrHp3fIoTtzNhC0J/lzHTBjgzL449kqLubA6e6
         FjYxKsUyfPDuTNGT3tbUEQR/F5kvXgNvzbGifVoXf0Cx3wsCKrKfSYJ7KwlMNGHhGwWl
         iMIQ==
X-Gm-Message-State: AOAM530fUXAYGWgPqrFnEuimD3Tt5PUb3x9vMrIF7InD5jm7QFzVIlie
        W5LPm71uCpblW9gPiwmXEb2gMg==
X-Google-Smtp-Source: ABdhPJzcEOS66BToEGp2vmi7xT4nDMdmFn965xO54Gu11rFVHj40mQNIuRUKldTKzGK+jQljMZLWNA==
X-Received: by 2002:a5d:4e0e:: with SMTP id p14mr15421982wrt.130.1614592962247;
        Mon, 01 Mar 2021 02:02:42 -0800 (PST)
Received: from maple.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id m6sm24444120wrv.73.2021.03.01.02.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Mar 2021 02:02:41 -0800 (PST)
Date:   Mon, 1 Mar 2021 10:02:39 +0000
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
Subject: Re: [PATCH V3 2/2] backlight: qcom-wled: Correct the sync_toggle
 sequence
Message-ID: <20210301100239.orbt7km6lgjwvzii@maple.lan>
References: <1614590916-27070-1-git-send-email-kgunda@codeaurora.org>
 <1614590916-27070-3-git-send-email-kgunda@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1614590916-27070-3-git-send-email-kgunda@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 01, 2021 at 02:58:36PM +0530, Kiran Gunda wrote:
> As per the current implementation, after FSC (Full Scale Current)
> and brightness update the sync bits are transitioned from set-then-clear.

This does not makes sense since there are too many verbs. Set and clear
are both verbs so in this context: "the code will set the bit and then
the code will clear the bit".

Either:

s/transitioned from set-then-clear/set-then-cleared/.

Or:

s/transitioned from set-then-clear/using a set-then-clear approach/.

> But, the FSC and brightness sync takes place during a clear-then-set
> transition of the sync bits.

Likewise this no longer makes sense and had also become misleading.
Two changes of state, clear and then set, do not usually result in a
single transition.

Either:

s/clear-then-set/0 to 1/

Alternatively, if you want to stick exclusively to the set/clear
terminology then replace the whole quoted section with:

  But, the FSC and brightness sync takes place when the sync bits are
  set (e.g. on a rising edge).


> So the hardware team recommends a
> clear-then-set approach in order to guarantee such a transition
> regardless of the previous register state.
> 
> Signed-off-by: Kiran Gunda <kgunda@codeaurora.org>

With one of each of the changes proposed above:
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.


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
