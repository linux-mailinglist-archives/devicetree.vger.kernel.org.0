Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0E7073260E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 05:58:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229890AbjFPD6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 23:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229623AbjFPD6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 23:58:19 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A0742724
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 20:58:18 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-bad0c4f6f50so597963276.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 20:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686887897; x=1689479897;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WL3FF42nwWh3OMYwzk9c4nXRoeF4q2OJGc9h4GflMBo=;
        b=Ymo9ZN1DWuIkMBfzSHTCI9s7zU7imvVe7u/jDlAi6IDrpzrA0y/+xKrwT9xoNpplS4
         +9po0CHkMX/IGfUCkWXvTwCgZFqkYwBKRIL1Q48jnJxZjyKZhHF0q5VM05tEXdGfUl/f
         4IsA3TsRSRCdTKICcyKWsN8qlLhzpUJyFkR3yru0d185i8G3h71F91B3KZFway4227bW
         +JZzcx1RXOSHNAzvqWKJLH6omfAe07YN56yUEWwm95OqEkRHOrlwyXrVa7JqjU49jfwE
         ej9p/VhM203AQ7QXZCl9nmYdDoKfevFbOyGAYTuYztx6JDeGPTodIoEO3dWxoul61BUD
         jvlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686887897; x=1689479897;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WL3FF42nwWh3OMYwzk9c4nXRoeF4q2OJGc9h4GflMBo=;
        b=dAr4PK2Szq+WbTwbP/awtCjLu566RgdPyUIGJptsBvce3mnnSBmciMeOGXyItdapie
         5upnOmBNF5IZgZnhaAUnoGxmSor5qsEQ1jJYiC/d3NNUb5f99Dl02PJiUUTcPJ2UHRu7
         xyRyDM8CHbgQeJNqEDYLgNE9/G/7urLx3eBGmkMmDFd2DgFrzOLd+Vb4Z0ZYStJgvlvF
         QZtbWToneE1wd+T11ktpZ9kfBoQzS8BLfUpBJg02F27SXGNQJc6/+uKrPR6j6GQzFhle
         4IajNgfvmEEeCu06qMUe3Mjkv6edLLEvllxUUIGBCSvU2B15/uBylJujrGCwrG8kzX32
         lf3Q==
X-Gm-Message-State: AC+VfDzcjshOdZeK8gYmFRl2M0+ZwvPzZ5zNqqOgu0E9kjKsWc69Yr7W
        KiXuzUHQ9wGqp1cZE+sBN2uYcuk5im6XJ0xtBns=
X-Google-Smtp-Source: ACHHUZ5xRCCsmp1dUPX8DRqKdQ1WtrNAOsQCi75WeM+7o7SM1d9o20aWNNATEf2VaOcBjiu3wZnNhw==
X-Received: by 2002:a25:e752:0:b0:ba7:a55f:9091 with SMTP id e79-20020a25e752000000b00ba7a55f9091mr840829ybh.6.1686887897294;
        Thu, 15 Jun 2023 20:58:17 -0700 (PDT)
Received: from jassi-Alienware-x17-R2.. (wnpgmb0311w-ds01-45-177-228.dynamic.bellmts.net. [206.45.177.228])
        by smtp.gmail.com with ESMTPSA id k126-20020a252484000000b00bca782fcd6esm2513487ybk.55.2023.06.15.20.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 20:58:17 -0700 (PDT)
From:   jaswinder.singh@linaro.org
To:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
        ilias.apalodimas@linaro.org, masahisa.kojima@linaro.org,
        Jassi Brar <jaswinder.singh@linaro.org>
Subject: [PATCH] dt-bindings: arm: socionext: add bindings for the Synquacer platform
Date:   Thu, 15 Jun 2023 22:58:13 -0500
Message-Id: <20230616035813.255062-1-jaswinder.singh@linaro.org>
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

From: Jassi Brar <jaswinder.singh@linaro.org>

Socionext's DeveloperBox is based on the SC2A11B SoC (Synquacer).
Specify bindings for the platform and boards based on that.

Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
---
 .../bindings/arm/socionext/synquacer.yaml     | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/socionext/synquacer.yaml

diff --git a/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml b/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml
new file mode 100644
index 000000000000..72554a4f1c92
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/socionext/synquacer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext Synquacer platform
+
+maintainers:
+  - Masahisa Kojima <masahisa.kojima@linaro.org>
+  - Jassi Brar <jaswinder.singh@linaro.org>
+
+description:
+  Socionext SC2A11B (Synquacer) SoC based boards
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - socionext,developer-box
+          - const: socionext,synquacer
+
+additionalProperties: true
+
+...
-- 
2.34.1

