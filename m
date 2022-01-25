Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D137049B569
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 14:54:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1385813AbiAYNyv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 08:54:51 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5775 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1386004AbiAYNwh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 08:52:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118755; x=1674654755;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=LOBrqVSjd5cqvWno960uxXoB7Fxk/KaKpa3za4EmJYA=;
  b=ocrGTL7EXMoGjOd3kTfnafMIW6ck5WVh9VxyCETfpaRD6h2W/N1oy6Kb
   slOgw+0G2k7yFaiiOIbeF5vbxM+g8GAUeFmsmXo6EvILa8ng2GcfQ0s1n
   j91vVEGicVK0acXr7u8jXhPLO2uWZUnZZTQcKdcqkLfc4WP6Xfc2wh5gD
   aflvSfc9uCBLHD2wN824Mo1lZNl6135horRksuv2AOmLDobHwGPbZHY/h
   t2W2QfCPsBaPOyRuWR6tylYREQL8qutbOSehY5LYT+Z2yPJgQVy/5Anm8
   AhJIztOWmLNbDr0LTANEQ6/q/g7ljeAYZLz11Vf5shf/pKtD63wKh0QC0
   g==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699063"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 25 Jan 2022 14:50:24 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 25 Jan 2022 14:50:24 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 25 Jan 2022 14:50:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118624; x=1674654624;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=LOBrqVSjd5cqvWno960uxXoB7Fxk/KaKpa3za4EmJYA=;
  b=l6kOJISvxJBS1pyy+KHI/MAxNiL0CCiPv1XFN96rluj+wjwCEzOiTTDA
   WaokAfzsaI3g/iv/K/TQiOSNaZhjLIXU9B2antWU8nMymdPEPVmMuGwjJ
   jo+uaBf1LE6NJQOQLUJh4lTdixPqaxLOVPMDCJeX/W8NkMHJJbaOynMQ/
   kK+xvKn8dkAErV2BBjeU2BzWsCTlKOx+JOU1+UWy+9u7ov4yaZqk2IXVs
   ptXHk4MIQJ0mRgyHxZRkUvz6JClnY9XnZsSsqg2Sva64MNQSlwESBF2jH
   htbDcsnfkY5bSXl6/lXrbA2HltU4gVTM00ctCwxszaO8mK4IQxQAJvrSh
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699062"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jan 2022 14:50:24 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F0E0528007C;
        Tue, 25 Jan 2022 14:50:23 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/8] ARM: dts: imx6ul: fix keypad compatible
Date:   Tue, 25 Jan 2022 14:50:09 +0100
Message-Id: <20220125135014.3041002-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to binding, the compatible shall only contain imx6ul and imx21
compatibles. Fixes the dt_binding_check warning:
keypad@20b8000: compatible: 'oneOf' conditional failed, one must be fixed:
['fsl,imx6ul-kpp', 'fsl,imx6q-kpp', 'fsl,imx21-kpp'] is too long
Additional items are not allowed ('fsl,imx6q-kpp', 'fsl,imx21-kpp' were
unexpected)
Additional items are not allowed ('fsl,imx21-kpp' was unexpected)
'fsl,imx21-kpp' was expected

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 2fcbd9d91521..df8b4ad62418 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -544,7 +544,7 @@ fec2: ethernet@20b4000 {
 			};
 
 			kpp: keypad@20b8000 {
-				compatible = "fsl,imx6ul-kpp", "fsl,imx6q-kpp", "fsl,imx21-kpp";
+				compatible = "fsl,imx6ul-kpp", "fsl,imx21-kpp";
 				reg = <0x020b8000 0x4000>;
 				interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_KPP>;
-- 
2.25.1

