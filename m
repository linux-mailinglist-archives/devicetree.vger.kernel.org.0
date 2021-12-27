Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EB9A47FD76
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:36:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236785AbhL0NgF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:36:05 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39522
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234268AbhL0NgD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:36:03 -0500
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E63FD3F1AA
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640612161;
        bh=o1chKf4rhRGoYEviXpRjKWITlZ+Zc/lnutNkUw8AFLM=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=IyRQdFo8M1Ksgfu9RlzTCgSqTifKbGVLqphXCWUSPbiWbCpETv167pUdEommL6U+L
         8DCxiG64iercGU9tOeWg4NUewQE5yZI3MBZpCVsYGpzZzTA6MpGUFBunUmXlYbLaLM
         FcubkqVhrGAO4ZOWqTENRFvO1S0n6oCXBYbbVLKQPrinkBUVr1ZMZOOnb8cBLomYxS
         Q3X0WH9osj1zbfh2XgwfRC7tKM9RooJ/bBwf2ThJN70znA0Ap018vrVjgc4bwiAUcV
         BiyvQg/5cz412DJCJlFEpoFsB/MBsEW73YWLpSx/oPDcQLaar0hMyKkCoAadMePkzu
         lTxOSwDEG07cA==
Received: by mail-lj1-f200.google.com with SMTP id w17-20020a05651c119100b0022dcdb204b9so1603908ljo.5
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:36:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o1chKf4rhRGoYEviXpRjKWITlZ+Zc/lnutNkUw8AFLM=;
        b=4CPJRJtzl8hMOMtnB6Cxax7+p/sPMeyGnb8hhGTwXhen8qgpk2lFFZ6irzehs1sIU8
         oxKU8qAGOgXfxmbQAWukHb1p4GUeDxZc1fhvhJHGDqjZMPswUgwFVOJlFUERmnZMMC69
         MrMo0oife3668UwOh8tcUgBnHuzgeSAjgZnn5HQJbBpJ2V/bD2N4Am5hArJxQ9Cqum4e
         8jCxeJZOZNcVXuUAENDFvjj78pqXZULWG8R9yQJ2QSg8ZWQ2kovZPtQ2C83wDLHDzdFT
         Byo/qC9fPQJkHRT/P+CBzMBd4VmOWKWf1c2o5sj28sz9SGKkY9GTA236yLZ9PrwEh2DG
         jLlw==
X-Gm-Message-State: AOAM531HEPQCUaLZKSqD8FW7FhSamZ3vd4t/kiKrbk9pRVCoquk/Brx5
        xCcQoVmsm4kzcM+fqhU66OnGAo5OCkQ/TXWoBHbE/9v1HQuBH2Y70yEliUQiSd/wAiHEwKw4saw
        kl7D7dgAnVb+g6A3bT05EKU0rirRcIKVsr4uoI1c=
X-Received: by 2002:a05:6512:308e:: with SMTP id z14mr15088864lfd.330.1640612161373;
        Mon, 27 Dec 2021 05:36:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwva8zKPnEw3lVn3bSljA913LVhJSEpc5uwboSFZa19Mf6V7NKXYAZqLhEQ/3hK1oeP7iLGxg==
X-Received: by 2002:a05:6512:308e:: with SMTP id z14mr15088851lfd.330.1640612161216;
        Mon, 27 Dec 2021 05:36:01 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id g18sm800107ljj.124.2021.12.27.05.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:36:00 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 07/19] dt-bindings: intel: document Agilex based board compatibles
Date:   Mon, 27 Dec 2021 14:35:46 +0100
Message-Id: <20211227133558.135185-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new compatible for Agilex based boards.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/arm/intel,socfpga.yaml           | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/intel,socfpga.yaml

diff --git a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
new file mode 100644
index 000000000000..6e043459fcd5
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
@@ -0,0 +1,26 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/intel,socfpga.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel SoCFPGA platform device tree bindings
+
+maintainers:
+  - Dinh Nguyen <dinguyen@kernel.org>
+
+properties:
+  $nodename:
+    const: "/"
+  compatible:
+    oneOf:
+      - description: AgileX boards
+        items:
+          - enum:
+              - intel,n5x-socdk
+              - intel,socfpga-agilex-socdk
+          - const: intel,socfpga-agilex
+
+additionalProperties: true
+
+...
-- 
2.32.0

