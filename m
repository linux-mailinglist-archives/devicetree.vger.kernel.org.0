Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F8562F978D
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 03:04:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730523AbhARCEj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 21:04:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730365AbhARCEf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 21:04:35 -0500
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D6E0C061574
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 18:03:55 -0800 (PST)
Received: by mail-io1-xd30.google.com with SMTP id z22so3297502ioh.9
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 18:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=O3vR2z56Ju8deovQ5OzdEqwpGVdMnT5d3k23oCPpdpE=;
        b=w1ucSC4CsfArGDDmu/srEDmwi4U/Dw9W+lSlM9i1iNZ1ZKybUTK/XiJ/5JyoEnLEUs
         dS+LJLuWDL4iWDzIY0g0GseCY0wBM6Noe3noRHom0GgjuTT3996zAGxplwRij9gSjMhN
         v8sAdyCCxmEulp0ONSL5y4czlsC1L7GAOgHRJMw3HHAeX455xzWCUNV0U9HaBngDcfpJ
         jqfwO5rnPJc2/vQhT4KC8/JCFlUqgEQkX0A+mNwJpsnCqfLbgYNvJUtaKCehSZSB40n0
         Qk7ijENbiLCrUbysUNMtn0aqFhERqftlqYQkjlf8zxXNUMh9aAqHBdJSXqhZhihnGVqC
         41/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=O3vR2z56Ju8deovQ5OzdEqwpGVdMnT5d3k23oCPpdpE=;
        b=Ko7UNHdBrJGBjKMebrVds6JZcavImPT6BQZmwS2bqKhzA8n/+1+ZM9ZuN205hH+gjn
         xnwFFtUOg9vGzYDitIRHYmAp5q/0kURvQCtyylbaOcOxn8boylbmylVr08wTctbau+el
         vO+78M6WIzA5cI+zplT2GhNXGWS9pAplG4XoVOUfn/KbTW4GG3PYiHGxlVXT7qAsnjSP
         iNGdmYt8HTyRHOQSwNjtu0ATdmffC49R8rPeMndLx+n5FpupYvI4qLxIBYbiwuejZkig
         beup3lfQfh/pG4Xv5PgKNiixhoNKpgfD00Sjg+nR2I0LMnB8GSTmfmO3SNv79QDAhKoU
         maJA==
X-Gm-Message-State: AOAM531JXkml3tM2A5Z1ikRc5fVCGqJcFcbOeevAcYoP+DVqyuIRGrEr
        SSRV7ahp6D7TRgSeKxMcqsrcATGkFSg613IWERWosQ==
X-Google-Smtp-Source: ABdhPJwSC3CvfhYeFLcOwiQWyegVKqrUVeIKDA2mn4F/hw/vHFHUgiYddoussLLbP3atey+SsTKNy8OahClOEOWsGVM=
X-Received: by 2002:a5d:940d:: with SMTP id v13mr1251502ion.193.1610935434645;
 Sun, 17 Jan 2021 18:03:54 -0800 (PST)
MIME-Version: 1.0
References: <20210117035140.1437-1-alistair@alistair23.me> <20210117035140.1437-2-alistair@alistair23.me>
 <CAOesGMiLZGdjQTLj48B8dXV1vv2p-NG751m-bh61mJ-10N-rAw@mail.gmail.com> <CAKmqyKO_xxrzMHB7Fuxq_5xT6JH8sOudKAKgug_FiS08MiJ94w@mail.gmail.com>
In-Reply-To: <CAKmqyKO_xxrzMHB7Fuxq_5xT6JH8sOudKAKgug_FiS08MiJ94w@mail.gmail.com>
From:   Olof Johansson <olof@lixom.net>
Date:   Sun, 17 Jan 2021 18:03:43 -0800
Message-ID: <CAOesGMh9X3OwzftRQYVsz6=Wv_wkm-wh_ucN91e6FCbjnG3X+g@mail.gmail.com>
Subject: Re: [PATCH 2/2] remarkable2_defconfig: Add initial support for the reMarkable2
To:     Alistair Francis <alistair23@gmail.com>
Cc:     Alistair Francis <alistair@alistair23.me>,
        Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, Jan 17, 2021 at 5:36 PM Alistair Francis <alistair23@gmail.com> wrote:
>
> On Sun, Jan 17, 2021 at 5:30 PM Olof Johansson <olof@lixom.net> wrote:
> >
> > Hi Alistair,
> >
> > On Sun, Jan 17, 2021 at 3:09 PM Alistair Francis <alistair@alistair23.me> wrote:
> > >
> > > This defconfig is based on the one released by reMarkable with their
> > > 4.14 kernel. I have updated it to match the latest kernels.
> > >
> > > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> >
> > It's awesome to see upstream support for contemporary consumer
> > products being posted, thanks!
>
> No worries!
>
> >
> > When it comes to a dedicated defconfig, is that necessary in this
> > case? The needed drivers should be possible to enable either in
> > imx_v6_v7_defconfig, or in multi_v7_defconfig (or, rather, both)?
>
> Most of the defconfi could be shared with a standard imx7 config, but
> some of the extra components like the Wacom digitiser,
> cyttsp5_i2c_adapter, max77818 and bd71815 might be better off in it's
> own defconfig.
>
> If the maintainers are happy with enabling some of those in a imx7
> defconfig then I'm happy to do that. I have tried to split out the
> config changes (I have two otehr series that build on this one) so it
> should be easy to rebase it all on a standard one.

Yeah, enabling those in imx_v6_v7_defconfig and multi_v7_defconfig is
fine (or, really, desirable and preferred).

Please enable as modules where possible (i.e anything that's fine to
wait loading until after rootfs is mounted), to avoid kernel image
growth on platforms that don't need those drivers.

> > Adding new defconfigs is something we're avoiding as much as possible,
> > since it adds CI overhead, and defconfigs easily get churny due to
> > options moving around.
> >
> > In some cases we do it once per SoC family (i.e. the i.MX defconfigs),
> > but we avoid it for products.
>
> Makes sense, I will update my patches not to use a custom defconfig.

Awesome, thanks!


-Olof
