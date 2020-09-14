Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEC8D2695E2
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 21:52:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726046AbgINTwU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 15:52:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725953AbgINTwS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 15:52:18 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E8BDC06174A
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 12:52:18 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id x18so9450pll.6
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 12:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TcdXkIRAgGt9vXRg+9Us0U0AFK7n0jMIa5WCvYtwILM=;
        b=FPUKR3nHDfH1uQGswRa0iOrC38WOiDscwoCFyblK+wa5WCHpKSpu1ohj2jx94vGuQ5
         15v0sOLKFZkdvLVqK1eqcd5FPU1JHQMi993XU6BnOioTMeVpV9pO5xlrzwhbiuaRWHOK
         UgrxQphfAoIFH7PuCuZYNcdRBe0JGSIpA+who=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TcdXkIRAgGt9vXRg+9Us0U0AFK7n0jMIa5WCvYtwILM=;
        b=J7tJiZ4d5PlMGQxyx8Qx/Tlq9KwMRUjV2kjErYcEYdTuqtz9k4IMeffu5GGQRq3RUP
         0jwzIaWLREnd1onQZdLjIWjM94y3DH+oC1x1Qx7VZ0SENqOl3WzUn/tDHuAD36BE5bXl
         MTjI1/M0456Cc/gxtHARrGBNrOs+L852jT/aN1R7rEaXuQluM1BseoXxwcHyb7pR235f
         9QMJ5Rz/Cfps/41obTPtLq3ejM5fDBPgWfTHPUkpSVjtC+p0LJFBOu5D9kPxKkUMyOnB
         ke0+KuPgzu3MV0uLl91wGu579cjRILo/aIbtcD2JKFUq9Yi5ADB4JwpWKgqyipeNKA8K
         ZETw==
X-Gm-Message-State: AOAM530aghmvlfO0uk8PYp1Rka8CtGpxPqV6gkJ801rpmB7O5GzqQAWa
        ZQzvpLdRHjsGeiMecaBOjmKiMg==
X-Google-Smtp-Source: ABdhPJyvaGe6IuXXfOb+69HllwzXZHyMNkRjAzV8J/qE513073dFZWsGZiJRD8ocLZcYuMZ0WrjqAg==
X-Received: by 2002:a17:90a:ead5:: with SMTP id ev21mr817563pjb.188.1600113137463;
        Mon, 14 Sep 2020 12:52:17 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id jz6sm10163667pjb.22.2020.09.14.12.52.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 12:52:16 -0700 (PDT)
Date:   Mon, 14 Sep 2020 12:52:15 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Alan Stern <stern@rowland.harvard.edu>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bastien Nocera <hadess@hadess.net>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        linux-usb@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Peter Chen <peter.chen@nxp.com>, linux-kernel@vger.kernel.org,
        "Alexander A. Klimov" <grandmaster@al2klimov.de>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH 2/2] USB: misc: Add onboard_usb_hub driver
Message-ID: <20200914195215.GD2022397@google.com>
References: <20200914112716.1.I248292623d3d0f6a4f0c5bc58478ca3c0062b49a@changeid>
 <20200914112716.2.I7c9a1f1d6ced41dd8310e8a03da666a32364e790@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200914112716.2.I7c9a1f1d6ced41dd8310e8a03da666a32364e790@changeid>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I just noticed that building this results in a compilation error, due
to a missing brace. I tested this patch, but with another patch on top
with debug logs, the other patch adds the brace.

I'll still hold off a bit before sending v2, for if others have
comments.

On Mon, Sep 14, 2020 at 11:27:49AM -0700, Matthias Kaehlcke wrote:

> diff --git a/drivers/usb/misc/onboard_usb_hub.c b/drivers/usb/misc/onboard_usb_hub.c
> new file mode 100644
> index 000000000000..e5a816d0b124
> --- /dev/null
> +++ b/drivers/usb/misc/onboard_usb_hub.c
>
> +static int onboard_hub_suspend(struct platform_device *pdev, pm_message_t msg)
> +{
> +	struct onboard_hub *hub = dev_get_drvdata(&pdev->dev);
> +	int rc = 0;
> +
> +	if (!hub->cfg.power_off_in_suspend)
> +		return 0;
> +
> +	hub->has_wakeup_capable_descendants = false;
> +
> +	if (hub->cfg.wakeup_source) {
> +		struct udev_node *node;
> +
> +		mutex_lock(&hub->lock);
> +
> +		list_for_each_entry(node, &hub->udev_list, list) {
> +			if (usb_wakeup_enabled_descendants(node->udev)) {
> +				hub->has_wakeup_capable_descendants = true;
> +				break;

missing brace here:	}

> +		}
> +
> +		mutex_unlock(&hub->lock);
> +	}
> +
> +	if (!hub->has_wakeup_capable_descendants)
> +		rc = onboard_hub_power_off(hub);
> +
> +	return rc;
> +}
