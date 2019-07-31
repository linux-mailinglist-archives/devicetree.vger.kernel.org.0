Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8ABF17CA11
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 19:13:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727348AbfGaRNx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 13:13:53 -0400
Received: from 8.mo179.mail-out.ovh.net ([46.105.75.26]:49905 "EHLO
        8.mo179.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725914AbfGaRNx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 13:13:53 -0400
X-Greylist: delayed 1798 seconds by postgrey-1.27 at vger.kernel.org; Wed, 31 Jul 2019 13:13:52 EDT
Received: from player697.ha.ovh.net (unknown [10.109.159.224])
        by mo179.mail-out.ovh.net (Postfix) with ESMTP id 54A61139E44
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 18:34:15 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr [90.126.248.179])
        (Authenticated sender: sebastien.szymanski@armadeus.com)
        by player697.ha.ovh.net (Postfix) with ESMTPSA id 580F38831A9A;
        Wed, 31 Jul 2019 16:33:56 +0000 (UTC)
From:   =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
To:     Rui Miguel Silva <rmfrfs@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Steve Longerbeam <slongerbeam@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
        =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 3/3] media: dt-bindings: imx7-csi: add i.MX6UL/L support
Date:   Wed, 31 Jul 2019 18:33:58 +0200
Message-Id: <20190731163358.32622-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 14053201162921464871
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrleehgddutdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document "fsl,imx6ul-csi" entry.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
---

Changes for v3:
 - none

Changes for v2:
 - New patch to document new "fsl,imx6ul-csi" entry.

 Documentation/devicetree/bindings/media/imx7-csi.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/imx7-csi.txt b/Documentation/devicetree/bindings/media/imx7-csi.txt
index 443aef07356e..d80ceefa0c00 100644
--- a/Documentation/devicetree/bindings/media/imx7-csi.txt
+++ b/Documentation/devicetree/bindings/media/imx7-csi.txt
@@ -9,7 +9,7 @@ to connect directly to external CMOS image sensors.
 
 Required properties:
 
-- compatible    : "fsl,imx7-csi";
+- compatible    : "fsl,imx7-csi" or "fsl,imx6ul-csi";
 - reg           : base address and length of the register set for the device;
 - interrupts    : should contain CSI interrupt;
 - clocks        : list of clock specifiers, see
-- 
2.21.0

