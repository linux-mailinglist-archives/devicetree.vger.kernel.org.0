Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 390766F8F5A
	for <lists+devicetree@lfdr.de>; Sat,  6 May 2023 08:41:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230329AbjEFGle (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 May 2023 02:41:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230238AbjEFGld (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 May 2023 02:41:33 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D67CA93F8
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 23:41:31 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9659c5b14d8so420311166b.3
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 23:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683355290; x=1685947290;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v+3W/krS7+7HCt+hhOvVVT5dCD6XlosgO/zqhN2oCo4=;
        b=WcJg7Jg40vWuV6hdu3V1rT7XqiMzV4X4kPIe1BK4RNvydYPIBauTlLGAGDiphHNi82
         49nCctvMCtvkJUwNUPNsBpY3DVt3wKyQX+YNd0rHS9AoUrrhV00A/PPgIsL3Q9ucu3pJ
         D6t4tpAnT+/wBl2jK8eiELqBizb1nB0V8r0dxczU7dTPmFjppIBNdj6GeaCqiftfnNpF
         nDYpaj7vjuBTM1a61fuxGULkm63Y9g/RKSWruBeElOcsMIaiTfK9MyGHK2AwHq+6UOpm
         9QExdfOlxMg58kkt+3YwtXTlalCjjZXTZv/47mNWhM8f50iyfnQQjRpohFQPtSLm09LN
         Qnng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683355290; x=1685947290;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v+3W/krS7+7HCt+hhOvVVT5dCD6XlosgO/zqhN2oCo4=;
        b=GEBDpb/9uxETNy4Zv1SqAW9JWy68d9WtBKDtrD3K/bK3Z/y3XrNbhXRMfWOruOHfeX
         cfXJwjM9UWTtMeS21/UVaYA+IZ1oI0YVixZ0+wwimtoSMnwDY9LdSHoWd0Aq8E4Omozg
         i3RBSJ5FrueuVqhjpFFgAMnXTba0BfvLXhwdYiVnaqOX7npOdafE+w8aDbKbyEIzx1Lh
         qWusNUsk1sKok138vt3N4I9W5wO0BhpoD7EJtDe4XpqDRnFuOj1YbrWGkboviq1tO4Mj
         NAwJg0G0TnH4+TBjsDLzDoN13osLbqHsD1L6qBEgQ+h7qbjXKgtfTXvab4+1eFhh/vdW
         oZEw==
X-Gm-Message-State: AC+VfDxbXTQP5EMO19/bp7FVORO7JUtPnhhv1o99sWYbZyr4tfOsS6o7
        16dOOiCD201JT9kJN7llvIDQ1g==
X-Google-Smtp-Source: ACHHUZ4p9HaFQiMxoKs1RjvLHWsGmFwJ0RZX41ScSDiSCgzgX83Db52T52Rhi7KIJr+pReJ+MQkcig==
X-Received: by 2002:a17:906:7943:b0:93f:9b4a:12f3 with SMTP id l3-20020a170906794300b0093f9b4a12f3mr3412206ejo.10.1683355290321;
        Fri, 05 May 2023 23:41:30 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:efe5:7c03:a10a:7a40])
        by smtp.gmail.com with ESMTPSA id g4-20020a170906348400b009659cdb2f98sm1879453ejb.23.2023.05.05.23.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 23:41:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Anson Huang <Anson.Huang@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Peng Fan <peng.fan@nxp.com>
Subject: [PATCH] dt-bindings: nvmem: imx-ocotp: drop unneeded address/size-cells and children
Date:   Sat,  6 May 2023 08:41:28 +0200
Message-Id: <20230506064128.34005-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Referenced nvmem.yaml schema already defines address/size-cells and its
children, so remove redundant entries.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Peng Fan <peng.fan@nxp.com>
---
 .../devicetree/bindings/nvmem/imx-ocotp.yaml  | 21 -------------------
 1 file changed, 21 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml b/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
index 9876243ff1e8..0784d71ae8f9 100644
--- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
@@ -46,12 +46,6 @@ properties:
   reg:
     maxItems: 1
 
-  "#address-cells":
-    const: 1
-
-  "#size-cells":
-    const: 1
-
   clocks:
     maxItems: 1
 
@@ -61,21 +55,6 @@ required:
   - compatible
   - reg
 
-patternProperties:
-  "^.*@[0-9a-f]+$":
-    type: object
-
-    properties:
-      reg:
-        maxItems: 1
-        description:
-          Offset and size in bytes within the storage device.
-
-    required:
-      - reg
-
-    additionalProperties: false
-
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1

