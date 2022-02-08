Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 021874AD8AE
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:15:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238907AbiBHNPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:15:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357472AbiBHMdE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 07:33:04 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92B81C03FECA
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 04:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644323583; x=1675859583;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NRWsqzaY92Lb6j4GflAsJbKP6ejm31/ajdXV0loIdS0=;
  b=XuRYjSRbLBjTFe7N2urMfafvTVTpIj7cLW8aniwA6m6m5Tmnj0h8g+5S
   0tvaKGBVgqcGZjTCF/S5of7rrUpifnl6G5BMAdTSPIDXzXYTd09Vcd/2V
   VGDz4QW6eM878iJgVwbSRH1nz0eif3W/NB1Hm3m+uYhPKD0CKZl/yjSSG
   G2SvkE0mDWDVUEtOnEGgq2+K4KMcbC0LlF4kBpYvj4634zP++2ZgCWKz5
   IA8NHlKeI3DirN1ll/awTpBYWLiLj67mqvfYmWQGfr7Avv1TUEXdBUNNp
   hixPIrY+3PtDu3n0En6jjPrCJ8AecHaZO4S1U7LbbfpZBqiSRAumepr+n
   A==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21960355"
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
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NRWsqzaY92Lb6j4GflAsJbKP6ejm31/ajdXV0loIdS0=;
  b=NAjhxqMMW+A27MrdUyUilfpWuxTBATSTU4Ol8lzcToNK8KdRMbemGSGh
   oM5kNrtm0lTdi6YOXx/rmejkD0U9O4aU7iVXsV85j3j8fD7Q4kUlcWRgD
   QU6RlgEQy4yxxOBbdrfOeqP9LCkMRMBC/l1VY/bVi4GzOp23gGhFZpMIp
   cak7H48zKpVCoFZ7wBf0qdRgg/JyANG54D9qDiEPAEIf/TAiZL4wLzq4S
   iYIAkHdhXToVGq3V6y3PPghsE+JSzcZmvfo3FN+XRN/TThtN7j5EF9tOV
   7MueuplYoXOoZdpRPb8oNZXbr8O5kI4k11zFw61XO1lXhbWnEp1/2dsCV
   g==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21960354"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Feb 2022 13:32:58 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 8C9F2280065;
        Tue,  8 Feb 2022 13:32:58 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] ARM: dts: imx6qdl: tqma6: Remove obsolete comment
Date:   Tue,  8 Feb 2022 13:32:47 +0100
Message-Id: <20220208123248.821826-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
References: <20220208123248.821826-1-alexander.stein@ew.tq-group.com>
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

This comment is not valid anymore.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6qdl-mba6.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
index 1b6943802642..9aacc1a62189 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
@@ -396,7 +396,6 @@ MX6QDL_PAD_EIM_BCLK__GPIO6_IO31 0xb099 /* LED V16 */
 
 	pinctrl_hog: hoggrp {
 		fsl,pins = <
-			/* LCD.CONTRAST -> Rev 0100 only, not used on Rev.0200*/
 			MX6QDL_PAD_DI0_PIN4__GPIO4_IO20 0x0001b099
 
 			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26 0x0001b099
-- 
2.25.1

