Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4EAE3BB175
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2019 11:31:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405478AbfIWJbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Sep 2019 05:31:45 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:40286 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407148AbfIWJbp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Sep 2019 05:31:45 -0400
Received: by mail-wm1-f65.google.com with SMTP id b24so8455614wmj.5
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2019 02:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=x3JttSp0N6ofBW5LzQ0aulDXvYerTBb+rX2QpQHK3GA=;
        b=wrdIO1PoBF2ps/wgVPQ7uZgIs5Zg0O6ec2Mr5yDnG+hTFoHtn0Gydw0y2TxLNoO7RS
         uzvON/ffkt8vQQwgbhQdf3Dm1NkL2eTxSaLF3pVN9rRInxT2rs8wVgjagDecCPN3VvRv
         IUuyLvPkD1/PlRKdlyhxvW335/fBDsuKetZwZszZNU8n3cBX4CkiA/4RzSb/AsJnPJAZ
         rxQ8xZt3QRrn63KbNcrr2D9xv5NvUpA878d8d37TxTIwnW9UOhO5a92vPuLtccS/mDxw
         3sgvVDUOXZTePA1JrDwk3o6qSml1QB5fvshCdgkifFi0U2UzrXbkKAI6UDibIxNwIiQX
         sq6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=x3JttSp0N6ofBW5LzQ0aulDXvYerTBb+rX2QpQHK3GA=;
        b=fhtBArV7wDKHqPo2Uf2i8Vp7m5I4ppZZFxs6kgNSD+bEXmpuKjqqNnaetVNDAYeYxW
         XyeHw8iWNVJXOec0x4mtz7AoM/tjE7hBcK3vpv47I2PcXkPTeFlMSAjbKbBhO3EMQu7h
         626rvee1gae2Ib64yyCn0bwKcN1pxXAA8m/Qqjj1zEswozFU7pkL5b19WVUyojYF54l1
         QbKy32q1hfpnIPctAJL6lTMMcd9/zWmfMNpPvSRBRZ/QgXu11Z3cYZst12RoGIbeq0uh
         tw0wgGnwjqWb5cD46jvtnDDxWUQ1+mnKjM9gwEuSydQd0W+FmTMNWB03ER0chJnrym9U
         c/Dg==
X-Gm-Message-State: APjAAAU3Jj7LULfrmXGLUQ+8/nxc9Wg74dSbFk5C4yshY+Qbrmy0PnSH
        tmU8/H5X2RWzCJSnyYxLP+JeRg==
X-Google-Smtp-Source: APXvYqyjmPFntItpiTfyGO7Ke1GU6GekG2Zcx3JJvC7jGTA2yTviIKEUlhQB4iQRI8K745mhVLBAxw==
X-Received: by 2002:a7b:c758:: with SMTP id w24mr11891113wmk.148.1569231102351;
        Mon, 23 Sep 2019 02:31:42 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v4sm15675554wrg.56.2019.09.23.02.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2019 02:31:41 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        narmstrong@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 4/5] clk: meson: meson8b: don't register the XTAL clock when provided via OF
In-Reply-To: <20190921151223.768842-5-martin.blumenstingl@googlemail.com>
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com> <20190921151223.768842-5-martin.blumenstingl@googlemail.com>
Date:   Mon, 23 Sep 2019 11:31:40 +0200
Message-ID: <1jwodzs6ir.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 21 Sep 2019 at 17:12, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> The XTAL clock is an actual crystal on the PCB. Thus the meson8b clock
> driver should not register the XTAL clock - instead it should be
> provided via .dts and then passed to the clock controller.
>
> Skip the registration of the XTAL clock if a parent clock is provided
> via OF. Fall back to registering the XTAL clock if this is not the case
> to keep support for old .dtbs.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/clk/meson/meson8b.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
> index b785b67baf2b..15ec14fde2a0 100644
> --- a/drivers/clk/meson/meson8b.c
> +++ b/drivers/clk/meson/meson8b.c
> @@ -3682,10 +3682,16 @@ static void __init meson8b_clkc_init_common(struct device_node *np,
>  		meson8b_clk_regmaps[i]->map = map;
>  
>  	/*
> -	 * register all clks
> -	 * CLKID_UNUSED = 0, so skip it and start with CLKID_XTAL = 1
> +	 * always skip CLKID_UNUSED and also skip XTAL if the .dtb provides the
> +	 * XTAL clock as input.
>  	 */
> -	for (i = CLKID_XTAL; i < CLK_NR_CLKS; i++) {
> +	if (of_clk_get_parent_count(np))

If we are going for this, I'd prefer if could explicity check for the
clock named "xtal" instead of just checking if DT has clocks.

> +		i = CLKID_PLL_FIXED;
> +	else
> +		i = CLKID_XTAL;
> +
> +	/* register all clks */
> +	for (; i < CLK_NR_CLKS; i++) {
>  		/* array might be sparse */
>  		if (!clk_hw_onecell_data->hws[i])
>  			continue;
> -- 
> 2.23.0
