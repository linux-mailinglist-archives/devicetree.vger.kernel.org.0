Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33C823DCBA1
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231749AbhHAM3w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:29:52 -0400
Received: from mout.kundenserver.de ([212.227.126.131]:41573 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbhHAM3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:29:51 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MF39M-1mPavf30Dg-00FWaH; Sun, 01 Aug 2021 14:29:27 +0200
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
Subject: [PATCH 2/9] ARM: dts: bcm2711: fix MDIO #address- and #size-cells
Date:   Sun,  1 Aug 2021 14:28:45 +0200
Message-Id: <1627820932-7247-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:lbFs6XsnsjiMN1Je5HdNJSOkSOYzS2enlPZXz+uwTFLGSACdFYr
 r8f23f+grqRtb99P83fWkWIgb0HQo14FQMkQBYQpvgI19aQCEhvpg98MVAgkembha3HVJ9A
 +K2YMH7DnzU/WtEIkQe722m2IqhNgsKTbufu6Ujgv1v5rCvUvJEcdGW58q/7+yPgHxyaEEZ
 yLUx6irVHbe6RsL1VAhFg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eAZqnABIAH4=:zlTvX5m6qhUZSDS3NO5LIc
 JNC2P11WIZ5oiqceY8THRQeMlZ52x3m6HTXGtCDHzuOJxAI/Mq+19cX8sXHMsVcgoKCyVA6fk
 JNljnBRhVBJZb6S0K5uR9mqby++D+hJ4/nac4VkS/ZdFPA233bjgRnhDxN/3SOG9r7Wrs35Tu
 Qlhl4vojr3Tj+bdUSn0xZlvB72QMlg3Q+GiUiJW4vVUtUWnJV24+ChWRYgSDUlNQmh4qS3/H1
 UVShjsXmvfQOQnYmt1yzb4Vn8qLljZb8nGz8d8bSjC9mq0AvqKnqiLtPOiMoEHce10su6hKwt
 dlQqteWnOufzf1arnmNbW6LHT7snHZQGODudXNmW3Vx2DvJ27soslaVWaMcFsslWO8MVt37io
 Aj5N2c34JdgJELbdN6Fnz4XypQOgeg0PPOcB7WyDr7WkacO/YQY4xRgQNRi8uphcWylWIOIRD
 I1T/OZudi87mx6GQex2s/pMb+vRplKIupuEzjDlaK/203Qe73Eh21c90cxK6tPjuM4tnpX8Ne
 p0Ew02CgJyjOHDgTancfvgt9t+HjJpjnxseBgwqlyNTkEINoKb/sNph2iU6R/t8D5JYmHEhyo
 QyQ9IwdiQ1uqWNO0RLEWBhrmOYzNXYYp0gJPX8JFlmfQwGTliK0Y/La+V4OXCVJu4GKCnIJGB
 rlhmIK9imu+q/zOOgr6k7iRWG5jQOkpdMQgazcHmI66MFH6csSpRP6bv1bmDfirkkFy0OzGG6
 a2bmRy0a+bcu+tcitrBNWlj9twU1f3eFRlLZ+cXq4sDKc5FeIjP7Dj/BP36hBCFReSuBgPCdV
 bXJ+LwHmOYF5TVdlGGQMu7qtnbWTJK91vNmDNhFgvdTd+hgD8l6lmACvy0keKnHZwiVuk7EJa
 Gk6RBMjHAxRLDG7X7ETw==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The values of #address-cells and #size-cells are swapped. Fix this
and avoid the following DT schema warnings for mdio@e14:

 #address-cells:0:0: 1 was expected
 #size-cells:0:0: 0 was expected

Fixes: be8af7a9e3cc ("ARM: dts: bcm2711-rpi-4: Enable GENET support")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index afe0ef8..55022fc 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -532,8 +532,8 @@
 				compatible = "brcm,genet-mdio-v5";
 				reg = <0xe14 0x8>;
 				reg-names = "mdio";
-				#address-cells = <0x0>;
-				#size-cells = <0x1>;
+				#address-cells = <0x1>;
+				#size-cells = <0x0>;
 			};
 		};
 	};
-- 
2.7.4

