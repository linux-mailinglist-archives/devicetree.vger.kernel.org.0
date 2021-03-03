Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92E6332C04E
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:00:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345783AbhCCSmb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:42:31 -0500
Received: from mout.gmx.net ([212.227.17.21]:48809 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S245732AbhCCPu4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Mar 2021 10:50:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1614786450;
        bh=vXITFOlRrrM/ot0qtV+OpIUql+KKoRQFHgp+WqwkmIo=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
        b=Nvos3iwZ/nXIXLyhNm+0aMDy3WNKC1qTq3WPwCikoitWyoJIohefAAvRVm+SoRLjw
         AiVsLjV1b6FommklFvI2mNrcrf/dbVhir6CwpBhxWycgk/SJJNE6VvGmPQQKIKDL63
         GVzYrSn57hyes3hCArLHmniE5Z2wizbn7NVvpx0w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.215.134]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MXXuB-1lHmzV10Qx-00Z2rQ; Wed, 03
 Mar 2021 16:47:30 +0100
From:   =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To:     openbmc@lists.ozlabs.org, devicetree@vger.kernel.org
Cc:     =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
        Rob Herring <robh@kernel.org>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 RESEND 1/2] dt-bindings: arm: Convert nuvoton,npcm750 binding to YAML
Date:   Wed,  3 Mar 2021 16:46:19 +0100
Message-Id: <20210303154622.3018839-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:fr11v6FXMj6GgupdvATGzBwe2UvTw/AWyN+FGMgj9PZ1eqObakU
 D0WHCsYt0rm20m4CKLwKghThQvSFc6ODgoeu5a4j90QWuA3KJ/SpOOxYn4Si8t+Fhk534xn
 WVO9EZJaQuoRsWLXXF46+HsXmZEq8jbL4v2cDm4o1LTs+DdcO8GBF3DMzKPyztPeC/42lz/
 1KITjqS36WTJDICbwberA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EPz9YmjBqhU=:xo+3IkJcoX7kfmKp+hGxlX
 2UIbNDTmBe6gFzvrQcQfpzgU/34JFS8qk7+Tkizkm8foBEiAiaO4J7xsyVxTfa6sjCiveWZPO
 vDD/Hbg7Lxi6di43ZA2i409hvYmL4Qe9KR7pI6j0IJTT55veD6gIPDCyiPtcSRFKcuL6Ra3es
 h7dT3k/PI58k8gorNZEJVxy1Yytml1XbGoTbPMm+1LR7plosG1ODt5Y0wL2fXPJQNn/mUluHB
 KWL+jDvSk0yqECXSfqRE/1SBLEcxTbzmr75bm6SPJlwOSdlZi/fwBFK5uZaYRBl+7JVF9C4n3
 TZyIZuS4z317qxfu46yampfD8dTpPjH69W2w68HjAJeCR9X/s0GBbd/EeLgmxbslovAImOiuP
 5PMFAaVMZdbypVJKpbcrlg0Nzg2is+xBnLYalKHZtGNzKzJ51WyOUWIw5tfZpIVUWc9toLTMA
 0yOC7YWjodl0zXKqer21f6BjP2yagOO9rzM78XUqOhyeYbPyl81guERr+f3nyFWE4d5vVFDl/
 IRj6E/+WedxeJlxi7kv8TNK9r1k6rKlJbRaytUOSVNbXpVhl7pPJV/lnYmdUBI/CDbsBy8Zew
 obG59fLS/krecI0+HCPKv56fkdIjkcOoJ8f2U/lS/fcWJry7hOw6dt6nxi63pBHRh+BkgGaVy
 2qL5vQrRpBOMnaOMVYczxkMfLGBqFCfKiF0SpZtdusndNDjMjpqMd7mCB9NnKt52j9QG4FPUB
 yxi5ufEQi3T/E+wd3bNBTFIZCDrZIajO/Zs8hVD7ETfE8fgX4ObY68fVdiyBcD8bI8bgdvyOZ
 nH/VUGdVy3tkHAfpRWq/2N/+ObtJiWhdgE10lvwioisVWb5xAWLJFyYpL4+XnZSQNtgmLAYy4
 n3mSfkn7ier7cMfg5f9Q==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The general trend is to have devicetree bindings in YAML format, to
allow automatic validation of bindings and devicetrees.

Convert the NPCM SoC family's binding to YAML before it accumulates more
entries.

The nuvoton,npcm750-evb compatible string is introduced to keep the
structure of the binding a little simpler.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>
Reviewed-by: Rob Herring <robh@kernel.org>
=2D--

If someone else wants to be listed as the maintainer, please let me
know.


v2:
- Fix indentation to satisfy yamllint
- Fix $schema line

v1:
- https://lore.kernel.org/lkml/20210108224008.705687-1-j.neuschaefer@gmx.n=
et/
=2D--
 .../devicetree/bindings/arm/npcm/npcm.txt     |  6 -----
 .../devicetree/bindings/arm/npcm/npcm.yaml    | 23 +++++++++++++++++++
 2 files changed, 23 insertions(+), 6 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/npcm/npcm.txt
 create mode 100644 Documentation/devicetree/bindings/arm/npcm/npcm.yaml

diff --git a/Documentation/devicetree/bindings/arm/npcm/npcm.txt b/Documen=
tation/devicetree/bindings/arm/npcm/npcm.txt
deleted file mode 100644
index 2d87d9ecea85b..0000000000000
=2D-- a/Documentation/devicetree/bindings/arm/npcm/npcm.txt
+++ /dev/null
@@ -1,6 +0,0 @@
-NPCM Platforms Device Tree Bindings
=2D-----------------------------------
-NPCM750 SoC
-Required root node properties:
-	- compatible =3D "nuvoton,npcm750";
-
diff --git a/Documentation/devicetree/bindings/arm/npcm/npcm.yaml b/Docume=
ntation/devicetree/bindings/arm/npcm/npcm.yaml
new file mode 100644
index 0000000000000..894aefb70652a
=2D-- /dev/null
+++ b/Documentation/devicetree/bindings/arm/npcm/npcm.yaml
@@ -0,0 +1,23 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/npcm/npcm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NPCM Platforms Device Tree Bindings
+
+maintainers:
+  - Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: NPCM750 based boards
+        items:
+          - enum:
+              - nuvoton,npcm750-evb         # NPCM750 evaluation board
+          - const: nuvoton,npcm750
+
+additionalProperties: true
=2D-
2.29.2

