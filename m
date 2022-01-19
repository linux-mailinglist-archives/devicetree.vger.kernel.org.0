Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3C5149397F
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 12:30:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354120AbiASLaC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 06:30:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354142AbiASL3w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 06:29:52 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 846AFC061574
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 03:29:52 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id bu18so8112397lfb.5
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 03:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=/O/9gbEgb/RsADKkHzPbBZ+dKCzV5A6qaT+Ty+GAygs=;
        b=NyCoWG49BpQBxaruMTutTBuStWQyn43epxiT0gOU5UGakpXSxVwJMN2Q5ptdoCiamC
         3RfdPspfwkG1ajs+tCjdYfeSkqqnbRR25DS0BKwk2j9OIgugkEk+9Df0TLxdiJFJ3PwV
         dPFmoptAK/h2KfPLz4DRlVT2YSb641X9DhGVW/rRguAtFbTI2mw9DwhYM+q4dU5Bepoa
         OSBA+8jzXLUEMKmHjLoZv3Hj4zDPXGE+y+Q+fnk7Wbj+J7QaxZIFy17cBQLmFJFacDC2
         5rFo8iY+iW0pAgQtGCkLE1h66522LXnxhvrmQS1999S5aUr/ckLVcn4Q3xGndjAzEVg9
         KSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=/O/9gbEgb/RsADKkHzPbBZ+dKCzV5A6qaT+Ty+GAygs=;
        b=rrWutMoKDBXyWaC+JIAF91a5/fBihN3o2eeEh6yJnPK/W1ty+DY4wbHkCV+glUbnYd
         v8OcdbtyLAqVRRkl+m9PtH0d6M87XJDgAa/yQMs1a/VDZGNYoNFNcdQlt9gqxEuHJtTW
         fdW4AdIlfABDnNrQsiE6G6SyFvmf4VSvzlwqEdViaJmg+SPWEBPM3ZI6d+kRRVc6T7V+
         dgYw6o/qXRpl7znWXLOobepbLn28qBndir1tpeZHBWpRzhcLvUYdExUp6qnvlOPGs7t7
         bC6Jt08rXXNIRyciM3E2UG4+qRh5wEbywZOdDg8EEccXjWIcGxWxXwrE/4zEcDbYSFZ+
         fqaw==
X-Gm-Message-State: AOAM532cFP3la3HWgtnQ1efAuqftZPBswcSAs3DThEjpiVC5KlGQIPiD
        XNt1NB503aDJt92k/gGKegL7DVr4JKI=
X-Google-Smtp-Source: ABdhPJy1z4RS+ms7ntE5sNfDU2ljl1ujtIN9nfavJi4ukAug4R6nUw7GZ6yKgchAuaUxn91nYztotQ==
X-Received: by 2002:a05:6512:3d94:: with SMTP id k20mr25617078lfv.272.1642591790928;
        Wed, 19 Jan 2022 03:29:50 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id w10sm1980958lfu.173.2022.01.19.03.29.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Jan 2022 03:29:50 -0800 (PST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v3 00/22] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
Date:   Wed, 19 Jan 2022 12:29:49 +0100
Cc:     dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-rockchip@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <AA3A26CB-6282-4A6B-99DC-8042DC8926BB@gmail.com>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Sascha Hauer =
<s.hauer@pengutronix.de> w dniu 20.12.2021, o godz. 12:06:
>=20
>=20
> Third round of patches and last one for this year. I hopefully =
integrated
> all review feedback. Additionally the driver is now fully converted to
> regmap, so no struct vop_reg necessary anymore.
>=20
> Sascha
>=20
> Changes since v2:
> - Add pin names to HDMI supply pin description
> - Add hclk support to HDMI driver
> - Dual license rockchip-vop2 binding, update binding
> - Add HDMI connector to board dts files
> - drop unnecessary gamma_lut registers from vop2
> - Update dclk_vop[012] clock handling, no longer hacks needed
> - Complete regmap conversion
>=20

Sascha

I'm using you VOP2 code on rk3566 tvbox (x96-x6) with very good results.

I have just few questions:

1. how support for CEC looks/prospects (plans for future, not in this =
code, expecting others should implement, etc)?

2. VOP2 code works nice for me for x11/glamour and for EGLFS with EGL =
DMAbuf rendering by Mesa EGL_LINUX_DMA_BUF_EXT.
I have issue however with app. rendering to DRM planes (GUI is DRM =
plane1, video is DRM pane2).=20
My ppp starts/works without any errors in log - but screen stays with =
kernel messages content.
(it looks to me like i.e. app renders to DRM plane but DRM display =
driver not pass it to CRTC. just wild guess here...).

3. in kernel dmesg I have many:

"rockchip-drm display-subsystem: [drm] *ERROR* Unsupported format =
modifier 0x810000000000001".

It comes from MESA i think - but i suspect because VOP2 provides =
unknown/wrong DRM modifier to mesa?.
I'm not sure how to progress with this (talk to you or involve MESA devs =
or wait for VOP2 v4)?

Again: great work with VOP2 on rk356x!

