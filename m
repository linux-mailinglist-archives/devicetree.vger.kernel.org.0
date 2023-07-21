Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 365BF75C5A8
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 13:12:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229836AbjGULMi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 07:12:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231401AbjGULMX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 07:12:23 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8EEC273F
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 04:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689937923; x=1721473923;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=N0IRQA6tQXDjBEFZbYmoOe7QwdbZXA070TVCoGAkxSE=;
  b=noORhXYkmOeK3SK6qcBHUplM6AaIoluBeCR8oU8HFMSmLfttnLFnazaN
   k45auSz37wIlzS2YxNrgXm1k+ZaVSr8ZCaYmm6Ug37hvz+B0s/pgkqqY7
   W9EO2+fW1D/fw9uYx0jtZVUYBbC4g4BDwTquYAhMe5OzvuWBHE1dXe2Iy
   RveR/l9tI/iD+5NnboO61tt+OlqtRqMJ7Iqwx9ttda2KUNEXvy8303ziM
   QlbjeOrURP8vi4c/0OQuu1162j0ScGvfcVlteVzQWBktzNAsxvLx7epB4
   2fMu+UF4h9amwcdyN0WWoqd7dIOPJnfFWrtb+jf7EN228doQWmIL/q3Hf
   w==;
X-IronPort-AV: E=Sophos;i="6.01,220,1684792800"; 
   d="scan'208";a="32052713"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Jul 2023 13:10:43 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 5F044280078;
        Fri, 21 Jul 2023 13:10:43 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Frank Li <Frank.Li@nxp.com>, Peng Fan <peng.fan@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: dts: imx8qm: Fix VPU core alias name
Date:   Fri, 21 Jul 2023 13:10:36 +0200
Message-Id: <20230721111038.1234387-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Alias names use dashes instead of underscores, fix this. Silences also
dtbs_check warning:
imx8qxp-tqma8xqp-mba8xx.dtb: aliases: 'vpu_core0', 'vpu_core1', 'vpu_core2'
 do not match any of the regexes: '^[a-z][a-z0-9\\-]*$', 'pinctrl-[0-9]+'
from schema $id: http://devicetree.org/schemas/aliases.yaml#

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8qm.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
index 0e425df1bc4e..31744fc1ab08 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -24,9 +24,9 @@ aliases {
 		serial1 = &lpuart1;
 		serial2 = &lpuart2;
 		serial3 = &lpuart3;
-		vpu_core0 = &vpu_core0;
-		vpu_core1 = &vpu_core1;
-		vpu_core2 = &vpu_core2;
+		vpu-core0 = &vpu_core0;
+		vpu-core1 = &vpu_core1;
+		vpu-core2 = &vpu_core2;
 	};
 
 	cpus {
-- 
2.34.1

