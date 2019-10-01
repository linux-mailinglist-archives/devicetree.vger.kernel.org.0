Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4F437C3186
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 12:34:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729675AbfJAKeH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 06:34:07 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:41951 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726190AbfJAKeG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 06:34:06 -0400
Received: by mail-io1-f66.google.com with SMTP id n26so18049024ioj.8
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2019 03:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6AUoGAsc63xfOju6F5+pghwj/1bxK9PF7awTWjOwEOw=;
        b=XUYmuQi/GnwvsxCVi1F3iJRRhqxT2zq5bjp2Uoi/9d7VjsYEhxlebxKmO7/pd0xa0H
         OlITP0GsH0tmVi8M0vQbKLXpWPrI6YwTCXgJNnvpO0zkclQPnr1DDQ4PgxjuhEdIFZVb
         vXJlKxDJKbr82gIIl2ssLSyg+wte6jcrsEVPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6AUoGAsc63xfOju6F5+pghwj/1bxK9PF7awTWjOwEOw=;
        b=CLvkEbvkBExtjEK/ld2obuAHu+tSqP+yOXYJpkK/iIc44Ril7p4z5JcIR1yVmHdZaJ
         EXZ+nB+PwHashOzq6UXgmMWQVK3X1hl2ifoOd4ZYU1yH4pX1LpxszceiUVG2kxXGWMu1
         DjAPZKEKnLWo4EtQrlWHFK0lc+lpR43oYFyhh56e+f1jhtiyMk4+tvlnv90qxQyxeTsh
         Gx9okUkKI/oDvDJ+Bm4g8n8g5zFLkMtncibvYRBGPdqJShSrd8bfFZPcALLfHes9JLR9
         kh365hft8Xr8Lc/AD3FD78TYPdwJ2R8cUBE+1nLFAFX+7qiSflHnrzWh769LYO5mgtL0
         kpaA==
X-Gm-Message-State: APjAAAWPfYiqhnQEdn+k24TQv7BtoNEz2VuPSsKX/xig8az1ArECbwjQ
        PQS+CwBQUcrYk7EgJ6SW8f9XmZBGSFsGFiebOQmGVw==
X-Google-Smtp-Source: APXvYqxHnKG/AQXbNeChYThj5dd5yvNkhFAenW0UYhhzFKDyKT0mVDkf/X7vv/S8KA9rQY7cWNQ/6OoDgDEEox0dNiU=
X-Received: by 2002:a02:6284:: with SMTP id d126mr23167865jac.51.1569926045668;
 Tue, 01 Oct 2019 03:34:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-5-jagan@amarulasolutions.com> <4177305.6QI6aNXrAv@phil>
In-Reply-To: <4177305.6QI6aNXrAv@phil>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 1 Oct 2019 16:03:54 +0530
Message-ID: <CAMty3ZBZ0kXsc-4EwUwy9rAHcDvhhYL1JWkyhhdvSvfRdyvvwA@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: Rename roc-pc with libretech notation
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Levin Du <djw@t-chip.com.cn>, Akash Gajjar <akash@openedev.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Da Xue <da@lessconfused.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 30, 2019 at 3:02 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Jagan,
>
> Am Donnerstag, 19. September 2019, 07:28:20 CEST schrieb Jagan Teki:
> > Though the ROC-PC is manufactured by firefly, it is co-designed
> > by libretch like other Libretech computer boards from allwinner,
> > amlogic does.
> >
> > So, it is always meaningful to keep maintain those vendors who
> > are part of design participation so-that the linux mainline
> > code will expose outside world who are the makers of such
> > hardware prototypes.
> >
> > So, rename the existing rk3399-roc-pc.dts with libretch notation,
> > rk3399-libretech-roc-rk3399-pc.dts
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile                           | 2 +-
> >  .../{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts}   | 0
>
> Somewhat "randomly" renaming files for "exposure" of the maker isn't the
> way to go. Especially as the file name itself is merely a handle and not
> meant for fame. The board filename should mainly enable developers to
> hopefully the correct board file to use/change - and "rk3399-roc-pc"
> is sufficiently unique to do that.
>
> Similar to how the NanoPi boards do that.
>
> And renames not only loose the history of changes but also in this case
> the file is in the kernel since july 2018 - more than a year, so this might
> actually affect the workflow of someone.

Yes, I agreed this point.

>
> So I'd really expect an actual technical reason for a rename.

This changes purely based on the recent changes on naming conventions
that have been followed in amlogic and allwinner with regards to
libretech [1]. I have seen few Bananapi boards from Allwinner H3 has
been converted as per Libretech computer recently. I assume these
changes are because libretech has part of co-designed vendor and also
open source forum supported for these hardware.

For further information, may be Da Xue can comment on this.

[1] https://libre.computer/products/boards/
