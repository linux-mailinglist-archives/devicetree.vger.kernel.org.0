Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 472EF49623F
	for <lists+devicetree@lfdr.de>; Fri, 21 Jan 2022 16:43:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240666AbiAUPnr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jan 2022 10:43:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240481AbiAUPnq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jan 2022 10:43:46 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5907BC06173B
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 07:43:46 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id br17so34673471lfb.6
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 07:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=0IQlKjnnKeNHzaC+tXi/PTRE2Oz7fqwhjlXjoMrnJzs=;
        b=hTsh8w4JEfQxMuE1YG5sEQ6WWb3ORoeadqwCS1bbOYNIa6qA9iXfxL+y4wcJeP/EzI
         Wj0kQ8pOK+I+yE0Togpo5Um6XSGBAeApogCY691ywwhhOYv87/2ZswD46USxCJ29lvq4
         5tbE7mdv9oU4lvyrwzuhiJWI82a8kNS9iDGUe3io1IyyMnQXRH8qGGuJQcxzE3CztfjX
         Ara2HUFQkEV0PchizcDF4EK1/aZSsEWyUimxQWc3I69CRFapTCc/yceYmF0NHLMI+TME
         WDft1x1OodIUA6IlaYf25vOhlsTJEdjZme6LLST14LXCfHJqtQNFwXRLt6Gll5KfqoXS
         zlSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=0IQlKjnnKeNHzaC+tXi/PTRE2Oz7fqwhjlXjoMrnJzs=;
        b=pcRkUFZTs5LFNyTacKz3xEs2BLk3PHzTEmUt1RyicMz5EPuqqh51acyIJf0nCfU7wM
         IxrN6pRtxh/PEl3H21vSbdLUPGBaM0firw+BQqbHVSHCI3xb6QoLNov6Pf7jgoy6qcZ1
         9q5BWjkbpybHNXESz8ALfQxfvo+Hb93MVix/hsnDzfgbWXZrqb5Rk46dyBC2whLTiurf
         dXoPUr/HB5rBAkrQqFiWoVk87125a5is/SNZD/uPDc01uW/N2LxS0pdPGtMGwK8Xy6bS
         zUUWJ3nKMrV4M8Av+8StXpZp8uwf6aBh11XVusGuXIn0PdiA9jHpyYRHDDXZqL98ylwb
         nmdw==
X-Gm-Message-State: AOAM533+IaGPPf7YM8+lbvGJoak2Qe8IJjdpPdPpM+DvWsSGUDbu2oYn
        MhJQR76Du/APBj6MUqu9egw=
X-Google-Smtp-Source: ABdhPJzHH+Dty7JNy7NWcmObRj9g7VPT34BQZJ46+jLYh36xPQfXtg307iHEs6dE/6zi4OGBXGkMew==
X-Received: by 2002:a05:6512:1093:: with SMTP id j19mr4019418lfg.360.1642779824476;
        Fri, 21 Jan 2022 07:43:44 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id s10sm287569lfb.248.2022.01.21.07.43.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Jan 2022 07:43:43 -0800 (PST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v3 00/22] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220121103245.GT23490@pengutronix.de>
Date:   Fri, 21 Jan 2022 16:43:41 +0100
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
Message-Id: <44C87C12-A194-4AC8-922B-C4C215474AC9@gmail.com>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <AA3A26CB-6282-4A6B-99DC-8042DC8926BB@gmail.com>
 <20220121103245.GT23490@pengutronix.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Sascha Hauer =
<s.hauer@pengutronix.de> w dniu 21.01.2022, o godz. 11:32:
>=20
>>=20
>> 1. how support for CEC looks/prospects (plans for future, not in this =
code, expecting others should implement, etc)?
>=20
> I had to google what CEC actually is. We don't have plans supporting =
it.
> It looks like this is a matter of the HDMI driver supporting this and
> not bound to the rockchip driver.

Ah ok. sure. got it!
(I asked as Rockchip hdmi driver already well supports CEC - so i was =
thinking on rk3566 this is more of enabling than writing support code).

> You enabled the panfrost driver with other patches, right?

Oh - i wasn't aware any patches are needed for Mesa for rk3566....
If so - may you pls point me for latest/correct patches for rk3566?=20

>=20
>>=20
>> 3. in kernel dmesg I have many:
>>=20
>> "rockchip-drm display-subsystem: [drm] *ERROR* Unsupported format =
modifier 0x810000000000001".
>=20
> This message is correct. This corresponds to
> DRM_FORMAT_MOD_ARM_16X16_BLOCK_U_INTERLEAVED and the VOP2 driver =
doesn't
> support this. I have a similar problem here with
> weston-simple-dmabuf-egl.  By default this uses DRM_FORMAT_XRGB8888
> which ends up being PIPE_FORMAT_B8G8R8_UNORM in MESA.

Ah ok. Clear now.

Thx!

btw: i added support for argb8888 in my app and now all is ok.=20
no anymore errors in dmesg :-)

so summarising:
your vop2 code works for me in all supported video pipeline variants:

-x11/Glamour
-Wayland-EGL
-EGLFS/EGL-dmabuf
-EGLFS/DRM Planes=20

Your vop2 work is impressive!

btw:
you mention:

> In weston-simple-dmabuf-egl I can pass a suitable format on the =
command
> line, in my case I use DRM_FORMAT_ABGR8888 (which becomes
> PIPE_FORMAT_R8G8B8A8_UNORM). With this the panfrost driver does AFBC
> which then can be rendered in the VOP2 cluster window overlay.

is this mean that: when my app is using ARGB8888 format - then I have =
AFBC on rk3566?


