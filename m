Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D89CC47D595
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 18:07:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344202AbhLVRHH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 12:07:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230314AbhLVRHH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Dec 2021 12:07:07 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 749E8C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 09:07:06 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id f134-20020a1c1f8c000000b00345c05bc12dso1864440wmf.3
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 09:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xf0dcGkvmURFRRNeHLTQphIAlqufMTucRtU3DVITyFY=;
        b=RCVUlNvIf2TY1hZQ2BN3r7OcxX0mQkrpHTo1Xj5KCDbfFss8/WsANNVOQaJoQt36XX
         vt5FB0/ZaNCw0oT9EzetO/35FMtQcEf0iHBiFnhdNM1a/yOT3znsrOk2ovuXhCP9MsLj
         kqNzaai7C3ovmFxJ8plk9KfgerLUXa0NB9urt6Qzjov8ecyJgbRdZ8Qa35Kj4LP5ErEr
         H/oQSA2M3Bd6sQ8wNvIQsBVj0KDgg+AeSbRm8eIwUBNC+YukWgez412JYmnKlMb6vVNh
         FlZJiXK+277nT2aHd8oMaqgamCw1rxwpTJiumj+k3xOI7VhCxKJZRn+rLQp7ysvI4zBm
         gkMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xf0dcGkvmURFRRNeHLTQphIAlqufMTucRtU3DVITyFY=;
        b=Ipz8QSOuQX688WF/RfRqsHhqCR9YTnlW6d/ykZpccykwwfyhkiWv42fy8vAFVa1yg4
         nSJFEjf8MpBusX2feC8LG+w915jj6XV5MaLodEqxKjxzPh/X12yu8w69UIkpTEtxk2rS
         JNdiPwB9RE0yy5RM4sjAuEiaRizypd5o6QaF9N6kIFRRJDkfTVeg76Pr7Qh8UZi+i4Xm
         fdc3ShUU759YH4XufawixBdJ5YOKBBZa7HWaci8h8dqwdciAKul5lsAKhPJ2eOHGQMXW
         4bf1unbhOUxDFMzEQAQBK0q5Cd8VsxBH2U/Rhm9Bm0qxofxm3QMUB3kHm45vtYpGRlqK
         ABaw==
X-Gm-Message-State: AOAM530UZeUQlcR77u+jiLT6ZOUUOT/678XXr0IuI5EHtrr5sI0GxfhR
        waZXN79HxSs3bU6RaCPy6d4=
X-Google-Smtp-Source: ABdhPJxHHsH7bFTy6QqNlKLW9op/sk+p9MsGhCZ8BoEj0/Y1+Hg7+OLndTV/9ExKMNaqsZgnSML3ww==
X-Received: by 2002:a1c:5404:: with SMTP id i4mr1534466wmb.107.1640192825110;
        Wed, 22 Dec 2021 09:07:05 -0800 (PST)
Received: from archbook.localnet ([217.151.114.10])
        by smtp.gmail.com with ESMTPSA id y13sm2796186wrd.89.2021.12.22.09.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Dec 2021 09:07:04 -0800 (PST)
From:   Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To:     dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH 22/22] drm: rockchip: Add VOP2 driver
Date:   Wed, 22 Dec 2021 18:07:02 +0100
Message-ID: <26571551.24qHfsk75X@archbook>
In-Reply-To: <1761858.GBYTvM79DV@archbook>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de> <20211220110630.3521121-23-s.hauer@pengutronix.de> <1761858.GBYTvM79DV@archbook>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Dienstag, 21. Dezember 2021 14:44:39 CET Nicolas Frattaroli wrote:
> On Montag, 20. Dezember 2021 12:06:30 CET Sascha Hauer wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> >
> > The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> > It replaces the VOP unit found in the older Rockchip SoCs.
> >
> > This driver has been derived from the downstream Rockchip Kernel and
> > heavily modified:
> >
> > - All nonstandard DRM properties have been removed
> > - dropped struct vop2_plane_state and pass around less data between
> >   functions
> > - Dropped all DRM_FORMAT_* not known on upstream
> > - rework register access to get rid of excessively used macros
> > - Drop all waiting for framesyncs
> >
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
>
> Hi Sascha,
>
> quick partial review of the code in-line.
>
> For reference, I debugged locking issues with the kernel lock
> debug config options and assert_spin_locked in the reg write
> functions, as well as some manual deduction.
>

As a small follow-up, I've completely mapped out the calls to
vop2_writel, vop2_readl, vop2_vp_write and vop2_win_write and
coloured in whether they were called with the lock held or not.

The conclusion is startling: Most of the code absolutely does
not care about the reg_lock.

Here's the graph as an SVG: https://overviewer.org/~pillow/up/6800427ef3/vop2_callgraph_modified.svg

vop2_isr here needs to be paid special attention, as it also
acquires a different spinlock, and we want to avoid deadlocks.

Perhaps we should precisely define which lock must be held for
what registers, such that the vop2_isr can write its interrupt
related registers without acquiring the "big" reg_lock.

I'm also not entirely sure whether I should assume vop2_readl
needs to be called with the lock held. This needs some
investigating both in terms of whether the hardware presents
a writel as an atomic write of a long, and whether the code
assumes the state between readl calls is ever a consistent view.

Regards,
Nicolas Frattaroli



