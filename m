Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 360485BF729
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:11:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230016AbiIUHLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:11:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbiIUHKE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:10:04 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 919072B241
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1663744202; x=1695280202;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Q7Et7Jy2iYmcHR8iWL6cqOKKLSXjrtRvh8L113undeU=;
  b=I25Y0yCkm1JtQZrCukp9No+Dd1o55+fLU3HKXiv3XJPCLjDG5uA86GRc
   tXbE2U/eC9+Ifzx3nEogP6734gH3HtEYRk4rUEAwCE7M7TM/nEgrGm6dy
   qTwX6ik5EUSPcRNX0i3mqKotP3V1OBUUe3ONbfk6NLBuC9dnwQIeamEgU
   mjnGOsodR5g0Z5VLOXwXdHISX2cl2N86zwDoX3QyM0GtHnHZnQ3iYryDC
   a8RLRD8C6N6cATru+b8PfAGeLEZcXCQ/qx0HIMBcNgFiAJqU5hcst4Lzt
   dHtt5RxXmgoUTtJO0UMmyCR0DLMQ0joKU8+/fvDR+DBsCr56BpjW4+aHo
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,332,1654552800"; 
   d="scan'208";a="26300541"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 21 Sep 2022 09:10:00 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 21 Sep 2022 09:10:00 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 21 Sep 2022 09:10:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1663744200; x=1695280200;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Q7Et7Jy2iYmcHR8iWL6cqOKKLSXjrtRvh8L113undeU=;
  b=hr4ggApPBiTW73oG/AoP0VfQGU7DuvxSf83903Bj42P8FzkXjF5eQ/Q6
   +0oXT2e5U1QWdkW1v15bTviMH1xtU4cB04aHBbuvH6sEStiun2FE5TfQz
   1+g6qa0e5EfizZ02Etrpznwc6ma/lvGbKyXRYHdQdGrZelswz8Z8ERApc
   agbuR7MTfRIKSAgOS38bH6V+fbWdY6GWJortQvdvIvp6XTXU0tPVoN58Z
   tNofcafh+s78c+QkmEf5D2CG+0PdFgy8K8gfrGxdW0lzdT0NX8S0GtMiR
   46jHqIx1EBTrkUiPJ6uYmvf+mJ9HsO6XAGtzEAy1Dhd2/FAjR0PlzXpT6
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,332,1654552800"; 
   d="scan'208";a="26300540"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Sep 2022 09:10:00 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2D6C7280056;
        Wed, 21 Sep 2022 09:10:00 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: tqma8mq-mba8mx: Add vcc supply to i2c eeproms
Date:   Wed, 21 Sep 2022 09:08:33 +0200
Message-Id: <20220921070833.3106592-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
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

Fixes the warnings:
at24 0-0053: supply vcc not found, using dummy regulator
at24 0-0057: supply vcc not found, using dummy regulator
at24 1-0057: supply vcc not found, using dummy regulator

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi | 2 ++
 arch/arm64/boot/dts/freescale/mba8mx.dtsi         | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
index 802ad6e5cef6..9a95e30fb42d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
@@ -220,12 +220,14 @@ eeprom1: eeprom@53 {
 		reg = <0x53>;
 		pagesize = <16>;
 		read-only;
+		vcc-supply = <&reg_vcc3v3>;
 	};
 
 	eeprom0: eeprom@57 {
 		compatible = "atmel,24c64";
 		reg = <0x57>;
 		pagesize = <32>;
+		vcc-supply = <&reg_vcc3v3>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index f9ee4ad3534c..dd30082f0601 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -245,6 +245,7 @@ eeprom3: eeprom@57 {
 		compatible = "nxp,se97b", "atmel,24c02";
 		reg = <0x57>;
 		pagesize = <16>;
+		vcc-supply = <&reg_vcc_3v3>;
 	};
 };
 
-- 
2.25.1

