Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A7DB53708F
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 12:51:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229866AbiE2KvS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 06:51:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbiE2KvR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 06:51:17 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B85249F14
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 03:51:16 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id rq11so16073848ejc.4
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 03:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WG2alJJEUiFUsTUssLuacIQlAnfrVBSipCBTK2ZQ304=;
        b=r3oLuFyLFfHTXiFMf3qFMnpoW2K7OINHmNW09UWdX00Co5LyDIJSUaxZa8+2Chf7D2
         P1/4lNUDVHAbXAPCj+/YohWp4TlG664iclnUeBwpIa0CwURyv72KCdQlBAKvPKFkUKqe
         pTd97pDgv14GLt/i+CDUJm5y+QAP0ee6PsKejQoM3DLT5Ho+Go5bEEf/BJBI/YATLE6u
         DyGyFRZy/4dIyoIxrCpw6OZseRzHNkewQq27hKZUnf3vIpcGsl+dtfa77kBa81CPBSfl
         vKdgW4ygXAAxnLvamA0yWHPCH77agefNu/xjRcHBATH0rSGaee/EvA07TZDLUdfXSzFn
         H0fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WG2alJJEUiFUsTUssLuacIQlAnfrVBSipCBTK2ZQ304=;
        b=XQxdMsyVQI5dDLZNCTIQyjITQLEQA2jlewxh1d3kpjL9J2Ei3zOkXxkytNfuVrdssJ
         pBQ9W/DG0FilhJmwa9Apjx9H9T0ANTrRnZ1MR8qKEGWnMM7grOtyaodMxs4zm8mlK6rz
         2xfNMCyf/UBmyenYl85Sf/lb626wjyx6i0lFxPmP5ONZvRh48iDsmBddmh2uukGp+D3M
         Yrjafl97W62wJsXyr3DOLGOVtQ/+dAmitRwkMOkNXF0w9ltYhPJKODxPqrbi05LdQYV2
         YqtiXxnHqzqCSdpFl/lBRz1zpq+PcPwN/9k8ruV2aec+FmvXet2ZDkN3E/Gakx0ELglj
         GVow==
X-Gm-Message-State: AOAM532XFIQXBg8eApXjeBcNS1NxE1/0aXOlpCPIpTDYqx6Jyl3dCa5o
        Yc1a8Bbxve7Il0ze2itAd5mO2w==
X-Google-Smtp-Source: ABdhPJyj6oLgJuEi9K+8KrQi1YE7XhrD3YlFKzr1kM6Jl/9u/Gt9lNhiMVx9XFKfT/WN03gdCI2E8g==
X-Received: by 2002:a17:906:2883:b0:6e8:7012:4185 with SMTP id o3-20020a170906288300b006e870124185mr43913960ejd.204.1653821474869;
        Sun, 29 May 2022 03:51:14 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w25-20020a50f119000000b0042b0fcfe966sm4746991edl.37.2022.05.29.03.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 May 2022 03:51:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>,
        Steven Lee <steven_lee@aspeedtech.com>,
        Ken Chen <chen.kenyy@inventec.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     David Wang <David_Wang6097@jabil.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/7] dt-bindings: vendor-prefixes: document several vendors for Aspeed BMC boards
Date:   Sun, 29 May 2022 12:49:22 +0200
Message-Id: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefixes for manufacturers of Aspeed SoC based BMC boards:
ASrock, ByteDance, Ingrasys, Inventec and Quanta.  Move also bticino to
proper alphabetical place.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/vendor-prefixes.yaml     | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 495a01ced97e..169f11ce4cc5 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -141,6 +141,8 @@ patternProperties:
     description: ASIX Electronics Corporation
   "^aspeed,.*":
     description: ASPEED Technology Inc.
+  "^asrock,.*":
+    description: ASRock Inc.
   "^asus,.*":
     description: AsusTek Computer Inc.
   "^atlas,.*":
@@ -195,12 +197,14 @@ patternProperties:
     description: Broadcom Corporation
   "^bsh,.*":
     description: BSH Hausgeraete GmbH
+  "^bticino,.*":
+    description: Bticino International
   "^buffalo,.*":
     description: Buffalo, Inc.
   "^bur,.*":
     description: B&R Industrial Automation GmbH
-  "^bticino,.*":
-    description: Bticino International
+  "^bytedance,.*":
+    description: ByteDance Ltd.
   "^calamp,.*":
     description: CalAmp Corp.
   "^calaosystems,.*":
@@ -544,6 +548,8 @@ patternProperties:
     description: Shenzhen Hugsun Technology Co. Ltd.
   "^hwacom,.*":
     description: HwaCom Systems Inc.
+  "^hxt,.*":
+    description: HXT Semiconductor
   "^hycon,.*":
     description: Hycon Technology Corp.
   "^hydis,.*":
@@ -578,6 +584,8 @@ patternProperties:
     description: Infineon Technologies
   "^inforce,.*":
     description: Inforce Computing
+  "^ingrasys,.*":
+    description: Ingrasys Technology Inc.
   "^ivo,.*":
     description: InfoVision Optoelectronics Kunshan Co. Ltd.
   "^ingenic,.*":
@@ -598,6 +606,8 @@ patternProperties:
     description: Inter Control Group
   "^invensense,.*":
     description: InvenSense Inc.
+  "^inventec,.*":
+    description: Inventec
   "^inversepath,.*":
     description: Inverse Path
   "^iom,.*":
@@ -1010,6 +1020,8 @@ patternProperties:
     description: Shenzhen QiShenglong Industrialist Co., Ltd.
   "^qnap,.*":
     description: QNAP Systems, Inc.
+  "^quanta,.*":
+    description: Quanta Computer Inc.
   "^radxa,.*":
     description: Radxa
   "^raidsonic,.*":
-- 
2.34.1

