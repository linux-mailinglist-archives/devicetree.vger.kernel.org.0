Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BF54645A09
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 13:42:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229754AbiLGMm0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 07:42:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229694AbiLGMmY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 07:42:24 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F8B5326C1
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 04:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416943; x=1701952943;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aj/dw95ZdNd8eIMZkdNVYtby/iRlfIUUvKD0HV5Ilic=;
  b=VUDYF4qojF6oe6Me9BQZyQ/zBoF6N3U45M+TgnyrSXEkkYFOlvNSnM1r
   vgYMLM/jbAZ5mMFjQq5Ys1eVecOE0OvWnT7ra7dw2w6h0KN98Fjkjin+a
   Tb9cx33gwukhnJ2G3Lh2ZyzHIKxichaNu1VxNs1PGdL6VG4y3dZNnZ76Y
   i4Hoejw2AiUARK4rIDJmjDhqzVIQ4wjjh5zBKrnochMRK+564ElBMZPhD
   XtFcymBh0rF6qVUZcLIzOlNjIdFn/PexG9teijCMN6HD81Yh6CZfPvIE+
   2EnSqHo1Ww0j+WYVVtFktWOdO9EiHnot2xTxU5vJ9OBvoYs/Qdu9yVA2z
   w==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811117"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 07 Dec 2022 13:42:16 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 07 Dec 2022 13:42:16 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 07 Dec 2022 13:42:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416936; x=1701952936;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aj/dw95ZdNd8eIMZkdNVYtby/iRlfIUUvKD0HV5Ilic=;
  b=iqKNXhy08D1s5kJYVEBO6kbSsCEyY0ROvK/AngvPwkpXKbqbK8dYALVW
   68U6HFhNE+vqhUWWApgjj6MneuWBKuDiHPbN+jEkKPE9kJBLoMcGDz6qe
   mJPjkiKu61KHOATrLGI3/ENoqZAtKoxpPp1yHlv1M8GzIWajAwVBpi+b5
   Nhru75saN8tb9UQ6dmqyDuLIOxInbtTy/hw3NEzfm173LA6OVN2hjmfv9
   YXe0e3AEPIoqQtZ6yjHpTiLSOJOgNuXOHlYASAzLOaEgt8j9arJqUwwll
   8VLBNYGSWc1w8mt/DI8Uh3CTp4d+3cvxEjEb55bmidyShcsIgLcUjH0Gy
   w==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811114"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Dec 2022 13:42:15 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 93803280073;
        Wed,  7 Dec 2022 13:42:15 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/7] arm64: dts: imx8mq-tqma8mq: Fix temperature sensor compatible
Date:   Wed,  7 Dec 2022 13:42:01 +0100
Message-Id: <20221207124205.1373202-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
References: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.
While at it, fix the node name according to device tree spec
recommendations. The EEPROM is a separate node anyway.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
index 9a95e30fb42d9..5ca6b22525469 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
@@ -194,8 +194,8 @@ vgen6_reg: vgen6 {
 		};
 	};
 
-	sensor0: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor0: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
-- 
2.34.1

