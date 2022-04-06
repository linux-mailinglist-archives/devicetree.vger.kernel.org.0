Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B71E4F60E9
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 16:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234280AbiDFOJK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 10:09:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234570AbiDFOHz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 10:07:55 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4396C10FD8
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 02:47:33 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id t25so3113372lfg.7
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 02:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=E42yxEwN9hE1F4mWuGhw6zVEQZFBfw5J79gP+8Gl7J0=;
        b=iIjUtMWiW9sFTZs6ixgTkqoKUp9KooOrSiS9xGSuEy6/zJouQvGjaePtj3kWP5pzMD
         yTfKsp1ezsj9aZv6DkThlDhU+1QlwGrdUokDb493Jnpju0dK8/uGZQx4wEK6F9fft2nt
         AARzVJuVqUYQrdbf7wgRZJ4AKMuGQxj3qG3ReyNmigbaCWBjH2FLVLWZfrUq8Iub9RVu
         99npCDtAWWcjaLY9mHUhvWh08uqmN0OQ2Q8at89tr49Kog5UE8NGCROwS3flh7go1/NK
         MgKdW5OsYySzV9uK+gWIleRdTjgIjGBgSYyUzyIhwq+tNmr10Tw5hTtYr6EI4WwzqgOT
         iM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=E42yxEwN9hE1F4mWuGhw6zVEQZFBfw5J79gP+8Gl7J0=;
        b=eWVcjOzxXA9LJSdCpNRtxzMQibNjAcsPrl4a1dpoQk3VFeOhQuBuNvYfc67A7KMpY0
         EAX/vTfOf2IStagNnRCt2O2Q/8aNXntpMzzE6fF9kEIhwQpC2qHx+y8GELRng8BzO7dM
         Gm/LCSvzFRz5+fNLY/qsMlD0p3PZa4aMMaIEVb5x3utcPvWgHHXjsOtipWSL3eTPjT63
         Bpspg5kkYCJOWnIJ8gGqNz7KHIvi3vkOAx7OW5dZqXHgvAi6oyG/8K/fvHyD2llmRaAt
         R7AuXYRsVFN1YkE5prjMSCrIB8Oz/3no5uY40iR7+AbFrLofWjET0fgub1F1Qb8IDpLp
         2+OQ==
X-Gm-Message-State: AOAM532SX+rn1G/kQmEI70MG82vFM1H3BhYMw8DePWLOFBMFIiaMGORQ
        blM2Cj7Qbc6hLlE2MAXVWnQ=
X-Google-Smtp-Source: ABdhPJwC+eyrRKTQfRnsJir5jLb4gCz3POVqq+LV1mkriib2J7vxsIWGH9wtcC3p7KlK7L+G3REqyA==
X-Received: by 2002:a05:6512:3341:b0:44a:eb29:c59c with SMTP id y1-20020a056512334100b0044aeb29c59cmr5331160lfd.596.1649238451239;
        Wed, 06 Apr 2022 02:47:31 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id m22-20020a0565120a9600b0044a93d21093sm1776972lfu.279.2022.04.06.02.47.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Apr 2022 02:47:30 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
Date:   Wed, 6 Apr 2022 11:47:22 +0200
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
Message-Id: <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
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



> Wiadomo=C5=9B=C4=87 napisana przez Piotr Oniszczuk =
<piotr.oniszczuk@gmail.com> w dniu 01.04.2022, o godz. 15:05:
>=20
>=20
>=20
>> Wiadomo=C5=9B=C4=87 napisana przez Sascha Hauer =
<s.hauer@pengutronix.de> w dniu 01.04.2022, o godz. 14:52:
>>=20
>> Based on the discussion with Andy please try the following patch, it
>> should fix your green screen issue. Note that with this patch the
>> CRTC and plane ids will change, so the modetest commands need to be
>> adjusted accordingly.
>>=20
>> Sascha
>>=20
>> -------------------------8<---------------------------
>>=20
>> --=20
>> =46rom cbc03073623a7180243331ac24c3afaf9dec7522 Mon Sep 17 00:00:00 =
2001
>> From: Sascha Hauer <s.hauer@pengutronix.de>
>> Date: Fri, 1 Apr 2022 14:48:49 +0200
>> Subject: [PATCH] fixup! drm: rockchip: Add VOP2 driver
>>=20
>> ---
>> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 14 ++++++++++++++
>> 1 file changed, 14 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c =
b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> index 7dba7b9b63dc6..1421bf2f133f1 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> @@ -2287,6 +2287,20 @@ static int vop2_create_crtc(struct vop2 *vop2)
>> 			}
>> 		}
>>=20
>> +		if (vop2->data->soc_id =3D=3D 3566) {
>> +			/*
>> +			 * On RK3566 these windows don't have an =
independent
>> +			 * framebuffer. They share the framebuffer with =
smart0,
>> +			 * esmart0 and cluster0 respectively.
>> +			 */
>> +			switch (win->data->phys_id) {
>> +			case ROCKCHIP_VOP2_SMART1:
>> +			case ROCKCHIP_VOP2_ESMART1:
>> +			case ROCKCHIP_VOP2_CLUSTER1:
>> +				continue;
>> +			}
>> +		}
>> +
>> 		if (win->type =3D=3D DRM_PLANE_TYPE_OVERLAY)
>> 			possible_crtcs =3D (1 << nvps) - 1;
>>=20
>> --=20
>> 2.30.2
>>=20
>> Pengutronix e.K.                           |                          =
   |
>> Steuerwalder Str. 21                       | =
http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0 =
   |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   =
+49-5121-206917-5555 |
>=20
> Sascha
>=20
> Now works perfectly!
> (hd playback with 3.5...5.5% cpu while rendering to drm plane)
>=20
> Fantastic work of You!

Sascha,

Having vop2 finally working with drm planes rendering i discovered =
another issue: overlay osd is invisible at playback.=20

context: player draws video on plane #X and osd on overlay plane #Y
When user do i.e. seek at playback - app uses overlay OSD plane to =
display OSD to user. This approach is used by majority of players (KODI, =
etc.)

This works well on all platforms i have  - except rk3566=20

For me it looks like z-order vop2 issue or alpha blending issue.
As this is only on rk3566 and only on drm-planes mode - issue is vop2 =
related imho.

what you think?


