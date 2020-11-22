Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99F682BC398
	for <lists+devicetree@lfdr.de>; Sun, 22 Nov 2020 05:45:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727257AbgKVEol (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Nov 2020 23:44:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727237AbgKVEok (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Nov 2020 23:44:40 -0500
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76808C0613D3
        for <devicetree@vger.kernel.org>; Sat, 21 Nov 2020 20:44:40 -0800 (PST)
Received: by mail-ot1-x344.google.com with SMTP id h19so205803otr.1
        for <devicetree@vger.kernel.org>; Sat, 21 Nov 2020 20:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ofKTU8s93Yu2rM/fmGaOrrNeXKEZaodPNsHLyk7YFKc=;
        b=LhkL/kdyA5u95rH07pm/9mhJeB0WBhvhTtcGxY3w7nA40Rb7/tKY/SEvi2brBOO2b2
         yL0LLjPcEpenC0C8UcwXjtO4tDg29+JUIJO6Fr4LLctEKdCL68wVoihefre/nVFMTTgK
         t9TDVRa5Lp2x21kJd3tdJ8JKXVjw2a0ELRISJfn9kTF7+ahWpl7YHbo4ygWqAl3eowfm
         46cZi48/sEl8Bxv3IpTlUkU75fzasnDqvimKl3pajwGqyriJIMpyXWyUSUjQJaqk1Xze
         cJmHdGH2Kwb+lmtZ45yaxvSZMyrd8OivvxMm5idQRwDrVumhIZYwNmhzobQxGldTSca0
         IeJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ofKTU8s93Yu2rM/fmGaOrrNeXKEZaodPNsHLyk7YFKc=;
        b=D0Xd/YPS9cGFB7R//B2YQa+Hb7oh2zX71p5pIhjkJ3bbr9XtYjF3eWplr9GXEPkXby
         7vGOQAg8NnzW7RaMmuzA6gP2KYsQIKGUXQN846AeLAEUKyb3RQhOI1XMk5ixPCoklvfk
         DuV4A1lsWl3HCAt0yYhRuQljDjDihfW2NKzbDDeXADZLR4PRbodMqyPFi4HiahvLBlz1
         +2cZ8O/GLZHW12LfLeFR38C8mQbnXyGpmHXA2ITqeNRGb3s+K+GRGGsqVCHbniHIH7Ua
         +glqKaLlS8A8wuRP6bG27uPMTYkP8qtsOz8u1giidROHduxQuR4Eb2JeS+LwCu4P3WQS
         q2tQ==
X-Gm-Message-State: AOAM532rPjNpeJSiPtdv2kNEgQprj3yrplhRXKs1VnDnIOH/BlhuudWs
        zRRafOeVce3vUck7iUPGj86p6w==
X-Google-Smtp-Source: ABdhPJyu8MOKaGOM4pcmWlx5aDi5lhHtms/5L7yJ6jZ8ns80O/XzxBRa6aCQ8cGCi4Jt6TalL/Sxqg==
X-Received: by 2002:a9d:1a6:: with SMTP id e35mr19589299ote.238.1606020279605;
        Sat, 21 Nov 2020 20:44:39 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t5sm4382777oth.16.2020.11.21.20.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 20:44:38 -0800 (PST)
Date:   Sat, 21 Nov 2020 22:44:34 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     "N?colas F. R. A. Prado" <nfraprado@protonmail.com>
Cc:     Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Brian Masney <masneyb@onstation.org>,
        Luca Weiss <luca@z3ntu.xyz>,
        Russell King <linux@armlinux.org.uk>,
        Georgi Djakov <georgi.djakov@linaro.org>,
        linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
        andrealmeid@collabora.com
Subject: Re: [RFC PATCH 1/3] leds: Add driver for QPNP flash led
Message-ID: <20201122044434.GG95182@builder.lan>
References: <20201106165737.1029106-1-nfraprado@protonmail.com>
 <20201106165737.1029106-2-nfraprado@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201106165737.1029106-2-nfraprado@protonmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 06 Nov 10:58 CST 2020, N?colas F. R. A. Prado wrote:

> Add driver for the QPNP flash LED. It works over SPMI and is part of the
> PM8941 PMIC.
> 
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@protonmail.com>
> ---
>  drivers/leds/Kconfig     |    9 +
>  drivers/leds/Makefile    |    1 +
>  drivers/leds/leds-qpnp.c | 1351 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 1361 insertions(+)
>  create mode 100644 drivers/leds/leds-qpnp.c
> 
> diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
> index 849d3c5f908e..ca5f6e81c064 100644
> --- a/drivers/leds/Kconfig
> +++ b/drivers/leds/Kconfig
> @@ -928,6 +928,15 @@ config LEDS_ACER_A500
>  	  This option enables support for the Power Button LED of
>  	  Acer Iconia Tab A500.
>  
> +config LEDS_QPNP
> +	tristate "Support for QPNP LEDs"
> +	depends on SPMI
> +	help
> +	  This driver supports the flash/torch led of Qualcomm PNP PMIC.
> +
> +	  To compile this driver as a module, choose M here: the module will
> +	  be called leds-qpnp.
> +

Downstream they seem to have a single "led driver" dealing with all the
LED related interfaces in the PMIC. We have WLED upstream already and
I've been poking at an "LPG" driver.

So as you look into Jacek's request please make this a "qcom spmi flash
driver", instead of a "qpnp leds" driver.

Regards,
Bjorn
