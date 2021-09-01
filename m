Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C8F33FD695
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243566AbhIAJVE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:04 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:55719 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243564AbhIAJVA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:00 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 1BEB45C0242;
        Wed,  1 Sep 2021 05:20:04 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:20:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=MMkLkx9sHjeMk
        rZIhjk8jiHn82H34IoH35eXeBxzYjo=; b=iQvtHwWsC+v6+q/v3nDz9Ye49xuPy
        K4qLgzaXL+t/UUjgDPmE0zNm9tJ3uxrXiYmvroTHkG5QVUVJpjQPcPXHd0JQd9A7
        LY6/QCyiKQFK1L4aqPror7n08bWXJUmbq+raMhDf5NDkmOsMGTP/oQmqfwPJH8Z0
        vQhJ92Q7x1rb9ShqgvkohKZBZRqufXhIzI+2P27yS9hrK1dmVID4xKLAJBSFpWm/
        wl+acchx6NB/BBXFBeQ4sFZtLgRlmJNOI6DFhmSkpmOEJ9SaZLLnObpuj8Hzo1xK
        166Hi08TdNCdQkT962dViMwSBscs8zvoCgzaK6ADnz6N5FsaC5jvqGZag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=MMkLkx9sHjeMkrZIhjk8jiHn82H34IoH35eXeBxzYjo=; b=SiRbZNJ9
        hNINWgpk7V9srRw9c6zSytVXj9dcqG9jjhUxHyPHAHQZGYhpBmKOIB4AQy//v/vP
        QAaCMzNQiqXYJ7c7iocco2tm2U2efnlMoVAOtW2U3wWa8FmVlyXuL71rAaAqzjzK
        Tz71FWUGbDE7SrjiL8gwKaPeGCCjmIXLycPdeQnim1vRM3ZP3KgE9FULlMLcTvEb
        UbK3gbK+NtOymbbUPUoOByXdrYmnSfiifPBBNwo9VdArF4TMF/Min3KLdo/CUmRW
        UJ3/wdx899VYgjC9ObScpsySDpbAmlqyrQlaAp8LUAZr1JArhYxM1oixZJWs20No
        4qJz8I15ZVS04g==
X-ME-Sender: <xms:w0UvYfZYc58IGuH3xsgmgn2TRUJ5GjKl4H3xXsYdD6ZvCkFj328sEg>
    <xme:w0UvYeYAyCTt3RvWcrDL2ZIe3_Ct6UnmZ-85Pd5HCdq3XHDNMIXIt5-o4slJ0HdiD
    WLS9NjD5Vvhs9K8jNA>
X-ME-Received: <xmr:w0UvYR9eX5l04VLpWxOArY32AKZlYrkVMWv6E6kazBgB4y2WCCUPbgHy-kqUx6kWnAsb-VhQhpEnBK_iE0sAN4TlWmMGzQqSY6bg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgepieenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:w0UvYVpZoueZAhPqRKQhLUIXEx-Wn1jnipm7to7yM5TGYRqV2hAL9w>
    <xmx:w0UvYaqroiN6pj-RStKMkWyyBIfKVzQ5oA_zQCGAuyrr1MyJrGKOKA>
    <xmx:w0UvYbRvHIDYee39glnrIToPVHaIl3vJ2gARZd8GeoqQBbOAPrzfAQ>
    <xmx:xEUvYWcMri2dTCPxR8KbolrX9B65WWlkFvCNuw6ce3D14PI1EohQfw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:03 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Daniel Mack <zonque@gmail.com>,
        Evgeniy Polyakov <zbr@ioremap.net>
Subject: [PATCH v2 38/52] dt-bindings: w1: Convert 1-Wire GPIO binding to a schema
Date:   Wed,  1 Sep 2021 11:18:38 +0200
Message-Id: <20210901091852.479202-39-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bitbanged 1-Wire buses are supported by Linux thanks to their device
tree binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: Daniel Mack <zonque@gmail.com>
Cc: Evgeniy Polyakov <zbr@ioremap.net>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Changed additionalproperties to make sure all the other items in the
    schema are nodes
---
 .../devicetree/bindings/w1/w1-gpio.txt        | 27 ------------
 .../devicetree/bindings/w1/w1-gpio.yaml       | 44 +++++++++++++++++++
 2 files changed, 44 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/w1/w1-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/w1/w1-gpio.yaml

diff --git a/Documentation/devicetree/bindings/w1/w1-gpio.txt b/Documentation/devicetree/bindings/w1/w1-gpio.txt
deleted file mode 100644
index 3d6554eac240..000000000000
--- a/Documentation/devicetree/bindings/w1/w1-gpio.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-w1-gpio devicetree bindings
-
-Required properties:
-
- - compatible: "w1-gpio"
- - gpios: one or two GPIO specs:
-		- the first one is used as data I/O pin
-		- the second one is optional. If specified, it is used as
-		  enable pin for an external pin pullup.
-
-Optional properties:
-
- - linux,open-drain: if specified, the data pin is considered in
-		     open-drain mode.
-
-Also refer to the generic w1.txt document.
-
-Examples:
-
-	onewire {
-		compatible = "w1-gpio";
-		gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
-
-		battery {
-			// ...
-		};
-	};
diff --git a/Documentation/devicetree/bindings/w1/w1-gpio.yaml b/Documentation/devicetree/bindings/w1/w1-gpio.yaml
new file mode 100644
index 000000000000..7ba1c2fd4722
--- /dev/null
+++ b/Documentation/devicetree/bindings/w1/w1-gpio.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/w1/w1-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bitbanged GPIO 1-Wire Bus Device Tree Bindings
+
+maintainers:
+  - Daniel Mack <zonque@gmail.com>
+
+properties:
+  compatible:
+    const: w1-gpio
+
+  gpios:
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: Data I/O pin
+      - description: Enable pin for an external pull-up resistor
+
+  linux,open-drain:
+    type: boolean
+    description: >
+      If specified, the data pin is considered in open-drain mode.
+
+required:
+  - compatible
+  - gpios
+
+additionalProperties:
+  type: object
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    onewire {
+        compatible = "w1-gpio";
+        gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+    };
+
+...
-- 
2.31.1

