Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B3FC8D274
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 13:46:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727273AbfHNLq3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 07:46:29 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:40428 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726722AbfHNLq3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 07:46:29 -0400
Received: by mail-lj1-f193.google.com with SMTP id e27so9352828ljb.7
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 04:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HVIUs4ZIQVm7b7SR1n38pcFhXz6C3M2CIhWpAxdt8LQ=;
        b=OV6v4RpJEGTSaeN9WjacjemHo7ZUtwknpaHLLy+MEre+zyB39wCwfeJtTg+FZ8IZ+B
         OcJGOV/93rJokdOIQwig6ROI8s46ddhjgNFjuNQIRHDFv0ccHr12uxB9mmYTVVx67gy1
         s8hLywCYXHwDkDbFXcF0V4TeSFIfT3tVWiVJTVB7XNHhkoelxy83LEM1tJcaxshNsR7G
         nbvYUYuPB2OPUjvHesf9PtA8fp6EqjxvwKx+GijgH5csPsIWsi1CddxxpdnawisyZMAF
         G1GvqKTt8QXGUkeS0wAZzBsBRXx6kryesDbVbLTprqrHNM3bOGm2jgMnuynRAAZzCWXS
         SI9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HVIUs4ZIQVm7b7SR1n38pcFhXz6C3M2CIhWpAxdt8LQ=;
        b=tw9QC5uTTPoCdFK90la1H6HI1nm+P9lNH+digDeV6D2bqU8CzEmY5UrwwAqtSJDllo
         l8LYeavEVGPHFyLysi33QGLIxw+8AgAo4qkBkt2ygTgnzdb5+T8j6HCkVH/gSvPL4Le7
         vq/AVt7aHBWMK/EeEUxkTETn2Wsr84rl7XTBRCvKtJFemz3vW/x97m8TFdviv0MkD8y0
         eAjdimXSH4WlCFh6SAk8Nf3Mz+y+sbCho+5ScTCjGqOXaG/dxkhdDvep6V+wH2HBqtep
         bYEwecGSi2nvEbaXN8hAoJu5xdBCN2N+LiquWWRtOovT9ZV8oagAVCTE9FMzz12oNbIW
         Wyfw==
X-Gm-Message-State: APjAAAWFt9nA/QPJFWx7zHYZM2PbonUP1/9Mxzawgs4XmzGwoGwq5ft6
        WYdgvlSZUWJhRsvTxngE1BAlGYII/YsoixqAIMc1tQ==
X-Google-Smtp-Source: APXvYqx8H8wf2cUfndKRitBxUVt4PunZZn7bV5z50HzDJV5mvhAjxp+vVMjixTxwiL4xvtZ+Nynqmt1s1BQ2RX367ts=
X-Received: by 2002:a2e:b4e6:: with SMTP id s6mr11087965ljm.169.1565783187372;
 Wed, 14 Aug 2019 04:46:27 -0700 (PDT)
MIME-Version: 1.0
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com> <1565779731-1300-7-git-send-email-robert.chiras@nxp.com>
In-Reply-To: <1565779731-1300-7-git-send-email-robert.chiras@nxp.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Wed, 14 Aug 2019 12:44:34 +0100
Message-ID: <CAPj87rMFG=RGmfVnawbE7qX4zU7vdYxLJB__K4E3B8jcJ764KQ@mail.gmail.com>
Subject: Re: [PATCH v2 06/15] drm/mxsfb: Update mxsfb with additional pixel formats
To:     Robert Chiras <robert.chiras@nxp.com>
Cc:     =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Robert,

On Wed, 14 Aug 2019 at 11:49, Robert Chiras <robert.chiras@nxp.com> wrote:
> +       case DRM_FORMAT_BGR565: /* BG16 */
> +               if (mxsfb->devdata->ipversion < 4)
> +                       goto err;
> +               writel(CTRL2_ODD_LINE_PATTERN(CTRL2_LINE_PATTERN_BGR) |
> +                       CTRL2_EVEN_LINE_PATTERN(CTRL2_LINE_PATTERN_BGR),
> +                       mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
> +               /* Fall through */
> +       case DRM_FORMAT_RGB565: /* RG16 */
> +               ctrl |= CTRL_SET_WORD_LENGTH(0);
> +               ctrl &= ~CTRL_DF16;
> +               ctrl1 |= CTRL1_SET_BYTE_PACKAGING(0xf);
> +               break;

For non-BGR formats, do you need to write RGB line-pattern back to the
CTRL2 register? Otherwise, if you start with BGR565 then switch back
to RGB565, presumably CTRL2 would still be programmed for BGR so you
would display inverted channels.

Same goes for all the other BGR/RGB format pairs below.

Cheers,
Daniel
