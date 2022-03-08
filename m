Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6972B4D0CDA
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 01:38:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242687AbiCHAi4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 19:38:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230263AbiCHAiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 19:38:55 -0500
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ABB22E0BF
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 16:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1646699880; x=1678235880;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xmoAXfV3Sy449XkDR0d9PQLeWldD4zrnvB+0532GmZ0=;
  b=P7vFl+BD2Zodod8PWumT3K6m8Aow7gEJDdPdHxSp0qBb71ZGEh5VBxM6
   Qc7gmJdF6CdpX6YKxkafxj2Zn8idlq4YiPH4UVK2H42UJ9m+54VtT444i
   A5ZR0ba0+DSJycknDsFQ93MRyXBQ6pwe8/GS2rrRja2oMULe4sIFUBjb5
   s=;
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 07 Mar 2022 16:38:00 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg03-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2022 16:38:00 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Mon, 7 Mar 2022 16:37:59 -0800
Received: from maru.qualcomm.com (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.15; Mon, 7 Mar 2022
 16:37:58 -0800
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
To:     Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
        "Andrew Jeffery" <andrew@aj.id.au>,
        Linus Walleij <linus.walleij@linaro.org>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>,
        Johnny Huang <johnny_huang@aspeedtech.com>,
        Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Subject: [PATCH 3/5] pinctrl: pinctrl-aspeed-g6: add FWQSPI function-group
Date:   Mon, 7 Mar 2022 16:37:43 -0800
Message-ID: <20220308003745.3930607-4-quic_jaehyoo@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220308003745.3930607-1-quic_jaehyoo@quicinc.com>
References: <20220308003745.3930607-1-quic_jaehyoo@quicinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Johnny Huang <johnny_huang@aspeedtech.com>

Add FWSPIDQ2 (AE12) and FWSPIDQ3 (AF12) function-group to support
AST2600 FW SPI quad mode. These pins can be used with dedicated FW
SPI pins - FWSPICS0# (AB14), FWSPICK (AF13), FWSPIMOSI (AC14)
and FWSPIMISO (AB13).

Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index 54064714d73f..80838dc54b3a 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -1236,12 +1236,17 @@ FUNC_GROUP_DECL(SALT8, AA12);
 FUNC_GROUP_DECL(WDTRST4, AA12);
 
 #define AE12 196
+SIG_EXPR_LIST_DECL_SESG(AE12, FWSPIQ2, FWQSPI, SIG_DESC_SET(SCU438, 4));
 SIG_EXPR_LIST_DECL_SESG(AE12, GPIOY4, GPIOY4);
-PIN_DECL_(AE12, SIG_EXPR_LIST_PTR(AE12, GPIOY4));
+PIN_DECL_(AE12, SIG_EXPR_LIST_PTR(AE12, FWSPIQ2),
+	  SIG_EXPR_LIST_PTR(AE12, GPIOY4));
 
 #define AF12 197
+SIG_EXPR_LIST_DECL_SESG(AF12, FWSPIQ3, FWQSPI, SIG_DESC_SET(SCU438, 5));
 SIG_EXPR_LIST_DECL_SESG(AF12, GPIOY5, GPIOY5);
-PIN_DECL_(AF12, SIG_EXPR_LIST_PTR(AF12, GPIOY5));
+PIN_DECL_(AF12, SIG_EXPR_LIST_PTR(AF12, FWSPIQ3),
+	  SIG_EXPR_LIST_PTR(AF12, GPIOY5));
+FUNC_GROUP_DECL(FWQSPI, AE12, AF12);
 
 #define AC12 198
 SSSF_PIN_DECL(AC12, GPIOY6, FWSPIABR, SIG_DESC_SET(SCU438, 6));
@@ -1911,6 +1916,7 @@ static const struct aspeed_pin_group aspeed_g6_groups[] = {
 	ASPEED_PINCTRL_GROUP(FSI2),
 	ASPEED_PINCTRL_GROUP(FWSPIABR),
 	ASPEED_PINCTRL_GROUP(FWSPID),
+	ASPEED_PINCTRL_GROUP(FWQSPI),
 	ASPEED_PINCTRL_GROUP(FWSPIWP),
 	ASPEED_PINCTRL_GROUP(GPIT0),
 	ASPEED_PINCTRL_GROUP(GPIT1),
@@ -2152,6 +2158,7 @@ static const struct aspeed_pin_function aspeed_g6_functions[] = {
 	ASPEED_PINCTRL_FUNC(FSI2),
 	ASPEED_PINCTRL_FUNC(FWSPIABR),
 	ASPEED_PINCTRL_FUNC(FWSPID),
+	ASPEED_PINCTRL_FUNC(FWQSPI),
 	ASPEED_PINCTRL_FUNC(FWSPIWP),
 	ASPEED_PINCTRL_FUNC(GPIT0),
 	ASPEED_PINCTRL_FUNC(GPIT1),
-- 
2.25.1

