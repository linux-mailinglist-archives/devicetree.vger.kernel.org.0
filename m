Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 91D7B121006
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 17:49:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726141AbfLPQre (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Dec 2019 11:47:34 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:39077 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726320AbfLPQra (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 11:47:30 -0500
Received: by mail-wm1-f67.google.com with SMTP id b72so5442033wme.4
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2019 08:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Hk4aENi5JfntNywk6okXwxduwNUObctMo6Ti9zshqoY=;
        b=MupdptuUoWe4nG6XWXO8Am4U5S+54eAzf2A0C0d2Y/5L2NO1Pz8TTYTYp5Oj5iY/hm
         93t/S9vt5md+700bRha+NTqKBl6oALW4Cyyoy6nn+4F5ibH3bCyki7R/JsAZ4NHflnE+
         ylV5xuhgvWwd1TxuaFKOb/aFAARfMBD2SMozH1sxIsh3v61V0bAF0jCcttX+d+5MsQ8a
         N7X0BKMbj5GiVmGpbnjoYcA5U6nauymoWAe/L8NRaOKwVvAw6MyZaLOAepZg7xnyZ+Wh
         oZqdlXigYNHIy+jwcnTQ+KhoxTXXftAxwM7ur1lCbGU4eP+IxWxLxRdYTCK5wujQtV8H
         6qig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Hk4aENi5JfntNywk6okXwxduwNUObctMo6Ti9zshqoY=;
        b=f6Wq0Gf2EDeKzko2VJxpzi14kWYMXsTpuU1Mi1vLGyRbZ+i4xT+Ypw/BCdQVO+4bih
         92XHTM+5WYH51HdKhrZV0WlUBA2/zp+uZs0adJrT2fDNA9xmAcx+/EovmvNwbtjo5RDw
         ML0cR+7n9p757V5dxHzrcmHE16EhuTpaoJ67CntRRm0C2d04RuRrDhDrFY7m39sX2QrN
         NnS3zL+dsZlE/6VuhYFPL0porvKycuqiyibLjzyM/YFCG/lHer20hg96IdXYTO2NCKbj
         NEi6U1T2iuh2VPP0dm6wv0YAuXit1iCMSy+lqAnl2W735HYhaHPK1pmkwesWOJeafV/T
         nOgA==
X-Gm-Message-State: APjAAAWa5F9Af3N/XrWPhtqHSyaIDf+pJl4Pi1uwF5ydXEgyWMl2s9Vl
        6aLEwXPS6RSxrZTyJs+DnqeRvA==
X-Google-Smtp-Source: APXvYqyNpItBQC+K60hdbMXgCjsSVi+l3bidixDPaRGU5wZG3XvKQQsnCfJdpNCLx9rGhg7CBCc8sw==
X-Received: by 2002:a05:600c:108a:: with SMTP id e10mr30010613wmd.38.1576514848119;
        Mon, 16 Dec 2019 08:47:28 -0800 (PST)
Received: from dell ([185.17.149.202])
        by smtp.gmail.com with ESMTPSA id p5sm21821060wrt.79.2019.12.16.08.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 08:47:27 -0800 (PST)
Date:   Mon, 16 Dec 2019 16:47:26 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     mazziesaccount@gmail.com,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Phil Edworthy <phil.edworthy@renesas.com>,
        Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-rtc@vger.kernel.org
Subject: Re: [PATCH v6 07/15] clk: bd718x7: Support ROHM BD71828 clk block
Message-ID: <20191216164726.GD18955@dell>
References: <cover.1576054779.git.matti.vaittinen@fi.rohmeurope.com>
 <b88c451a1bece5a22936e9a021146f3e026f8885.1576054779.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b88c451a1bece5a22936e9a021146f3e026f8885.1576054779.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 11 Dec 2019, Matti Vaittinen wrote:

> BD71828GW is a single-chip power management IC for battery-powered portable
> devices. Add support for controlling BD71828 clk using bd718x7 driver.
> 
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
> 
> No changes since v5
> 
>  drivers/clk/Kconfig              |  6 ++---
>  drivers/clk/clk-bd718x7.c        | 38 +++++++++++++++++++++++---------

>  include/linux/mfd/rohm-bd70528.h |  6 -----
>  include/linux/mfd/rohm-bd71828.h |  4 ----
>  include/linux/mfd/rohm-bd718x7.h |  6 -----

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
