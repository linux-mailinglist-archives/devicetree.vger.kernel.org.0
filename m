Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E26B8778949
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 10:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234155AbjHKIyI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 04:54:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233814AbjHKIyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 04:54:08 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68A3AE73
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 01:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1691744047; x=1723280047;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SJDCfFHAoLOAqj+1DOxNC5Kidi5dIJaSb/oi/ieZKYc=;
  b=chqodW2J2nJAyI5ZLeMg+CwqPH+hc2c0hFYklgPPOOkoEDTRSmHGjGZ0
   NDmHJGBFSah761VZ3Er0DHBAuncQb79BmM7yH2wBxx78Uv1JDsQ1fTjnH
   gINoLSdB5zpFrZRVKWY88VzonKB7rLdeWYh35N3JRDeEEdfJqtLLmlRKd
   39XzcJN+mFLAS/Yh+tPDlc2O+EBEcmI7diJrYViuo6DJ2z56WouGDtFL7
   QmarqvCtDqpNVvFJ6iw6sL8jCMhqgpfkCH14mM53pdv+vwgV0vfWcIgRe
   7KIBRjWL0R4/ByEUanOFZ1l1lgWXMmqbR0/Bp3rnM6jXW5dGqNqxZx8W6
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,165,1684792800"; 
   d="scan'208";a="32409000"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 11 Aug 2023 10:54:04 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0622628008E;
        Fri, 11 Aug 2023 10:54:04 +0200 (CEST)
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
Subject: [PATCH 1/3] arm64: dts: freescale: tqma9352: Fix gpio hog
Date:   Fri, 11 Aug 2023 10:53:59 +0200
Message-Id: <20230811085401.3856778-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230811085401.3856778-1-alexander.stein@ew.tq-group.com>
References: <20230811085401.3856778-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PMIC IRQ line is attached to GPIO1_IO03, as indicated by pca9451grp
pinctrl config.

Fixes: c982ecfa7992a ("arm64: dts: freescale: add initial device tree for MBa93xxLA SBC board")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
index 1c71c08becde..f6e422dc2663 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
@@ -81,7 +81,7 @@ flash0: flash@0 {
 &gpio1 {
 	pmic-irq-hog {
 		gpio-hog;
-		gpios = <2 GPIO_ACTIVE_LOW>;
+		gpios = <3 GPIO_ACTIVE_LOW>;
 		input;
 		line-name = "PMIC_IRQ#";
 	};
-- 
2.34.1

