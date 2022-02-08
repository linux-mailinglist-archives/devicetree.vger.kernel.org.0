Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AD2F4AD899
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:15:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234132AbiBHNP2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:15:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232265AbiBHMdC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 07:33:02 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06164C03FEC0
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 04:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644323580; x=1675859580;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ndSbzbbYm+RHdvPpAZuBwfHcJOdR+Q4NqIGXByVMAJU=;
  b=OFJkpbucWlOM6lhS7tU2J31DhOEyVgjrQclamqQN4/QIW+XjnvFOOC/K
   C8jiJVmiP3WWMZMs7qNAjbX1CxucwQEwGpdWsfWcnu+mxW7OO8GMHdQwx
   2bS9ZMN5KyexWixjrNF9uUkKbsVGg3kRy/FzoqKgoF8o+j79UsCCFnbuB
   A8VofOmW33NdEsplpMaO82I9JwNugOhcMqwI2XhFB9u702uUXmHiV7trZ
   oJDxGu4Gc4/gZ5KtcXbuAAOboHira8VE05Nm/QdNtHGruQTEZBTfiLkW2
   79blEi/8Gv4ObHV999cXov5PECYS8301G1AD5ER6s818HvkFN0LDjX/i8
   w==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21960349"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Feb 2022 13:32:58 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 08 Feb 2022 13:32:58 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 08 Feb 2022 13:32:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644323578; x=1675859578;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ndSbzbbYm+RHdvPpAZuBwfHcJOdR+Q4NqIGXByVMAJU=;
  b=YkhaBoRwsruYb7zMqxQG/zpOEBSWP17rwxCgAwtsAQK2hp8l1CHhYfCW
   GrCT6f1ttXFWkdJ2S1yT1N2D94UGEQjvcJXHbMYuwHnZsCSKuuNHdHfy8
   DhmvectkR4dRwypK9/74uYXF3U4Zp4TDuayRMdn391HFitnlQu4/rJBFb
   WeFe1ONiBvE+KuM0xlfTW910V2tz9VgoMPrSTENV01AFzlqAE2fsOvAcL
   hDRRVWVvB+pqrQor6gVqLvr+iBIJj9qb2iSn7ulA3tOsToALPjSHiGsz2
   HTO3i+/YcvIiBjeGtlN56h5wDJTNNqxDQUGcvLlAHHQD6fIDAE4JRYnDn
   w==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21960348"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Feb 2022 13:32:58 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id EE4F5280065;
        Tue,  8 Feb 2022 13:32:57 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] ARM: dts: imx6qdl-mba6: Move rtc alias to common location
Date:   Tue,  8 Feb 2022 13:32:44 +0100
Message-Id: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The rtc alias is identical for both mba6a and mba6b.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6qdl-mba6.dtsi  | 1 +
 arch/arm/boot/dts/imx6qdl-mba6a.dtsi | 6 ------
 arch/arm/boot/dts/imx6qdl-mba6b.dtsi | 6 ------
 3 files changed, 1 insertion(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
index daf76345b179..8f6e1dd82ee4 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
@@ -17,6 +17,7 @@ aliases {
 		mmc1 = &usdhc2;
 		/delete-property/ mmc2;
 		/delete-property/ mmc3;
+		rtc0 = &rtc0;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
index a61f2705a340..df8fa169e9f6 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
@@ -6,12 +6,6 @@
  * Author: Markus Niebel <Markus.Niebel@tq-group.com>
  */
 
-/ {
-	aliases {
-		rtc0 = &rtc0;
-	};
-};
-
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>, <&pinctrl_enet_fix>;
diff --git a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
index 9f9f7037c9e4..2e3407790963 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
@@ -6,12 +6,6 @@
  * Author: Markus Niebel <Markus.Niebel@tq-group.com>
  */
 
-/ {
-	aliases {
-		rtc0 = &rtc0;
-	};
-};
-
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
-- 
2.25.1

