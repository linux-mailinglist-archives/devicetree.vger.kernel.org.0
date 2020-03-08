Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 955D717D681
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2020 22:47:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726332AbgCHVrx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Mar 2020 17:47:53 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:35482 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726368AbgCHVrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Mar 2020 17:47:53 -0400
Received: by mail-pl1-f195.google.com with SMTP id g6so3177584plt.2
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2020 14:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jJDC8Nnm4L4CGbPKhZAhNhjZs4K9A5jkhmw2WKtbXvE=;
        b=Xc45nRq6+6S+BPEEpPP+4qYsrd/yLeFpPUjzp8hif0jnk5SK49WpGYuBAmRbn5IrpE
         a3APlX9HUnDyjhdWOR+9dneLxP3Kw+sXYF8aBmBpjElev2SHOMCC3XtbyyT6epEwQ9/e
         +KPJHUHbaUWnoMg/a6cRtamWF4U0Y+p59eKVoyPKUmAdn3FEo/8WoIrWt3WUb1ih6+UN
         Wl2LScuXMfAtXgDDG2kZQVo6qVyGEHkxHOb/nV/XnBLlhD2KWTEcGSZX8CjaY3JnunZf
         XZfO4xWhHNWiTbygLclPt5EP4sd6NgnCtl5WUY5/sbBr0YT+VEJGD0t8asF5od1cLT03
         iOhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jJDC8Nnm4L4CGbPKhZAhNhjZs4K9A5jkhmw2WKtbXvE=;
        b=qIoI5giji/OyfTp39dCN13m79q2nSp3DncELl/oP3KPsTZW9Ph//RoxCioAGkmPHkM
         PMI9G7JttlZId9ZerlIUXLafi6O8zc4ofZhI+yXI2gkQ5KVmoTzSeHcKHJ3imsFnzSML
         ORNu4rf2Sy9LjRHbr+8D2eTV1hyKxs6fklKh8Sfl2AKDNDBz3shv0ZbOAmkyTN5VWmx8
         bSIaBe2v/VoM1wF478F9SWEHnAPm/p0kqjL3NAHwP4cjp2JcxxUxMPQroO7JzH0dqPK1
         pfmm1eFAE9SPU0uYvVMih+dYvrtx75wPxopXIF6oTqRIkVaL5c4WTCZC8RR95KPdieK4
         gl3g==
X-Gm-Message-State: ANhLgQ3356G636ok1K4lACYLkUqSg3CCsZy1sW12AiNI5u2wt4LhkSUo
        3o4Yh07YhIKLjKmEyDX6w4v63A==
X-Google-Smtp-Source: ADFU+vssZQKZgUsi3zvBuFMQX3Exk1+IvjMjEEbarnjChBfU1sfwU0TO1HyH9F9S3DHVljCer4MCDw==
X-Received: by 2002:a17:90a:8983:: with SMTP id v3mr15069544pjn.65.1583704071686;
        Sun, 08 Mar 2020 14:47:51 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id d186sm24369069pfc.8.2020.03.08.14.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 14:47:50 -0700 (PDT)
Date:   Sun, 8 Mar 2020 14:47:48 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kiran Gunda <kgunda@codeaurora.org>
Cc:     jingoohan1@gmail.com, lee.jones@linaro.org,
        b.zolnierkie@samsung.com, dri-devel@lists.freedesktop.org,
        daniel.thompson@linaro.org, jacek.anaszewski@gmail.com,
        pavel@ucw.cz, robh+dt@kernel.org, mark.rutland@arm.com,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-fbdev@vger.kernel.org
Subject: Re: [PATCH V1 2/2] backlight: qcom-wled: Add support for WLED5
 peripheral in PM8150L
Message-ID: <20200308214748.GL1094083@builder>
References: <1583153739-19170-1-git-send-email-kgunda@codeaurora.org>
 <1583153739-19170-3-git-send-email-kgunda@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1583153739-19170-3-git-send-email-kgunda@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 02 Mar 04:55 PST 2020, Kiran Gunda wrote:
> diff --git a/drivers/video/backlight/qcom-wled.c b/drivers/video/backlight/qcom-wled.c
[..]
> @@ -147,14 +187,39 @@ struct wled {
>  	u32 max_brightness;
>  	u32 short_count;
>  	u32 auto_detect_count;
> +	u32 version;
>  	bool disabled_by_short;
>  	bool has_short_detect;
> +	bool cabc_disabled;
>  	int short_irq;
>  	int ovp_irq;
>  
>  	struct wled_config cfg;
>  	struct delayed_work ovp_work;
>  	int (*wled_set_brightness)(struct wled *wled, u16 brightness);
> +	int (*cabc_config)(struct wled *wled, bool enable);
> +	int (*wled_sync_toggle)(struct wled *wled);

Please split this patch in one that adds these and breaks out the wled3
support, and then a second patch that adds wled5.

> +};
> +
[..]
> +static int wled5_set_brightness(struct wled *wled, u16 brightness)
> +{
> +	int rc, offset;
> +	u16 low_limit = wled->max_brightness * 1 / 1000;
> +	u8 v[2], brightness_msb_mask;
> +
> +	/* WLED5's lower limit is 0.1% */
> +	if (brightness > 0 && brightness < low_limit)
> +		brightness = low_limit;
> +
> +	brightness_msb_mask = 0xf;
> +	if (wled->max_brightness == WLED5_SINK_REG_BRIGHT_MAX_15B)
> +		brightness_msb_mask = 0x7f;

Why not just brightness &= wled->max_brightness? But given that it seems
like the framework ensures that brightness <= max_brightness, why not
skip this altogether?

> +
> +	v[0] = brightness & 0xff;
> +	v[1] = (brightness >> 8) & brightness_msb_mask;
> +
> +	offset = wled5_brightness_reg[wled->cfg.mod_sel];
> +	rc = regmap_bulk_write(wled->regmap, wled->sink_addr + offset,
> +			v, 2);
> +	return rc;
> +}
> +
>  static int wled4_set_brightness(struct wled *wled, u16 brightness)
>  {
>  	int rc, i;
> @@ -237,7 +325,28 @@ static int wled_module_enable(struct wled *wled, int val)
>  	return 0;
>  }
>  
> -static int wled_sync_toggle(struct wled *wled)
> +static int wled5_sync_toggle(struct wled *wled)
> +{
> +	int rc;
> +	u8 val;
> +
> +	val = (wled->cfg.mod_sel == MOD_A) ? WLED5_SINK_REG_SYNC_MOD_A_BIT :
> +					     WLED5_SINK_REG_SYNC_MOD_B_BIT;
> +	rc = regmap_update_bits(wled->regmap,
> +				wled->sink_addr + WLED5_SINK_REG_MOD_SYNC_BIT,
> +				WLED5_SINK_REG_SYNC_MASK, val);
> +	if (rc < 0)
> +		return rc;
> +
> +	val = 0;

Just plug 0 in the function call.

> +	rc = regmap_update_bits(wled->regmap,
> +				wled->sink_addr + WLED5_SINK_REG_MOD_SYNC_BIT,
> +				WLED5_SINK_REG_SYNC_MASK, val);
> +
> +	return rc;

And return regmap_update_bits(...);

> +}
> +

Regards,
Bjorn
