Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71F473FD66E
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243515AbhIAJUR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:17 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:41125 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243495AbhIAJUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:13 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 735905802FE;
        Wed,  1 Sep 2021 05:19:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:19:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=yXiPsn8d3jPfH
        +6vjwDv8euBf9Pn69QZkk4d5zApvE4=; b=t2DfX7K1tgrqqkMaUzBUqHpFN5vXV
        uA16DIx8qdIslSre72ywc4zNPSbMdO7qhekUUVanuXdtbLsFyxuBQPi90NWvVDm1
        uQfdXDpxaeZ56x3fGyxUB8sNgG5fElFDzF/Sho9XkBD3dKpn7pAw0d9LpNFFbfX0
        pJ9+01b8SA8wv/7uRsQ6pTSUpqQS+/Q4kyfKDpwZGJ3pPJADa6hy4BQ3KN7b/nxH
        +2URW2Jf9ltOd/q2HaxI846GA3HXYL0XiZFq/Tcylzh0UyRbqKrmBOwOeA9P7H0N
        ntl4bCa4w5RPU4Iqree3HYItwie86WPd+NzUKo7qCpRqFjx17A5popsCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=yXiPsn8d3jPfH+6vjwDv8euBf9Pn69QZkk4d5zApvE4=; b=KouiQXs2
        lH09DT1VDeOOnrFXn58FhL4Qk3PzAOg0VVQqTYF9Kh4AWcaNStFy/xcvmodfOK4P
        VLh9XKZlCZVWdma1ItnuaTOT50vcQQT7NyGiEZsZPNFKE7YV2LvoDjUTGdg7MxYe
        xYiK4XIsmY4DijHx0uGJhl+IMlgLrmsQhcExZBxdgb6FKdYSjhupWWOmUKS8xIfa
        Bv5OmvSrw111f/ovCKUtxytSP5PlADJPufujbNskx+AIT4+pmdJmytUppO3mWmp4
        N36mkED55s8gIOb+T03o509hD6YDdutWlh9ZfO72mJvlMzHsNps9DD1KhPtml9S9
        8qDk+ePB/GDaUQ==
X-ME-Sender: <xms:kkUvYRXRexw3YXLQCZyWgPVP16CBs6PhimiqYe7rfdBjp2pDHp63iA>
    <xme:kkUvYRkA45t5IZjBcpr_rZaj8ObONmJBniNk_1iXaoIQyYMWx8VbIQsJsZPp8yi-z
    SjVp0mwZStnWkC6Zfk>
X-ME-Received: <xmr:kkUvYdbYKQ5E7TU5TxgyA4mHRzb9CfxuLWx4FrdQSW58Jbh_qQzcRztT94dJkk_51Lxoa8HdAZiZeXUaagWG77P_rODJQ5NIUX3w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:kkUvYUUDzV4tY0UyM5GlhaHWaQbXp-8E0scZpxfhFZZqO5ne5fOtCQ>
    <xmx:kkUvYbkmGqTWrWe4u8Z4OD4hoOLVxSU7GtZsIpOKZK1GVFDwVuldiQ>
    <xmx:kkUvYRdPX_8AFpJOLSxxIW36ZDedfdRuYp0vcKN2uU4ooA34EOPAcw>
    <xmx:k0UvYUfZK1t1xn1Y5ogtE_LC1l1308pycMyJwFoGgcCVAKplE_mNoA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:14 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 10/52] dt-bindings: display: Move idk-1110wr to panel-lvds
Date:   Wed,  1 Sep 2021 11:18:10 +0200
Message-Id: <20210901091852.479202-11-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Advantech IDK-2121WR Device Tree binding doesn't really add any
useful content that is not already present in the panel-lvds binding
aside from a requirement on the data-mapping.

Let's move it to the generic panel-lvds binding

Cc: dri-devel@lists.freedesktop.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../display/panel/advantech,idk-1110wr.yaml   | 69 -------------------
 .../bindings/display/panel/lvds.yaml          | 22 ++++--
 2 files changed, 15 insertions(+), 76 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml b/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml
deleted file mode 100644
index 93878c2cd370..000000000000
--- a/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml
+++ /dev/null
@@ -1,69 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/display/panel/advantech,idk-1110wr.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Advantech IDK-1110WR 10.1" WSVGA LVDS Display Panel
-
-maintainers:
-  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
-  - Thierry Reding <thierry.reding@gmail.com>
-
-allOf:
-  - $ref: lvds.yaml#
-
-properties:
-  compatible:
-    items:
-      - const: advantech,idk-1110wr
-      - {} # panel-lvds, but not listed here to avoid false select
-
-  data-mapping:
-    const: jeida-24
-
-  width-mm:
-    const: 223
-
-  height-mm:
-    const: 125
-
-  panel-timing: true
-  port: true
-
-additionalProperties: false
-
-required:
-  - compatible
-
-examples:
-  - |+
-    panel {
-      compatible = "advantech,idk-1110wr", "panel-lvds";
-
-      width-mm = <223>;
-      height-mm = <125>;
-
-      data-mapping = "jeida-24";
-
-      panel-timing {
-        /* 1024x600 @60Hz */
-        clock-frequency = <51200000>;
-        hactive = <1024>;
-        vactive = <600>;
-        hsync-len = <240>;
-        hfront-porch = <40>;
-        hback-porch = <40>;
-        vsync-len = <10>;
-        vfront-porch = <15>;
-        vback-porch = <10>;
-      };
-
-      port {
-        panel_in: endpoint {
-          remote-endpoint = <&lvds_encoder>;
-        };
-      };
-    };
-
-...
diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
index 49460c9dceea..e4e49e06f302 100644
--- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
@@ -28,15 +28,23 @@ description: |+
 
 allOf:
   - $ref: panel-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: advantech,idk-1110wr
+
+    then:
+      properties:
+        data-mapping:
+          const: jeida-24
 
 properties:
   compatible:
-    contains:
-      const: panel-lvds
-    description:
-      Shall contain "panel-lvds" in addition to a mandatory panel-specific
-      compatible string defined in individual panel bindings. The "panel-lvds"
-      value shall never be used on its own.
+    items:
+      - enum:
+          - advantech,idk-1110wr
+      - const: panel-lvds
 
   data-mapping:
     enum:
@@ -112,6 +120,6 @@ oneOf:
   - required:
       - ports
 
-additionalProperties: true
+unevaluatedProperties: false
 
 ...
-- 
2.31.1

