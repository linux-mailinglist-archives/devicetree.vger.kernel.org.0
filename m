Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D7E2282731
	for <lists+devicetree@lfdr.de>; Sun,  4 Oct 2020 00:46:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726067AbgJCWq3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 18:46:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726066AbgJCWq3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Oct 2020 18:46:29 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53325C0613D0
        for <devicetree@vger.kernel.org>; Sat,  3 Oct 2020 15:46:29 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C3hmd5g4vz1rt4X;
        Sun,  4 Oct 2020 00:46:25 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C3hmd4flzz1qy6R;
        Sun,  4 Oct 2020 00:46:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id m-VtluX0ZXkt; Sun,  4 Oct 2020 00:46:24 +0200 (CEST)
X-Auth-Info: xKxg2pu9OLj9KhYon8gogpU9fL4yna5kX4lcs1bWTkg=
Received: from desktop.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sun,  4 Oct 2020 00:46:24 +0200 (CEST)
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Abel Vesa <abel.vesa@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/5] Documentation: bindings: clk: Add bindings for i.MX8MM BLK_CTL
Date:   Sun,  4 Oct 2020 00:45:51 +0200
Message-Id: <20201003224555.163780-1-marex@denx.de>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the i.MX8MM BLK_CTL compatible string to the list.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Abel Vesa <abel.vesa@nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Guido Günther <agx@sigxcpu.org>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml b/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml
index 5e9eb402b9b6..346429f49093 100644
--- a/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml
+++ b/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml
@@ -20,6 +20,7 @@ properties:
   compatible:
     items:
       - enum:
+         - fsl,imx8mm-dispmix-blk-ctl
          - fsl,imx8mp-audio-blk-ctl
          - fsl,imx8mp-hdmi-blk-ctl
          - fsl,imx8mp-media-blk-ctl
-- 
2.28.0

