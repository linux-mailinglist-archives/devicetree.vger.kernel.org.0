Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CADCC4E7841
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 16:44:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232665AbiCYPpg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 11:45:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377904AbiCYPoJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 11:44:09 -0400
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A80AF46642
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 08:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648222894; x=1679758894;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=cTvbYx0tt9yaGhc+XsYyBYClg2yvPrwbUTEhKiXr1Ic=;
  b=kQw1cIrgvk8uubCd9AGbbdO16DbnxhgNEWrFplGdlWfwzWIlGcRSp9x4
   JazjDTn0ocKTd5MxBLtrIZzNnXK5jVScSAxapx7KtqAtB694xABUvOd5Q
   W7DMoQCPpuOAwI/2o90+ylkpOiw5fHWzEbROsL7xEMNFK9kNmYDo2uQUK
   w=;
Received: from ironmsg08-lv.qualcomm.com ([10.47.202.152])
  by alexa-out.qualcomm.com with ESMTP; 25 Mar 2022 08:41:34 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg08-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2022 08:41:31 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Fri, 25 Mar 2022 08:41:31 -0700
Received: from maru.qualcomm.com (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Fri, 25 Mar
 2022 08:41:30 -0700
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
To:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        "Andrew Jeffery" <andrew@aj.id.au>, Andrew Lunn <andrew@lunn.ch>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>,
        "Jae Hyun Yoo" <quic_jaehyoo@quicinc.com>
Subject: [PATCH v2 1/5] ARM: dts: aspeed-g6: remove FWQSPID group in pinctrl dtsi
Date:   Fri, 25 Mar 2022 08:40:44 -0700
Message-ID: <20220325154048.467245-2-quic_jaehyoo@quicinc.com>
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

FWSPIDQ2 and FWSPIDQ3 are not part of FWSPI18 interface so remove
FWQSPID group in pinctrl dtsi. These pins must be used with the
FWSPI pins that are dedicated for boot SPI interface which provides
same 3.3v logic level.

Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Fixes: 2f6edb6bcb2f ("ARM: dts: aspeed: Fix AST2600 quad spi group")
---
Changes in v2:
 * Rebased it on the latest.
 * Updated 'Fixes' while rebasing it on the latest.

Note:
 * Removing 'pinctrl_fwqspid_default' doesn't break any existing DT since
   it has not been used in any DTs.

 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
index e4775bbceecc..06d60a8540e9 100644
--- a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
@@ -117,11 +117,6 @@ pinctrl_fwspid_default: fwspid_default {
 		groups = "FWSPID";
 	};
 
-	pinctrl_fwqspid_default: fwqspid_default {
-		function = "FWSPID";
-		groups = "FWQSPID";
-	};
-
 	pinctrl_fwspiwp_default: fwspiwp_default {
 		function = "FWSPIWP";
 		groups = "FWSPIWP";
-- 
2.25.1

