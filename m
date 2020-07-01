Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F33D82110CB
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2020 18:38:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732425AbgGAQiI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jul 2020 12:38:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731394AbgGAQiH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jul 2020 12:38:07 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5475C08C5DB
        for <devicetree@vger.kernel.org>; Wed,  1 Jul 2020 09:38:06 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id g2so14073484lfb.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2020 09:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=b+AvB/0HQsEmT/6dVyBt3aUmExGSI3jLVgR9pfCU6xI=;
        b=NGc3nSr+n0h4fP2ID26hOQgQ2mGQdX3utJApv6cBWQXcVI3h7Fc+D1QRBIQaXZnr11
         YgeqOntiAqKrnsCCfaKpVcqsrtPXTzfVbTUkjmkkNrnOIPMZykmbNj/2u4WCkAliAREg
         srt7gl91XjqmoYUp20v+a/dbguhGPKL1fabJgEWJI6T56t9/1CNQ8lqfXza8DolyiRh6
         YxcJG9lxOqaRR4KuOUA6S0lwFg3/kr+z1P4eliDfSaqRZvBfkOqJO2GlrsIs8/2UUGY3
         8VYcedkvX4qpBycLPBECUs7hYIk9hfSJ36kCPXDg9vPZk30LJD4yXA32EQ3JE1OeBAZY
         JHcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=b+AvB/0HQsEmT/6dVyBt3aUmExGSI3jLVgR9pfCU6xI=;
        b=JTY5xVzwFCL/93gZk/0XQgJHYlGk2dJ4cDlNwGoBggD503MpByVrC8TQ9+nQ0jh9Wq
         foamMSF12MHiiDQqrAcqO8wg7ALyqfJm1E2XXbjvYk63Z5na6IzxnLnOS3w1x5t1oNqx
         TqUW+h0Pr4knGk9y2TkZgyUf64KDopTEBZa+1spoVZxA+tQkS1xRkSDkzKSYXAJ22NyG
         uKTTemxEqpLrouMqYF/Q4JvyyM22vvrL/dppkQbIxQck9mHekw9Dq55XcQiLyxTXx5Yp
         tV2+Ke0ec/QbST9yrOsncAPdgpe7nnOKLL/ghdwbFMWcuc4h4fYViV3KOYbsys5e431N
         Ozpg==
X-Gm-Message-State: AOAM532LRnZO/SDWPThhVOl+BvPBmbfaOJyTOqbeIt6mBfbGVSqemgOF
        G6Iyhe/eYx+vN2MGds9A/SbPodaV3Dr0YolAjCcrrA==
X-Google-Smtp-Source: ABdhPJxK/nguThkBJd2Ux3XYuXE4KGHsrekK6XDG2RPUaVUVOzza6kVDTgWwFrm43mM2dign3+VsxQTsCovpxW3dEZ0=
X-Received: by 2002:ac2:47ed:: with SMTP id b13mr15611694lfp.21.1593621485126;
 Wed, 01 Jul 2020 09:38:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200701103126.1512615-1-megous@megous.com> <20200701152532.GA670324@ravnborg.org>
 <20200701163018.cfweuzp76qx5nsew@core.my.home>
In-Reply-To: <20200701163018.cfweuzp76qx5nsew@core.my.home>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 1 Jul 2020 18:37:53 +0200
Message-ID: <CACRpkdYf87RymMwUFL=nXNs3dFVveLt7u0X3haL=SN+N6+V_vQ@mail.gmail.com>
Subject: Re: [PATCH v6 00/13] Add support for PinePhone LCD panel
To:     =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Purism Kernel Team <kernel@puri.sm>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Icenowy Zheng <icenowy@aosc.io>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Samuel Holland <samuel@sholland.org>,
        Martijn Braam <martijn@brixit.nl>, Luca Weiss <luca@z3ntu.xyz>,
        Bhushan Shah <bshah@kde.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 1, 2020 at 6:30 PM Ond=C5=99ej Jirman <megous@megous.com> wrote=
:
> On Wed, Jul 01, 2020 at 05:25:32PM +0200, Sam Ravnborg wrote:
> > Hi Ondrej.
> >
> > On Wed, Jul 01, 2020 at 12:31:13PM +0200, Ondrej Jirman wrote:
> > > This patchset adds support for the LCD panel of PinePhone.
> > >
> > > I've tested this on PinePhone 1.0 and 1.2.
> > >
> > > Please take a look.
> > >
> > > thank you and regards,
> > >   Ondrej Jirman
> > >
> > > Changes in v6:
> > > - Fixed spacing in yaml
> > > - Fixed wrong vccio->iovcc supply name in the bindings doc
> > > - I noticed that the original driver uses a delay of 20ms in the init
> > >   function to achieve a combined total of 120ms required from post-re=
set
> > >   to display_on. I've added a similar delay to xbd599_init, so that
> > >   xbd599 panel also has the right timing. (patch 9)
> > > - v5->v6 diff: https://megous.com/dl/tmp/v5-v6.patch
> > > - Added review/ack tags
> > > - Learned to run dt_binding_check by myself ;)
> > The patch-set does not apply clean on top of drm-misc-next - due to
> > vrefresh removal.
> > Please re-spin.
>
> Sorry for that. Rebased and retested.

Sam will you apply it? I was in the middle of applying and ran into the sam=
e
issue :D

Yours,
Linus Walleij
