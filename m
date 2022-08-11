Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2878C58F789
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 08:22:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234040AbiHKGWw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 02:22:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234037AbiHKGWv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 02:22:51 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED0CC7D7B5
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 23:22:49 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id x19so15976942lfq.7
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 23:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=myFQW53lMmz4JFfwdyKhJU7fW2/r53OOlYHkexRkvk0=;
        b=kZmCoibdXDwo4VCyOg9H0i19ofJ6qNDdkCQKf+d1OPhuqCtgDoV6C6DRPM1jdhzjgY
         5bzViit6EBDmSkGAMgvUMW49/h3KqkdEDySZjfnyp2Jdut+26LunAq5pH4eZwrA54UvD
         3WTIWaLi8yCDzMPSFRIxRcPDsC/IkJGkv49+tZGfLn9X/QvjmDXJQwswDELsdUvakJ6q
         GzAXtxgm3HLV6dhgOLlrmO9SgY+w12A3nWcl0Tl4bqSBJWLA7UnyxWpXkkBcihOzO3B2
         /vmR293FkhOwLmyWOueapAyyv80CT7mIDMHSLOsOc6HIpV1d6aii8UASVBDNHiiIGBxn
         sOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=myFQW53lMmz4JFfwdyKhJU7fW2/r53OOlYHkexRkvk0=;
        b=ECd1WcQi45ZWiblTueDGKekZ/SV1tNBD7WIeefr1RpfE49B17ens87WTyCwuv6TeUk
         GCQ5AeRNR35xW3ZsVDBQhsoAYOca0rdHk2BvuKFqAPfvOs636tJ/7qr4mefF9nd6SKPn
         4jcv1HdWz7AdOgFUGJRrlN2J4H11+chGWUzrPwlJ3wleS356cUN0dxQtkmRa15DxCJJy
         ojBX39pvPDqhLH2B3l0ePfKsA7kwQxi2Cnqsu+SLyGWMb2zqzOlKEPBzZFFIuCtsOY/H
         mEssKHNwMEyY2K+QDrGeA+bnD7GvfKQoWXRK4ZKkYtjQfmyP1q4YsxWluoZQNqM8gfgw
         UXzA==
X-Gm-Message-State: ACgBeo2NctsM3YVV9H9FuwU7kEECVEcVqolkrCMPtgstWQ7AjNesZlQf
        TIldI6wzJGYmGFtQcol4My9DRw==
X-Google-Smtp-Source: AA6agR4X0ticYh1ve9WR7Oyr9gn0xA8WLBimiNGSbaMBCfletyAhGK0Yi1ukgPyk4mAp57e8TWv4Ow==
X-Received: by 2002:a05:6512:3991:b0:48b:3313:2576 with SMTP id j17-20020a056512399100b0048b33132576mr11420442lfu.136.1660198968341;
        Wed, 10 Aug 2022 23:22:48 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id bj36-20020a2eaaa4000000b0025e66a771efsm677755ljb.136.2022.08.10.23.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 23:22:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Prashant Malani <pmalani@chromium.org>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v2] dt-bindings: chrome: google,cros-ec-typec: restrict allowed properties
Date:   Thu, 11 Aug 2022 09:22:45 +0300
Message-Id: <20220811062245.4316-1-krzysztof.kozlowski@linaro.org>
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

Describe exactly what properties are allowed in Google Chrome OS EC Type
C port, so the schema can properly validate the DTS.  Existing DTS
defines always connectors with unit addresses, not a sole "connector"
child.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Prashant Malani <pmalani@chromium.org>

---

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>

Changes since v1:
1. Correct subject prefix
---
 .../bindings/chrome/google,cros-ec-typec.yaml     | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
index 2d98f7c4d3bc..50ebd8c57795 100644
--- a/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
+++ b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
@@ -20,13 +20,24 @@ properties:
   compatible:
     const: google,cros-ec-typec
 
-  connector:
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^connector@[0-9a-f]+$':
     $ref: /schemas/connector/usb-connector.yaml#
+    unevaluatedProperties: false
+    properties:
+      reg:
+        maxItems: 1
 
 required:
   - compatible
 
-additionalProperties: true #fixme
+additionalProperties: false
 
 examples:
   - |+
-- 
2.34.1

