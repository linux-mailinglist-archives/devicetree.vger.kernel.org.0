Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E21AB57F15F
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:44:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231768AbiGWUoE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:44:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233098AbiGWUoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:44:03 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D405E1BE85
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:44:02 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id 6so7052286pgb.13
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vB+I6BxD+Jwr/k8aRPXzLnldCWKUnGQ0atxweJpCqZU=;
        b=6ABnWfq4+K2LxGoEtIFy1UgqKTe4SL2RfAjETWzktSwuBqUKPWSvKUXtIM3oEIf44g
         BTy1GJN80I0ViPogEu7mmVdlHVvsmHl8/fQzJ13hegFRt3g0fiO649u9NlzNnnykQl9k
         9Dofaeoq5p7wU/uhvJB/JK8G5TrCWMNzr7BCVmJy/89+yrtoTTiBhhpXTioDvrEHyxWO
         NX/NYYca2SYqTslJjttol8tD26rEUoS8Bh+3um+0EAABCR+MU6HtLJOp5I2L+Yyxh9UI
         fOV9myFgY8A+tH3R7s2NPJDk6ufFmTlFdlPymOwZxybfgIYnbXz4iqgp33BBtpfHKyB0
         Vz+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vB+I6BxD+Jwr/k8aRPXzLnldCWKUnGQ0atxweJpCqZU=;
        b=gPcu6WkKVUMc12jjsFZcMLnuekolOrbpmXU3DRWo474KlcERiUpg5oAabIIg6eyprj
         oXwl471dDj8nlXtGklmkQfe1AY05RMTNXTTxd/l9H8XsVfaFgf7fSi7stWK2djDw1eBZ
         bHKAAv3mhG2LWxBpFbWzIq7B46Hhf0ifIrnpBUILRj8GoD+y/t7SxH6rQ3rwd+o1eejc
         1UcXg4C6K8sJHgWU+GjYyV1CoyP+Q1mL7cSYQ6tY6yG7cz1q2KTzfYmTNTSswZpvkWK+
         GwXbmtpJDmRCoou6IHkhx4Q1n9gjUbLs5J3q61yVtRHLlsWj9Q9syboIUPgzfOPse0qO
         7jyA==
X-Gm-Message-State: AJIora8cT//Vx9KiYVfQZ/ZNL/YL+RL3QohpDSNIks3EqbsfYq55KcKh
        aHWXL/gPDU3TVBv1owtMyA1CeQ==
X-Google-Smtp-Source: AGRyM1uJfAOg6nRIK+mHmimZmx0pFsofV7bJDb7DNc9W8obw6UEBnyHJVcrjvOiohvrcC7I0RDsAwg==
X-Received: by 2002:aa7:9afa:0:b0:528:bbf7:e444 with SMTP id y26-20020aa79afa000000b00528bbf7e444mr6116410pfp.71.1658609042364;
        Sat, 23 Jul 2022 13:44:02 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:01 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH 02/22] dt-bindings: power: Add power-domain header for RV1126
Date:   Sun, 24 Jul 2022 02:13:15 +0530
Message-Id: <20220723204335.750095-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add power-domain header for RV1126 SoC from description in TRM.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 include/dt-bindings/power/rv1126-power.h

diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
new file mode 100644
index 000000000000..f15930ff06f7
--- /dev/null
+++ b/include/dt-bindings/power/rv1126-power.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_BINDINGS_POWER_RV1126_POWER_H__
+#define __DT_BINDINGS_POWER_RV1126_POWER_H__
+
+/* VD_CORE */
+#define RV1126_PD_CPU_0		0
+#define RV1126_PD_CPU_1		1
+#define RV1126_PD_CPU_2		2
+#define RV1126_PD_CPU_3		3
+#define RV1126_PD_CORE_ALIVE	4
+
+/* VD_PMU */
+#define RV1126_PD_PMU		5
+#define RV1126_PD_PMU_ALIVE	6
+
+/* VD_NPU */
+#define RV1126_PD_NPU		7
+
+/* VD_VEPU */
+#define RV1126_PD_VEPU		8
+
+/* VD_LOGIC */
+#define RV1126_PD_VI		9
+#define RV1126_PD_VO		10
+#define RV1126_PD_ISPP		11
+#define RV1126_PD_VDPU		12
+#define RV1126_PD_CRYPTO	13
+#define RV1126_PD_DDR		14
+#define RV1126_PD_NVM		15
+#define RV1126_PD_SDIO		16
+#define RV1126_PD_USB		17
+#define RV1126_PD_LOGIC_ALIVE	18
+
+#endif
-- 
2.25.1

