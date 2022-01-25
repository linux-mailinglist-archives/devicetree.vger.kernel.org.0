Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7A5649B568
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 14:54:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382920AbiAYNyq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 08:54:46 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5789 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1386500AbiAYNwi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 08:52:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118757; x=1674654757;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=+4ljIS+gH+VM12o54n1sqc9lcZwtVJzPqdLDu1BnmmY=;
  b=hDLhQSXDM0DEvTBhp0sVh/ojVpNOBjPtWNJpcX5Ccen2eKt4YDU2O2gL
   IC86tmX6CsQUWLflgDbmeNW2YyrTIXUXEE79AVS4JlBkZtITVUHNpjrHd
   l8d8rWQnEnIhQVu14DzZ5Buk9adz1BNEgjogyoNjeOT3yY+50MRKFc4D3
   sOqhzKdr37W9vw70aUigzP5k5E9k2XGC4xwmXC7bVUz9/vGJicBF8bz1h
   qxIIN+ORBspcfu3SYBx/JfwYJXx5t6jMagl4XIW0895+G+uFrC9LOWxIW
   JWy2f2aVinTozrmJGUp/lpFabE3V2S+srclZBjGjIe7DhP6r658s7fyRg
   w==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699068"
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
  bh=+4ljIS+gH+VM12o54n1sqc9lcZwtVJzPqdLDu1BnmmY=;
  b=NwXHSzdvCuqFF+wtsoffz+G74TOmzxWRKDQRibDij59tqqkbgIt/ME9p
   NA/3lFnzjWH/LVDMn+d1G+bEMBY6A/cOypYb4wclmHLASL7gsB8PY3qms
   2x7VlJAIgpT+0EgG1NXJw2WpUoXDJhW8pDD2r+MaRKm0FhmbIi1H6emQ3
   SNiNf3dr6liCnnLSk1HCidOI3LrOuzdj4/yYlVkaDg18HeHUH5+1YcIqb
   Cs9IqsqUEFUPKw9UmEHxTzgm/jQYFFMhi4IDk6xvCj38KjMZerSi5tDLr
   TPSku0Z/1km8sg3wxNwxoF/cy1UPBuNJKhBV0AEpvSyXNZP+g0UTgRDrn
   w==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699067"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jan 2022 14:50:24 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 6CCAE280075;
        Tue, 25 Jan 2022 14:50:24 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/8] ARM: dts: imx6ul: remove unsupported adc property
Date:   Tue, 25 Jan 2022 14:50:11 +0100
Message-Id: <20220125135014.3041002-6-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'num-channels' is not supported by binding, nor driver, remove it. Fixes
the dt_binding_check warning:
adc@2198000: 'num-channels' does not match any of the regexes:
'pinctrl-[0-9]+'

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index d6c2b0ad3eac..8d7d6cfc2c38 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -924,7 +924,6 @@ adc1: adc@2198000 {
 				reg = <0x02198000 0x4000>;
 				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_ADC1>;
-				num-channels = <2>;
 				clock-names = "adc";
 				fsl,adck-max-frequency = <30000000>, <40000000>,
 							 <20000000>;
-- 
2.25.1

