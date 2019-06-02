Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 540673228B
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2019 10:01:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725953AbfFBIBf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jun 2019 04:01:35 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:45226 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726032AbfFBIBe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jun 2019 04:01:34 -0400
Received: by mail-wr1-f66.google.com with SMTP id b18so9150550wrq.12
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2019 01:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=19JHlpBM08NaaoHMsfAWuVL8kWvPtpcvA1ACdpeOftw=;
        b=D1YagV2wbPbvYWZG6MzOREWRKQGhvSfaNMR6MaRpuTG3+iRMDz8IOAruUW8V/2CsOV
         dWr/OLZLPLXOS1ERStSTQ19mZ53xlDQFlCJOUKK8RJwaNcJpCG+KarzUiCyGZMQXpEIu
         FrBKvFBcPrSGmn+reOALH9WfV1FPfwlGjHpjwpBngwFOMGCXiQBEKv5uQkawr3ERKQdC
         /qUujjIVeGUijZJ+vZVg5y/1BqUbnG5ZHp4iAUZp0E30WUPtCT7Hb3CzQFd7FOATQ1wJ
         4drT05q/92szPLAyQN6niHi0Skv8EP3tySB0tavCnhXN1cXgLJpaPi7XM/05hHIDrWaj
         +3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=19JHlpBM08NaaoHMsfAWuVL8kWvPtpcvA1ACdpeOftw=;
        b=ZzZ1d0p8dwSyWZp+UbRwgUSy6QXQDz4Jmvbclt7UduGDSY8hzRfApr0a7Hw34rxk3q
         BNsoG1WqGDYUAubtFM732Jq+da7BBzKIdBMb1LSG0MHuqH+p+Qfme4Jp3JZs6KS/hwXa
         7m+f0Mo/zgXBliyGR+biC0ufYxuT0JN5BijUCkui4L3el4znQ4fqZDUahjfkqTxucNSC
         rgnx+EcZiO7FLL7vszHNYm3T097XcCqupiEhLk/+oMwSUsbtkPRGI2OC5suw4iN+Y3C9
         F3V0wDMO4cZNg9OtH/rQ1eAYSDkcs8ddYC375MM+GXZ/7KH2CZLZmEIPIREIxCqLTVve
         3+pg==
X-Gm-Message-State: APjAAAX+jyN5dFj55ww3InqQXF5NTkygaFTx0+mc2+lx6dRwKnFABpyg
        Sb0Ck+0c8luu0MHRciA+Huqn3w==
X-Google-Smtp-Source: APXvYqxIdhhZ2JdruuDE0wVdfP3W+Q1cj5pKLGr8tiWIFLeuCifPv8CGC4QztbWIeJssrrKzi3Ds7A==
X-Received: by 2002:adf:c98f:: with SMTP id f15mr12552255wrh.279.1559462493346;
        Sun, 02 Jun 2019 01:01:33 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net. [217.76.161.89])
        by smtp.gmail.com with ESMTPSA id y133sm4868583wmg.5.2019.06.02.01.01.31
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 02 Jun 2019 01:01:32 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
To:     linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Paul Walmsley <paul@pwsan.com>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: riscv: sifive: add YAML documentation for the SiFive FU540
Date:   Sun,  2 Jun 2019 01:01:23 -0700
Message-Id: <20190602080126.31075-3-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190602080126.31075-1-paul.walmsley@sifive.com>
References: <20190602080126.31075-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add YAML DT binding documentation for the SiFive FU540 SoC.  This
SoC is documented at:

    https://static.dev.sifive.com/FU540-C000-v1.0.pdf

Passes dt-doc-validate, as of yaml-bindings commit 4c79d42e9216.

This second version incorporates review feedback from Rob Herring
<robh@kernel.org>.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Paul Walmsley <paul@pwsan.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: devicetree@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../devicetree/bindings/riscv/sifive.yaml     | 25 +++++++++++++++++++
 MAINTAINERS                                   |  9 +++++++
 2 files changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml

diff --git a/Documentation/devicetree/bindings/riscv/sifive.yaml b/Documentation/devicetree/bindings/riscv/sifive.yaml
new file mode 100644
index 000000000000..ce7ca191789e
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/sifive.yaml
@@ -0,0 +1,25 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/sifive.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive SoC-based boards
+
+maintainers:
+  - Paul Walmsley <paul.walmsley@sifive.com>
+  - Palmer Dabbelt <palmer@sifive.com>
+
+description:
+  SiFive SoC-based boards
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    items:
+      - enum:
+          - sifive,freedom-unleashed-a00
+      - const: sifive,fu540-c000
+      - const: sifive,fu540
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4ce575..8a64051cf5fc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14322,6 +14322,15 @@ S:	Supported
 K:	sifive
 N:	sifive
 
+SIFIVE FU540 SYSTEM-ON-CHIP
+M:	Paul Walmsley <paul.walmsley@sifive.com>
+M:	Palmer Dabbelt <palmer@sifive.com>
+L:	linux-riscv@lists.infradead.org
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/pjw/sifive.git
+S:	Supported
+K:	fu540
+N:	fu540
+
 SILEAD TOUCHSCREEN DRIVER
 M:	Hans de Goede <hdegoede@redhat.com>
 L:	linux-input@vger.kernel.org
-- 
2.20.1

