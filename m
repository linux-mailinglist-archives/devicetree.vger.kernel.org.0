Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 933E056CCF
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 16:49:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728269AbfFZOtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 10:49:39 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:42306 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726029AbfFZOtj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 10:49:39 -0400
Received: by mail-io1-f68.google.com with SMTP id u19so2864714ior.9
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 07:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DgyZrV/0GXyIl5zMpVdez37+pt0NN6PZa+e8Yh9Hijw=;
        b=dOdIhYXTF+no3YlbD2CeiKg6dat5l5CZOYD1xXFNvcNIBlAs26LBlatTYEcR2hhgI7
         H9zsMLsH3VQ22LOEebISJz7Gu5FaNqEkZLSey44RurxttEJ7oggMzJFFrJxCMhUlqrk1
         Z9EaitNaYGsRLgbaGEakPUC+tbKPTUuNIqIRc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DgyZrV/0GXyIl5zMpVdez37+pt0NN6PZa+e8Yh9Hijw=;
        b=LtaH+0I9wjze4bdrEKQA09lHHBuxyOqDBxVkE48qy1Z8AuTA7EHsd0poT7rSfXxEGi
         aCNKMyc6O4FV66h1/PWW/CLLFICi9ldRitRQLbBcsHinBpMD78q8RZB13HbVMaXPqbs9
         bM2YIWcaDTCFWN4vqb+DFb7p7inmh3F/rudv6H/vzrAQMYz8D55ISskmsjnJNetKawQ0
         p2ahj6q7lpU3rv2UkCF2woy3nydCV2MmGRSyjAQFPVoRIWXuw46ErJ75w4IG7yNkEaO7
         lwh8XIms3T6DWw/ObwRmUa8gDiGk1rGje0XyuR3ZcZMmx96UqTx+WLcQ/BpzONK/fgE2
         NfGA==
X-Gm-Message-State: APjAAAXDFieEUQ4xIjMmsGg5kDfVgyeuIxfg3oWJKeNyIMEIFDFWzbqR
        3nEb4lfQ0SETX+38aGlcDdfFZ9MCHPk=
X-Google-Smtp-Source: APXvYqyQVluO9AxYZ/Nb2SjQ4cTmKjPojifvQr0wcBJMBcBnXbWplhm4wKG+J3ZGDu6QTqMZ21PlRA==
X-Received: by 2002:a6b:bec7:: with SMTP id o190mr5194570iof.158.1561560578518;
        Wed, 26 Jun 2019 07:49:38 -0700 (PDT)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com. [209.85.166.54])
        by smtp.gmail.com with ESMTPSA id c2sm14365463iok.53.2019.06.26.07.49.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Jun 2019 07:49:38 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id h6so3975432ioh.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 07:49:38 -0700 (PDT)
X-Received: by 2002:a02:aa1d:: with SMTP id r29mr5324399jam.127.1561560097502;
 Wed, 26 Jun 2019 07:41:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org> <20190626130007.GE23428@ravnborg.org>
In-Reply-To: <20190626130007.GE23428@ravnborg.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 26 Jun 2019 07:41:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U4UU8q+CS76uuuGUP=EVnE6+BTUf8U=j7uwfczNgkrZw@mail.gmail.com>
Message-ID: <CAD=FV=U4UU8q+CS76uuuGUP=EVnE6+BTUf8U=j7uwfczNgkrZw@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Sean Paul <seanpaul@chromium.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Brian Norris <briannorris@chromium.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Klaus Goger <klaus.goger@theobroma-systems.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
        Ezequiel Garcia <ezequiel@collabora.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 26, 2019 at 6:00 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Douglas.
>
> On Mon, Apr 01, 2019 at 10:17:17AM -0700, Douglas Anderson wrote:
> > I'm reviving Sean Paul's old patchset to get mode support in device
> > tree.  The cover letter for his v3 is at:
> > https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html
> >
> > No code is different between v4 and v5, just commit messages and text
> > in the bindings.
> >
> > I've pulled together the patches that didn't land in v3, addressed
> > outstanding feedback, and reposted.  Atop them I've added patches for
> > rk3288-veyron-chromebook (used for jaq, jerry, mighty, speedy) and
> > rk3288-veryon-minnie.
> >
> > Please let me know how they look.
> >
> > In general I have added people to the whole series who I think would
> > like the whole series and then let get_maintainer pick extra people it
> > thinks are relevant to each individual patch.  If I see you respond to
> > any of the patches in the series, though, I'll add you to the whole
> > series Cc list next time.
> >
> > Changes in v5:
> > - Removed bit about OS may ignore (Rob/Ezequiel)
> > - Added Heiko's Tested-by
> > - It's not just jerry, it's most rk3288 Chromebooks (Heiko)
>
> What are the plans to move forward with this?
> Or did you drop the whole idea again?

At the moment I'm blocked on Thierry responding, either taking the
patch or telling me what I need to do to fix it.  I saw Sean Paul ping
Thierry on IRC on June 3rd and as far as I could tell there was no
response.

https://people.freedesktop.org/~cbrill/dri-log/?channel=dri-devel&highlight_names=&date=2019-06-03&show_html=true

...and as you can see Heiko pinged this thread on June 14th.

Thierry: can you help give us some direction?  Are you uninterested in
reviewing them and would prefer that I find someone to land them in
drm-misc directly?


-Doug
