Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B821547A840
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 12:07:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231549AbhLTLHC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 06:07:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231548AbhLTLHC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 06:07:02 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DD1FC061574
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 03:07:02 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mzGVE-0004x5-Fl; Mon, 20 Dec 2021 12:06:48 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1mzGVA-00EmED-Jh; Mon, 20 Dec 2021 12:06:44 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 06/22] dt-bindings: display: rockchip: dw-hdmi: Add compatible for rk3568 HDMI
Date:   Mon, 20 Dec 2021 12:06:14 +0100
Message-Id: <20211220110630.3521121-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Define a new compatible for rk3568 HDMI.
This version of HDMI hardware block needs two new clocks hclk_vio and hclk
to provide phy reference clocks.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/r/20210707120323.401785-2-benjamin.gaignard@collabora.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index da3b889ad8fcd..45cae4f57a1c1 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -23,6 +23,7 @@ properties:
       - rockchip,rk3288-dw-hdmi
       - rockchip,rk3328-dw-hdmi
       - rockchip,rk3399-dw-hdmi
+      - rockchip,rk3568-dw-hdmi
 
   reg-io-width:
     const: 4
-- 
2.30.2

