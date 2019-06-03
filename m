Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 819443303D
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 14:51:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726855AbfFCMvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 08:51:17 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:46891 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726635AbfFCMvQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 08:51:16 -0400
Received: by mail-wr1-f65.google.com with SMTP id n4so6681928wrw.13
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 05:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=jsMpxnqxK8frZSqOrZD/0A+WkhLEqjBJFcI4ZCeL/uE=;
        b=QXvIEbwvXMSNRkFIA1bzr81r5XRK8mXQYXcseYCsjIi650V5P3SXLV6GmzUwmCwnjv
         mYqOt6pIeOHAz2xqnc//RA/oBLKeLWF+5a200r5Nu096DVXTO7um/VkBmjo/3SVDOgir
         SZEd1cVW/qwD6p2yh3PpLBDmr5aZZmscP944jA3+qiNmkuXu7oJngHiXepBZmPSdQZpa
         00LEU05fgMj0UurQaXmTmiwT2yHhvblhOUxQwHML8mNuosAM2Ezw068KZXWRxTNbdvJH
         3ht9C1/ox4EiUZN/cSE8izoRsv6gSGtuKQPZB3D5JOCUOIRL4g551/lI0mYjjLVLu9Fv
         l+Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=jsMpxnqxK8frZSqOrZD/0A+WkhLEqjBJFcI4ZCeL/uE=;
        b=N4gYy2JIyGQsQk1fQeud6nSrgL4aUWyaArN2i7fnOnrUN5PX+q8YF5j3QOBVv0C92t
         1ep19BQ/DFJQ3ObsXm71o75H0eaFQiAiTirQAUA6TSVc00zLrRASz0/RhYy4cLThHi9X
         hxE5J3fUFn8WYjgn7J2kGbIAk621VG3dNuUF9/jlaCfctWhzpIl+BDpe0J0fPr5lEMoh
         9ajwij+uUiFin24t2oswFUMmNcxxMkF8+GZ/d2Y6Rbb58al+gZXV/+YPUCE3xm0eZbNA
         GmxA4f9PMDqFxnYcXC3LO1qQaRrmCAS+jFJREX1AJoMS21lOko+YqcXZv1kJBQDA8zZ5
         rgLA==
X-Gm-Message-State: APjAAAVRQto+NptWkI4nwDfB1aXAX9ST4IAgyi14xx80ErO/64r4AVyB
        Q66TYmgTnRINFurv7I3+X5SUxw==
X-Google-Smtp-Source: APXvYqwgspWNVyd0zuHg0777mfe9qEOYJ3e6u6KyKlLbsJhZC803m2nAN6HWXS6QNEHARnqbL9DtCg==
X-Received: by 2002:a5d:6748:: with SMTP id l8mr16423743wrw.199.1559566275338;
        Mon, 03 Jun 2019 05:51:15 -0700 (PDT)
Received: from dell ([2.27.167.43])
        by smtp.gmail.com with ESMTPSA id r9sm15180030wrq.0.2019.06.03.05.51.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 03 Jun 2019 05:51:14 -0700 (PDT)
Date:   Mon, 3 Jun 2019 13:51:13 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Leonard Crestez <leonard.crestez@nxp.com>
Cc:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Mark Brown <broonie@kernel.org>,
        Robin Gong <yibin.gong@nxp.com>,
        Angus Ainslie <angus@akkea.ca>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: Document short/long press
 duration for bd718x7
Message-ID: <20190603125112.GR4797@dell>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
 <ec750ff0021c942b3c477e1cc7dc35f957600c96.1558471150.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ec750ff0021c942b3c477e1cc7dc35f957600c96.1558471150.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 May 2019, Leonard Crestez wrote:

> These values can be overwritten at probe time.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>  .../devicetree/bindings/mfd/rohm,bd71837-pmic.txt         | 8 ++++++++
>  1 file changed, 8 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
