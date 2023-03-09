Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F0936B2855
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 16:07:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231627AbjCIPHJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 10:07:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231666AbjCIPGe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 10:06:34 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A965F34D3
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 07:04:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678374257; x=1709910257;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Y+YaqqbtQMmreYu6GwDJY3rmMTJca4Rklt9BOid27jI=;
  b=QweBggNmtg19nn1uzeLvB/dzN5Zguo/3Gg/XvI+YqQacynVTM0CunCqC
   7IAOt8rOBi1Ij+mgPBkQXTmwUuOBNPbimX8jF31auMrP9r+9tnE7xMgAv
   eGFf3NWZEXQP/m089GXabBvgfdEL2rmDWWjifQdXmS1bpXxMv8lAVIV5w
   IMRWlFw81ziUeb/BNf2Cb7e5dQNCsMZX1QwAGpna1fE0jfTVUpjoRJFAL
   n8LLK7DB0SEJsguTGvEI/L7dDVxDqGKl8H4zpeY4N5dg5Au9N2goZj50G
   ptaG+YghKZa5v8QH3fM89EXIKODRG17ORG29EFu6ZDqL74MAtpxdah9AB
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,246,1673910000"; 
   d="scan'208";a="29583998"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 Mar 2023 16:04:15 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 09 Mar 2023 16:04:15 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 09 Mar 2023 16:04:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678374255; x=1709910255;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Y+YaqqbtQMmreYu6GwDJY3rmMTJca4Rklt9BOid27jI=;
  b=olIlUzpTzQQ74SN0m5m+iAASSTLenqidBrQ32nIRV7JZvT6nF9QCTCW2
   oZ/kUmGor2Y2Ro2VHhhG32eW6K9YdrSdrToCUQdlYNRViLpgvBbdAsT7l
   sVx/kd2EXelOk+n1AbXq4Xy/wzVv7V4OJZrEOFaKDGvKFxn++chy/3Y7a
   UYxowRCd0/sVHBP2AOYEyx5Do0xWXeHSvMLQDa/bvz+OLm+/N65vmWSs9
   B7hD6lSpLCZEmVUAakdE/+6NZaR4FvRWPMjsf0uGB+9ivcjD6cFDkid1t
   rAX/+D/RriqNcsK0X/EIYr65tfk7kbI0fIJhn8Jrr4rJq9+BtHTOKjyis
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,246,1673910000"; 
   d="scan'208";a="29583997"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 Mar 2023 16:04:14 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 40707280056;
        Thu,  9 Mar 2023 16:04:14 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 1/1] arm64: dts: imx8mp-tqma8mpql-mba8mpxl: Enable wakeup-source for GPIO buttons
Date:   Thu,  9 Mar 2023 16:04:10 +0100
Message-Id: <20230309150410.3409418-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
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

These buttons are capable of waking up a suspended system, add the
appropriate property for both.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 737d56fe331a..43b32a8390a5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -80,12 +80,14 @@ switch-1 {
 			label = "S12";
 			linux,code = <BTN_0>;
 			gpios = <&gpio5 27 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 
 		switch-2 {
 			label = "S13";
 			linux,code = <BTN_1>;
 			gpios = <&gpio5 26 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 	};
 
-- 
2.34.1

