Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 21072AB246
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2019 08:14:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390603AbfIFGOx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Sep 2019 02:14:53 -0400
Received: from mail-wm1-f47.google.com ([209.85.128.47]:40490 "EHLO
        mail-wm1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390478AbfIFGOx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Sep 2019 02:14:53 -0400
Received: by mail-wm1-f47.google.com with SMTP id t9so5582975wmi.5
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 23:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=4VW5EActjzSTk7AYag6d/MGY6ejEC/or1qENLxgPsyo=;
        b=dbGyOsmTmsCCCGJqsQ9PHpGnPjtiP1wYVM9ZmJTwOpSipipviNJwWI5jSOjcyjtKlb
         +vd0ttjwEgGlnO+bshgFaXBNtdbM3oZ5jdWemCeAXmcVaYbcw7Ak3hjl3BM6LNE/04HS
         RTadtn3VoULTi2KksjJzX07o5DmBvjHD0ko5zWB/aNK22Gk09zu3a9etVLxULrGWzY6a
         BcIG16PLsjS8FpBGFMrUdWkrYEpoJLnBlr/oKNGglZCmlknyjPgIjOcIbq4uZ6DoILSh
         EXcffEDqjaoAphVDx2omAkCfBtu83rNGEnaUn+kN3/4Ks/6JElBOYBQiuy1UAN3SSgVV
         QYqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=4VW5EActjzSTk7AYag6d/MGY6ejEC/or1qENLxgPsyo=;
        b=PtF/oNlganLe9PU87rk6T2MRWcIND9DRcqkOYHFCuggzsnr2eXdDvraDrZefOHBAbO
         eFklLxnH7x9FgtpwvrQu0wOXH9QPQjcryHXkY2M+1K6GrO3FMyb6KJ/6LiB+b0NRfjiy
         eqCCREWRNkzbZmDzVaPJ+jOxTzYs7X6IxmYZIi5z28I7tcOU95f4VBJaZh7WDk3YJTFy
         F7/A217cP3noz+CIE7hpAhSdK7hGQRLbEH3jIZU+2YiPyBR+yuLXT7aZxNTNgjwSpQWf
         ym/Q8xEX6Bhn6Q4iQVuExN2d+IbzgMs5DewNS58Tkeb5dI8mh0K4sH2AIMomU8FBGzWi
         AzbA==
X-Gm-Message-State: APjAAAWL+dsCr09dziP+T+PpJPjARL2sIWeAIrBwApNCV1fHPIEqWrEE
        g4VQkh3Nml83c3md0E1Vh8o8HnyuDfc=
X-Google-Smtp-Source: APXvYqxsDA0NAwr7Py5LVAnyB4jY1o506l6wGEbznUrXFWtr/7djvZYfv7kP9rEOlBaVYGI3sA6blA==
X-Received: by 2002:a05:600c:2181:: with SMTP id e1mr5748634wme.117.1567750490764;
        Thu, 05 Sep 2019 23:14:50 -0700 (PDT)
Received: from dell ([95.147.198.36])
        by smtp.gmail.com with ESMTPSA id c10sm955648wrf.58.2019.09.05.23.14.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 05 Sep 2019 23:14:49 -0700 (PDT)
Date:   Fri, 6 Sep 2019 07:14:48 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     agross@kernel.org, alokc@codeaurora.org,
        bjorn.andersson@linaro.org, mark.rutland@arm.com,
        robh+dt@kernel.org, vkoul@kernel.org, wsa@the-dreams.de,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [RESEND v3 1/1] i2c: qcom-geni: Disable DMA processing on the
 Lenovo Yoga C630
Message-ID: <20190906061448.GJ26880@dell>
References: <20190905192412.23116-1-lee.jones@linaro.org>
 <5d71ef95.1c69fb81.6d090.085d@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5d71ef95.1c69fb81.6d090.085d@mx.google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 05 Sep 2019, Stephen Boyd wrote:

> Quoting Lee Jones (2019-09-05 12:24:12)
> > We have a production-level laptop (Lenovo Yoga C630) which is exhibiting
> > a rather horrific bug.  When I2C HID devices are being scanned for at
> > boot-time the QCom Geni based I2C (Serial Engine) attempts to use DMA.
> > When it does, the laptop reboots and the user never sees the OS.
> > 
> > Attempts are being made to debug the reason for the spontaneous reboot.
> > No luck so far, hence the requirement for this hot-fix.  This workaround
> > will be removed once we have a viable fix.
> > 
> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > ---
> >  drivers/i2c/busses/i2c-qcom-geni.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> > index a89bfce5388e..17abf60c94ae 100644
> > --- a/drivers/i2c/busses/i2c-qcom-geni.c
> > +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> > @@ -355,11 +355,13 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
> >  {
> >         dma_addr_t rx_dma;
> >         unsigned long time_left;
> > -       void *dma_buf;
> > +       void *dma_buf = NULL;
> >         struct geni_se *se = &gi2c->se;
> >         size_t len = msg->len;
> >  
> > -       dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
> > +       if (!of_machine_is_compatible("lenovo,yoga-c630"))
> 
> This compatible isn't in the 5.3 rc series nor is it in linux-next yet.
> Is this "hot-fix" for the next merge window? Or is this compatible
> string being generated by firmware somewhere and thus isn't part of the
> kernel?

It's on the list and will be in all of the distro v5.3 release kernels.

https://lkml.org/lkml/2019/9/5/695

> > +               dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
> > +
> >         if (dma_buf)
> >                 geni_se_select_mode(se, GENI_SE_DMA);
> >         else

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
