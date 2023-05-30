Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B929716350
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 16:13:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232554AbjE3ON1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 10:13:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230519AbjE3ONW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 10:13:22 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBBFB192
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 07:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1685455963; x=1716991963;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=7AzCqgfvbO6kt0hNc5G02Mva74cvAgLh4ZGOlU4BKfA=;
  b=Rmcfgy5he3JH258q1Pf3Szz+YjCgcug/CHig4+58iBNidOYzlsTexQul
   2VM7iGsqT7CzlNSUA4YitIL5AL4HSySrzd9yW2s8d9ykr0aIOgwPxytOU
   +TDaoBs0/Jgj5XIth8QYCrM/jdFkkAphM8hZZNsF/3mGhRnpY2B4DXBsj
   Ul1jf4Q4ba1JurpUADWSPKLka50DUeEQoX613x1K68ZJV3bsVsjajvC+k
   9LWm99+o8L3XI6yZl7oSstjNBI8czL7tTfnTBqsZpfUeFoZDT7Xb25PKQ
   1cuc2fEr2vchkdJmZpQO858h44JlRVcwBFdLODH7jmxCwZPxxJ6d+Mi9O
   g==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681164000"; 
   d="scan'208";a="31170472"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 30 May 2023 16:12:35 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 30 May 2023 16:12:35 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 30 May 2023 16:12:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1685455955; x=1716991955;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=7AzCqgfvbO6kt0hNc5G02Mva74cvAgLh4ZGOlU4BKfA=;
  b=C5h3c2S46Yi+swr0i1u6HLUdpy578I7PS/pylpmMuTM3HBHvzQUU68zB
   ujZWW1JBKnHWOyk9wru7p6R7OSKhui0U+YYxp2Xpq27kN3xqBP3jprjay
   wT+e8NNsFAQoeqbUuL9K2YZHbBOa7LZ/mqxv+Yk9NZXdJ+FETKkw9dzTH
   Y+hs7e/WPWkealRNdYWy8DpDStI0fe9XaoroGHCO46l0LoJHKtb8IaG0g
   CAhCo+zUGnEKg56BlDBJF7ez53WOcKaaFAJdIc6n3QoE4SkoY8zD4Knns
   gyD8iXjlLVMxGVOrdDSW0bXNkFMoDxC4xqfPWeoaVMty+xNsECxIHubHx
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681164000"; 
   d="scan'208";a="31170471"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 30 May 2023 16:12:35 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7E77B280096;
        Tue, 30 May 2023 16:12:35 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: tqma8mqml: Add vcc supply to i2c eeproms
Date:   Tue, 30 May 2023 16:12:34 +0200
Message-Id: <20230530141234.407118-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
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

Fixes the warnings:
at24 0-0053: supply vcc not found, using dummy regulator
at24 0-0057: supply vcc not found, using dummy regulator

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
index 2be16abb6b69..8c0c6e715924 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
@@ -219,12 +219,14 @@ eeprom1: eeprom@53 {
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

