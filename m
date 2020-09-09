Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7DF1263474
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 19:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730551AbgIIRUn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 13:20:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729986AbgIIPZN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 11:25:13 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46E53C06134E
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 06:57:00 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id o8so3675246ejb.10
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 06:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=MENKoY7sLjEa2j5YMFoQoj6IgU1USAsQMBDdxrkFhWc=;
        b=bmYvV+I7LEbseXbHhtlbAYck9NqN46DhFgxBTsEeJ62wPE19xy8BFBuma+r8HSDDl1
         iuZJZ8QGSo4EVy9qOeJDa/xYKE2GSamLaVyFqXD1HKbEk2ngrJbnqfyNRdiR66NIpRwA
         3s9f9mHs1brTm/hm5ADtRKLLPVEXeFDabl0+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=MENKoY7sLjEa2j5YMFoQoj6IgU1USAsQMBDdxrkFhWc=;
        b=TgerdvlDgg4KaliY9VGHcxzF633moT0UqLYRHzI5buLtcuvKvzIy1PQRh9hoKir8P1
         KEg51wysuAYSg+17W/m8319vPh/wflxbO48hL0WA8Lwx+v6qIO5h2ZvPu6TacvOqXWpC
         nJbUlAal5p3YAE87KW9Nr+HEuLV7rYqWOYP5iUQeK+ntw/Ktkbo6PYonZsbJRTyJ4YDf
         l05tY3e7QVDTu1SaEqGMmcLgDYdZ45m8uKkziFgVNiN9R1qKfVbt6hISPbTNYbwFgg8A
         qW3KFlQyI2zq1i0BYvZUUkLqRnAhOE5Tf1e/ZeFZ3yU1mJprKMoa9N47q+w2cKP3fQMK
         iHpg==
X-Gm-Message-State: AOAM532+iDO9VP/2K7/Aph4gmpOISpkwe6F9C22Lmn5A2IUckhdHXECm
        V5ozTrk8fZwZJH4GgjDdbxGO3z+I8MiDXHtO2KMrwQ==
X-Google-Smtp-Source: ABdhPJwG32nnroeWUrNq1UG84+2uFGxqral4DWpgnb4iJnEw6uoi6YO7+CdOPDvYDAQ+31gRePqleCHukCNdIJR9k7U=
X-Received: by 2002:a17:906:c1c6:: with SMTP id bw6mr2327666ejb.374.1599659818729;
 Wed, 09 Sep 2020 06:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200904191830.387296-1-jagan@amarulasolutions.com> <6955091.ERBjKZ0CLf@diego>
In-Reply-To: <6955091.ERBjKZ0CLf@diego>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 9 Sep 2020 19:26:47 +0530
Message-ID: <CAMty3ZDNVZyYHAuBpCcn_=BhLvcRRHcOXKEWQqxUOdOs2+fp-Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] extcon: Add Type-C Virtual PD
To:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>, Tom Cubie <tom@radxa.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiko,

On Sat, Sep 5, 2020 at 2:53 AM Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Hi Jagan,
>
> Am Freitag, 4. September 2020, 21:18:27 CEST schrieb Jagan Teki:
> > USB Type-C protocol supports various modes of operations
> > includes PD, USB3, and Altmode. If the platform design
> > supports a Type-C connector then configuring these modes
> > can be done via enumeration.
> >
> > However, there are some platforms that design these modes
> > of operations as separate protocol connectors like design
> > Display Port from on-chip USB3 controller. So accessing
> > Type-C Altmode Display Port via onboard Display Port
> > connector instead of a Type-C connector.
> >
> > These kinds of platforms require an explicit extcon driver
> > in order to handle Power Delivery and Port Detection.
> >
> > This series support this Type-C Virtual PD and enable the
> > same in ROCK Pi 4C SBC.
> >
> > Any inputs?
>
> I tend to disagree on the design via an extcon.

Okay, are you disagree with the extcon extension for fusb chips
routing or entire rk3399 designs?

I totally agree with this point of bypassing extcon for the designs
which has fusb302 chips. My only concern is about designs that don't
have fusb chips - for example rock-pi-4. Designs that do have fusb302
chips, has dynamic possibilities to identify data roles, like
detecting Altmode DP via Type-C connector whereas designs that don't
have fusb302 or any type-c chip need static identification of data
role, polarity, and ss for detecting direct DP port ie where
virtual-pd is useful.

Look like we have two potential issues of handling DP on rk3399 here,
let me know if you think these non-type-c chips designs also possible
to detect w/o extcon?

Jagan.
