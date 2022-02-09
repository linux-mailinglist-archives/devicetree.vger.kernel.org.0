Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AC0C4AFE22
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 21:21:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230446AbiBIUT0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 15:19:26 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:40150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiBIUTZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 15:19:25 -0500
X-Greylist: delayed 319 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 09 Feb 2022 12:19:27 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B148DE010DBE
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 12:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1644437965;
        bh=bZbERGS5dPadQqxAada0Qnetp5usNMkkZudsQMtwL34=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=AQ4KPra6AK/FZUpukDCkn/7tK09PBY0WU6QkrfOesMEB6UlCwFkjd5stQ3Jy1FRNZ
         /ugeejoMZsyL+9GNTMFmbBqHepip7vb3pnppOCn/QiJDylIgaof4QBem2fxfYUSLxc
         ojpswzBXFK2F3SNb3TVCqtenubEf5nyRf3PABtKQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.2] ([80.245.77.2]) by web-mail.gmx.net
 (3c-app-gmx-bs62.server.lan [172.19.170.146]) (via HTTP); Wed, 9 Feb 2022
 21:13:37 +0100
MIME-Version: 1.0
Message-ID: <trinity-64a1ce60-e8ac-49d8-abe4-91b0f692c13a-1644437617960@3c-app-gmx-bs62>
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
Subject: Aw: [PATCH v5 22/23] drm: rockchip: Add VOP2 driver
Content-Type: text/plain; charset=UTF-8
Date:   Wed, 9 Feb 2022 21:13:37 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220209095350.2104049-23-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-23-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:+cdMhHjrAZgXlErp4/YCapKkUq88eAKp7+SpVwHUzYYxiDZV0aCZIj0Iq4wyffX2za42C
 X7wbT7KqRHUBBIDtlBZOCVITl8H1GLpJ1G2z7vpLR4+xKYraBYWeedHKURcmM5CnzwEm97ZeAvyw
 BaAbGtHVp4AuKoqT/iffHIU3sSLVP+i4TitnwQWh/scEySediIZUYE/H5IGg7bOeGdDtIXFnlIBc
 Ju1mRlPHeWtbBVJ8aOTbJx2P5mzOJVf9AreRacKKpFUWykZvqBwzPkODEeJX/oBtlvWnDBU8o6k8
 3A=
X-UI-Out-Filterresults: notjunk:1;V03:K0:8iLMJ6CG5oI=:aFNNonMw0dFIOm1vh+OLii
 UuaGMXZ0dBvQNkBQvbRK2Ha1vYhhPjOUMMs0pGEUGDVi5/47Ey6+StcGsfmB90rEMLE1kwukT
 XzDW+5SiDAZpK5EgXy8OOmv05LxwX2UBVsr5gLAp4CaCwdPWtnkPiiOx08m1btPebIZ5vb/ac
 JqlSB4mYmzw+JVuRL4DT1wPxOfwXs4hbOoe+Ega/IRYy+hk50C5YKBOZ6l6OHCHQJT7J2Sbnz
 Gg+G/dkRiIcu5iAYY6ckyci3VTvYGLCpirIT9i+QPV8kbefJTdJP3jnhR+bU5Vduuegshd1ON
 d25wzBCoRbMYP1pbpFE9vEFCf7LnOeW3nKe4yVBr9bMllooejwuhI+nQoCqPeE4m1wjXq/BWC
 +vxFUkIEeo5Wp9xII6bE8up0mpWwE+k8yJ4tkcOwOA8jxpRU7FWXSzwNfPHtU30WdooUaU98z
 EemoDDu9qffr5Twrv1c1TltRQonYMZpG2tfghqqqB9xBSZ7eE0TS8SqNPutRGkbMzTTm+/8dp
 PUvmcecGCylXGVBvfZIdQlhcqZjRYbyPYzlr0pas9BeZX7qwsrGJRBXOkChIIxW5Mf5IulIKT
 +P0v8W1DVE5w4iGvOZuAo7wHLx0KnMwt07Pb4no2OP+xyJOSNcIpsoNvexvsQ+53NmyhtgUJX
 K/L0lTQGMFg+z0sPf+U7Dz7iG+Bce55wMl8dyL3iIrI8Z1KreNMs3nS1ByhR6LvwsLEIEEa+u
 XzhCOdE8enEqMJ3sOLsdk5Q4AAcSUpTWp+VVc+QIOfuLVrofbQN1NkrBYdlODEbVYJC/5MnFa
 sMeB0PY
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha

tested full v5 Series + 3 clk-Patches from v4 on 5.17-rc2 on my rk3568 based Bananapi R2 Pro

1280x720-32@60Hz
1920x1080-32@60Hz
3840x2160-32@60Hz

with fb console

Tested-by: Frank Wunderlich <frank-w@public-files.de>

regards Frank
