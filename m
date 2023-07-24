Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BA9A75EECA
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 11:13:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232136AbjGXJNT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 05:13:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232157AbjGXJNP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 05:13:15 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3157133
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 02:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690189990; x=1721725990;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=cOTJzfrv/KzVpf/Zc5y9HZgqRhYODCGMPUrJKu3IsCo=;
  b=Qwiis+Ene4ZB6sPIHdyMNpqMo0/rc44NkXoXSGA3iTssr7/v8EYxGhc1
   6KDyWUL2CvEj4xL82i9iiF5eNDoKA5ByZH9YTd9VAjBrKRRyTDcejLnf/
   s2Mj+o/o9YQHXW1WWYGYYjk5jZPZT7KRwXGCYs7c5Mu5qJfU4GX52XVMY
   7X51AwgYv35HoFutt5MNt/cOcc8FVuoYzUQuYMjEQ19PdSSyK1P0WqF7T
   qgAygoyzWwWvi0hQGu0pSioDQvkcfU9JrvI+PcIFO4NPg1mOq9J2/ML34
   NQcqsw2RBLZ8YtlcE/IFlPHLDchZuoRQjMTr5WzyIAoDo5oDFZemUhw97
   w==;
X-IronPort-AV: E=Sophos;i="6.01,228,1684792800"; 
   d="scan'208";a="32075947"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 24 Jul 2023 11:13:08 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B564E280078;
        Mon, 24 Jul 2023 11:13:07 +0200 (CEST)
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
Subject: [PATCH 1/1] arm64: dts: tqma8mqnl: Add vcc supply to i2c eeproms
Date:   Mon, 24 Jul 2023 11:13:02 +0200
Message-Id: <20230724091302.399665-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
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

Fixes the warnings:
at24 0-0053: supply vcc not found, using dummy regulator
at24 0-0057: supply vcc not found, using dummy regulator

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
index 31ae338b7ed9..391ca5516e4c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
@@ -208,12 +208,14 @@ eeprom1: eeprom@53 {
 		read-only;
 		reg = <0x53>;
 		pagesize = <16>;
+		vcc-supply = <&reg_vcc3v3>;
 	};
 
 	eeprom0: eeprom@57 {
 		compatible = "atmel,24c64";
 		reg = <0x57>;
 		pagesize = <32>;
+		vcc-supply = <&reg_vcc3v3>;
 	};
 };
 
-- 
2.34.1

