Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 56239120FBA
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 17:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726515AbfLPQiG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Dec 2019 11:38:06 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:37276 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726296AbfLPQiF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 11:38:05 -0500
Received: by mail-wr1-f68.google.com with SMTP id w15so8104305wru.4
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2019 08:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=RJfGZGrl4mq7TcebevEYAAGdj89wqTsIyY2AzoZNJZg=;
        b=lyvV6vFNgBoiTgIVaS4JIMPS2cBySlkahCSiktISYEv7wTk4WF5gXFh5lPYVT4ZLbN
         nMmTe3CySvRZBjk31x8VWSiTTPumFluyjzxlLGWBHAryInc1ZGbEeZqAdH3Y2MU1nf5s
         2sQg0KxnucMLhVYX90knLd9ZKAlnPnhofPbxH56MeNJQAHN67KyowAoIahFm/NE0ttGi
         LhNODHQTETuG68H/rtkKfwEoA8xkC/YJZ75TLxh5pYUEdMZio3+sJBDwkd5r3qfgADTR
         CqjUYjKBZZv1qkuJU0R0BzwvsmP9AFFHmFVhFVX8eEpV3bgTnvf/i0mZ2DRscTasqFQ2
         5uIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=RJfGZGrl4mq7TcebevEYAAGdj89wqTsIyY2AzoZNJZg=;
        b=O7a8eOMBDlqIeRe25xLM7//6CkfOkwUdXQ2bs9QMzMxuBluaCOPoeM7rn5l6WfZmx0
         7mC0AQ6hrOj1EjJRVMSx+APsG58VNacJ4/01/P9yuYetcVitD7t0sZOCS8oLBUKgWwmG
         HAsY8wMtSV2Ujm7GrafvSW2QM+7tORNyHKAve0W6UgP0cs+NzTi9U67OhkfncvjA0zhN
         jllaRCFiw+GD9f1k22C03uybayIi3dcYzWRMh0pIo6MfZXd+1yHgZaU8eBfmfLS6AInL
         vgem+N3GRJIya7LcLrqghz98c/63ip0xP3QWpm6+HCiS68f9CvPF3U6bpmA7v2DZv7OG
         /P6g==
X-Gm-Message-State: APjAAAXB9DoAnaHkMdwdAUlhBOGe1UGvoGmdXS22ANZtd3oPO7CBcs3S
        iXXH8EGJCLfmsu2azSUSR1T6xA==
X-Google-Smtp-Source: APXvYqyISoODlaaBNQBPOF1jvtun6/H1CK0qGCqV2CyLnIjWshoO5AgQ+rhKG6UM5XFpmO+Sz2402A==
X-Received: by 2002:adf:e8ca:: with SMTP id k10mr31579907wrn.50.1576514283856;
        Mon, 16 Dec 2019 08:38:03 -0800 (PST)
Received: from dell ([185.17.149.202])
        by smtp.gmail.com with ESMTPSA id c195sm10481729wmd.45.2019.12.16.08.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 08:38:03 -0800 (PST)
Date:   Mon, 16 Dec 2019 16:38:02 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Sven Van Asbroeck <thesven73@gmail.com>
Cc:     Pavel Machek <pavel@ucw.cz>,
        Linus Walleij <linus.walleij@linaro.org>,
        Grigoryev Denis <grigoryev@fastwel.ru>,
        Axel Lin <axel.lin@ingics.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Dan Murphy <dmurphy@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org
Subject: Re: [PATCH v6 2/2] dt-bindings: mfd: update TI tps6105x chip bindings
Message-ID: <20191216163802.GA18955@dell>
References: <20191216143259.24587-1-TheSven73@gmail.com>
 <20191216143259.24587-3-TheSven73@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191216143259.24587-3-TheSven73@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 16 Dec 2019, Sven Van Asbroeck wrote:

> The driver has been extended to optionally get its operational
> mode, regulator init data and LED naming from the devicetree.
> 
> Acked-by: Jacek Anaszewski <jacek.anaszewski@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
> ---
>  .../devicetree/bindings/mfd/tps6105x.txt      | 47 ++++++++++++++++++-
>  1 file changed, 46 insertions(+), 1 deletion(-)

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
