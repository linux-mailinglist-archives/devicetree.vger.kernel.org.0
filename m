Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EB9364C679
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 10:59:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238050AbiLNJ73 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 04:59:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238052AbiLNJ72 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 04:59:28 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F93E15721
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011967; x=1702547967;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=MjWwxAUkvig2Fpd+M10p7fGhl9dZ6Fjh6OUqT1QPRQo=;
  b=Tf1zs3uI+jYGVeQTYcgRYrUj9QntI0hRx/p9jjQCb1c7XsdU59S9yRg7
   5CiLr3H7A2HhOm3VG/20ILA+FEbYuWzkGARWLLlegtc2lmNQyumU+Z3fD
   37acYNYXU/5/jTC9FKVyl5Dv/9tYgmfIJdcoSz2UB+wc6Q1Ha3ZfYaTi4
   UEFFgmOOH1/OQHEuVw1JrGRpelNBeYex36OlY+j7jsWb0kde2YPeBvckG
   ghRD8qefSJkZvMrzl2lavT5ZA490PNEDoLPZpIjtHciq2QdN1oC54hjj4
   IB2r/QQoY/NNBsL5Wmn3UuSWTd2iDqpnt2ut350Dn0/vypImzNYRIf0Nq
   g==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943345"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 14 Dec 2022 10:59:23 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 14 Dec 2022 10:59:23 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 14 Dec 2022 10:59:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011963; x=1702547963;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=MjWwxAUkvig2Fpd+M10p7fGhl9dZ6Fjh6OUqT1QPRQo=;
  b=CZkSenph+SejSIoZrzGd2Mk9nKhP5p+iwU2TGWQRvoP4dp/x6+Myq2Le
   4bGZksTtfrBxi7ykmWFG2LOU9rOSGjj9HdLTttPtRmffdJlNVuyi+l1qc
   PEUuBN43kYN+zK6eHWzDkz6+Fdjk+mslKr2Xg04pTdNi3jzy2mGLGF0KY
   vR8IIZ1PKE7RvAybwVSKq1DGLPUMLC1gw7x1beXQewtzmoy52hLsA5FOF
   MpgxIv6jZOX2ul2QxnAsPEovOFCpPEWK6eUSrYhSPZRhOig/5YASjpdSi
   gYsVedPIQsLfGO7ajNoEOz4tLF3ovAAk6wN5rzv080EBYJme7KQmf8DPA
   A==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943344"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2022 10:59:23 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9ED9B280071;
        Wed, 14 Dec 2022 10:59:23 +0100 (CET)
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
Subject: [PATCH 4/7] arm64: dts: imx8mn-tqma8mqnl: Fix temperature sensor compatible
Date:   Wed, 14 Dec 2022 10:59:14 +0100
Message-Id: <20221214095917.964695-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
References: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
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
 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
index 48b965386e879..391ca5516e4c5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
@@ -77,8 +77,8 @@ &i2c1 {
 	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
-	sensor0: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor0: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
-- 
2.34.1

