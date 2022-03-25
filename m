Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A64774E7836
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 16:44:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348903AbiCYPpc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 11:45:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377906AbiCYPoJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 11:44:09 -0400
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DFD349699
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 08:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648222895; x=1679758895;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=CucjsfBkAdH0gqXdIIFD6ukDX3MkdK2lqPYfJFXfEXc=;
  b=L8kWTOnFlkmRNzr78Im/MJWbsaGgCyCfRHY9KBYVpOxqquZ3x34rPbij
   Pm7GPGih0mte7MiufBa1H4wQ6ZfMM7X63i0ya0BTm10mMG0mLREVFngwH
   djBeRw0le+hEMvBT/PKPvnvCUE8ZL//S3oI/CQ2FqvgHVOVVUBdS7prim
   A=;
Received: from ironmsg08-lv.qualcomm.com ([10.47.202.152])
  by alexa-out.qualcomm.com with ESMTP; 25 Mar 2022 08:41:34 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg08-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2022 08:41:34 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Fri, 25 Mar 2022 08:41:33 -0700
Received: from maru.qualcomm.com (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Fri, 25 Mar
 2022 08:41:32 -0700
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
To:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        "Andrew Jeffery" <andrew@aj.id.au>, Andrew Lunn <andrew@lunn.ch>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>,
        Johnny Huang <johnny_huang@aspeedtech.com>,
        Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Subject: [PATCH v2 4/5] ARM: dts: aspeed-g6: add FWQSPI group in pinctrl dtsi
Date:   Fri, 25 Mar 2022 08:40:47 -0700
Message-ID: <20220325154048.467245-5-quic_jaehyoo@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220325154048.467245-1-quic_jaehyoo@quicinc.com>
References: <20220325154048.467245-1-quic_jaehyoo@quicinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Johnny Huang <johnny_huang@aspeedtech.com>

Add FWSPIDQ2 and FWSPIDQ3 group to support AST2600 FW SPI quad mode.
These pins can be used with dedicated FW SPI pins - FWSPICS0#,
FWSPICK, FWSPIMOSI and FWSPIMISO.

Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
---
Changes in v2:
 * None.

 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
index 06d60a8540e9..47c3fb137cbc 100644
--- a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
@@ -117,6 +117,11 @@ pinctrl_fwspid_default: fwspid_default {
 		groups = "FWSPID";
 	};
 
+	pinctrl_fwqspi_default: fwqspi_default {
+		function = "FWQSPI";
+		groups = "FWQSPI";
+	};
+
 	pinctrl_fwspiwp_default: fwspiwp_default {
 		function = "FWSPIWP";
 		groups = "FWSPIWP";
-- 
2.25.1

