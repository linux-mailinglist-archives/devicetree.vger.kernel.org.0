Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F15AD4F6883
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:59:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239537AbiDFRv0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:51:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239520AbiDFRvS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:51:18 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4929C1E5A54
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 09:00:05 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id d5so4848647lfj.9
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 09:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=HPRQgXRjC4atPl72bb1ewJJi+e0GsToCEPkcAuvez6o=;
        b=nA76NQ4I018Nvr5xO/CSVvNNmO27Sc0qc5/hcx8GHIw98s4Ajz2iNmg9XYs7h1yGW0
         TcKWn/k6nJQn/3ISQv9R7hjfw1JieOK69Ha8jN5NMZWChk7c1GmAeFmMgzJHTDDz4khw
         +oKA61QNSWZTvfhJjGlDRqwwKUV09MUPHKB8sT6wDBG3e+bCEiChj83OwklTVySl8iPg
         pIns7k5EGX3bwaxalYm6VqiBsny2ZsUFGfPHXo671l9pclE+Oob3bPwl2kODysqdFmoP
         z8/5ZPADb6Vv6s1NfhwwHe+FPv9k2pXQr0Cf1c6m2EwrPQOp0D0IQ7SecbZCYpiKizB+
         ZeTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=HPRQgXRjC4atPl72bb1ewJJi+e0GsToCEPkcAuvez6o=;
        b=qLi/xFbaONZIV+oGNboycV8QVIQG5e2h7DwYg1rlQLbOr03WF/uJkjCi8y0hhZrY+3
         +pnO2JpCvS2wATdofAFEzdaL/MlbYhMjv8AjyFrKAnDihM5HEDppAiL/990qBo/6jlET
         YoU3HjNaXHtmQxNsKTYigdr2Uiqvi+4hLIc9JuCuU/Tta29X6SgkvOzVXpN0aAmeWPVP
         0CyU7AkdVy5wIQ9e3aOqP5vvdwPMqWJwM2R9KWDeCkNLIe0ZX/jWl66GfikgXLri3hJg
         Jhr3hKJr2RKqhq1JTnYn+wiUPIykJVT48dITBDxx7T3QL0okfideq3KYGKJix/WLI5gh
         hBzg==
X-Gm-Message-State: AOAM53233+BCrPCaMyzAH2TxlJtrv0mx30g9v29kVVFwaeH3kG51vIIf
        QXnEjtZUp40V5ajWXgOyzng=
X-Google-Smtp-Source: ABdhPJzw1flYxDqL9d3uqjxYN2lRvj7oFW1wupoBbWmMvUGMsWak1tGLq9L1VBCzqRvFkZexmt6e6Q==
X-Received: by 2002:a05:6512:224a:b0:44b:111:1634 with SMTP id i10-20020a056512224a00b0044b01111634mr6163405lfu.367.1649260803181;
        Wed, 06 Apr 2022 09:00:03 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id y12-20020a2e978c000000b0024b11369f20sm1309738lji.126.2022.04.06.09.00.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Apr 2022 09:00:02 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220406145847.GX4012@pengutronix.de>
Date:   Wed, 6 Apr 2022 18:00:00 +0200
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
Message-Id: <1A6985CC-CBEB-44B2-AA61-3005D204C023@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220406145847.GX4012@pengutronix.de>
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
<s.hauer@pengutronix.de> w dniu 06.04.2022, o godz. 16:58:
>=20
> On Wed, Apr 06, 2022 at 11:47:22AM +0200, Piotr Oniszczuk wrote:
>>=20
>>=20
>> Sascha,
>>=20
>> Having vop2 finally working with drm planes rendering i discovered =
another issue: overlay osd is invisible at playback.=20
>>=20
>> context: player draws video on plane #X and osd on overlay plane #Y
>> When user do i.e. seek at playback - app uses overlay OSD plane to =
display OSD to user. This approach is used by majority of players (KODI, =
etc.)
>>=20
>> This works well on all platforms i have  - except rk3566=20
>>=20
>> For me it looks like z-order vop2 issue or alpha blending issue.
>> As this is only on rk3566 and only on drm-planes mode - issue is vop2 =
related imho.
>=20
> During my testing I haven't seen any z-order issues, but that doesn't
> mean much. With Weston I can currently only use the AFBC enabled =
cluster
> windows and with modetest I can only use the non-cluster windows. Are
> you able to find out which window is used for the OSD?
>=20
> Sascha
>=20
> --=20
> Pengutronix e.K.                           |                           =
  |
> Steuerwalder Str. 21                       | =
http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   =
+49-5121-206917-5555 |

WiIl this answer to your Q?

player:

2022-04-06 17:52:26.424487 I Display: Geometry: 1920x1080+0+0 Size(Qt): =
930mmx530mm
2022-04-06 17:52:26.424922 I /dev/dri/card0 Qt EGLFS/KMS Fd:5 Crtc id:49 =
Connector id:51 Atomic: 1
2022-04-06 17:52:26.425061 I /dev/dri/card0: Authenticated
2022-04-06 17:52:26.534362 I /dev/dri/card0: Found 3 planes; 3 for this =
CRTC
2022-04-06 17:52:26.534384 I /dev/dri/card0: Selected Plane #37 Overlay =
for video
2022-04-06 17:52:26.534430 I /dev/dri/card0: Supported DRM video =
formats: NV12,NV16,NV24,YVYU,VYUY
2022-04-06 17:52:26.534437 I /dev/dri/card0: Selected Plane #43 Overlay =
for GUI
2022-04-06 17:52:26.534480 I /dev/dri/card0: DRM device retrieved from =
Qt
2022-04-06 17:52:26.534489 I /dev/dri/card0: Multi-plane setup: =
Requested: 1 Setup: 1

so:
plane #37 is where video is drawing
plane #43 is GUI/OSD


dri state:

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
        crtc=3D(null)
        fb=3D0
        crtc-pos=3D1920x1080+0+0
        src-pos=3D1920.000000x1080.000000+0.000000+0.000000
        rotation=3D1
        normalized-zpos=3D0
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
        plane_mask=3D1
        connector_mask=3D1
        encoder_mask=3D1
        mode: "1920x1080": 50 148500 1920 2448 2492 2640 1080 1084 1089 =
1125 0x40 0x5
connector[51]: HDMI-A-1
        crtc=3Dvideo_port0
        self_refresh_aware=3D0
=20=
