Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FC0C31158A
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 23:43:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232923AbhBEWc6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 17:32:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232392AbhBEOPz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 09:15:55 -0500
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04663C061D73
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 07:53:45 -0800 (PST)
Received: by mail-io1-xd2f.google.com with SMTP id f8so7573564ion.4
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 07:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HeuHLQ7JECkgdoRKO/4LxCyiZkjLTmsvyU3Pu79LXkI=;
        b=I9UpfpO5HdcWAccTUrGlLX5qDWG3gjoHXGhAAIBeWPfTAANsrkbXZALJ85OryQXAyS
         fNcjtbwQmYSL52UoY6vhHkjjlccBfDahNxMXl++WG6N09lFczbh7zDIR83X4D03y4kK8
         o72O0PaZAZNiF9cHenj+WaQxug7rrH73pyGFs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HeuHLQ7JECkgdoRKO/4LxCyiZkjLTmsvyU3Pu79LXkI=;
        b=ewjfzNcTfC/QtxhnwK3kBsCYfqMJZdwg9x0ucoIJ+NqU028k7uR1J8d513LMGBUYhY
         kZdqpSDTrcMPE+mNY3L0Z1oEOz+ZAM2mHnjucU3doFT5e05eBaY+fG5zRsvP8vTI2MpQ
         tbUhVYVJIBxoY//ZtnpnWDNIlnEXjpu8eOtASV1nyEEEkYvzFqSXiYsLLUSAlbupIC1L
         OtI8fJcJNOJ+6JX6bOH2yxBKcI59AIaHH2g88QaDD5JMU75nLpLd8WAV/vHrk79NWgHZ
         lvD+rG/U/9iOFSTSex2C/6bbN1XYVL+JRTgnT0s5dJvK5eW2VnDPDxbSE2DwWwa0jM+P
         Q5Uw==
X-Gm-Message-State: AOAM533ZcOx8wTPr8m0+a31X1TwUW0uNdYeZCWiq7mlPBGh52x2Uo4lP
        Wx4VnE9m2JlNgZ0bBYJNPxKNY/1yrFUsXw==
X-Google-Smtp-Source: ABdhPJwggCvQR4szPtjHEzcHzkL4vZDf5ZJJyUzEsKlv7v722TTDtRNwYaF155fTOamEK5fr2D9rSQ==
X-Received: by 2002:a37:c06:: with SMTP id 6mr4789531qkm.39.1612536958476;
        Fri, 05 Feb 2021 06:55:58 -0800 (PST)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com. [209.85.219.182])
        by smtp.gmail.com with ESMTPSA id d9sm9278930qko.84.2021.02.05.06.55.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 06:55:57 -0800 (PST)
Received: by mail-yb1-f182.google.com with SMTP id y128so6948826ybf.10
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 06:55:57 -0800 (PST)
X-Received: by 2002:a25:60d6:: with SMTP id u205mr6993695ybb.276.1612536957207;
 Fri, 05 Feb 2021 06:55:57 -0800 (PST)
MIME-Version: 1.0
References: <1612524533-3970-1-git-send-email-rbokka@codeaurora.org>
In-Reply-To: <1612524533-3970-1-git-send-email-rbokka@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 5 Feb 2021 06:55:45 -0800
X-Gmail-Original-Message-ID: <CAD=FV=W9YWxVY6cEEXBr1wMcMzEPak3PeyROSvmnOWewL9BiUQ@mail.gmail.com>
Message-ID: <CAD=FV=W9YWxVY6cEEXBr1wMcMzEPak3PeyROSvmnOWewL9BiUQ@mail.gmail.com>
Subject: Re: [PATCH] drivers: nvmem: Fix voltage settings for QTI qfprom-efuse
To:     Ravi Kumar Bokka <rbokka@codeaurora.org>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        dhavalp@codeaurora.org, mturney@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Feb 5, 2021 at 3:29 AM Ravi Kumar Bokka <rbokka@codeaurora.org> wrote:
>
> QFPROM controller hardware requires 1.8V min for fuse blowing.
> So, this change sets the voltage to 1.8V, required to blow the fuse
> for qfprom-efuse controller.
>
> To disable fuse blowing, we set the voltage to 0V since this may
> be a shared rail and may be able to run at a lower rate when we're
> not blowing fuses.
>
> Fixes: 93b4e49f8c86 ("nvmem: qfprom: Add fuse blowing support")
> Reported-by: Douglas Anderson <dianders@chromium.org>
> Suggested-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Ravi Kumar Bokka <rbokka@codeaurora.org>
> ---
>  drivers/nvmem/qfprom.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/drivers/nvmem/qfprom.c b/drivers/nvmem/qfprom.c
> index 6cace24..100d69d 100644
> --- a/drivers/nvmem/qfprom.c
> +++ b/drivers/nvmem/qfprom.c
> @@ -127,6 +127,16 @@ static void qfprom_disable_fuse_blowing(const struct qfprom_priv *priv,
>  {
>         int ret;
>
> +       /*
> +        * This may be a shared rail and may be able to run at a lower rate
> +        * when we're not blowing fuses.  At the moment, the regulator framework
> +        * applies voltage constraints even on disabled rails, so remove our
> +        * constraints and allow the rail to be adjusted by other users.

Some year maybe I'll try to fix the regulator framework to not count
voltage constraints for disbled rails, or perhaps have it be optional.
;-)  In theory it should be much easier after the patches we already
landed not to count current requests for disabled rails...


> +        */
> +       ret = regulator_set_voltage(priv->vcc, 0, INT_MAX);
> +       if (ret)
> +               dev_warn(priv->dev, "Failed to set 0 voltage (ignoring)\n");
> +
>         ret = regulator_disable(priv->vcc);
>         if (ret)
>                 dev_warn(priv->dev, "Failed to disable regulator (ignoring)\n");
> @@ -172,6 +182,17 @@ static int qfprom_enable_fuse_blowing(const struct qfprom_priv *priv,
>                 goto err_clk_prepared;
>         }
>
> +       /*
> +        * Hardware requires 1.8V min for fuse blowing; this may be
> +        * a rail shared do don't specify a max--regulator constraints
> +        * will handle.
> +        */
> +       ret = regulator_set_voltage(priv->vcc, 1800000, INT_MAX);
> +       if (ret) {
> +               dev_err(priv->dev, "Failed to set 1.8 voltage\n");
> +               goto err_clk_rate_set;
> +       }
> +

Looks right to me.  Assuming that this works.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
