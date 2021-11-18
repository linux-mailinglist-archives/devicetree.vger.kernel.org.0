Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58419455B3B
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 13:07:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344516AbhKRMKy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 07:10:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344518AbhKRMKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 07:10:41 -0500
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80BC2C061766
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 04:07:41 -0800 (PST)
Received: by mail-yb1-xb35.google.com with SMTP id u60so17250457ybi.9
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 04:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=xwZffm/5Q8IyR874NzvVEMvt4aoVvniu9ZnJ+G9kWsk=;
        b=gacIVoLMap3lXg4tEH0YwcCLfAkqG5ikXwvtcn15HF9vj31J4B+VGr0sZYN3Je+vAQ
         BaEDod3ldNon04MG0LZoL0x1bEnWZllYeoWfnQFsOJHVAVjSYD66bkMahT/uQyQU/+oc
         zETPeEZ6Fqd0dphOvpeT9KbkEtdYz8hJPH9DMRZZNb6n4xr/T0WmeBZBlMbWs+wj1+VL
         R8N5un9YMXJPuM/g4XfFtPweXpRTGHkX/e6u/dIBJUuMhNtI6+5Rgfq0D9yABnU3caVz
         7+/tE/MXx648QKl9SCOkT6LZ3YOtQxbIu945mWxzLssEVIJkuj97w7l3IgOnK5KiBfpD
         twZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=xwZffm/5Q8IyR874NzvVEMvt4aoVvniu9ZnJ+G9kWsk=;
        b=ap/vsW2bFzrtZUvYQFs9mQZtYwban21ATnZWMf2TEW35JMKMlTHwCfzy2MkVv2Ko9W
         pXQbnkGeMU8Jnmc++m8TgpsG04QX9xCu8dzva/3x/gKnR4Qkm+dpkcyLhRU8SwGFbOo3
         BbPfTSyW+uktDw1kVmeTp/aPXw+pXLcn1n6UdbXvnvhMdlqqZSU8/8fvjmmTQ4+tKM3j
         J3/BjnDka6BBUMy88rzpk5RW9VCYwydKNSUhzvPfY7Jcu4LiJvZFDV/j2VHCcxcAj0R+
         RI4a4ogxKXVDADjpRxLiQAN/C5AK19pm519P69TNR0yCswBDY30tq4BmzGlktTVZNhcC
         BKxQ==
X-Gm-Message-State: AOAM5334BDTgoLB7XXzyXPHC1sYNtlgulk7RhvyErNuDkIXtXAiVwRSk
        OQ9wMJhE4f82yi0wB2wx+QIkhCf+U1jwB2IWEO5U6A==
X-Google-Smtp-Source: ABdhPJwqejr342bjBGHcXh7vBbdNrU3UD/weVqxCR1HxxrtvQbdgNXlL1TDGAVwz6geozxJn0DtlK138DNBc8N7xqWw=
X-Received: by 2002:a05:6902:4d3:: with SMTP id v19mr26182915ybs.500.1637237260529;
 Thu, 18 Nov 2021 04:07:40 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com> <4310886.V3yF0ifEZO@diego>
 <CAPj87rPNSt7nZX93prAYD3Emf-34RdTZWp_1TOuAybBebObZhQ@mail.gmail.com> <fba695b7-863a-c492-0209-41bc07c7baee@rock-chips.com>
In-Reply-To: <fba695b7-863a-c492-0209-41bc07c7baee@rock-chips.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Thu, 18 Nov 2021 12:07:27 +0000
Message-ID: <CAPj87rO86Mom-076Z5QX9hd=0bQi=AQcofkc1fSR4-VV2Zo6aQ@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To:     Kever Yang <kever.yang@rock-chips.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
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

Hi Kever,

On Thu, 18 Nov 2021 at 10:50, Kever Yang <kever.yang@rock-chips.com> wrote:
> On 2021/11/18 =E4=B8=8B=E5=8D=885:53, Daniel Stone wrote:
> > Exactly what Heiko said. If you would like to upstream the driver then
> > that would be fantastic to see, but I'm afraid you do not get to
> > prevent someone else from doing the work themselves.
>
> First of all, we never stop any one to doing there work on upstream if
> the source code is write totally by themselves.
>
> Second, there are also many modules are upstream by developers based on
> Rockchip source code, please note that
> all of them have basic respect to our work, they do communicate with us
> first.
>
> But this committer do not take any respect to our engineers and their
> hard working:
> - He didn't contact with us;
> - There isn't  any information about original author in the commit messag=
e;
>      As I have known, if I use source code from another developer, I
> need to at least add a "Signed-off-by" with original author;
> - This commit and mail does not even have a 'CC' to original author.
>
> I NAK because I  think this is not part of the  open source spirit, and
> this kind of  behavior should not be encouraged.

OK, I see where you're coming from, and I agree that the attribution
should have been handled more carefully.

On the other hand, please consider this from the other perspective.
Sascha has been free to take the downstream Rockchip BSP code and
attempt to upstream it to the Linux kernel, which you are unhappy
about. But then the Rockchip driver was developed totally downstream,
with no attempt to ever communicate with the upstream Linux or DRM/KMS
developers. Rockchip advertises that it is shipped as a Linux kernel
with a KMS driver. But we were never informed, or CCed, or anything.

If you would like the community to more actively work with you - then
please yourself work more actively with the community. The first
commit of the VOP2 driver was in July 2020, and that was of the full
driver so presumably it started quite some time before then. So that
is a minimum of 17 months that you have had to engage with upstream
...

Technically, the driver cannot be upstreamed as-is. It looks as if it
were a pre-atomic driver, that was half-converted to atomic, and then
has been half-converted to atomic helpers as well. Things like
reference counting and global state are not handled correctly at all.
You can see this if you try to run Weston on top of the VOP2 driver:
the framerate is decimated because the event handling massively
over-synchronises, and the event timestamps which arrive are
incorrect. This would be fixed by correctly using the event helpers
that we have had in the tree for years (which would also eliminate the
unnecessary framebuffer reference handling). It also does not work
with the GPU drivers in the tree because it lacks the one-liner to
correctly handle dma_resv synchronisation, which makes it both too
fast as it displays content which is not ready, and too slow because
it can't do it at full frame rate.

Similarly, on the RK3566 EVB, the DSI does not work unless HDMI is
also active, but when HDMI is active at the same time as DSI, it just
shows a blank screen. I believe the root cause of this is that the
VOP2 driver does not use any of the atomic state correctly, and
instead stores its own state in driver-global structures, using a lot
of unnecessary mutexes to try to synchronise this state. Not only does
this synchronisation not actually work, but it causes a severe
performance degradation due to mutex contention.

I believe the best path forward to an upstream VOP2 driver is a patch
series consisting of:
  - start from a blank slate, using the atomic framework and helpers
as they were intended to be, with basic support for the VOP2 and one
or two connector types, doing linear XRGB only
  - any cleanups which would enable this to share more code with
  - add YUV support, including planar buffers
  - add AFBC support, with the AFBC enable/disable correctly
synchronised through atomic state (this is necessary since the AFBC
decoder is not directly on the planes per se but shared)
  - add more connector types
  - add writeback support
  - add other Rockchip-specific codepaths such as HDR10

Cheers,
Daniel
