Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EFB249B572
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 14:57:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1385417AbiAYN4m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 08:56:42 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5782 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1346483AbiAYNyv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 08:54:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118886; x=1674654886;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6GEwWtnpTCic4bUOajyXns7YAVNJoB6XxhjZ1eq3UQo=;
  b=N3U1+Vw+Wg9O6p3CTSAhwoEUIjHZkMXZdSMwZE9wOWTvsTLSxz4Y8GuN
   Xp4T2ylgygJhRuxsv8g5JUf4a/FDoqqGzvnoBXnWrZs4ps5mijO1GYbNY
   y/5MlehMJ/1ypE1SVmcGb8x2DuZKtqoFdblJveAEicjI1MOJtpF9ANyPd
   YPmd+wCADyd1cbqCwfQ33qI1E4YpPPXAODl8wpVYx6nfH/v3+Ue1P6oEk
   kAltl77IY4VJjC6DioQW04YPvCNlB86s257ZBpnYBasSG2ndnEGFNmn/c
   DoBWA0q6wwjFrBP4FMnBKGueafcfQlmCxnOi7iFn7B/KPAD/u3Q6nvdQu
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699070"
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
  bh=6GEwWtnpTCic4bUOajyXns7YAVNJoB6XxhjZ1eq3UQo=;
  b=PSuR909T7d0pXe/OFH2S5cFAJzwA9HbojK1DLdPAkkWFPmGC3HBp5ezy
   gNzrKTrvK1Ja445/cJy2vjuhfrrU4mk41nAvJJj2J1meTFtTL6zFNa72c
   cFB1o0qiBSjQcWRjNRprQmQhj7Jg3dAon23J3tGx4KYQo6fzUsDrBqTnd
   XpvNLUFxE8j/mTD6gVaM1J43ksXzLYEmqvGaxuTBDdPcaADxz5zWED6iX
   6Il07HCBpoSU/HBjfURc0NcJbgK6i7PBJYh7iYJQWOnQp9zPkbo/neU1c
   PZOy/rI7aysefEktX2xtid8QW21jhtpd28x+5JQmU0FaS1FzTZH/N43tj
   w==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699069"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jan 2022 14:50:24 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A52CA28007F;
        Tue, 25 Jan 2022 14:50:24 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/8] ARM: dts: imx6ul: fix csi node compatible
Date:   Tue, 25 Jan 2022 14:50:12 +0100
Message-Id: <20220125135014.3041002-7-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"fsl,imx6ul-csi" was never listed as compatible to "fsl,imx7-csi", neither
in yaml bindings, nor previous txt binding. Remove the imx7 part. Fixes
the dt schema check warning:
csi@21c4000: compatible: 'oneOf' conditional failed, one must be fixed:
['fsl,imx6ul-csi', 'fsl,imx7-csi'] is too long
Additional items are not allowed ('fsl,imx7-csi' was unexpected)
'fsl,imx8mm-csi' was expected

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 8d7d6cfc2c38..e75c2e164551 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -998,7 +998,7 @@ cpu_speed_grade: speed-grade@10 {
 			};
 
 			csi: csi@21c4000 {
-				compatible = "fsl,imx6ul-csi", "fsl,imx7-csi";
+				compatible = "fsl,imx6ul-csi";
 				reg = <0x021c4000 0x4000>;
 				interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_CSI>;
-- 
2.25.1

