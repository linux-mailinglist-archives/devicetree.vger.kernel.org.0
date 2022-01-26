Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C719749CEFE
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 16:55:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231177AbiAZPzJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 10:55:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231776AbiAZPzJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 10:55:09 -0500
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEC49C061747
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 07:55:08 -0800 (PST)
Received: by mail-il1-x132.google.com with SMTP id y17so57030ilm.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 07:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8N6pkwfXspakdaJZNWnP38Bamfx4gDdG3F4Wrj2z8a0=;
        b=R4PjleZoJRZEHoITMXop0eh4gJ/ykFxgKSZE/XIEndxWeSjox8Ho5Y5WSEwGWD5nwI
         9IYUDjyO/sH115RZ8zr4aaHKv4uwuJ6DuRjt//KHrKEHmkUBteL2Q1nGUdQFKi1z9vuI
         qG8pW5RzxHr7VPzE3Xb0fueZxlRwCDsn2SfCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8N6pkwfXspakdaJZNWnP38Bamfx4gDdG3F4Wrj2z8a0=;
        b=EV01ssL6xeNkVJYdYXJfbeaApLRToLBy9NWNFJAlPtvoXuUWAIBpOTJUf0W+R1opg2
         fZJlX+8Q6kj+VJwJHBNDTKciOPTqSgSgql/BAvw4l1VCAEN9p64Wrpi4lNlD6wtjYGQo
         CdS6D1XC7WjcLqmxv7zepWmY3WFsnfUWr6zOyFCDybcNmeywSp6ykW9fTP+3CrxEY45Z
         1XYQjrvRT5wn3bd1S11i+zyPf1gytQmS2Xab9mmK6l2fMt2zcibnUC8i90SXPnhgN+sj
         /q5ldCiZm+J8qMlVbeCJvLNj0TYzYJ+K+r+dFDhppFiYM5miiVGaP7BCafy/g6bbLDLQ
         YuRw==
X-Gm-Message-State: AOAM5332nMDaaJ61PT7Rvttq6tVifdXtdxrkB1qgENMBvn0OwLf74wWV
        jLxv1h1INKK+zn1/DAcshDdHTkYcJBPo4g==
X-Google-Smtp-Source: ABdhPJyDRa2mmcSjtK4Wi/quje3J4F96XM0F9JmQGfWue2qOFtL8UQZp4aucPx03A0jeb3CveHiHog==
X-Received: by 2002:a92:c267:: with SMTP id h7mr14121952ild.272.1643212507997;
        Wed, 26 Jan 2022 07:55:07 -0800 (PST)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com. [209.85.166.42])
        by smtp.gmail.com with ESMTPSA id f4sm10706790iow.7.2022.01.26.07.55.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 07:55:06 -0800 (PST)
Received: by mail-io1-f42.google.com with SMTP id q204so27611iod.8
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 07:55:06 -0800 (PST)
X-Received: by 2002:a02:7a4f:: with SMTP id z15mr10410746jad.50.1643212505706;
 Wed, 26 Jan 2022 07:55:05 -0800 (PST)
MIME-Version: 1.0
References: <20220126145549.617165-1-s.hauer@pengutronix.de> <20220126145549.617165-8-s.hauer@pengutronix.de>
In-Reply-To: <20220126145549.617165-8-s.hauer@pengutronix.de>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 26 Jan 2022 07:54:53 -0800
X-Gmail-Original-Message-ID: <CAD=FV=U7W_oWjS_gCurAkNdkcuHQGn-XH=-VwP2MSG9zO92ySg@mail.gmail.com>
Message-ID: <CAD=FV=U7W_oWjS_gCurAkNdkcuHQGn-XH=-VwP2MSG9zO92ySg@mail.gmail.com>
Subject: Re: [PATCH 07/27] drm/rockchip: dw_hdmi: Use auto-generated tables
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Yakir Yang <ykk@rock-chips.com>,
        =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jan 26, 2022 at 6:58 AM Sascha Hauer <s.hauer@pengutronix.de> wrote=
:
>
> From: Douglas Anderson <dianders at chromium.org>
>
> The previous tables for mpll_cfg and curr_ctrl were created using the
> 20-pages of example settings provided by the PHY vendor.  Those
> example settings weren't particularly dense, so there were places
> where we were guessing what the settings would be for 10-bit and
> 12-bit (not that we use those anyway).  It was also always a lot of
> extra work every time we wanted to add a new clock rate since we had
> to cross-reference several tables.
>
> In <http://crosreview.com/285855> I've gone through the work to figure

The `crosreview.com` syntax doesn't seem to work anymore. Could maybe
update to https://crrev.com/c/285855 ?

> out how to generate this table automatically.  Let's now use the
> automatically generated table and then we'll never need to look at it
> again.
>
> We only support 8-bit mode right now and only support a small number
> of clock rates and and I've verified that the only 8-bit rate that was
> affected was 148.5.  That mode appears to have been wrong in the old
> table.
>
> Changes since v3:
> - new patch
>
> Signed-off-by: Douglas Anderson <dianders at chromium.org>
> Signed-off-by: Yakir Yang <ykk at rock-chips.com>

Should probably change the "at" to "@" ?

> Reviewed-by: St=C3=A9phane Marchesin <marcheu at chromium.org>

In general shouldn't carry downstream reviews when posting upstream
unless you're certain that the person intended it...


It's been a long time, but in general I think I was fairly confident
in the numbers that my script pumped out, at least given the caveat of
no pixel repetition and 8-bit only. That being said, I didn't have any
inside knowledge of the hardware and just figured out formulas that
seemed to match the table that I had. YMMV.

I'll also say that when I did a rebase of veyron (rk3288-based
Chromebook) to 4.19 about 2.5 years ago, I ended up squashing several
of these patches into 1. That can be found at
<https://crrev.com/c/1661056>. That also has details about why some of
these patches never made it upstream. The main reason, at least in the
case of rk3288, was the PLL sharing problem that nobody ever solved.
rk3288 didn't have quite enough PLLs and thus, if you were using both
VOPs, one of the VOPs was going to be severely limited in what pixel
clocks it could make. There was no framework deciding which VOP should
be limited and how the system should react to this...


In any case, I'm pretty far disconnected from all this stuff now, but
I wish you the best of luck in trying to get it all solved!

-Doug
