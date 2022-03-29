Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A6284EB2CC
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 19:40:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240271AbiC2Rlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 13:41:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240273AbiC2Rlz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 13:41:55 -0400
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com [199.106.114.39])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D0622A27A
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 10:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648575612; x=1680111612;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HLlOXhN2bjO9QAosmI/MLA2cAilijT5YO27GqD6yD4M=;
  b=ctnnHNmRx1rkJGSWBzK3UqBjKsDBmM//qdL1Ygthsw8YVK5sEhnuil2z
   DzOE7GQNBOYw5ID/yR1SKgwYpeHBu8+SD6GUwNhm9hlvPsJ5I/Y4TBEgs
   7sTtSOjsGArkDvkSCskKs0cIo4EF58IsSWcbKPcmILJg4IlZPOBAyRFmq
   g=;
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 29 Mar 2022 10:40:12 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg03-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 10:40:11 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 29 Mar 2022 10:40:11 -0700
Received: from maru.qualcomm.com (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 29 Mar
 2022 10:40:10 -0700
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
To:     Andrew Jeffery <andrew@aj.id.au>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, Arnd Bergmann <arnd@arndb.de>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>,
        "Jae Hyun Yoo" <quic_jaehyoo@quicinc.com>
Subject: [PATCH v3 5/7] dt-bindings: pinctrl: aspeed-g6: add FWQSPI function/group
Date:   Tue, 29 Mar 2022 10:39:30 -0700
Message-ID: <20220329173932.2588289-6-quic_jaehyoo@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
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

Add FWQSPI function/group to support QSPI mode on the dedicated
FWSPI interface.

Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
---
Changes in v3:
 * Newly added in v3. (Andrew)

 .../devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
index eb6e2f2dc9eb..3666ac5b6518 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
@@ -33,7 +33,7 @@ patternProperties:
           $ref: "/schemas/types.yaml#/definitions/string"
           enum: [ ADC0, ADC1, ADC10, ADC11, ADC12, ADC13, ADC14, ADC15, ADC2,
                   ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT, EMMC, ESPI, ESPIALT,
-                  FSI1, FSI2, FWSPIABR, FWSPID, FWSPIWP, GPIT0, GPIT1, GPIT2, GPIT3,
+                  FSI1, FSI2, FWQSPI, FWSPIABR, FWSPID, FWSPIWP, GPIT0, GPIT1, GPIT2, GPIT3,
                   GPIT4, GPIT5, GPIT6, GPIT7, GPIU0, GPIU1, GPIU2, GPIU3, GPIU4, GPIU5,
                   GPIU6, GPIU7, I2C1, I2C10, I2C11, I2C12, I2C13, I2C14, I2C15, I2C16,
                   I2C2, I2C3, I2C4, I2C5, I2C6, I2C7, I2C8, I2C9, I3C3, I3C4, I3C5,
@@ -58,7 +58,7 @@ patternProperties:
           $ref: "/schemas/types.yaml#/definitions/string"
           enum: [ ADC0, ADC1, ADC10, ADC11, ADC12, ADC13, ADC14, ADC15, ADC2,
                   ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT, EMMCG1, EMMCG4,
-                  EMMCG8, ESPI, ESPIALT, FSI1, FSI2, FWSPIABR, FWSPID, FWSPIWP,
+                  EMMCG8, ESPI, ESPIALT, FSI1, FSI2, FWQSPI, FWSPIABR, FWSPID, FWSPIWP,
                   GPIT0, GPIT1, GPIT2, GPIT3, GPIT4, GPIT5, GPIT6, GPIT7, GPIU0, GPIU1,
                   GPIU2, GPIU3, GPIU4, GPIU5, GPIU6, GPIU7, HVI3C3, HVI3C4, I2C1, I2C10,
                   I2C11, I2C12, I2C13, I2C14, I2C15, I2C16, I2C2, I2C3, I2C4, I2C5,
-- 
2.25.1

