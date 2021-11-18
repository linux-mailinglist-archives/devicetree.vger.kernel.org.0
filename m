Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFAE8455CA4
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 14:24:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231157AbhKRN1V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 08:27:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230513AbhKRN1U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 08:27:20 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BB29C061570
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 05:24:20 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id e71so17899826ybh.10
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 05:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3CHovZnyFYzL8A4y+oY7gk4d/KIvHf2oXmR6WClb8/s=;
        b=T6WqBHc0TCpshnyXZ0Y0DJ578rZDDMyf1YgWWuXk0Fpnpref3dIG0HDuViic5bsZaO
         pLHoJ0eiaSOqtmuA9Vqz7lX8uC7BW9GcYolNoaStCGDfYFj3NMQ0pmovjvUVZJEtkSLU
         gdu6Ls2fD5r5Kb7bX8FrQraDF9/jK+uZbsr5bZFfSVZZLsN9n0eHS/xCWUkL2ONPo1Yw
         ef+b5XBuooYEblM2ZFxjouFDGhGHi818ivhaxmUTv0vhgnKSCpgaNipGIXoYygx5wU1O
         EtHeCZ7CMAchl1gp4Jibq4butcBqnXKX6GO2T2IwKkGiWoH0TCK9rwNYDRLwBRHqqFHY
         u3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3CHovZnyFYzL8A4y+oY7gk4d/KIvHf2oXmR6WClb8/s=;
        b=Bx6zZlyaAHq/mdNeIcRktTxP3CfgO5zJLvQPeAXV+t/gQDpuk1ymXQ44EGXftot9HA
         ECRAkeIJQNQSjZ+sUqesjGu+WsHREOQmJ5SyY4eHJPzriV7d57PKR1CtdWjV5Edb/jlq
         TKuOw0GmtVejg3UpcmqAlJ/rCfCZIBDBmNyBLbA+IQFQQQsUGQIt2qfe1laFlkD4hqOV
         AdML931HQ6dOwQCjCFfz3S/JWPyESmWaoPFVRag+l1dyaTy0tz9zySTqFSDUp2VJxRyD
         U4A/q0lOgh4/M8MaZE+2ujSuVrx45PSAGDgI0qkUQSbpmKAlLIJbl5bWsoWR0Yj3N6Dd
         ylNw==
X-Gm-Message-State: AOAM532woUS8NiSiFGywRPmWY3iyxLBYqjf1g01WAoxOsl/cW1eNq0RJ
        73J5giHCl0yxV2z+6lerE/dxOuJ/J+F0GsqjuiZUmw==
X-Google-Smtp-Source: ABdhPJxQH4DGzX1DsG0B1QVx1lWh1G3G3AkM7oB0/0OrlLqXkWrE2kGjQvi/XY7Qmfbr8Yqc3zf4bpfydzz5bXBUpyw=
X-Received: by 2002:a05:6902:1021:: with SMTP id x1mr28021143ybt.43.1637241859608;
 Thu, 18 Nov 2021 05:24:19 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com> <4310886.V3yF0ifEZO@diego>
 <CAPj87rPNSt7nZX93prAYD3Emf-34RdTZWp_1TOuAybBebObZhQ@mail.gmail.com>
 <fba695b7-863a-c492-0209-41bc07c7baee@rock-chips.com> <CAPj87rO86Mom-076Z5QX9hd=0bQi=AQcofkc1fSR4-VV2Zo6aQ@mail.gmail.com>
 <e948ee33-d1ea-cd53-a792-2e044eed1529@rock-chips.com>
In-Reply-To: <e948ee33-d1ea-cd53-a792-2e044eed1529@rock-chips.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Thu, 18 Nov 2021 13:24:07 +0000
Message-ID: <CAPj87rOQDAP+=AGizuvHG=cOfOCNFtPhYM_g8V=XMNmJPoz6oQ@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To:     Andy Yan <andy.yan@rock-chips.com>
Cc:     Kever Yang <kever.yang@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy,

On Thu, 18 Nov 2021 at 13:14, Andy Yan <andy.yan@rock-chips.com> wrote:
> On 11/18/21 8:07 PM, Daniel Stone wrote:
> > Technically, the driver cannot be upstreamed as-is. It looks as if it
> > were a pre-atomic driver, that was half-converted to atomic, and then
> > has been half-converted to atomic helpers as well. Things like
> > reference counting and global state are not handled correctly at all.
> > You can see this if you try to run Weston on top of the VOP2 driver:
> > the framerate is decimated because the event handling massively
> > over-synchronises, and the event timestamps which arrive are
> > incorrect. This would be fixed by correctly using the event helpers
> > that we have had in the tree for years (which would also eliminate the
> > unnecessary framebuffer reference handling). It also does not work
> > with the GPU drivers in the tree because it lacks the one-liner to
> > correctly handle dma_resv synchronisation, which makes it both too
> > fast as it displays content which is not ready, and too slow because
> > it can't do it at full frame rate.
>
> We have different team run Android , X11, Weston on rk356x, especially
> for android, we can run at 60 fps.
>
> Our vop2 driver is developed on Linux 4.19, am not sure which version of
> kernel you put our drivers on.

We forward-ported it to a current mainline kernel and started to work
on fixing some of the issues. When we did this, we went back to the
BSP tree posted on GitHub to test using a pure-BSP environment, and
observed the same breakage there.

> > Similarly, on the RK3566 EVB, the DSI does not work unless HDMI is
> > also active, but when HDMI is active at the same time as DSI, it just
>
> I am very sure rk3566 evb DSI can work without HDMI.

I'd love to know how. :) Using the meta-rockchip layer as published on
GitHub, we cannot get working DSI without HDMI, using upstream Weston.
When the HDMI connector is disabled, DSI comes up blank. When the HDMI
connector is enabled, DSI works fine but HDMI is blank.

> But take care that the vop on rk3566 has a special limitation: there are
> three windows(Cluster1/Esmart1/Smart1) that have a mirror lock, that means they
> can't be programed framebuffer address independently , they can only
> share framebuffer address with Cluster0/Esmart0/Smart0. We use these feature
> on Android.
>
> I have comment these limitation in our driver.

Yeah, we noticed this.

> Compared to old vop, vop is strong but a bit complicated, we try very had to
> make it work on as much display framework as possible.
>
> We have upstream plane, but I am really in a rush this year. So sorry
> for the late of upstream, but we glad to work with community.
>
> So Sascha, please feel free to go on with your work.

Great, thanks. If you agree with the plan I posted, then we can all go
forward with that upstream, doing the development work with ourselves
and Sascha. Hopefully Rockchip will be able to support this effort.

Cheers,
Daniel
