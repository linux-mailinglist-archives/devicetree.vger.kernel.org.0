Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E40A55A2086
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 07:53:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244966AbiHZFxz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 01:53:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244943AbiHZFxu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 01:53:50 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3110ED076A
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 22:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661493228; x=1693029228;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KIuEh7A/dQ3HmKxtJIr/6XqFIA8xXkHaBbccVHHCHI8=;
  b=cFP1tyHtBUnimEMUZjIujqHN3DW8hcU3UBtjlexUAo4Kt10Lmbi4+Dn1
   3ghNU/sD6g+mFleFH9eUaaPwbTwtTqwV++PEbcaPVNbJQgwNt/iMJ+0ix
   ggb+21UpvvWWZnfRvGpl6JEXFOuEZ8aqJgue+OzlepukDrzeNToJU0UTm
   xdSbRuVSkL01GQNQbB3LxY2eMPXwzL61zIgKDI8n1tJrs5mmtxB/VHQAw
   ej17O6lDOlBbonu+n6xdFz7Ci6rztgTYCT/qZFoWAA8MZvuWFsaXcLLMk
   tNV8qsmyT9aNf9Aq1IrBGxViyX8XDSDQpMUrfWl/gQV6n5bz9luwyIVNN
   w==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25816946"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Aug 2022 07:53:41 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 26 Aug 2022 07:53:41 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 26 Aug 2022 07:53:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661493221; x=1693029221;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KIuEh7A/dQ3HmKxtJIr/6XqFIA8xXkHaBbccVHHCHI8=;
  b=d2LGJhTVduqyCHLYeHqbMs5JJrtrNdHPBdpo1BR5j/4OtoJ/sJ88fx//
   m4xH0pqaBS3SLJGDU42m1FWdmowGkCoYZ5d+jQDn56/zi6f34u8gCi0hy
   FxPcz78Y24ZnFcIc0BNVwc78nCcrQtUxqvJ5DRR2gG0ks6lx1dE6d0GOM
   YvzkHU+etpIXomLuSnnX5PoxA3kAA5GibIR84wv6BpyhIvxeveEEfVACv
   0hI00pUkcAUsN2gPWdMbLrqe28KrfxG1t7kyBbztDPbbbd4yvna+wJpxP
   hlaNGeSdg8J9PU7ANO+vz8pBHpbD5G4AlqjP/6JngGyZhP/OBWVWI2sUM
   w==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25816945"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Aug 2022 07:53:41 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0742E280056;
        Fri, 26 Aug 2022 07:53:41 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/6] ARM: dts: imx6dl: add missing properties for sram
Date:   Fri, 26 Aug 2022 07:53:32 +0200
Message-Id: <20220826055336.2821876-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220826055336.2821876-1-alexander.stein@ew.tq-group.com>
References: <20220826055336.2821876-1-alexander.stein@ew.tq-group.com>
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

All 3 properties are required by sram.yaml. Fixes the dtbs_check warning:
sram@900000: '#address-cells' is a required property
sram@900000: '#size-cells' is a required property
sram@900000: 'ranges' is a required property

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6dl.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx6dl.dtsi b/arch/arm/boot/dts/imx6dl.dtsi
index 8e0ed209ede0..dc919e09a505 100644
--- a/arch/arm/boot/dts/imx6dl.dtsi
+++ b/arch/arm/boot/dts/imx6dl.dtsi
@@ -84,6 +84,9 @@ soc: soc {
 		ocram: sram@900000 {
 			compatible = "mmio-sram";
 			reg = <0x00900000 0x20000>;
+			ranges = <0 0x00900000 0x20000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 			clocks = <&clks IMX6QDL_CLK_OCRAM>;
 		};
 
-- 
2.25.1

