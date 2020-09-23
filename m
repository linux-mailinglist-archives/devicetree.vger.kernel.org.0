Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66BF5276188
	for <lists+devicetree@lfdr.de>; Wed, 23 Sep 2020 22:00:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726419AbgIWUAr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Sep 2020 16:00:47 -0400
Received: from mail.kernel.org ([198.145.29.99]:46474 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726381AbgIWUAr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 23 Sep 2020 16:00:47 -0400
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id F2EC920B1F
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 20:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1600891247;
        bh=Gyf3GRHsx03XD50x8wGHYRJEPtnKV5W+HBAO5kv+8Xg=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=vNGDGr5XPyWyCpHPS7gQg69ywfpZ1T/fwXDA5/4zv7GEe8NnsdAK+VYGgH2N8YshC
         MJcJ6E8ce1DTvnQynGAyZ9ycsJbUfQciyBG+U6am2QFDdNAWamBwYT7t7ZBeogjoUJ
         35TeaR1EjU8PSpUq+voB1K+XbdwdBJ31Ni0rUC+s=
Received: by mail-oo1-f54.google.com with SMTP id g26so180022ooa.9
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 13:00:46 -0700 (PDT)
X-Gm-Message-State: AOAM5329VaA8S47KCkLZ4XGy959wjsEJ9a9OCy2jU2hATGQOtcuR6nJ0
        19gtHsRKcDx7RVBS/OxwK2+ssS0bQa9L86L1ng==
X-Google-Smtp-Source: ABdhPJz9SgWJjDDrhxnQb5EvlE3t6H/djP9QM1c2osVQ51hJ9LPr6sCjPqg6G9Vkl3ibruZbiRxBqN/D6ltEDzJ/r38=
X-Received: by 2002:a4a:d38c:: with SMTP id i12mr919233oos.81.1600891246185;
 Wed, 23 Sep 2020 13:00:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200917055210.22868-1-tomi.valkeinen@ti.com> <20200923161712.GA836725@bogus>
 <04d93618-12b1-d8f5-ece5-0f87e644d52e@ti.com>
In-Reply-To: <04d93618-12b1-d8f5-ece5-0f87e644d52e@ti.com>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 23 Sep 2020 14:00:34 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+q4JVs=e2kueCATXLw00FWL=nx_eqCTj5ANHkESD8uTg@mail.gmail.com>
Message-ID: <CAL_Jsq+q4JVs=e2kueCATXLw00FWL=nx_eqCTj5ANHkESD8uTg@mail.gmail.com>
Subject: Re: [PATCHv2] dt-bindings: dp-connector: add binding for DisplayPort connector
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Swapnil Kashinath Jakhade <sjakhade@cadence.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 23, 2020 at 11:15 AM Tomi Valkeinen <tomi.valkeinen@ti.com> wrote:
>
> Hi Rob,
>
> On 23/09/2020 19:17, Rob Herring wrote:
>
> >> * No eDP. There's really no "eDP connector", as it's always a custom
> >>    made connection between the DP and the DP panel. So possibly there is
> >>    no need for edp-connector binding, but even if there is, I don't want
> >>    to guess what it could look like, and could it be part of the
> >>    dp-connector binding.
> >
> > I don't think that's true. Do an image search for 'edp pinout'. AFAICT,
> > there's 2 lane 30 pin and 4 lane 40 pin. One image says 'Table 5-3 in
> > eDP v1.2'. Of course, I'm sure there's custom ones too. From a binding
> > perspective, we probably don't care about the differences, but just need
> > to be able to describe HPD, backlight power, enable, and pwm, and LCD
> > power.
>
> That's true. The eDP spec lists 4 different standard pinouts (how
> strictly those are followed, I have no idea). But it does not define a
> connector or a cable. And afaik eDP is defined to be not user-detachable.

Yes, but HPD is still used (or sometimes broken). We could just put
that all in panel nodes, but IIRC the last time this came up the issue
was handling devices with different panels stuffed by the
manufacturer. An eDP connector binding would be one way to handle that
as it is somewhat standardized while panel connections aren't at all.

Rob
