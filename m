Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7396465B398
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 15:50:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232891AbjABOtc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 09:49:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236243AbjABOs4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 09:48:56 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDB19FE6
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 06:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672670936; x=1704206936;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=L39CIkWcOQsim0VCngN7GatpqDQDCHs4Uu3+rxYLlCM=;
  b=bbrndNPqCEHkagRdPzFlikP65/xb+/WBdqxdDQz2YqsZC8MzsS1y5mmI
   NCQYvKQJZ08NSbwVOo1rhIGrFwzSPOQG2C+EO8uk/UnCb8QueFPSre2Ii
   NbLNPMENE8I9kwvnQJgCdysIem4tSmgNUMULJHWhXtC7o6wVtREd7PF5b
   Pqm3dkDBBCDGZofm6S+SiTftvvlayg8sfAMRotvJ2HibcZxCmrHQNTkb9
   44rcarRpoeah5Fxw5CGSWY+InEAWWJlm8/Lcd1MH3NM9o3K+RRJp0k8Je
   Su5XHkCoC+qA0Q7dyWVgo7A+bT5Zsp/WIecYiRJy0oFnY2uxjIVcn3Yw+
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206339"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 Jan 2023 15:48:51 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 02 Jan 2023 15:48:51 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 02 Jan 2023 15:48:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672670931; x=1704206931;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=L39CIkWcOQsim0VCngN7GatpqDQDCHs4Uu3+rxYLlCM=;
  b=P9FBKsbKGSq4chacayRbaAeyTyne2WPs0ubJLFoQamot6CnqC6wBO5QK
   34sAGTYsvXBd+4uaZFyLDV76czapAmgS/8mULLHtGpx93ccks4cE1BOmm
   ertbNuhCbTrkjmLJ8Gx4Gpgq6wkuzXdovNe3ufaZZHeCi1DcA95mZUU3k
   8rPV//Mhs4qOgnNQjhKWqEyrsAnvUxRRjT8/0Ip7cZaAbjJfWusgGeRVT
   eK0MzAx5VhC0bl020fKbvfRpbcZrdQiRUqYPGTApR51nu7Y7hFj7VjOUN
   k7ytYzoD0fxOjvqyG9IpI3DKzkvA+uIkaUS4hCa46sjGGrzh8DSHxSTSy
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206338"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Jan 2023 15:48:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C559F280073;
        Mon,  2 Jan 2023 15:48:50 +0100 (CET)
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
Subject: [PATCH v2 3/5] arm64: dts: imx8mq-tqma8mq: Fix temperature sensor compatible
Date:   Mon,  2 Jan 2023 15:48:46 +0100
Message-Id: <20230102144848.3135398-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230102144848.3135398-1-alexander.stein@ew.tq-group.com>
References: <20230102144848.3135398-1-alexander.stein@ew.tq-group.com>
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
* Split into arm64-only series

 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
index 9a95e30fb42d..5ca6b2252546 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
@@ -194,8 +194,8 @@ vgen6_reg: vgen6 {
 		};
 	};
 
-	sensor0: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor0: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
-- 
2.34.1

