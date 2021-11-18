Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9477A455857
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 10:54:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245376AbhKRJ5F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 04:57:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245312AbhKRJ4Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 04:56:24 -0500
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9C29C061204
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 01:53:24 -0800 (PST)
Received: by mail-yb1-xb2e.google.com with SMTP id i194so16289684yba.6
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 01:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=MSn2l1CqdA8yauQEkr9Er3RNk6u1ntHr6p1PYu6dVHg=;
        b=dDOwOtPhdIx/Z6wlXdmhq5eHw+zn3sTxhiwhM8bwK0qsSjMrv87LuWgGjB+hvBF1gO
         KAkU4dZQDEFk8bJ9kl6vT0RtgwW37qkbVh+eqDqShAqujemCxqj74rDSFOBDnmtMWJfd
         Wa59tfUQ5Xt1k1lQBQPszUiMcZ8ao42aLt6J7mAsB9DeGD6VmaRQyzfWXIkDmTKD0+A5
         HuGxufiKqxsqU7yk2T68PV36jEw8yr4m0iDPwjA/OGi7c47YWvqgmbA4uEu7zu55DZNI
         FNJyOcN0GkcuA17E+CIwIzaGXX2Jj3HFsgE8Oi1Na2jK+jRhYQUYpjc4fBnvrmcOh9cL
         tS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=MSn2l1CqdA8yauQEkr9Er3RNk6u1ntHr6p1PYu6dVHg=;
        b=QwFrVGVIsHVBz0RFkD3qLDSXG0WO9CmSNmbCHgw9zEFTHfDdGfJi6Zb0cLwpf0IbTJ
         A0FVwJYpzZc6sto+REaAxaHo14X0udhfkiA9qUtI4UoL3OQYYcFacqvzryPmuuJtA4mG
         lJCSY7jWHY2KWdiypquaHnIwrTvZAYb3jdkuFYoHscLITKyxphiOfgylCvzC8Fw0+G23
         I6xIrq5fnqz6W9LRfGMolRiKTq6qOP5pxHd8eY74CSAWPfPj7gu0cVPmcVmWSTFXpgNW
         44WMj3b5Itt34ITL25l0+hyJ1tPR7ohpk2FanH59Ov8YFJQ2UAHImlzm4ZfiUYTuudYs
         ZSaA==
X-Gm-Message-State: AOAM531Uy+yKQ8BhuPwRcC9JpR258mhAarGKKEOFsKZBNAH8KOT406qO
        RwucGSMutlCOh0ddn6M/R5QE8U9eXFTGPqzWa9nxPg==
X-Google-Smtp-Source: ABdhPJzWC+pD/mBRLS7w06KhnNT4hJCKzQOj9GIHlCC3obzrQKAOBWZGePiBMEvH6LBikSDUuXIczk0NDRtKOW5Pp9o=
X-Received: by 2002:a25:73d0:: with SMTP id o199mr24604313ybc.87.1637229203749;
 Thu, 18 Nov 2021 01:53:23 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com> <4310886.V3yF0ifEZO@diego>
In-Reply-To: <4310886.V3yF0ifEZO@diego>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Thu, 18 Nov 2021 09:53:11 +0000
Message-ID: <CAPj87rPNSt7nZX93prAYD3Emf-34RdTZWp_1TOuAybBebObZhQ@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org,
        Kever Yang <kever.yang@rock-chips.com>,
        devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de,
        =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, 18 Nov 2021 at 09:26, Heiko St=C3=BCbner <heiko@sntech.de> wrote:
> Am Donnerstag, 18. November 2021, 02:27:10 CET schrieb Kever Yang:
> > I don't agree with this, we do believe you have do some clean up to mee=
t
> > the requirement
> >
> > of upstream, but all the framework and feature implement are from
> > Rockchip engineer,
> >
> > we have made a great effort to make everything work which block us to
> > upstream this driver for now.
>
> I don't fully understand what you mean here (language barrier probably),
> but dropping non-essential functionality in a first round is pretty commo=
n
> to at least get basic functionality working for everyone. With the specia=
l
> features getting added again in later patches over time. This happenened
> on the old vop as well.
>
> And of course, having a kernel that can "just" do normal graphics without
> the additional features is still preferable over having _NO_ graphics sup=
port
> at all ;-)
>
> > NAK for this series.
>
> As you might've seen from previous graphics related patches, there
> is a big number of people _and companies_ that seems to want/need
> to work with the rk3566/rk3568 with a kernel based on mainline.
>
> --> Most likely even in real products!

Yes, we've been trying to ship a real product based on RK356x. We
started by using the vendor VOP2 driver, but it is broken beyond
belief. The driver needs a fundamental ground-up rework, and all the
additional features get in the way of doing this core rework to make
it actually function correctly.

So, NAK to the NAK. I would like to see the VOP2 support start simple,
with more features being added one by one.

> While Rockchip did say that they want to upstream VOP2 support, there
> has been _NO_ movement or even information at all on this over at least
> the last year(!), so it's pretty understandable that developers will do t=
his
> themself at some point, because they don't want to wait anymore for
> something that might never happen.
>
> So a simple "NAK" without additional information is not really helpful he=
re.
>
> If you don't like Sascha's series, I really want to know _WHEN_ Rockchip
> plans on upstreaming at least basic graphis support themself.
>
> The kernel is often called a do-ocracy - the one who does the work, gets
> to decide. So if you really don't like Sascha's series at all, I do expec=
t
> Rockchip to step up and provide a solution themself - and in a usable
> timeframe.

Exactly what Heiko said. If you would like to upstream the driver then
that would be fantastic to see, but I'm afraid you do not get to
prevent someone else from doing the work themselves.

Cheers,
Daniel
