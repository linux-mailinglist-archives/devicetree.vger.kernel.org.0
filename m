Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CAEB33041
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 14:51:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727159AbfFCMv0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 08:51:26 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:39311 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726635AbfFCMv0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 08:51:26 -0400
Received: by mail-wr1-f66.google.com with SMTP id x4so11948829wrt.6
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 05:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=//w7+gj+YCDiu+XYzXGAs4FiXS8Xv1GRhPL3l2VNgxc=;
        b=d1v58q/uCf3MUTR2MqC3s9eMJ6xjMcdXls/4rxxjWfnPsGXyY4Oh9Q16bsIP9/yk18
         9kVqRMjUqUJSq494E58O4PMztOj6nGnTs8x7wOSHAd1uLg6w/pzX5zZeoXQ5u5QQb2/K
         ohNxBcFihEw2S5PRqEve+iNyVI5bq0+esUc4Hj+Um7CsBviClqxPqNqNC2vLP/hQKbGu
         GO8jx2Uv1hXWIzalLYoqMPDqPLYPipBCSsAHEyjq2XORdqlA6EXYshQWPmK8lmSp/Vz7
         1JVCtefAJTAirawUqRkhupQjFTUTvLZn29OBa8Q3OvJGnQY5t7yBHAfNxW+ZnYpvWzSC
         60rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=//w7+gj+YCDiu+XYzXGAs4FiXS8Xv1GRhPL3l2VNgxc=;
        b=i+roHhCJtlHyC/ovJHA1ItWlkxqFdjutjBzVNeB7VETVyfYSOKH5cpsNbn7NnYY3RC
         l7VVjk3sY5wYVtBqeACFNptiTE0sgAOVHYGGmkXsiL2n5IhvFg1Fi2sLwCAv/jJnj5Pm
         h3y1TKY03ikTjjDKvkYbsWAre6Lbg8wBPVEeafMZ7EbDzQ79kiUlQWYOEZJMamyh2CJM
         3BW85KTT812N+maHeNYr/c+VXDfpH0O1c2AgvAFvXispCsdNbtfj9vWpwCDVepD+ePUo
         Dbr4DS4HB8UWx0Ju2hmBLoCEHETX+kHV+tGD43HUzD7NujyHti3uR7opy6gpVlvKzway
         TDOQ==
X-Gm-Message-State: APjAAAW+xwHplAE7P1CtDEveYRxapPwEj4rXQL8YB7UFz8lu0CNcVFrM
        VWvvEWKCbVcSFFt78f1Cc4UBdQ==
X-Google-Smtp-Source: APXvYqwt4p4CXCx33ofIHGNGomcbHc0cthxPBUVKD13CI3e/UHjwS1SDf6fhwySbFY2qv1grTUT3WA==
X-Received: by 2002:adf:9dd2:: with SMTP id q18mr13904358wre.50.1559566284361;
        Mon, 03 Jun 2019 05:51:24 -0700 (PDT)
Received: from dell ([2.27.167.43])
        by smtp.gmail.com with ESMTPSA id u205sm18229443wmu.47.2019.06.03.05.51.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 03 Jun 2019 05:51:23 -0700 (PDT)
Date:   Mon, 3 Jun 2019 13:51:22 +0100
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
Subject: Re: [PATCH v2 3/3] mfd: bd718x7: Make power button press duration
 configurable
Message-ID: <20190603125122.GS4797@dell>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
 <bada813d7c3818f86851e9a31b19a7251da441f5.1558471150.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bada813d7c3818f86851e9a31b19a7251da441f5.1558471150.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 May 2019, Leonard Crestez wrote:

> Allow overwriting the values in BD718XX_REG_PWRONCONFIG0 and
> BD718XX_REG_PWRONCONFIG1 via devicetree. Read values in milliseconds and
> attempt to round them to something supported by the hardware.
> 
> Keep existing values (from bootloader or OTP) if property is not
> present.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>  drivers/mfd/rohm-bd718x7.c | 42 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
