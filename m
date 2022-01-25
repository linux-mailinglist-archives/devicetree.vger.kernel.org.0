Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B59A49B563
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 14:52:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343693AbiAYNwv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 08:52:51 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5782 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1385428AbiAYNud (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 08:50:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118632; x=1674654632;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=DTrCY+vmhO/tJMHsAb9djj3kO7Qk9THI8iEABWWlkeM=;
  b=LoRWGeMWdZcbJUw55ku615hZrD9Ynpv8MS/tOz1C42Zrl/FEiGPKOtKO
   OGG89DL9u5/lTk0s6SVqPk4qEHfUe3tOoA6/TorXnQpNz3Sx8Goqo5Twc
   ixzIxiHSSLYhGB9tDF4HtTemjVWrhHEyGope2K1uAsI8WzFCx2VOTW3+j
   5uGssL+zVjbyJZouztQhMsw2Tgmldi0CBGKU5aRI1hl4/padJBcjL96vc
   Kv+sJFpFebfO2RqlgbNa/OeyR5lghN0sd7HxxTuvGJdHWhOKRtkqqMnB+
   sE3py1LNEzSJbg2J4CJQqnim4yMNT1gD9d12WVq/KJXbFzRBx5iyjucxs
   g==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699059"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 25 Jan 2022 14:50:23 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 25 Jan 2022 14:50:23 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 25 Jan 2022 14:50:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118623; x=1674654623;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=DTrCY+vmhO/tJMHsAb9djj3kO7Qk9THI8iEABWWlkeM=;
  b=foMErXyC0mgBa8btN2a4cUcdNApSAv1fyd9hs3vYRtD3grx92A/c+c0n
   Ze1lECVWV9WYS5Qu5UOMVshCpZpjfA0/8dCtmjYYYFVHqaRze5vh+Gd9k
   QYttaDIWxo66u0rNOxhQz3rG4x/tSMh7JoF4gBLR68BlSkYhNJjiSb3ab
   9Kb4fZWGyNQ65sQoBlncHOpSKRL9XWJENru1vVSLF+Wsqr4svDhuvsccf
   H+y4nO7urRzPwUDxUBtDxcGQmUrcleRfPfWkwXqp4KtjaUEu24yww8s4C
   1S6+0UHg0AaXvSQ7fRHuBvrqL+9u6DF6GlAyTGA563GyVEKl0gagmtFuG
   A==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699058"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jan 2022 14:50:23 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2E643280075;
        Tue, 25 Jan 2022 14:50:23 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/8] ARM: dts: imx6ul: add missing properties for sram
Date:   Tue, 25 Jan 2022 14:50:07 +0100
Message-Id: <20220125135014.3041002-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All 3 properties are required by sram.yaml. Fixes the dt_binding_check
warning:
sram@900000: '#address-cells' is a required property
sram@900000: '#size-cells' is a required property
sram@900000: 'ranges' is a required property

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index afeec01f6522..1d435a46fc5c 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -149,6 +149,9 @@ soc {
 		ocram: sram@900000 {
 			compatible = "mmio-sram";
 			reg = <0x00900000 0x20000>;
+			ranges = <0 0x00900000 0x20000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 		};
 
 		intc: interrupt-controller@a01000 {
-- 
2.25.1

