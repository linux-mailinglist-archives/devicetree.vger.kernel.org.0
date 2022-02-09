Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA1B4AF8A6
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 18:44:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234752AbiBIRoh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 12:44:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232133AbiBIRoh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 12:44:37 -0500
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A96FC0613C9
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 09:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1644428653;
        bh=bZbERGS5dPadQqxAada0Qnetp5usNMkkZudsQMtwL34=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=M8s7o/ezuEBY8ByPlPJGeGa5rcj6oADEZinZIUugQJjhr0doSPQTl0tKd3ve1W+z+
         7xD38ORt7xSwxL+AIgFOB3w0o3FxGSHwKwEnHMz04Ftq9iJFyHAV3vDxLJ08/hT30+
         BFZzyb5m2qYaBChVvSL1mYrKYQJ7haCiRjN4aN3Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.2] ([80.245.77.2]) by web-mail.gmx.net
 (3c-app-gmx-bs62.server.lan [172.19.170.146]) (via HTTP); Wed, 9 Feb 2022
 18:44:13 +0100
MIME-Version: 1.0
Message-ID: <trinity-0fd51fc6-00ab-402e-871a-71d3356623cb-1644428653437@3c-app-gmx-bs62>
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
Subject: Aw: [PATCH v5 00/23] drm/rockchip: RK356x VOP2 support
Content-Type: text/plain; charset=UTF-8
Date:   Wed, 9 Feb 2022 18:44:13 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220209095350.2104049-1-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Kt6uAoUQy9KUxXYBKRna2pPwbagv75n8tB/ygcLmTad0OxyWH9GjeOrVm0AWTeIbrbqIq
 Tm1s3jWc+KpbC6iwreK7KtjQNxoO4BOa0lbhoSv8XGtsEHshbXteWUQGpRXothSDjShyy1mXnZBT
 hT1852znFykmSoCSO1QIUeC0etGbz2nof3MmQSE8+d+mbiy3hkxqwVpE8lxhW/CeeQ9jM94aYIZ/
 oB7m9mFSP+Xnau4l7gLNvr5ybM0twlYFQNn71AWtH7j6JytJyppXurHMP5yW0oI9M3x0OYm/V0av
 b8=
X-UI-Out-Filterresults: notjunk:1;V03:K0:HHIopXo7vDg=:qsqesGaC0wEfoA43XimtxE
 6bBs4dsAzxa4W4Aral8BmHTwxTpGZrvMM0RsC58nRqVGnyoWjgLTAMgl+mJMECV8hD7XSt3Wd
 NkpqxZNfbqiHDHOMjWM8tC8/FAfozuGL4OsxAv69cHZSUDsO/LnlQSlF/T2F90oMqxQ9DHEDw
 CcgMGfxB3Us4iUDFoB13jkz0s/s2VqLUE5H0KUd5357KuBWb2xoNwWltZqsLceU1kubro9NOi
 HNooovDdZ5H6xuJOPZ/G57jYxJ+hNY/RUJG4Ojg4Sha+fjPVY31Xlle3AQGp7QEJtqXtC8NFk
 PriywlgvZ0XB01f7LqQheJKs3NyEvZY5oVMeD0mTl+//ben+eyBChSkv/a5elOT8+iINOo9oI
 4hUyOEFEDfNk9RdLtmcxD63/zCwksIvu+lb4g4etzsj1PMNKzWqEC00yTAufw2KqzVCbcwX0k
 9O5IWXBzbm+hlxRis4do6Fd7fuCeiL8PZng8lD2aDtovpGTiN6366QLXAkhV69qS/PmTL4GLF
 Jp3DMJhvk2Pasdzbnp+GDNsVmc7oHYDsvpsFtFYWjMhqcAqhf2/2tNt1NWSLyZdzRfgOwDBpZ
 zpmxOJSHUZ5NzTycvzhAlyuU9SPd6yNb8hpTCcCitysOQ5hGLSisu4nJKmakqKWwwU+RMjGai
 UTyv9j9CKaf04bn9io2NmrSvpYdfn+zlRI2PXREz1TrGKl1qBYWOpDAO+7Ni/vf3zJsfQ7Ih/
 Nll1B2u7F+fXNlSGS7FQxbvIFL8Z+d/4oDE/klBv3Ln29FTyBmlmak/tDZ1oVPHnHZEAGKRp2
 T0vp6Nw
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
