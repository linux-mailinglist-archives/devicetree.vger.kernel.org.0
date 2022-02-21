Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F73B4BE308
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:56:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346788AbiBUJAc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 04:00:32 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346417AbiBUJAM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 04:00:12 -0500
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B33F192AA
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1645433669;
        bh=Z8EpCecM7RhGma2bC7EtfcMj8Tocmigz2nMw62yYXOI=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=SGP/t2lI+xhMg/JrfB13WY4xxriDcSAHgJ6ylum/H9flWMPRdIgPX98DGQ/1h6i3Q
         qairigJXYCvXvVFnp/yDTP+h9lWb9PEJfSmaS5aqGry3mW27en1R96IHha5jvJWvL+
         qu5OOcNGUpraNYgoYe2Z5euBaUOZK40LBlFXjLxY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.156.188] ([217.61.156.188]) by web-mail.gmx.net
 (3c-app-gmx-bs60.server.lan [172.19.170.144]) (via HTTP); Mon, 21 Feb 2022
 09:54:28 +0100
MIME-Version: 1.0
Message-ID: <trinity-1fb35fb4-c954-46bc-ae87-02d5df121a01-1645433668183@3c-app-gmx-bs60>
From:   Frank Wunderlich <frank-w@public-files.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Aw: [PATCH v6 17/23] arm64: dts: rockchip: rk356x: Add HDMI nodes
Content-Type: text/plain; charset=UTF-8
Date:   Mon, 21 Feb 2022 09:54:28 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220217082954.2967889-18-s.hauer@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-18-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:x3LBl6EdmehdGuwhuzd1xOiFb5z5EOYnOHMNPxoOy2rR8Mp7JmyFo1r/Het2WBDJ+/P/C
 MbmK1DBWnywY9nPp//MWoUl0xvSo2oFozeETajq/jVz0zEjHvB8ykHCkzW7YiAG74BlX4x6IKiyJ
 ykAnSyyPrbCPT438/Jx32+Zl/DaxIVQbl7p0P6yOye/7si/IiLDQ+qkkt+Dt7Ttsr2PEr1u0BJ0p
 cLwZzSo1tEct6iqdXWkPu3nprszone4sbWeWnDcadvyteaibWI8AbYRahHEstwIQjQWq74mTVvoZ
 fs=
X-UI-Out-Filterresults: notjunk:1;V03:K0:DwdkB/65TKg=:HKvkpn7knmxoBuuiGPVqAX
 a52f8isbXjpRDRLNOGCNM74lVG9WMh/GmZaZqg1g2Y6WUvSocvo8X6OpfMrb+kH/epU2SqxaG
 Y7TUYu3SamCGVywdGnqbSey7MI0noKv+mmeTEXF2bKSnWsDz5BjcuaD6lNsxg7fWpLPWXqLdo
 q0YNDHYn4XZ/wNzVIC4jBKiJwM0w5UNRBDWiZ2WT0Hn73geP30gdDbfF/P3W5RHZpl3HUvOzI
 5gLlwXgOzajIyabSo57wTRTHeYjX/ll+Ev9WBKdiziKzt6UnhU695W5nWhWJtjtUjUFgg9Xtv
 u3kJVcG93Sqo0gkiXedAIiAgxNsg9pxhBAySNczCCgPfZhwahFsgNgMSkWQ/668LAmPtj3DMr
 PAkdnsiDMUHJ1VBUZBn9jVlQ2DteRFw3AjOxJq+fEF2HNA+T+L3z/EC7G9TW3lNaFgk4CeDjq
 rQmthDdyPzoVE+9N2QXeLkqTlvUvoDqYI0Op7Y92VWeSiODLkoOrzXL3TZDBVVx22jbpJ6bHR
 XGUcLyDTRau47Z7BUzzgjdWcYlwu6qJ1d9g/+5YhOVe63hEfy4xkCejUWVtRb7oqiaZnHd91T
 KmCQC5cYSjNz/m4sSFFdrb+EOa0A3P3rB4PkGm9stkHLg1e6d5Zd3VSIYQnO5+uDWaFt1Xpuj
 ztMk1+oqEUPnl1E0lV3o1Tm6H5msgDGQuHP8PbuV1JrzaUshTR2Qpif8slsHA/jwaYEt9BHTX
 uImMXEI9pDkYEp8rw3zxNI0Qc0TVj0AvIrLEaTJlvjO5BepPQqjpGxtVpwB+cU8Awj1tfX6dR
 4SoFCOx
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

> Gesendet: Donnerstag, 17. Februar 2022 um 09:29 Uhr
> Von: "Sascha Hauer" <s.hauer@pengutronix.de>

> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -10,7 +10,6 @@
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/power/rk3568-power.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>
> -#include <dt-bindings/soc/rockchip,vop2.h>

why dropping this after adding in part 16?

>  #include <dt-bindings/thermal/thermal.h>

it looks like you moved this to board includes...imho this should stay in the rk356x.dtsi, because compilation will fail if a board without the vop2 (and missing the include) is derived from rk356x.dtsi.

regards Frank
