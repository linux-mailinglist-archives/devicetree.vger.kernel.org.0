Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B06F13DCBA0
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:29:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231791AbhHAM3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:29:51 -0400
Received: from mout.kundenserver.de ([212.227.126.135]:38471 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231577AbhHAM3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:29:51 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MV6G6-1mZ1X40b7W-00S5t9; Sun, 01 Aug 2021 14:29:28 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 3/9] ARM: dts: bcm2711-rpi-4-b: fix sd_io_1v8_reg regulator states
Date:   Sun,  1 Aug 2021 14:28:46 +0200
Message-Id: <1627820932-7247-4-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:J6ZTTcL97uuFVV51+GUs7/xVhMoJV3gWYbvzqfFPDnzhuYh05j7
 PBSOxfmIxEd3RGzOgoXw/ob44Dodia+Qch5RyhxWwrvmFz+mVkVoqSI03z0279S9I9vIp0I
 yvBTje+vzRXKOkIVH/8InzZLYoC7X2MiqXSvuCjnY2enjpfacOt+UDjlurJTm2PNoEf14kA
 49+rpWx8AzKSUgy5W1MRg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C+uACBPs4bo=:mpRAm0f2MhrWzj8i2kw1Wz
 qIGTCzSkknFFf9mnNpeC9saL4fCyaz4cvELkmqWKR2nWEsEr1EZj+G8b0kAfxVVNrZJxbVmNX
 P2q5MvBsjWKG1ncK3AXv2ZNP48OT3MJLJH3PSsThSsLypIXRdQdCf0TfvlaU1bxhIGuUEYctn
 hwfyB4Z2GzblC5lZMdEds8s30ToU4sSaZgiNF8yXHbg0zcyeSxCquN+cWzysOZpdZo2HaMawv
 MJdszAsAqMpt+n7a2MsJrCipE5+w/fh1womWGkNdTCYX6PBVJkEc46Qhd/EXQ0w8XgXkDd5mj
 ONwZjcFKzMcgD/NClH1cEt+Q9maVHrj6FfCthgO1vGFgMRPTIBbyBSJJbF4xRhwTnFrL2NOoG
 i5C0lSja3SgSNjpiT/zG0o0h5+jabZCDGWsORZkaWtT87apzesUvGbnkkpp23FvqHnq48QrJg
 rqYfDFgneOLCt1wf1VhHvYO2C3onvioSoquRPa3IqtPuSdtr4efjVXt8+zTCATRRvO7Z0jpiR
 SzDYt9btHZG0tIQxF414TcxI9A7WszbsXreqP9oyWCVjVTZgRpJ72QBM3fUhOZA7ace9+mg42
 FJpwdkHaDiAfV7FeUplB/2Mpj08hSgdu6PPIsRglCiSWbfPHRIpCOpbKYDIAvHjEKIlT7TOIT
 ePvNoNjCyrTRbJckrKzC5w5eCvE/R5CA39rZqZQb6eSwkzijRwJzXVktKic3aP6N1KOQqkCwn
 jgjWaWmshXRpTpVM138D6ClNW0sijKdfHZ8X05/dj8koxx3Sr70z6ituUWHOS0n2Z2hC7fVbQ
 7wtSvqKy6CPzCyDfR34wNIGbb57zLfm8LhDiq36NEFePZQlG2nKihlHPOnUeoNI0fbZb6kHYq
 Xi0yA2oqDjtZKtlE1Q4g==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DT schema check complains at sd_io_1v8_reg about the following:

 [1800000, 1, 3300000, 0] is too long
 Additional items are not allowed (3300000, 0 were unexpected)

So fix the states definition.

Fixes: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index f24bdd0..abf8298 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -40,8 +40,8 @@
 		regulator-always-on;
 		regulator-settling-time-us = <5000>;
 		gpios = <&expgpio 4 GPIO_ACTIVE_HIGH>;
-		states = <1800000 0x1
-			  3300000 0x0>;
+		states = <1800000 0x1>,
+			 <3300000 0x0>;
 		status = "okay";
 	};
 
-- 
2.7.4

