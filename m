Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F95D77894A
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 10:54:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234580AbjHKIyK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 04:54:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233814AbjHKIyJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 04:54:09 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E504E75
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 01:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1691744048; x=1723280048;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=DXRmmUkfv4PdOkNqdHnnTn2KVCFGC48HrBJj7Zm50Hs=;
  b=fjDnpFPxVdZcjKyHJP1k3BsFI7Azg7z2cduLF3tI+84IWOaRQwVq2Rr9
   Y6sRpiBmmA4IrB9b7olQe6UhfkRZ7EXdjYQOlwRqzEHosD50I61mQ4sbE
   qZaZ5AaQe6XTou2y41hb4wceb/F5J9AIEw6tOpel5KyTHMZ8IeS6CbmSN
   gtVAszwW0bQUZiuHXbImgerLZVdvjCguof94+zMUZB2MkjImxBMzO8kO3
   cIxdQFORCJq5ltUhTLZiwoKfVRlsHH3s3srHIRXp1X3Y4YbihXbuE2/gE
   Qyu/u/ABBHEqjAqHmiQ/49nhiLgSJRMzcrc0EGhXJGZG9tQ8Ebzh5Qi08
   w==;
X-IronPort-AV: E=Sophos;i="6.01,165,1684792800"; 
   d="scan'208";a="32409001"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 11 Aug 2023 10:54:04 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 4848B280090;
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
Subject: [PATCH 2/3] arm64: dts: freescale: tqma9352-mba93xxla: add 'chassis-type' property
Date:   Fri, 11 Aug 2023 10:54:00 +0200
Message-Id: <20230811085401.3856778-3-alexander.stein@ew.tq-group.com>
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

Add the chassis-type property to tqma9352-mba93xxla.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
index f06139bdff97..f0d0bf84f6ba 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
@@ -18,6 +18,7 @@ /{
 	model = "TQ-Systems i.MX93 TQMa93xxLA on MBa93xxLA SBC";
 	compatible = "tq,imx93-tqma9352-mba93xxla",
 		     "tq,imx93-tqma9352", "fsl,imx93";
+	chassis-type = "embedded";
 
 	chosen {
 		stdout-path = &lpuart1;
-- 
2.34.1

