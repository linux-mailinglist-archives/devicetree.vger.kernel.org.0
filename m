Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F35A3DCBA3
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231912AbhHAM3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:29:53 -0400
Received: from mout.kundenserver.de ([212.227.126.134]:46629 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231786AbhHAM3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:29:51 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N3Kc6-1n9BAA2PEg-010Ki3; Sun, 01 Aug 2021 14:29:28 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 4/9] dt-bindings: display: bcm2835: add optional property power-domains
Date:   Sun,  1 Aug 2021 14:28:47 +0200
Message-Id: <1627820932-7247-5-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:rPnhtldQTFQS3/H9+LNkTRTqyia1y45ID+PAHvW/Uo5OCA0eIiG
 Rt3QqS5XuMjRVl3O2hSArM81IirvRiYuTVYfc5yHaEkgGfQRMxlUApHzmpxxFSY9z8OMQ+D
 vsCV8MUUfppeFjsK75CGaM2nyf1gH5hup03+X1LSYgm1a3GCe+RmHrGRrTjcStPrBM+vcdv
 w1bJr8JqL+5Cq67eaq+WA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YInoOMt9GM0=:9+y41vDdSVFvVBrRDeGyo2
 m0kE6OEso/H7Q1sP3Alr7SmDC0CJtbSFS3UQBmg9aIYp4ojcIwUbh2H8XDsHyatqwaz2U0f1T
 C1cam4F/t3hRgpkuTB0i+knz67HhuhQEcjHJG01X4bxqnU1REZ1EdvcwGyqJ53whhdbUea4Yf
 JKPFV0fTE+BneAVx8eYXZt2/ZEqocTG5JrjSRg8dJqxeUty4Q0Gm/v4TCG4razgxD0kual83v
 1qy42ZZJlXhHIoxuOKzxHl1XKTpHWgraBX2UuRZrkAAZH6G4yVcDlQW/uAyN68Ux6X3SNzLqA
 UWoFDjLaEGV9nY/XyO/oa1gDHJ+v0enS2UoA0YWFWr0PTvUzntA6kSRZUh+YqEZiYFcwfGqFT
 DtghyfKBiynJ1wiXtJ/Rwf8Ldj/Jm68TM3f8lZG1tXXP3vWb6BWJXXo4MlaoOgpO13HfUdiNP
 dOD6MEDm1bVS0xfQ/pBTN3jyyz7NfKUvJL725xB8JFwZ5wcPad3M3lfN0ybel+ooGzq2XeVnN
 jKTbnMikDbLkLEe3qKDR2oQ1Fefk4LJvnmKrXJ4RJHXc2j9bQdzUuXVNP8FJM47ZA7XnPlCet
 eAOuxBtQIJVCbJyBOvPRW3qI7GGd/hn39uTyJWqIquwfbCzhVINHOhiN/xkCPvLRk+RY4Q9l4
 i9n1jxv9ZttgXo659JBFnrYx/7Dh0hW5RkQu0pci2qpOVhKqeKAJdPzEQptxr92dqfMSdevgV
 C/HEKvmeXo/BTWdfJV6dPJX4rM33rWqC0vazALX78yYqgALSTHGUabdDTmtPdx0niBdvV/b10
 5qbm0PHe7KiGiSQMTtbGe321AvccbOs2qvaBi5yuLhDcdUAwIzU1eT07dbNIBilPOvmsL4WN7
 oE9AUzFEjbybJyeIYoEQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Raspberry Pi boards with BCM283x needs control of the power domains
to get display components running. So add this as an optional property
in order to avoid such DT schema warnings:

hdmi@7e902000: 'power-domains' does not match any of the regexes: ...

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml | 3 +++
 Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml | 3 +++
 Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml  | 3 +++
 Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml  | 3 +++
 4 files changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
index 3260857..c8b2459 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
@@ -47,6 +47,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
 required:
   - "#clock-cells"
   - compatible
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
index 031e35e..48c8cad 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
@@ -51,6 +51,9 @@ properties:
   dma-names:
     const: audio-rx
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml
index 8a73780..c55a821 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml
@@ -24,6 +24,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml
index 9b24081..5d921e3 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml
@@ -24,6 +24,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.7.4

