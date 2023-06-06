Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 110AB724745
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 17:09:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233354AbjFFPJ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 11:09:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234811AbjFFPJ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 11:09:27 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2214126
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 08:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686064166; x=1717600166;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=5ZcUJRYW7+Rwjln1A5TJQtuqr5Ad9zPDX1m+dvTmIqI=;
  b=elMHmbqm0jtKQM9ySYCgSXkymWedrSEurJhaot8/3y6wBjLG/5/4ReaZ
   E0j6cUAA5/5L795R2kqJoPatno3jUTdlLgRPXa924jTc+nCejrP4jikm2
   iKotrHH1JqMFKxOM0q7z+s77us3oDZYAUlpvc0isxJZagBAB+woSsUYLN
   ti+974GLjpTCj58xSarh+R63lU7XFE4mwcR1RDSCxbXFmt0oPtM+0VXp9
   E7+taElFC1gVrMUUg4v9+hHsSBw73jWKPPdv7BOaShi96iDOm5b2mkgo/
   QP1CviRpLlD2WswVB8d0Uk77B3HIlieHHCA/UnulMNLd+kon9f6NgSXWu
   w==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31308221"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2023 17:09:20 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Jun 2023 17:09:20 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Jun 2023 17:09:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686064160; x=1717600160;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=5ZcUJRYW7+Rwjln1A5TJQtuqr5Ad9zPDX1m+dvTmIqI=;
  b=U30jwKdwMrXi5PmBgWKSZTPM+k4L7ASQ/5tBd8watFKT5iYkYkDdygZk
   DI11Mlz0kLwHNz2TEISev+5saJZ/Cs45b5vaAUw8jA3E+K8RpjIYSOyxg
   ADMsoACJFHkL5BSqOnvtbt/Z1h56u5b54WVgx9qBkC+pFRxzJJ1H12phc
   eIMmtTJJi8z6/Lb4wcuVhEutH4j/NASLh72znFX/7QWMDlhJD1/8tdJA2
   om1H0N0KauGrG79PQ0X8OCMHW1zir0lBJ8jCsnd8OXA8BsHfHzYOwZINr
   /S8OTfuLt28v7l5Lx5ogoTVIi+ohC3pTwr8SYa2fy1mS7SdXclji7wSba
   A==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31308220"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 17:09:20 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 59D2A280092;
        Tue,  6 Jun 2023 17:09:20 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: imx8mq: Add missing pci property
Date:   Tue,  6 Jun 2023 17:09:19 +0200
Message-Id: <20230606150919.778261-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606150919.778261-1-alexander.stein@ew.tq-group.com>
References: <20230606150919.778261-1-alexander.stein@ew.tq-group.com>
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

Add the required bus-range property to PCI RC node. Fixes the warning:
pcie@33c00000: 'bus-range' is a required property
  From schema: Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 813fd85657f6b..b53592df94b59 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1579,6 +1579,7 @@ pcie1: pcie@33c00000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 			device_type = "pci";
+			bus-range = <0x00 0xff>;
 			ranges =  <0x81000000 0 0x00000000 0x27f80000 0 0x00010000>, /* downstream I/O 64KB */
 				  <0x82000000 0 0x20000000 0x20000000 0 0x07f00000>; /* non-prefetchable memory */
 			num-lanes = <1>;
-- 
2.34.1

