Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B80248E704
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 09:59:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237647AbiANI7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 03:59:16 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:63604 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230160AbiANI7Q (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 Jan 2022 03:59:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1642150756; x=1673686756;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=FSntJw+ENSMdrXzG70Rcs0O8nBrujBRuAccNyuQ1pOg=;
  b=DcSno7IiBhK8R2DpjjxL3moyktso0T339m+akIW4OeVVI0e+4IKbPAbS
   QfX8lUVvvyrXlA2HeKdZngX6u9gvgA/vIDmB5I0hFgCNYLy1GfGb1tC+8
   V2t5OC4JuIC9mpftGJwFtDeI3CgaLz1POf8ijBu9/pjPElnwyPAEMcyyD
   g24EuJB36EC+8VpX4TijhceHXgeCkIx/D6wiYVz20eI6469sPY2JxNBP3
   Bz/NlHJg0Z2pS1Oyek4bqO1eswahrYuqk6PXldtjz1LLTftMZGtAI/CJ6
   hzoly5GDtC8Ory+OQjX9gbRMC/8ahvoyDvaI4vCXkUy1O18AMLlCw1h2b
   g==;
X-IronPort-AV: E=Sophos;i="5.88,288,1635199200"; 
   d="scan'208";a="21500647"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 14 Jan 2022 09:59:14 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 14 Jan 2022 09:59:14 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 14 Jan 2022 09:59:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1642150754; x=1673686754;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=FSntJw+ENSMdrXzG70Rcs0O8nBrujBRuAccNyuQ1pOg=;
  b=Y7aCGqqlZvbhVa+H62bF8AUEmzeMyBq0GMJ6jEFBnBLZfivWmiXt717D
   +jsO3MLj6s6KKDEWkg3LuxoNdfNoHTCiGGiC+FaFcjd6DdMdgoPDikqWY
   gjBCh6gEkA0RSMyx16+wSWdMRHMPvewaW8QwTEPfElybtYSrhw9Jj8Szm
   M0eIK8R5flWPR5pg2RHQvecHudKkv3FPNAZ9P+cU/nLG/dtvMlOTvi+0a
   C0rwavBHa2j4lxWXLrtRJhRvka8LY06PEb1o8cS3D8b56+8vbAfi1/EPn
   OOyUzPlZy0GtSQwx5aCA4oTPzgNRPECtbRVkcoOr4DUu+pSwaB5cUm9LL
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,288,1635199200"; 
   d="scan'208";a="21500646"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Jan 2022 09:59:14 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 935D3280065;
        Fri, 14 Jan 2022 09:59:14 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: freescale: Fix sound card model for MBa8Mx
Date:   Fri, 14 Jan 2022 09:59:06 +0100
Message-Id: <20220114085906.629218-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The audio codec connection on MBa8Mx is identical to MBa7 (imx7) and MBa6
(imx6). Use the same sound card model as well.

Fixes commit dfcd1b6f7620 ("arm64: dts: freescale: add initial device tree
for TQMa8MQML with i.MX8MM")

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This should be integrated into 5.17.

The references modeld are located at:
* arch/arm/boot/dts/imx6qdl-mba6.dtsi
* arch/arm/boot/dts/imx7-mba7.dtsi

 arch/arm64/boot/dts/freescale/mba8mx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index 42e12c190e9e..4b2cca3268eb 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -126,7 +126,7 @@ reg_vcc_3v3: regulator-3v3 {
 
 	sound {
 		compatible = "fsl,imx-audio-tlv320aic32x4";
-		model = "tqm-tlv320aic32";
+		model = "imx-audio-tlv320aic32x4";
 		ssi-controller = <&sai3>;
 		audio-codec = <&tlv320aic3x04>;
 	};
-- 
2.25.1

