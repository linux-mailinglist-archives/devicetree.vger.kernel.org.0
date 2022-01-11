Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC1A948AC26
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 12:06:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238219AbiAKLGs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 06:06:48 -0500
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27]:38175 "EHLO
        wnew2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238380AbiAKLGp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 06:06:45 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.west.internal (Postfix) with ESMTP id D43FD2B001E6;
        Tue, 11 Jan 2022 06:06:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 11 Jan 2022 06:06:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-type:content-transfer-encoding; s=fm1; bh=
        6VAQWtSljFBrBNQB9O7SiEqRT7Ewm0z4lY62gCEvc6c=; b=NEw2FY1P3D1C1FTs
        sxdGy1tKR9NwNsCFtS3duQLxNxOZJJVaE/LK45DYR4cnoqRwAFI3saEK49HD7tLD
        X7Dbais1U8A2NM4uwaPBIW62c8U8dAR2YNekKS9lE9AGUEpCJmWCje4zM3Z+XMVy
        xr4doJ2e+JNAJUGZPeI6MsvsS+tB28+gqnG3uBBBpBwYHQkyrcl3JkN14yGKNxKW
        eO7rNTZoLfgBXH/BkVUaFHCQfKGp+sOKvgGcMXiOjrQXszXO4U2fTkVq6HAPBvNs
        2PJK9FffFTbZSGQfQ49JfLRfqsWBp2Wgu/Q239OWVoRANfXB0ynhcSozaYYycpw7
        0DmQjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:in-reply-to:message-id:mime-version:references
        :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm1; bh=6VAQWtSljFBrBNQB9O7SiEqRT7Ewm0z4lY62gCEvc
        6c=; b=Mz7YsczWBAvPHYq2baGSqNuws6GPKMj95Z19CfXWPaAZvdAYvnTx9s1sl
        n01EFsx67R5wTN7qqUSaY4N0hkvESxG7PduWSs7V6GdlmY5Llik3sj6w5VgRMatp
        RjYetrzZpwXfNa8ISwqWtKnIKgidrArkg4bvMvHXUTcfPkVRs9Fg0c+H2pu0gNwE
        TTybmrtoZ+HfSFiuLuXjHbWby9A6ZdMWTDAgBr8TIHRCNWTB+IQDev9+fpF8G03P
        hGFfyzSC/xbRdzjLTDEpX+3btnnptBjiEdLj/Ff6BWh3+E6xwAJLMeMXAQOwDG3W
        RD8kxFY3EAXH4JnvoW6gk5hK0QZnQ==
X-ME-Sender: <xms:w2TdYeIY3Ru8xzB0fUA30dqnOaebnx8t68eDMEZ1egYv__irV5Se0w>
    <xme:w2TdYWLAzLXVgp8Oy4Qmna1Lr4oa4O52tP95Ry5e4WIumBUQxpO29MkV7IYmPftNw
    -nSBgag9FOWvC6qDjQ>
X-ME-Received: <xmr:w2TdYetNvqpM3xyGiZ-ihZJgdr2-ry45PqUh9DRGIzWhh5XCRxmtak6a-fNrNTM7hHuTcoW9xrm7hmiJnTWAVZnUzu-hZqtvNpvi9u4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrudehfedgvdegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedtuefhheejgfeutefggfefffevgedvudfhgeffjefgfeduudefgefhtddt
    ffettdenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgpdhfrhgvvgguvghskh
    htohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:w2TdYTa7j5CtH7p1GtLLWJ4qvwYTWN4SqTvvyjpoZtW38bXf-ofqqA>
    <xmx:w2TdYVb-cFX_aQIyK_C8hczAYIM60kcFF5mcfGzKoWhpIcu33Gt3MA>
    <xmx:w2TdYfAqzHFuKN7YZ0aPK7sjNX6zIIbg2iVzqTyA0FHHdQ-EkvDGGA>
    <xmx:w2TdYXkVggU1lwnWdzDQNWcrwV89Wj_StRLp95T6d9YpaU9w9j-Q9vYWddQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 11 Jan 2022 06:06:42 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/2] dt-bindings: panel: Introduce a panel-lvds binding
Date:   Tue, 11 Jan 2022 12:06:35 +0100
Message-Id: <20220111110635.804371-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111110635.804371-1-maxime@cerno.tech>
References: <20220111110635.804371-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Following the previous patch, let's introduce a generic panel-lvds
binding that documents the panels that don't have any particular
constraint documented.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v2:
  - Added a MAINTAINERS entry

Changes from v1:
  - Added missing compatible
  - Fixed lint
---
 .../bindings/display/panel/panel-lvds.yaml    | 57 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/panel-lvds.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
new file mode 100644
index 000000000000..fcc50db6a812
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/panel-lvds.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic LVDS Display Panel Device Tree Bindings
+
+maintainers:
+  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
+  - Thierry Reding <thierry.reding@gmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+  - $ref: /schemas/display/lvds.yaml/#
+
+select:
+  properties:
+    compatible:
+      contains:
+        const: panel-lvds
+
+  not:
+    properties:
+      compatible:
+        contains:
+          enum:
+            - advantech,idk-1110wr
+            - advantech,idk-2121wr
+            - innolux,ee101ia-01d
+            - mitsubishi,aa104xd12
+            - mitsubishi,aa121td01
+            - sgd,gktw70sdae4se
+
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - auo,b101ew05
+          - tbs,a711-panel
+
+      - const: panel-lvds
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - data-mapping
+  - width-mm
+  - height-mm
+  - panel-timing
+  - port
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 368072da0a05..02001455949e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6080,6 +6080,7 @@ T:	git git://anongit.freedesktop.org/drm/drm-misc
 S:	Maintained
 F:	drivers/gpu/drm/panel/panel-lvds.c
 F:	Documentation/devicetree/bindings/display/lvds.yaml
+F:	Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
 
 DRM DRIVER FOR MANTIX MLAF057WE51 PANELS
 M:	Guido Günther <agx@sigxcpu.org>
-- 
2.34.1

