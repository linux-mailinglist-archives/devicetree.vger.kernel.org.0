Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 611E96175C2
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 05:42:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229759AbiKCEmi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 00:42:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229866AbiKCEmh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 00:42:37 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44177175BE
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 21:42:37 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2A34gVtU060248;
        Wed, 2 Nov 2022 23:42:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1667450552;
        bh=2vWsXnJDtt3+RxVROIV3BAOZKS5Zl/tW4eoVo7lBOc4=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=aqnllL8ShAWd5H/NI4OJaetzQcoj6zod0h4NodQ9T+bDl7iCf0msaelitizEe2kBj
         2sypdDHdbjmVNVb3hkqn05rXBQw8gR1MI8jHf4yq1bLZF2Rfr2nSQoyAV1NUoqgQNz
         Z/DuqaVPeWIbgbka7Vx3eZEIarIm0KcT6sLpoDTY=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2A34gVYn081935
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 2 Nov 2022 23:42:31 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 2 Nov
 2022 23:42:31 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 2 Nov 2022 23:42:31 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2A34gQ4r053797;
        Wed, 2 Nov 2022 23:42:29 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: [PATCH v5 8/8] arm64: dts: ti: k3-j721s2-common-proc-board: Enable PCIe
Date:   Wed, 2 Nov 2022 21:41:25 -0700
Message-ID: <20221103044125.172864-9-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
In-Reply-To: <20221103044125.172864-1-mranostay@ti.com>
References: <20221103044125.172864-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Aswath Govindraju <a-govindraju@ti.com>

x1 lane PCIe slot in the common processor board is enabled and connected to
J721S2 SOM. Add PCIe DT node in common processor board to reflect the
same.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 .../boot/dts/ti/k3-j721s2-common-proc-board.dts    | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
index 0503e690cfaf..862611784ab3 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
@@ -374,6 +374,20 @@ flash@0{
 	};
 };
 
+&pcie1_rc {
+	reset-gpios = <&exp1 2 GPIO_ACTIVE_HIGH>;
+	phys = <&serdes0_pcie_link>;
+	phy-names = "pcie-phy";
+	num-lanes = <1>;
+};
+
+&pcie1_ep {
+	phys = <&serdes0_pcie_link>;
+	phy-names = "pcie-phy";
+	num-lanes = <1>;
+	status = "disabled";
+};
+
 &mcu_mcan0 {
 	status = "okay";
 	pinctrl-names = "default";
-- 
2.38.GIT

