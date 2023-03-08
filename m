Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D25EC6B076E
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 13:48:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230326AbjCHMsg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 07:48:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbjCHMsf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 07:48:35 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0122F95BD5
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678279714; x=1709815714;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=uvNFR+fO/y+YgDl/76kLU1XkWEVLR7a1JF8apKUL6aY=;
  b=JqP2LAm53GjKlg+424ycHyroeyQcXNZxf0XADptVl1/5fzu9eGJW0Qus
   QwWz5uLMdRoonkZDWjcLWYiJt2V6N3hXGYI+pbM4V5pxgDhVrhXzpElus
   mS15wYO6FNEVY0NlmjH3gzDrdPnwzg2eu4oP637kObUiRdi3/wBaDNrQZ
   9lvA5Buc2bwayeQiaU4NJl+lJVQwlMozDytIOGfWqkvxypfet4coOaoUS
   USh2uks7n17mB+1v7DVwGvyOq3usqzdLg9992877FY3x6SXdROgjj4qSB
   EWE1FpiWdgzDQ9F8DhgiB9rTbs66bfFBatsQ5yyi6Dve/AIgMqh3Zl0J/
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="29547415"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Mar 2023 13:48:32 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 08 Mar 2023 13:48:32 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 08 Mar 2023 13:48:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678279712; x=1709815712;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=uvNFR+fO/y+YgDl/76kLU1XkWEVLR7a1JF8apKUL6aY=;
  b=VDvEy5BQRPzfnB9mquUPLxEyRoS7AUCw8R8o0fP2flp5PhoGdhrcykFa
   Thmo2+V8vXqu42hJaTe30KNC8cUDzfyXbwRMvODKaSVtaHQDg+g8McmJB
   y7b71nuUZUs3mF6JCt3ALzMa26xFHae4XHl9Hh2052jLDSUYcA6jpOl4l
   HdxkHYDVA9b3yf68jaZzizh7LLhoWVurwqmLD3XbJITTwoFFjmmAoJpLc
   jyKZ6H5MZMQj7LyugLK38D4hldodkUUo+e7iR7iacaEPXxDbScyhiEvRK
   YAAZS4wS6ZTXRx61ts52BLmL8xiSv0w9ZC6O64c617fwhokv6hzVN93+u
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="29547414"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Mar 2023 13:48:32 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 10A5F280056;
        Wed,  8 Mar 2023 13:48:32 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v2 1/1] arm64: dts: imx93: add missing tpm pwm instances
Date:   Wed,  8 Mar 2023 13:48:29 +0100
Message-Id: <20230308124829.2925511-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

TPM1/TPM3 are missing, add them.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
Changes in v2:
* Fixed authorship (It's from Markus)
* Added Fabio's R-b

 arch/arm64/boot/dts/freescale/imx93.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 2076f9c9983a..a30c5d5f4d13 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -153,6 +153,14 @@ system_counter: timer@44290000 {
 				nxp,no-divider;
 			};
 
+			tpm1: pwm@44310000 {
+				compatible = "fsl,imx7ulp-pwm";
+				reg = <0x44310000 0x1000>;
+				clocks = <&clk IMX93_CLK_TPM1_GATE>;
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
 			tpm2: pwm@44320000 {
 				compatible = "fsl,imx7ulp-pwm";
 				reg = <0x44320000 0x10000>;
@@ -316,6 +324,14 @@ mu2: mailbox@42440000 {
 				status = "disabled";
 			};
 
+			tpm3: pwm@424e0000 {
+				compatible = "fsl,imx7ulp-pwm";
+				reg = <0x424e0000 0x1000>;
+				clocks = <&clk IMX93_CLK_TPM3_GATE>;
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
 			tpm4: pwm@424f0000 {
 				compatible = "fsl,imx7ulp-pwm";
 				reg = <0x424f0000 0x10000>;
-- 
2.34.1

