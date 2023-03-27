Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE8656CABE7
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 19:35:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230005AbjC0Rfn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 13:35:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231787AbjC0Rfl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 13:35:41 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BC9E10FD
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 10:35:40 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1pgqkl-0002cy-Me; Mon, 27 Mar 2023 19:35:31 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pgqkk-00783R-3X; Mon, 27 Mar 2023 19:35:30 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pgqkj-008Tyt-0A; Mon, 27 Mar 2023 19:35:29 +0200
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: dts: imx8mp: Add GPT blocks
Date:   Mon, 27 Mar 2023 19:35:24 +0200
Message-Id: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=880; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=+iLNtxKOvNIcOhMNIHR7ZRZDd94Wg9zwpsEMnqXL8QY=; b=owGbwMvMwMXY3/A7olbonx/jabUkhhTFyzc156QE9iZuYnv/V6ySxbH5+vtnB53/b80sTZfdl v2vaZlfJ6MxCwMjF4OsmCKLfeOaTKsqucjOtf8uwwxiZQKZwsDFKQAT6ZzDwdBtv9CuI7RBeHra n+eycy0v3lqcnCi6+aWTLn+Ems0Nlvl7blWenfvz0JO10+50dSVP7StYU+m1v+nmRqF5H9cuPDO 1o4h5v/XmtcwWORLKJ/218925b0y4y+6gIaq/fZfhmuxe/zTlGmb7/449u+YdnFNnEP8ioPOao+ jTXYpKhneudNutkUmwuC/lzWiQYSHAzyS8LEM0J22XAdezO3vFGe+bai3/mdel5bwzRTdU5cn3r MJljBuvMfMsDC+OUP7Dde2p40HfBROkauvNXor+2dKvqqR3yjzHz6Dn6knXPbtPJ7XeKbvjKhHK 0x41f2JuRf7x4tcnsv3q3DJPhdxtO+O14MTrrNbX2f2xAA==
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

according to the dt binding we have the following major GPT variants:

	imx1
	imx21
	imx31
	imx6dl

I compared the GPT documentation for i.MX8MP, i.MX6DL and i.MX6Q (which
is a member of the imx31 variant) and didn't spot a difference. So
either these are actually identical, or I missed a detail. In the latter
case i.MX8MP might be a member of the imx31 variant, too, and not as
advertised in the commit logs of the imx6dl.

Does someone know (or spot) the relevant difference?

Best regards
Uwe

Uwe Kleine-König (2):
  dt-bindings: timer: fsl,imxgpt: Add i.MX8MP variant
  arm64: dts: imx8mp: Add GPT blocks

 .../devicetree/bindings/timer/fsl,imxgpt.yaml |  1 +
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 48 +++++++++++++++++++
 2 files changed, 49 insertions(+)

base-commit: fe15c26ee26efa11741a7b632e9f23b01aca4cc6
-- 
2.39.2

