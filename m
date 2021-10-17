Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC30C43093C
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 15:07:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236484AbhJQNJ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 09:09:26 -0400
Received: from mout.kundenserver.de ([212.227.17.10]:49037 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242195AbhJQNJZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Oct 2021 09:09:25 -0400
Received: from localhost.localdomain ([37.4.249.122]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MUGNZ-1mCcUs2f7T-00RJfz; Sun, 17 Oct 2021 15:06:57 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Mwesigwa Guma <mguma@redhat.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-staging@lists.linux.dev,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 2/2] dt-bindings: soc: bcm: Convert brcm,bcm2835-vchiq to json-schema
Date:   Sun, 17 Oct 2021 15:06:36 +0200
Message-Id: <1634475996-6809-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1634475996-6809-1-git-send-email-stefan.wahren@i2se.com>
References: <1634475996-6809-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:AcaPBRzQvJOIS90GCqh7d7/xZAYtIBl7VztA59WMnckfAVUSY6T
 YSAdCqwvNlxzj3TrSvRl3F+pk30LBCXFF9tRb15On5eltnxujeNGn4LnbtUoqFwSk4Z7M49
 EyK1JenhDGyHDIJcrSYRD+pPUIdNePQ5cUrm1Jy/fkZhf1XShmvvWHxbMFQym3bcwxfWut/
 YA8wBdxGxr6DIfNKH8fFg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EWqhi6WCjHw=:Rcb336QDTYT9TdHJlZIoDX
 JDzrTUUewtMnWviYjjZujffnq0fHkLUzCj5aFbzXlaZGVWmZzhFtuMETMweZlQb4vpVF1+7lg
 D2ChyX9knlpbLrShQBmNKwCm2M3cTwE4L2Vpe0dRLQQ7P2Zdqkcjr16WA7QvN/1bcZD7LnyAZ
 x9PGhR+tkDGPlrLxdEbmREcRP8fuk4rZAReT0/Dgkk2HOM2nLkQdxAVHgIJaJk8DqDU5YF3AO
 R2kWiq7n/puG/WNvTwO2IykoA7KhE3K2eoQVYdVbKJhKh5vcM/J/0YlzQJYTVjRLrBYqX1tMh
 V5PjYLZBATwr29Waoden1wl95MFgaspv2JOpvmgR4sAnpwcc88NkXCMXgCgBKi8/hBD9jHlx9
 W/+l9V5eX/UmeqDdI3PL+utk3rgvbWLz9BMArntRdddpAj02RsaG5ieHfyEgv8PAGaesEmDpW
 Gxp8olVLbK0IJIwTbBblzq/HoL85TEVBJyd9GrY0IMjbLjsMrGdLc2nzHbELm81L1sYZOiNmh
 WTmQwNkDpBtz49ucTJk8yAcjCFIkYCvNoa3/Fh2ApRzbV2bMlPgmafqpfYdX3jk4Fp1W5esrH
 4t+OW7VXQwt+g+4DZ+EZ03/Hvn+5IR41XyYGh5majqMH502imnGGSGmK9CJFGpCDSPQ8HX3OO
 6yGgBI3O0LiqrbsUt8U4XGvQSzummOC4z7M82lT6dCOn7I/l1bUkFnj8yzYFa+5OJ/J7VYU0L
 EGptp45cQ0XFq1F2MaoXYGM78Dsu+LvEIz2dmbisLawFbaMJObIh+Z5S9kA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This converts the VCHIQ bindings to YAML format.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../bindings/soc/bcm/brcm,bcm2835-vchiq.txt        | 17 --------
 .../bindings/soc/bcm/brcm,bcm2835-vchiq.yaml       | 47 ++++++++++++++++++++++
 2 files changed, 47 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt
deleted file mode 100644
index f331316..0000000
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Broadcom VCHIQ firmware services
-
-Required properties:
-
-- compatible:	Should be "brcm,bcm2835-vchiq" on BCM2835, otherwise
-		"brcm,bcm2836-vchiq".
-- reg:		Physical base address and length of the doorbell register pair
-- interrupts:	The interrupt number
-		  See bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
-
-Example:
-
-mailbox@7e00b840 {
-	compatible = "brcm,bcm2835-vchiq";
-	reg = <0x7e00b840 0xf>;
-	interrupts = <0 2>;
-};
diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
new file mode 100644
index 0000000..2ef6b21
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/bcm/brcm,bcm2835-vchiq.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom VCHIQ firmware services
+
+maintainers:
+  - Nicolas Saenz Julienne <nsaenz@kernel.org>
+
+description: |
+  The VCHIQ communication channel can be provided by BCM283x and Capri SoCs,
+  to communicate with the VPU-side OS services.
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm2835-vchiq
+      - brcm,bcm2836-vchiq
+
+  reg:
+    description: Physical base address and length of the doorbell register pair
+    minItems: 1
+
+  interrupts:
+    description: |
+      Interrupt number of the doorbell interrupt
+      see bindings/interrupt-controller/brcm,bcm2835-armctrl-ic.txt
+    minItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    mailbox@7e00b840 {
+      compatible = "brcm,bcm2835-vchiq";
+      reg = <0x7e00b840 0xf>;
+      interrupts = <0 2>;
+    };
+
+...
-- 
2.7.4

