Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20B6A4F99F4
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 17:54:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237855AbiDHP4f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 11:56:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237853AbiDHP4e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 11:56:34 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F14D5DA0F
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 08:54:30 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id x33so9359132lfu.1
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 08:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=dMedrJyyPp2AgciwGwoI4gGO2Wx2Sr0zepsVnCRbIjE=;
        b=A8vrBw3oP8HTsp1QlGgoAB7EBM+Sjeia5CjW++jfKK5AcRoF3PGzuU04n2UO8kJNx5
         wDq9ipFPcPX13nQQ5kmVwXCIkRwpGkXxcLJHpx0OX6xpNvZcTeo8mbxuVlw5AFvwLeiT
         vVCkmCdxeyYAVMDho4bk06siNnXPz8DXE+6gIDCrOiYKYcxabHXXf6jpSMNmeWmwIY8z
         OhbTDzJ9aYk8HGnyG87CBHMo+pD+Jniq7fdkogyQ0wNbcJMPJDjo9itwj63EDDlYITjM
         5BEmAT2rAfyHTeBOrRCj+vtsVTF82UwzZKSQTOkm2FGj27AkR5X3xNEb1Mttx0v5JWgL
         8XRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=dMedrJyyPp2AgciwGwoI4gGO2Wx2Sr0zepsVnCRbIjE=;
        b=piQsa5qPDqfOX8P1l7q0marCZ1l1AjpHhdo1JGlgZE10ue2F5PKuC9F+cpO/uQk6gk
         jybC3/zu/LRlBKMNqerKMio2n0es8DbP6V4Yc04a4m1H7C50ovSH4eJyGgsoWjmVVwxU
         NdOG/aKuX26JRqQAPnalubjsRJ/6y5rFMW2ZYIRVOWdMbmsPWIHkh3pih61zec2zaRoX
         ItWbEvZhmhQ2ZyakD2tDWHzWkP8h+CaFgxiKtNXj8QXldHCtQkX8z3florrA6jgPWvit
         KsXewyCmvtJWwLgEUmkHL9B6NxNyAzpuWJ+jaO3vFvsXc8Ag/GBkRsYDNhk1KVw2bL/h
         Hadg==
X-Gm-Message-State: AOAM531oawPy/is5vfHSJUggojgWdYMo59aNZPeiJcubqjPLvRkdmTtY
        9U6S+/mKxZssNSD8+Lp+QkYYxpOJcZg=
X-Google-Smtp-Source: ABdhPJwfgu52z8PaJQneJJMuJk5hON8/mrklFYZkHFBLFZ1DMsYY5NDjuYTkAAhsz+y6JrZoyviv8g==
X-Received: by 2002:a05:6512:104e:b0:44a:379a:e2ff with SMTP id c14-20020a056512104e00b0044a379ae2ffmr13221555lfb.495.1649433268647;
        Fri, 08 Apr 2022 08:54:28 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id k22-20020a056512331600b0046b8c25a307sm113244lfe.75.2022.04.08.08.54.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Apr 2022 08:54:28 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220408120021.GO4012@pengutronix.de>
Date:   Fri, 8 Apr 2022 17:54:24 +0200
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
Message-Id: <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de> <20220408120021.GO4012@pengutronix.de>
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
<s.hauer@pengutronix.de> w dniu 08.04.2022, o godz. 14:00:
>=20
>> That turned out to be simpler than I thought it would be. The zpos
>> values were never actually written to the hardware. Please try the
>> following fixup, it should fix this issue.
>=20
> Or better try v10 which I have just sent.
>=20

Sascha,

I applied v10 on 5.17.2 and...can't see difference.
I still need to play with zpos to get ui screen.
if i have playback - no OSD.
If I have OSD - no playback.

Maybe fix needs some adjustments for 3566?=20

Here is short summary of playings with zpos and kms plane in Qt:

QT_QPA_EGLFS_KMS_ZPOS, QT_QPA_EGLFS_KMS_PLANE_INDEX

0,0 - GUI=3Dok, playback=3Dok, OSD=3Dnok
1,0 - GUI=3Dok, playback=3Dnok, OSD=3Dok
2,0 - GUI=3Dok, playback=3Dnok, OSD=3Dok

0,1 - GUI=3Dok, playback=3Dnok, OSD=3Dok
1,1 - GUI=3Dok, playback=3Dnok, OSD=3Dok
2,1 - GUI=3Dok, playback=3Dnok, OSD=3Dok

