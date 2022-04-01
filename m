Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BD2B4EEDCC
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 15:05:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345944AbiDANHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 09:07:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243131AbiDANHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 09:07:13 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE6EE1D832C
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 06:05:23 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id y36so1940471lfa.6
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 06:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=0ucnjFKd28Tf+W0k0cKJLPb/VcjJsSWQNUvFfYSvuec=;
        b=lwjqcDZowyUU8SuD8z2KZvDAD1mucsBt5qUOqYI/eoVYbRsRNjll6kgXkuvojbg5MI
         UYk0eutBGy0i3pSAcp0GidT4aybG37Fqt86TTJVUeFDo7dr4eTrqnj7wZwSGCiMcMP7w
         caFA/JAaHsx/PKVdUIx2D214DPjOaf0vmTYieL/8CJnG/GjRImDjedGWKlfL+XVtBgHi
         R4zRaKmy04yuGg4XzDiM0Q5GBGqS7VUrrK6ysSTd9QcYnaHuLct+9KUkwQUswkYwJ+4h
         rqOZD5pRnVJ3z2cUnsUVmJaFRUM1zShFtulA0SJXcb68tA72iU7cOqd2W+3iP1GbhqhR
         gw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=0ucnjFKd28Tf+W0k0cKJLPb/VcjJsSWQNUvFfYSvuec=;
        b=FWz1m2TPcGD64IYELHFs7cP24PG6rwYrhtA7M8KK4A+rfaqPRg1WSM9bGHe4DlyuEs
         1cAmUDVGdFRWTipfSBZheYUXYOPd2pCsGbjLg822OpgB4k5Eew05nyDVp6HVZZzfpZxi
         ljBMgN7UdSK3qANmKNWGhKwEEyPzUhMlRc4JgnbrTTlGmn9rzc9HypJhgyQssjmuh3YL
         9drNsECTjkruvgoV6+gypl0nq7wys+5XReI8LchMxMLXgCTKk1j73KsCcOun0YT9zNBb
         WZj68fqwAxWjW7L6t7FdqQJPFiYyjrQDKxE1Zn7qyr6bwNFZl9pXqXF99ze0rXsvPJmu
         ldnw==
X-Gm-Message-State: AOAM533jpF6KjPAQMvS5HSLDf31y4Al3DbTtrkUPoRpMTCg5jlgBR8rd
        13Uh66tMupyRzMGWWMxx4mI=
X-Google-Smtp-Source: ABdhPJyZ5PdSzE8MpJHh+wukQwEggZ85lWeSn46EcyF/aB7nRi7vu866Il+NdtIoeNpkflbb91DjMg==
X-Received: by 2002:a19:5f16:0:b0:44a:2507:5e90 with SMTP id t22-20020a195f16000000b0044a25075e90mr14520906lfb.24.1648818320442;
        Fri, 01 Apr 2022 06:05:20 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id i8-20020a0565123e0800b0044a74e0954dsm238724lfv.66.2022.04.01.06.05.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Apr 2022 06:05:19 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220401125205.GL4012@pengutronix.de>
Date:   Fri, 1 Apr 2022 15:05:16 +0200
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
        Peter Geis <pgwipeout@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
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
<s.hauer@pengutronix.de> w dniu 01.04.2022, o godz. 14:52:
>=20
> Based on the discussion with Andy please try the following patch, it
> should fix your green screen issue. Note that with this patch the
> CRTC and plane ids will change, so the modetest commands need to be
> adjusted accordingly.
>=20
> Sascha
>=20
> -------------------------8<---------------------------
>=20
> --=20
> =46rom cbc03073623a7180243331ac24c3afaf9dec7522 Mon Sep 17 00:00:00 =
2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Fri, 1 Apr 2022 14:48:49 +0200
> Subject: [PATCH] fixup! drm: rockchip: Add VOP2 driver
>=20
> ---
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 14 ++++++++++++++
> 1 file changed, 14 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c =
b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 7dba7b9b63dc6..1421bf2f133f1 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -2287,6 +2287,20 @@ static int vop2_create_crtc(struct vop2 *vop2)
> 			}
> 		}
>=20
> +		if (vop2->data->soc_id =3D=3D 3566) {
> +			/*
> +			 * On RK3566 these windows don't have an =
independent
> +			 * framebuffer. They share the framebuffer with =
smart0,
> +			 * esmart0 and cluster0 respectively.
> +			 */
> +			switch (win->data->phys_id) {
> +			case ROCKCHIP_VOP2_SMART1:
> +			case ROCKCHIP_VOP2_ESMART1:
> +			case ROCKCHIP_VOP2_CLUSTER1:
> +				continue;
> +			}
> +		}
> +
> 		if (win->type =3D=3D DRM_PLANE_TYPE_OVERLAY)
> 			possible_crtcs =3D (1 << nvps) - 1;
>=20
> --=20
> 2.30.2
>=20
> Pengutronix e.K.                           |                           =
  |
> Steuerwalder Str. 21                       | =
http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   =
+49-5121-206917-5555 |

Sascha

Now works perfectly!
(hd playback with 3.5...5.5% cpu while rendering to drm plane)

Fantastic work of You!


