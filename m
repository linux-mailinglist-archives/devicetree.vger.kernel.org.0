Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB4B049DDA4
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 10:18:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231544AbiA0JRU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 04:17:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230114AbiA0JRU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 04:17:20 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D53D4C061714
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 01:17:19 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id t14so3310254ljh.8
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 01:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=o4tzvhRV4q0XUKGJ8dgFWjAQjVrEQUydtT8zgZxL6O8=;
        b=hq//Oqh0t+LSYYD1W8tLiNbrtErl4z04ToDVMhWDciUtnz4MvYE3C/XQerx/hVMak7
         pwOW0rfdWEQhwYFf8M1aNZY0lyBUyWMXLUTOcJEYYcSA0wFi3qlvUlkRR0vN6j5pcOpd
         vXAtC6MaXS9aLuRAp2U7fUJvRGZiN5pfFD7LCHzcrZQmhU3vuqp+7x+jw3Aoyx+UcdYO
         zXamjSlU6Y/12mh3aXhyVhRvqVIXiN3qsqyDfakUk/305hnkXwCW9KtRAbCICc2boKAI
         mEolgGsO8uEF4PQoEZS3Zh6PJzSYvyoSfgahPlrTSbwyPq3UKjdeI8y2XBkcEXic8GSD
         gcaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=o4tzvhRV4q0XUKGJ8dgFWjAQjVrEQUydtT8zgZxL6O8=;
        b=VdMEDQj1Un+esLQs+Pcqfq90QLb5g1tFA/kVQbm6bFmoFBar9kgu5e/nuXq/SvZ7nk
         bQrwJpD1RJnDq5UIiyqk+e78+tImo8/iiY4mTYIQvcVt3B6dMS9Zi5GwwZTj48CzbyYJ
         GuUyp+5Zm8TzlGrUdruGnfMiuE4rQfWLMqQyzBdBbGp7b4/yxNzP4GJ7fDoLWZOkXdop
         a9S8vctSp+2JG8/fnhqe8F2KcUp8nrWFdSBr8L5XmvpBNNTpUjL5K5fTCdKoMW1gy/L7
         7MwVeOt+62sS+N9Da2enMpNLBlqgOmAJwPy6EQ4KdsOAr57fB4Xz33K3sPueN7E4C9a0
         lM8w==
X-Gm-Message-State: AOAM533LxaOm3+G7aZrkeT6KCojTgFMoAAYuNmyhTKPPmQommYYiMtTM
        jZAkr7xlpwt4jeYnSWIOdQo=
X-Google-Smtp-Source: ABdhPJyrAxTqYqNo/buunWM+RzljgXBFTNIVZZSw0F9X8RJg2othqm6DAnqjvIzcGTTV7CqWTXsneA==
X-Received: by 2002:a05:651c:d2:: with SMTP id 18mr2131144ljr.399.1643275037959;
        Thu, 27 Jan 2022 01:17:17 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id h28sm1597872lfe.196.2022.01.27.01.17.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Jan 2022 01:17:17 -0800 (PST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 27/27] drm: rockchip: Add VOP2 driver
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220126145549.617165-28-s.hauer@pengutronix.de>
Date:   Thu, 27 Jan 2022 10:17:13 +0100
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
Message-Id: <6588D77C-D3CB-4FB0-8B00-5EDD6ABD6923@gmail.com>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-28-s.hauer@pengutronix.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sascha,

FYI=20
small report regarding 4k modes support in v4:

-on rk3399 it gives me 4k screen where right vertical 1/3 part of screen =
is garbage
-on rk3566 my samsung 4k monitor has black screen and cycle of OSD msgs: =
HDMI2 connected; HDMI2 disconnected; ....

I would suggest split v4 into 2 separated series:

-VOP2 support
-HDMI 4k modes support

BTW: getting well working 4k HDMI modes on rk3399 was real story for me.
There is many different series of patches to address this - but all have =
some subtle issues for me (i.e. 4k HDMI modes works but i.e. Qt is =
failing with DRM atomic commits in EGLFS)
I developed well working [1] giving me reliable 4k on rk3399 (including =
working Qt DRM drawing in EGLFS mode)=20
Maybe it will be somehow helpful to get 4k modes solution for rk3566 =
_and_ rk3399 (on single kernel binary)?

[1] =
https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-5.16/f=
iles/0730-drm-rockchip-add-4k-videomodes-support.patch

br


> Wiadomo=C5=9B=C4=87 napisana przez Sascha Hauer =
<s.hauer@pengutronix.de> w dniu 26.01.2022, o godz. 15:55:
>=20
> From: Andy Yan <andy.yan@rock-chips.com>
>=20
> The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> It replaces the VOP unit found in the older Rockchip SoCs.
>=20
> This driver has been derived from the downstream Rockchip Kernel and
> heavily modified:
>=20
> - All nonstandard DRM properties have been removed
> - dropped struct vop2_plane_state and pass around less data between
>  functions
> - Dropped all DRM_FORMAT_* not known on upstream
> - rework register access to get rid of excessively used macros
> - Drop all waiting for framesyncs
>=20
> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> board. Overlay support is tested with the modetest utility. AFBC =
support
> on the cluster windows is tested with weston-simple-dmabuf-egl on
> weston using the (yet to be upstreamed) panfrost driver support.
>=20
> Changes since v3:
> - Sort includes
> - fix typos
> - Drop spinlock
> - Use regmap_set_bits()/regmap_clear_bits()
> - simplify vop2_scale_factor()
> - simplify vop2_afbc_transform_offset()
>=20

