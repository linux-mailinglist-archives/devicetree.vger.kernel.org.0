Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7968A52FD8C
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 17:07:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244678AbiEUPH5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 11:07:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243649AbiEUPH4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 11:07:56 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9216345AE2
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:07:55 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id EDA44832C3;
        Sat, 21 May 2022 17:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1653145674;
        bh=iv4oO+W9bV8ul6CkSvVFy3UEdvcxnoZLWyEc74PO4kc=;
        h=From:To:Cc:Subject:Date:From;
        b=IKhrxlqHn9C19DSCtg2Nz1CvI1hUXSz3p6JYCh3y166gaXd5kUoEYfFJxp+N9xeYJ
         m6nmBL+qNvI6Zozqe083Kx0fnBwtDzlX4gj3O9xkPXNCQj12JCty2oDZJyGI+/szWq
         KxQ6ttSEAvnEJXzX+6bhzuZtaXrJjCd/C+6DpS4H1vJ0GS72grRyxypn6SjilYUry0
         HKTFoLeiMmTX331w44IfEFjV+OfW4RF90Uw1ably1ukzXt75q85E22pem+KNbBzpx2
         S/Ga4C5nWowKhVXhPUmRNc5cFHNYs7bqhuKIARAGlwoPjwbbqlNh6fZsf4TWUlGRq8
         ozwJxC+oEp+8w==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mm: Add SNVS LPGPR on MX8Menlo board
Date:   Sat, 21 May 2022 17:07:50 +0200
Message-Id: <20220521150750.93718-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SNVS LPGPR bindings on this system, the LPGPR is used to store
boot counter.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
NOTE: Depends on
      https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=for-next&id=fee6de80bdd3df976a43f3092a165cb43c072f20
---
 arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
index 92eaf4ef45638..6956c9bb992be 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
@@ -303,6 +303,12 @@ &sai2 {
 	status = "disabled";
 };
 
+&snvs {
+	snvs-lpgpr {
+		compatible = "fsl,imx7d-snvs-lpgpr";
+	};
+};
+
 &uart1 {
 	uart-has-rtscts;
 	status = "okay";
-- 
2.35.1

