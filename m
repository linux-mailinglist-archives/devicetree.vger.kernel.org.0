Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6897B13DC2B
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2020 14:36:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726688AbgAPNfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jan 2020 08:35:36 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:50647 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726872AbgAPNfd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jan 2020 08:35:33 -0500
Received: by mail-wm1-f67.google.com with SMTP id a5so3810614wmb.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2020 05:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=ex5iQAOgOE6sJdpP0UDJP/wplcXOALsRuy3uUtlLaZk=;
        b=qvE1YVwT35KAeibCSPNMT/6IWonjdnLnAq1kCZSEo2b6CAJEN9devCVU4H5nrBg2rO
         v4d7PuV0IkaKNwVaPYX6jabBbx/jR9M39wGOm+HZHZNqIgGZN76fsJvUlDZufuLHPvOJ
         HXr/9CHED1bnmgkT9sgFnuN1mKu7ErycVEgs83sk7SIZ2GoCxuZTB1LUP7Luz76nf7oe
         +cfe3FbC79HZVuUG7Yj315LHG7QVX3BJoTY/1cLlNnHpW2KyYbDRQMYehIQ4UW/9qX+M
         37YsSC5z93n/8D+dDEAGa0xl9vvuSt9ruOiCzeE2BTKLh6bs2lxvVksLKYBVwmUurDHz
         CowQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=ex5iQAOgOE6sJdpP0UDJP/wplcXOALsRuy3uUtlLaZk=;
        b=P6wILwAlEfp8EkXjoipAJty/+AKEUCjggrUxl7AkBuLOs6LWk6aPQwHrnkIYK/GmfM
         oc7SXfqCtvvPRmSH018HSIpY4kCZFFVZLQcor5IXNHLl7E+n7x4dfGMx7EJ92dH7xqLS
         bkTRKlqMneiwGy4AGz5OAftVC0pkbmjWryZoj/ayhMgMXow1LCMtNIZPeETCyO3C0Btz
         ship/KlXZV0b4vNJiIjyxYCAcb6y93OVWXuyuTHt8svUfOnQaYQPlPNRCCqg7k1HI34C
         /IcajsExVA4Cm3OD6ZCAFEdoF+tGygN/3VL16CiVRoluXjCNJEemPzFZ9wgso45lwGqJ
         2NBA==
X-Gm-Message-State: APjAAAWagNncY2HYhPNRJUX3+Ag/oD4GYPevHBmYUg+7dTw8XmSZ90NL
        cgLwpobx4EqmbMkurYWJ9NitBQ==
X-Google-Smtp-Source: APXvYqzGsGr1esnWAtuowtgwjETYSUMAmmdt6JTJvoDok/p5abyr1h1lybNOYRUwc3ulCQlDtT9X5g==
X-Received: by 2002:a7b:c957:: with SMTP id i23mr6217830wml.49.1579181730878;
        Thu, 16 Jan 2020 05:35:30 -0800 (PST)
Received: from dell ([2.27.35.221])
        by smtp.gmail.com with ESMTPSA id u18sm28884904wrt.26.2020.01.16.05.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:35:30 -0800 (PST)
Date:   Thu, 16 Jan 2020 13:35:46 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     support.opensource@diasemi.com, linux@roeck-us.net,
        robh+dt@kernel.org, stwiss.opensource@diasemi.com,
        Adam.Thomson.Opensource@diasemi.com,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH 1/3] mfd: da9062: fix watchdog compatible string
Message-ID: <20200116133546.GR325@dell>
References: <20200108095704.23233-1-m.felsch@pengutronix.de>
 <20200108095704.23233-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200108095704.23233-2-m.felsch@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 08 Jan 2020, Marco Felsch wrote:

> The watchdog driver compatible is "dlg,da9062-watchdog" and not
> "dlg,da9062-wdt". Therefore the mfd-core can't populate the of_node and
> fwnode. As result the watchdog driver can't parse the devicetree.
> 
> Fixes: 9b40b030c4ad ("mfd: da9062: Supply core driver")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/mfd/da9062-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
