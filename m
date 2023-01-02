Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B99A365B382
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 15:47:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236214AbjABOq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 09:46:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236253AbjABOq4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 09:46:56 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 122BF65EA
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 06:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672670815; x=1704206815;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=RANVhaRyMSv8Hw+fyusPEdygNbquSt5lKLfn/E1UDDU=;
  b=m7hIzLVZhSBFzHc8RaBPgiRJco/xsh4BNeYJVylYFMuVsjNVTZM3gbfd
   VKcdTTc2rii3woYtl+UR0fkNuRsxiF7zaCqQkyBzP+51PHhifIwqrlgGB
   hRHGgcqb/uy8lYHz3rNyCJsBNaqoB/9nrxwDD+IiPEfqROJ6gD6mcr8Ky
   FDlxIlIiSSmq5fNr5UWeIpdFTfroTK/UIAQsjJR8ra8VSIJ1muzwUGEUX
   8XbS20ZmlxU/VxWwH5zzA2Hg6UHf/CgOFRJjxaevFD5yVZhmDuic3mqrw
   fgBS2W3fSHwUaUh1n4AGQJb/SpnU34evgDJ+qcHq6EYPGYkpnPbrbLpYh
   A==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206314"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 Jan 2023 15:46:51 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 02 Jan 2023 15:46:51 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 02 Jan 2023 15:46:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672670811; x=1704206811;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=RANVhaRyMSv8Hw+fyusPEdygNbquSt5lKLfn/E1UDDU=;
  b=VliRo+x7r32327R0vafMmp1ZasF9rMelEmMsJtywXzYridvlWovm67+0
   ZVAXtQXhGxXWNB9VEFgY8RasVgaI2JY3rwcoZJJAbBL4Jdwt4ZvHN+FAb
   dWgC5ZGsP81HDXc7Wn5xOejiHqWdvD86okSrp4Z0cGSotHwbgAQR4i/Y2
   ftQ8xrZQpGWGx9Ekw8s751jsnjdPxgiGaVENIfPzxbUxdIpFL/T/hfYou
   BC3Xs0wOXte+g4M7I1RsjW4Yx3NKS62/U9yQuGZektsBkof3TezMR4tcz
   PbmrQe1lulmlMbB0tQ3phQQHw4cKfzz03uDDyQl2GoP0m9M6gfYVXp1Vl
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206313"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Jan 2023 15:46:51 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 112D6280072;
        Mon,  2 Jan 2023 15:46:51 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] ARM: dts: imx6ul-tqma6ul: Fix temperature sensor compatible
Date:   Mon,  2 Jan 2023 15:46:46 +0100
Message-Id: <20230102144647.3135147-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230102144647.3135147-1-alexander.stein@ew.tq-group.com>
References: <20230102144647.3135147-1-alexander.stein@ew.tq-group.com>
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
Changes in v2:
* Split into arm-only series

 arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
index eca94ed6451b..57e647fc3237 100644
--- a/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
@@ -116,8 +116,8 @@ reg_vldo4: vldo4 {
 		};
 	};
 
-	jc42_1a: eeprom-temperature-sensor@1a {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	jc42_1a: eeprom-temperature@1a {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1a>;
 	};
 
-- 
2.34.1

