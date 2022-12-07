Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E50B0645A0A
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 13:42:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229694AbiLGMm1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 07:42:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbiLGMmZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 07:42:25 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3775D29C9D
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 04:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416944; x=1701952944;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=MjWwxAUkvig2Fpd+M10p7fGhl9dZ6Fjh6OUqT1QPRQo=;
  b=mVXv60aSdkYtI70RW9XL3790cFNSdScvOKK597Rx6Kl8PNsw4L6+1k6r
   7Kx9ukqmTaL6BCldJtDgk9Ga3ERyA9y8rrGBJJ1e5dLmq7xuAo/w6NhrR
   9Rkmyufa94Uaf2xk2yyyLsrjHwbDOl5qTpGWVZ5uISq3UQEZh9EmEfgrQ
   sohrBDXvd0RDGvuV5nJ8ozkgKnepSItxojQEAilf+0nD//tW1l4NidYPo
   6xT3FRRfuE68QdAQ0hMG1kcPS/7ky8EoOwXivw0e0FWyblZEjk/AcTkrW
   LSWYQy9/X6WXQFsaBlTJtuURMvmzgw8ZxYj4FFUDvaFyS96LVuSZ5jAdZ
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811119"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 07 Dec 2022 13:42:16 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 07 Dec 2022 13:42:16 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 07 Dec 2022 13:42:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416936; x=1701952936;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=MjWwxAUkvig2Fpd+M10p7fGhl9dZ6Fjh6OUqT1QPRQo=;
  b=jhLIHOsD9HhOXMDeZaeYMJky9M34fHzXS2o7HsMILH5je+54o6yjoUOg
   sn2aO1rK+6zh5A87Df/8k/osqie9p8QdZFXxLOYcG/LAvKa4eQ8nrvL/C
   7wPrXlFQ/Rw55zgad6zV4PXKbAH/xKsrL9n7nVPqsyzK46VQzkneNrerR
   nzNh8GonIPDNqVjt3J3Ks0mO/qVF6LeXpkhMmxWjFX28lFQgwTUClXv2z
   q+Uj6feEou8/f5ESC+R/O++/77nswnf+uGZk2lGs6ZEbCigfiAA2SShAV
   lkY3sPcpz28H7v30Yhxydx8UnX+i0vNp3Cn5Cn6xl2lIGkaN6SEzdE2Wf
   g==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811118"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Dec 2022 13:42:16 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D327C280071;
        Wed,  7 Dec 2022 13:42:15 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/7] arm64: dts: imx8mn-tqma8mqnl: Fix temperature sensor compatible
Date:   Wed,  7 Dec 2022 13:42:02 +0100
Message-Id: <20221207124205.1373202-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
References: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
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

Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.
While at it, fix the node name according to device tree spec
recommendations. The EEPROM is a separate node anyway.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
index 48b965386e879..391ca5516e4c5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
@@ -77,8 +77,8 @@ &i2c1 {
 	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
-	sensor0: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor0: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
-- 
2.34.1

