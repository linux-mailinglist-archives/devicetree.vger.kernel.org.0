Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01BB16C8D8E
	for <lists+devicetree@lfdr.de>; Sat, 25 Mar 2023 12:44:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231508AbjCYLn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Mar 2023 07:43:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231327AbjCYLn6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Mar 2023 07:43:58 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1820E1AE
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 04:43:56 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id r11so17600494edd.5
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 04:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679744635;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1IhPCrg38TcoGrZQBwhoHXcMP2uuEpq8+QpUp8FcUsU=;
        b=p8vTieC5kCmOLk22SgH8ZRkJ4guRnRmB+4Ibglfi+0vNozLICbj+zfdi9YGxfOk0NM
         BaR3RXp1eB8m7fkexMGlapDQcODB4Sr8hwGJ9nSVK7ier5q3JHPHOmiwlZSj8gQFsT91
         2lXtWZUI56ZIyDXwIVtSdkpLQLad9KIlqd3IH4om3wVncn31zyLZYQ5JNYgpHEljPDlG
         +Y41CawJZZdi7C46f+3afLEwVkxkxGpha23vlZOlt1o6tm5nsdqRGd5zo8mzACsGipi0
         f/tNGmXsTgBvwK1jAPehQD7fNlM7b50tvzawGay0zKS3BVwzfDe1gBQEYAg6s9UBPulu
         XOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679744635;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1IhPCrg38TcoGrZQBwhoHXcMP2uuEpq8+QpUp8FcUsU=;
        b=lutDBzcCvUNL5nF/k/StzUzGsxkIJEbYwiMSmGV+gt4/2TX5FABCsTAjEuFvcxa8Q9
         y2t/D/bXeJLhuZsSazcfheKnVObNN9kge9vySKSh25W3LOmIAsl2DFlQMBdUSr7uZBaF
         oDt6GXKE7mlcN/uKTXgKLUmlDJOdzNOtpgfZtizntizcQkBZ5YoBmS728UqrAPVvS02V
         LlEYeX3GKHvjaRPt1h6OWdgXOEaGCVNLx7hQCyii/RZC9wzhbzwPigRi5Lx+OruVPruS
         LYY0w7VviieKgi6FZu7mGHjJI54dMXSKsQKIlzg8s9pT+W/IOmwIY6ZGeJzrTbQLHkw/
         JfuA==
X-Gm-Message-State: AAQBX9dCoxMQzJdH/Njf7eGI6DvgzA98FXI9Dp8KW/NtyCU4RMAli4bu
        ITpt7je1gb+VV+dKgJGULk2VGw==
X-Google-Smtp-Source: AKy350ZyyzNfQtilAzf1zT4cUucbq4NMWlSFZSkGxzpTqp+dlz2iQoLywGxZXaXNYEEuBpCTSnxJlA==
X-Received: by 2002:a17:906:738a:b0:933:4ca3:9678 with SMTP id f10-20020a170906738a00b009334ca39678mr5376478ejl.24.1679744635316;
        Sat, 25 Mar 2023 04:43:55 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d230:b2c7:d55:c9c8])
        by smtp.gmail.com with ESMTPSA id k10-20020a1709067aca00b009294524ac21sm11657011ejo.60.2023.03.25.04.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 04:43:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
Subject: [PATCH] dt-bindings: mfd: x-powers,axp152: simplify disallowing properties
Date:   Sat, 25 Mar 2023 12:43:53 +0100
Message-Id: <20230325114353.50293-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The syntax to disallow x-powers,drive-vbus-en,
x-powers,self-working-mode and x-powers,master-mode for certain variants
can be made simpler.  Also this produces much nicer warning message when
the condition hits wrong DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/mfd/x-powers,axp152.yaml | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
index 24d03996b93a..8eeb5b387430 100644
--- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
+++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
@@ -47,9 +47,8 @@ allOf:
               - x-powers,axp209
 
     then:
-      not:
-        required:
-          - x-powers,drive-vbus-en
+      properties:
+        x-powers,drive-vbus-en: false
 
   - if:
       not:
@@ -59,14 +58,9 @@ allOf:
               const: x-powers,axp806
 
     then:
-      allOf:
-        - not:
-            required:
-              - x-powers,self-working-mode
-
-        - not:
-            required:
-              - x-powers,master-mode
+      properties:
+        x-powers,self-working-mode: false
+        x-powers,master-mode: false
 
   - if:
       not:
-- 
2.34.1

