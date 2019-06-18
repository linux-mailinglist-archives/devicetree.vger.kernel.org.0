Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A3B44AD3C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 23:22:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730367AbfFRVWi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 17:22:38 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:35285 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730102AbfFRVWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 17:22:38 -0400
Received: by mail-io1-f66.google.com with SMTP id m24so33340294ioo.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 14:22:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d1BYemcbhqptaa8GTNYdPi1AAHcGUKx5lEAq38HGA5M=;
        b=HlEPpxgSKJ6NaJafK9yVII8k4uYkyZDN8yt3RWPKmE+Ivi4Z8pDAKxZ7QHYFUN2/P2
         lEZYHCH6jnTlLZaxEnmHXDxa/JMQezLZUMGXH8cHOuTmVjqIczsKDSvyDTKm2a9eQ/ud
         wOHbUBz0lJiQlwNzSvsK13s1lGyB0W5oojpg/qLWRSxcjEN+1bt9GF05TLMzr39LoMrU
         j9Rx6AYt7O2KIGt7RxI77SLFESRHHYqVTF6npxAHXdjICS457kGE6vsMG6jTh05Qtxul
         psDMH82t48uez4JFj9pe6FG2ZK99vzZX9JwMuR5EkO0jJF+LorpyyJF0t4KX34O9Upl4
         Svug==
X-Gm-Message-State: APjAAAV8mQ3rRvYfcqeqRhhxeY8d1lqJ8ZPfxASzLbkReu6IHGV0lvFC
        P9n7pqngK7i/v5hcBwU8irR6yic=
X-Google-Smtp-Source: APXvYqyS01JHUkRJhlDLcqAXjBTNzyTXmCBEPsTpmNR6Gc/YdLP4XfUBlAagv4pYlMsdKYO12PUggw==
X-Received: by 2002:a6b:6b14:: with SMTP id g20mr10087103ioc.28.1560892956980;
        Tue, 18 Jun 2019 14:22:36 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
        by smtp.googlemail.com with ESMTPSA id p9sm13233480ioj.49.2019.06.18.14.22.35
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 14:22:36 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Baruch Siach <baruch@tkos.co.il>
Subject: [PATCH] dt-bindings: arm: Convert Conexant Digicolor board/soc bindings to json-schema
Date:   Tue, 18 Jun 2019 15:22:29 -0600
Message-Id: <20190618212229.32302-5-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Conexant Digicolor SoC bindings to DT schema format using json-schema.

Cc: Baruch Siach <baruch@tkos.co.il>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/digicolor.txt        |  6 ------
 .../devicetree/bindings/arm/digicolor.yaml       | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 6 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/digicolor.txt
 create mode 100644 Documentation/devicetree/bindings/arm/digicolor.yaml

diff --git a/Documentation/devicetree/bindings/arm/digicolor.txt b/Documentation/devicetree/bindings/arm/digicolor.txt
deleted file mode 100644
index 658553f40b23..000000000000
--- a/Documentation/devicetree/bindings/arm/digicolor.txt
+++ /dev/null
@@ -1,6 +0,0 @@
-Conexant Digicolor Platforms Device Tree Bindings
-
-Each device tree must specify which Conexant Digicolor SoC it uses.
-Must be the following compatible string:
-
-  cnxt,cx92755
diff --git a/Documentation/devicetree/bindings/arm/digicolor.yaml b/Documentation/devicetree/bindings/arm/digicolor.yaml
new file mode 100644
index 000000000000..d9c80b827e9b
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/digicolor.yaml
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/digicolor.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Conexant Digicolor Platforms Device Tree Bindings
+
+maintainers:
+  - Baruch Siach <baruch@tkos.co.il>
+
+properties:
+  compatible:
+    const: cnxt,cx92755
+
+...
-- 
2.20.1

