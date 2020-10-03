Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19379282734
	for <lists+devicetree@lfdr.de>; Sun,  4 Oct 2020 00:48:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725935AbgJCWsM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 18:48:12 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:56856 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725933AbgJCWsL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Oct 2020 18:48:11 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C3hpd1q7Wz1qs3p;
        Sun,  4 Oct 2020 00:48:09 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C3hpd1cJwz1qy6R;
        Sun,  4 Oct 2020 00:48:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id P_HrMBj48kFu; Sun,  4 Oct 2020 00:48:08 +0200 (CEST)
X-Auth-Info: 86Cmeceeiz+TeBZMiVONf7wr9FwZpF1nirw4TOwIaTY=
Received: from desktop.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sun,  4 Oct 2020 00:48:07 +0200 (CEST)
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] dt-bindings: mxsfb: Add compatible for i.MX8MM
Date:   Sun,  4 Oct 2020 00:48:01 +0200
Message-Id: <20201003224801.164112-1-marex@denx.de>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

NXP's i.MX8MM has an LCDIF as well.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Guido Günther <agx@sigxcpu.org>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
---
 Documentation/devicetree/bindings/display/mxsfb.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mxsfb.txt b/Documentation/devicetree/bindings/display/mxsfb.txt
index c985871c46b3..f2f4a8189eda 100644
--- a/Documentation/devicetree/bindings/display/mxsfb.txt
+++ b/Documentation/devicetree/bindings/display/mxsfb.txt
@@ -6,6 +6,7 @@ Required properties:
 - compatible:	Should be "fsl,imx23-lcdif" for i.MX23.
 		Should be "fsl,imx28-lcdif" for i.MX28.
 		Should be "fsl,imx6sx-lcdif" for i.MX6SX.
+		Should be "fsl,imx8mm-lcdif" for i.MX8MM.
 		Should be "fsl,imx8mq-lcdif" for i.MX8MQ.
 - reg:		Address and length of the register set for LCDIF
 - interrupts:	Should contain LCDIF interrupt
-- 
2.28.0

