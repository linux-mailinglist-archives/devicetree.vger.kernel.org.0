Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 482084AD39
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 23:22:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730301AbfFRVWe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 17:22:34 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:35263 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730102AbfFRVWe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 17:22:34 -0400
Received: by mail-io1-f68.google.com with SMTP id m24so33339902ioo.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 14:22:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C9hK4r8BtF8iLuupXMfzzv+UZSHE7aHpjUxgAmUhVwU=;
        b=ized5m40B7JFiaIgNbAQCI0qnqBS+NCxr2e2uYkfTyGOlP+siErlWk4B7xe3KqJd1Q
         mEApiYKYF3rLOqFvlyImt/ndfINVMEofumcEnPhEZKLW5CY9GOlo/mdbGn3a4UNAoaQP
         frBmTwvRtA1355fPPysaKqCHr65SqfHPj/grt12IuyVnH2bBgTOWqqk1iptNKp1GYT4U
         o+/V0L5I7AZpJ/M+ofgTMWXjm31WE38BmizY03ihDbs+C5zGtvndrklbbWqoH8mIBdrm
         0hrALQra0jtZiCyzQu5wfDNtnynXi5rtElLr6OtaOASYcVqGd2KZEuzRUEihRdDukW8A
         z4JA==
X-Gm-Message-State: APjAAAVwmS42TXe6feTaiXTGb65LPYsby8UunfP1RhwPJNmNqpk8hIvY
        ZtjuOroowoF/IG0Z3qpLv3MGq5A=
X-Google-Smtp-Source: APXvYqxhvuYhONc7fufr49q5hWKvs0Jy9A59+wLZpzT/VUq+mOSJIt+6QzaXT1oPxcd2HIjDAsHTxg==
X-Received: by 2002:a5d:885a:: with SMTP id t26mr7974594ios.218.1560892953024;
        Tue, 18 Jun 2019 14:22:33 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
        by smtp.googlemail.com with ESMTPSA id p9sm13233480ioj.49.2019.06.18.14.22.31
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 14:22:32 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Jonas Jensen <jonas.jensen@gmail.com>
Subject: [PATCH] dt-bindings: arm: Convert MOXA ART board/soc bindings to json-schema
Date:   Tue, 18 Jun 2019 15:22:26 -0600
Message-Id: <20190618212229.32302-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert MOXA ART SoC bindings to DT schema format using json-schema.

Cc: Jonas Jensen <jonas.jensen@gmail.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/moxart.txt        | 12 ------------
 .../devicetree/bindings/arm/moxart.yaml       | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/moxart.txt
 create mode 100644 Documentation/devicetree/bindings/arm/moxart.yaml

diff --git a/Documentation/devicetree/bindings/arm/moxart.txt b/Documentation/devicetree/bindings/arm/moxart.txt
deleted file mode 100644
index 11087edb0658..000000000000
--- a/Documentation/devicetree/bindings/arm/moxart.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-MOXA ART device tree bindings
-
-Boards with the MOXA ART SoC shall have the following properties:
-
-Required root node property:
-
-compatible = "moxa,moxart";
-
-Boards:
-
-- UC-7112-LX: embedded computer
-  compatible = "moxa,moxart-uc-7112-lx", "moxa,moxart"
diff --git a/Documentation/devicetree/bindings/arm/moxart.yaml b/Documentation/devicetree/bindings/arm/moxart.yaml
new file mode 100644
index 000000000000..c068df59fad2
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/moxart.yaml
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/moxart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MOXA ART device tree bindings
+
+maintainers:
+  - Jonas Jensen <jonas.jensen@gmail.com>
+
+properties:
+  compatible:
+    description: UC-7112-LX embedded computer
+    items:
+      - const: moxa,moxart-uc-7112-lx
+      - const: moxa,moxart
+
+...
-- 
2.20.1