0,2 - GUI=3Dnok, playback=3Dn/a, OSD=3Dn/a
1,2 - GUI=3Dnok, playback=3Dn/a, OSD=3Dn/a
2,2 - GUI=3Dnok, playback=3Dn/a, OSD=3Dn/a


player launch:
.......
2022-04-08 17:47:57.035668 I /dev/dri/card0 Qt EGLFS/KMS Fd:5 Crtc id:49 =
Connector id:51 Atomic: 1
2022-04-08 17:47:57.035806 I /dev/dri/card0: Authenticated
2022-04-08 17:47:57.145447 I /dev/dri/card0: Found 3 planes; 3 for this =
CRTC
2022-04-08 17:47:57.145469 I /dev/dri/card0: Selected Plane #37 Overlay =
for video
2022-04-08 17:47:57.145515 I /dev/dri/card0: Supported DRM video =
formats: NV12,NV16,NV24,YVYU,VYUY
2022-04-08 17:47:57.145523 I /dev/dri/card0: Selected Plane #43 Overlay =
for GUI
2022-04-08 17:47:57.145567 I /dev/dri/card0: DRM device retrieved from =
Qt
2022-04-08 17:47:57.145574 I /dev/dri/card0: Multi-plane setup: =
Requested: 1 Setup: 1
.......


playback:
.....
2022-04-08 17:48:55.457823 I DRMVideo: Using Plane #37 for video
.....


DRI state with zpos=3D0, kms_id=3D0 and ongoing playback:

root@Myth-Frontend-06c7e973c2f1:~ # cat /sys/kernel/debug/dri/0/state
plane[31]: Smart0-win0
        crtc=3Dvideo_port0
        fb=3D58
                allocated by =3D mythfrontend
                refcount=3D2
                format=3DXR24 little-endian (0x34325258)
                modifier=3D0x0
                size=3D1920x1080
                layers:
                        size[0]=3D1920x1080
                        pitch[0]=3D7680
                        offset[0]=3D0
                        obj[0]:
                                name=3D0
                                refcount=3D4
                                start=3D00000000
                                size=3D8294400
                                imported=3Dno
        crtc-pos=3D1920x1080+0+0
        src-pos=3D1920.000000x1080.000000+0.000000+0.000000
        rotation=3D1
        normalized-zpos=3D0
        color-encoding=3DITU-R BT.601 YCbCr
        color-range=3DYCbCr limited range
plane[37]: Esmart0-win0
        crtc=3Dvideo_port0
        fb=3D65
                allocated by =3D mythfrontend
                refcount=3D2
                format=3DNV12 little-endian (0x3231564e)
                modifier=3D0x0
                size=3D1920x1080
                layers:
                        size[0]=3D1920x1080
                        pitch[0]=3D1920
                        offset[0]=3D0
                        obj[0]:
                                name=3D0
                                refcount=3D3
                                start=3D00000000
                                size=3D3657728
                                imported=3Dyes
                        size[1]=3D960x540
                        pitch[1]=3D1920
                        offset[1]=3D2088960
                        obj[1]:
                                name=3D0
                                refcount=3D3
                                start=3D00000000
                                size=3D3657728
                                imported=3Dyes
        crtc-pos=3D1920x1080+0+0
        src-pos=3D1920.000000x1080.000000+0.000000+0.000000
        rotation=3D1
        normalized-zpos=3D1
        color-encoding=3DITU-R BT.601 YCbCr
        color-range=3DYCbCr limited range
plane[43]: Cluster0-win0
        crtc=3D(null)
        fb=3D0
        crtc-pos=3D0x0+0+0
        src-pos=3D0.000000x0.000000+0.000000+0.000000
        rotation=3D1
        normalized-zpos=3D0
        color-encoding=3DITU-R BT.601 YCbCr
        color-range=3DYCbCr limited range
crtc[49]: video_port0
        enable=3D1
        active=3D1
        self_refresh_active=3D0
        planes_changed=3D1
        mode_changed=3D0
        active_changed=3D0
        connectors_changed=3D0
        color_mgmt_changed=3D0
        plane_mask=3D3
        connector_mask=3D1
        encoder_mask=3D1
        mode: "1920x1080": 50 148500 1920 2448 2492 2640 1080 1084 1089 =
1125 0x40 0x5
connector[51]: HDMI-A-1
        crtc=3Dvideo_port0
        self_refresh_aware=3D0
root@Myth-Frontend-06c7e973c2f1:~ #



