Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24A9675C5A9
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 13:12:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231164AbjGULMy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 07:12:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229713AbjGULMh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 07:12:37 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DF343592
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 04:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689937936; x=1721473936;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ynUOz5cMDTS13GL9DA4Qed8hS0+zVPIPzexapKn/uNA=;
  b=MXljiD6jv7Ze59LfgbEAF8ER6mYubmskM7g9AU71BAHbEgOdE4ttAQcQ
   YKGME1t2gVi/53NNPj/yGJ0BPc5UYbg81SYbwTbMHc2dlyKRbxk+eeIRw
   /5ShHqWp1/W3RPVPil1N2bZK4Xoyceh85WCrZQBqbdjAgVM5GN5BPDJ6U
   iXlGcMlKADY733eApMmLviMQYn0BTgJ/MhRd9A2YeZsu89v+846c9zF8Z
   MPpRhZvqbMtb6ea0L/HIf1eYpBcr2hyD6nlbESKMgH3kWJ9yZVDeveeYa
   mWalIJPdhmu17Rpm5FcI4vnE+sQj4Qvsivs7Ks4pW6mzgkPVtoOawoADN
   g==;
X-IronPort-AV: E=Sophos;i="6.01,220,1684792800"; 
   d="scan'208";a="32052714"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Jul 2023 13:10:43 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 99EF0280084;
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
Subject: [PATCH 2/3] arm64: dts: imx8qm: Fix VPU core alias name
Date:   Fri, 21 Jul 2023 13:10:37 +0200
Message-Id: <20230721111038.1234387-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230721111038.1234387-1-alexander.stein@ew.tq-group.com>
References: <20230721111038.1234387-1-alexander.stein@ew.tq-group.com>
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

Alias names use dashes instead of underscores, fix this.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 85c0b1d2bac5..c80c85a4b405 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -46,9 +46,9 @@ aliases {
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

