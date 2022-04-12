Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47C234FDC7E
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 13:05:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235067AbiDLKbJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 06:31:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238009AbiDLKUy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 06:20:54 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45E4F4ECEE
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 02:28:06 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 17so23315544lji.1
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 02:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=turZnB5n/CzolNSuA1M6dvnR84HpAEYW+xCag97801o=;
        b=LLpP//XqcCWJbA7PKJ/iNKGZM7a/+mCZCyu/q5r/dhGWNinAOtWglqZZw4AmZ4v16n
         tD4SZ/IjuZK7eUKTVDLQeH3BCO5njAy7Hvy8BN51ygyDVOxaX1P90IyzZVlMxvgCEvMV
         H0lc6FnP98SA6xfTlopEbcdxWwQ6lb86w0+NqyPkeJfiXenhix3ZhgR8fABWpeWKuLR+
         8BJSLY/CQantZvQqTVlLrmpGSwVc/V6yqVpzLv2fzAWxK2KACSr363O7J+VFAIqVtM/K
         yEFBQ49PnSJgQuj9wseT7qD6eX0PTfWWR02dBNugGi18ClGko/syLvbnjx/p89gnUaU0
         wQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=turZnB5n/CzolNSuA1M6dvnR84HpAEYW+xCag97801o=;
        b=EtK3vtmIWlS8YpngmgGEf8nJ52Isrwtof/Bz87zvcfCO/MIWurdyMVWrtuk9qYOK8a
         bhqdO0ObH6UOqxbQVb5zQk7HGheOZOQLPOT9JZnMnPLHcuVUnlMcO+M95lF182iyPli6
         evZzYwM8OKkbwnfYEDO87l67Bo//xWZGI72EBZ8Z0zvUFopzd5aDk4s95QuOYFhvIYtM
         Svsb7j3w28KfXJqo/qXN2Z3DVGrLNhm/0vMU2JKIhsDNvX59tgpdbd2tEZtG1Sy5Zr/5
         Qo6xAkbEY0Um6CeacmAqow1TI77nX6y2GrfUL60Kho9HnOhRxQpvRf7euXlP50Ks1VfJ
         N/FQ==
X-Gm-Message-State: AOAM531ZPKwPRDM7xCZ1TK1mAlF55+9M/PIzVS3CvHI7FhXL7yB6vc4x
        VM4bbaBleg7KBci8OtHeiyM=
X-Google-Smtp-Source: ABdhPJzmTly0C01dv1dnFZBkivb7+onAaRQNmLX6/Q6cwjdDqEB6rqDUmd6996XnBZPaUD96eXGIQA==
X-Received: by 2002:a05:651c:17a1:b0:247:dc02:69b9 with SMTP id bn33-20020a05651c17a100b00247dc0269b9mr22661983ljb.437.1649755684369;
        Tue, 12 Apr 2022 02:28:04 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id m8-20020a2e9348000000b0024b47e7dda5sm1457065ljh.65.2022.04.12.02.28.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Apr 2022 02:28:03 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220412075034.GS4012@pengutronix.de>
Date:   Tue, 12 Apr 2022 11:28:01 +0200
Cc:     dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Lucas Stach <lst@pengutronix.de>
Content-Transfer-Encoding: quoted-printable
Message-Id: <006DD91F-E4D2-4A45-80BC-5B38A4FEBF0A@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de> <20220408120021.GO4012@pengutronix.de>
 <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com>
 <20220411090800.GR4012@pengutronix.de>
 <5929E7A7-776E-4BCB-92C8-A1CE05774FE3@gmail.com>
 <20220412075034.GS4012@pengutronix.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Sascha Hauer =
<s.hauer@pengutronix.de> w dniu 12.04.2022, o godz. 09:50:
>=20
>=20
> Somehow negotiation of the format goes wrong. Applications shouldn't
> pick these formats when the GPU is used for rendering. I don't know =
how
> and where this should be fixed properly, but your application should =
use
> DRM_FORMAT_ABGR8888 aka AB24 aka PIPE_FORMAT_R8G8B8A8_UNORM instead of
> DRM_FORMAT_ARGB8888 aka AR24 aka PIPE_FORMAT_B8G8R8A8_UNORM.
>=20
Applied :-)
Results: pls see below

> Could you try the following patch? It removed the formats in question
> from the list of supported formats in the hope that your application
> then picks one of the supported formats.
>=20
> Sascha
>=20
> -----------------------8<-----------------------------
>=20
> =46rom 7427109cfd16803902b55cd5536b9212abd09665 Mon Sep 17 00:00:00 =
2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Tue, 12 Apr 2022 09:42:32 +0200
> Subject: [PATCH] fixup! drm: rockchip: Add VOP2 driver
>=20
> The cluster windows only allow AFBC compressed formats. Not all of the
> offered formats are supported by the GPU though. Applications pick one
> of the formats and assume that this is also supported by the GPU they
> use to render on them, but this is not the case for all formats.
> Particularly DRM_FORMAT_XRGB8888 and DRM_FORMAT_ARGB8888 are not
> supported by the GPU and choosing them results in a black screen.
> Drop these formats for now.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 2 --
> 1 file changed, 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c =
b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> index 9bf0637bf8e26..38412766e3659 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -16,8 +16,6 @@
> #include "rockchip_drm_vop2.h"
>=20
> static const uint32_t formats_win_full_10bit[] =3D {
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_ARGB8888,
> 	DRM_FORMAT_XBGR8888,
> 	DRM_FORMAT_ABGR8888,
> 	DRM_FORMAT_RGB888,
> --=20
>=20

With above patch app select expected format (i think):

1970-01-01 01:00:31.074643 I /dev/dri/card0: Authenticated
1970-01-01 01:00:31.189420 I /dev/dri/card0: Found 3 planes; 3 for this =
CRTC
1970-01-01 01:00:31.189444 I /dev/dri/card0: Selected Plane #37 Overlay =
for video
1970-01-01 01:00:31.189528 I /dev/dri/card0: Supported DRM video =
formats: NV12,NV16,NV24,YVYU,VYUY
1970-01-01 01:00:31.189536 I /dev/dri/card0: Selected Plane #43 Overlay =
for GUI
1970-01-01 01:00:31.190279 I Wrote =
/home/minimyth/.mythtv/eglfs_kms_config.json:=20
{
"device": "/dev/dri/card0",
"outputs": [ { "name": "HDMI1", "format": "abgr8888", "mode": "current" =
} ]
}

(file eglfs_kms_config.json is generated by app to configure Qt; it is =
steep (b) in yesterday's email)=20
I see format abgr8888 is now selected by app (this is expected t think)



but later Qt says:

1970-01-01 01:00:34.985215 I Qt: EGL Error : Could not create the egl =
surface: error =3D 0x3009
Handling Aborted
Aborted
=20
I suspect Qt tries with this format talk to GLES provider - but it =
wasn't somehow accepted by underlying EGL provider (mesa GLES)?


