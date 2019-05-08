Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 28A33173E5
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 10:33:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726600AbfEHIdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 04:33:09 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:40258 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726567AbfEHIdJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 04:33:09 -0400
Received: by mail-ed1-f65.google.com with SMTP id e56so21262683ede.7
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 01:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=pK6wVbjmnvB/fkRhlO06WndQQley/CLsWlKi7Lo/4rk=;
        b=jyKQzz7bipEyXQ6mMXMUmxM55YNMYTV09/uuB5zNRCY0/9ZBIP+Lfyi94AaxP8Hj0y
         hnYPMzZdHpSUNgX7RXjh+tdhhT8nVwCAOFUoj8mudlIsy8+E2rpAyby34PhbMF66SUe3
         RGDCf2Tg5xAYPjSK0ABIlA3ukX0dLv5ZwK9Bs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=pK6wVbjmnvB/fkRhlO06WndQQley/CLsWlKi7Lo/4rk=;
        b=m0srQtJkIVr8YjyS3thwwhFvXEDoq2O7+pizO4EF0BHgNQmxnwWYtE4I5NimgWkPBS
         WFmMJ6UeMb6+QCT4r6kMP0lPyI+6nfn+MFSV/TIDJLfA5pdHDvZs5iFVETE5RaRYK+mT
         XMv75DIKppEu7iHgxj3UoxWV7h55vwZ1qP3veynfE/tPVBrvxCe5HcXK7OlcAAvZGtCQ
         /rY2DUd1tvWahywzGDFjtMoU4yt0Vzcctxe4Cg0h7KJdOBH5x1NK24LjVnCtNcBQPpXt
         BgkduWKrGW6E0esl1mL5ztAcAwehv9v0aIfBd70zGqX029f18UxQp/bIfNccDcYH41ST
         sUZQ==
X-Gm-Message-State: APjAAAVCV/LMMR51Kr5oo0bXu+6o/D7gzIHIjma+QfKWpM3n2gx1Wp3C
        FIIhmiMjknx95HSFyBELpU41QQ==
X-Google-Smtp-Source: APXvYqwUkZlPgHY9vRwVHZGsHkyTtIbJaS1tfENj3GHg4lDVQYijjVoHXXBWgmsCGnRbNduUH4WMew==
X-Received: by 2002:a50:8927:: with SMTP id e36mr38416424ede.54.1557304387856;
        Wed, 08 May 2019 01:33:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id m27sm2593869eje.67.2019.05.08.01.33.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 May 2019 01:33:06 -0700 (PDT)
Date:   Wed, 8 May 2019 10:33:03 +0200
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        DRI mailing list <dri-devel@lists.freedesktop.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        stable <stable@vger.kernel.org>,
        =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>,
        Shawn Guo <shawnguo@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH RE-RESEND 1/2] drm/panel: Add support for Armadeus ST0700
 Adapt
Message-ID: <20190508083303.GR17751@phenom.ffwll.local>
Mail-Followup-To: Sam Ravnborg <sam@ravnborg.org>,
        Fabio Estevam <festevam@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        DRI mailing list <dri-devel@lists.freedesktop.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        stable <stable@vger.kernel.org>,
        =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>,
        Shawn Guo <shawnguo@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
References: <20190507152713.27494-1-sebastien.szymanski@armadeus.com>
 <CAOMZO5B2nMsVNO6O_D+YTSjux=-DjNPGxhkEi3AQquOZVODumA@mail.gmail.com>
 <20190507161950.GA24879@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190507161950.GA24879@ravnborg.org>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 07, 2019 at 06:19:50PM +0200, Sam Ravnborg wrote:
> Hi Fabio
> 
> On Tue, May 07, 2019 at 12:33:39PM -0300, Fabio Estevam wrote:
> > [Adding Sam, who is helping to review/collect panel-simple patches]
> > 
> > On Tue, May 7, 2019 at 12:27 PM Sébastien Szymanski
> > <sebastien.szymanski@armadeus.com> wrote:
> > >
> > > This patch adds support for the Armadeus ST0700 Adapt. It comes with a
> > > Santek ST0700I5Y-RBSLW 7.0" WVGA (800x480) TFT and an adapter board so
> > > that it can be connected on the TFT header of Armadeus Dev boards.
> > >
> > > Cc: stable@vger.kernel.org # v4.19
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> 
> If you wil lresend the patch I can apply it.
> I have lost the original mail.

Usually patchwork should have it already (and you can pipe the raw
patchwork mbox into dim apply), but somehow it's not there either.
Not sure why, sometimes this is because mails are stuck in moderation,
sometimes because people do interesting things with their mails (e.g. smtp
servers mangling formatting).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
