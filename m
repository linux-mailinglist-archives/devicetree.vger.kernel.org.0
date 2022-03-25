Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 409804E7840
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 16:44:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354918AbiCYPpf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 11:45:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377905AbiCYPoJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 11:44:09 -0400
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C816649900
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 08:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648222895; x=1679758895;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=IFcwkw0ChYMrKdMzLxdkJFRH7VV3hwdHok6sJeSzKZc=;
  b=RmIhZiE+je4nAxlVWCcQ7EIq9AcCjf9VvuUPZgI4uKHaWZdF0c2C8Pk5
   GdVtERmZxYe+fhhHksyaRmLlzsCd3IUTJZk1/LOyrkK1n4ypN/6te47+7
   AJpOnZmAnvroGnzBlsPfcNiZbhNys8AVINdw/hgPn3/R6spTyOYOVWUuz
   0=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 25 Mar 2022 08:41:35 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2022 08:41:35 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Fri, 25 Mar 2022 08:41:34 -0700
Received: from maru.qualcomm.com (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Fri, 25 Mar
 2022 08:41:33 -0700
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
To:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        "Andrew Jeffery" <andrew@aj.id.au>, Andrew Lunn <andrew@lunn.ch>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>,
        "Jae Hyun Yoo" <quic_jaehyoo@quicinc.com>
Subject: [PATCH v2 5/5] ARM: dts: aspeed-g6: fix SPI1/SPI2 quad pin group
Date:   Fri, 25 Mar 2022 08:40:48 -0700
Message-ID: <20220325154048.467245-6-quic_jaehyoo@quicinc.com>
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

Fix incorrect function mappings in pinctrl_qspi1_default and
pinctrl_qspi2_default since there function should be SPI1 and
SPI2 respectively.

Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Fixes: f510f04c8c83 ("ARM: dts: aspeed: Add AST2600 pinmux nodes")
---
Changes in v2:
 * None.

 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
index 47c3fb137cbc..7cd4f075e325 100644
--- a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
@@ -653,12 +653,12 @@ pinctrl_pwm9g1_default: pwm9g1_default {
 	};
 
 	pinctrl_qspi1_default: qspi1_default {
-		function = "QSPI1";
+		function = "SPI1";
 		groups = "QSPI1";
 	};
 
 	pinctrl_qspi2_default: qspi2_default {
-		function = "QSPI2";
+		function = "SPI2";
 		groups = "QSPI2";
 	};
 
-- 
2.25.1

