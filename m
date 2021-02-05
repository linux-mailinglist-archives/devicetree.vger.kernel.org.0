Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56A76310557
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 08:01:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231221AbhBEHBN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 02:01:13 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:41743 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230487AbhBEHBL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 02:01:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612509613; x=1644045613;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=GP6wzDUcVmwthNo1PAaSmaRGlhfBY1ttEBVnMlWwZlc=;
  b=VQ7HlJscJ8lHjEvuAN6NT97KKqXwG/11N7rQbCTn5htQHGLL9SIm3q5e
   fHeRMn4PXjUyJze22uE2n1VWF+d7WaCA3jGwGts0QB5NpockWl/BvJdCK
   mTrWhvHhSnMRTG8gCnu2YKVN9VH/SvfHRaAAoSqaedpaJy8iqOqIdrLvq
   vVvqDknc0g5NN5jjEj5fwxHYpwIrtPmOzXEh5nAXPhVLMXFrI/EZcu72N
   vUJp0drIOpJytPcJ2FFMfPtJE+gBy83D59n0M2iypKb/FvDwh72gC2nmx
   xyUoLjdGPS5WKZvPkMNpME2b8wv6EFhtXcllbTv/gxdVSPRjyYqORAZE9
   g==;
IronPort-SDR: iMe7Bu35AiQLOZENJ4Eduw/F1YHYGiuz3IU7oxscUSfvB47+vNQZQKvJ7zmWSkFdE62U+RJ5R0
 Aa8pNheOeQq181WnArvpdN0qSDjRPhrb7U9vXDK3K4lCUPSbEcdt/UC4Mye467mGoeSqBIGbFs
 CRkCWf4odzWPE1cdkUFjDU+pjCL039iW6Te71BPN4Xp1HczfDxqKJ9LAe0WP9G/0YslX6iUOM2
 Lf124y5MUVeicsHNgjmbBsZrGKnj4atF3OEj0n1+nEfzM4S5N1HbvjKoMHXU8Ed+AANqopQnIa
 b3o=
X-IronPort-AV: E=Sophos;i="5.81,154,1610380800"; 
   d="scan'208";a="263312064"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 05 Feb 2021 15:16:34 +0800
IronPort-SDR: O3uWiyZOQ1bMbkzggJkXXXuNrwBHJI81OApCT92zjWg4Ov5Yb4zny3vCIbRao6tzKSzkUmaomL
 z53FzJ5ny2Qb/M2R8GfX7m+7xr9VoRHbH1SJyVCmIU4JhxdqZPU7JjstfI+sOMYAXQ3+beJzc0
 sLIa7FvdOmhQZQI3O0PueaJHjKAkhI5Uj9qbe92l7qaTHbp0dcp/RT0D47MA3COf8BUrVIPXzF
 FU8eAGOh4lsXTG/rWJIv+NLfKmG9tJrtZJgg6rJafYjn7YRWJKgSc/yNdeXSK9ggkhn500jGmX
 iAnbQhzz0EgipOO6HTbH7f/y
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2021 22:40:48 -0800
IronPort-SDR: CZ3zXB/kwdIQ+ZsKpZiCNeEOv7/KjRBRO0VtWZGllYILElv9jeTefuRnBlhzCUHf9W+KIa1scy
 yQ2O/larN2zHzSGvS61G+/WpiBU54Wvq4mnSVpsX9LUcD3KZ309iUt+Bqt+Vfko8q9pNeRtHSr
 f8PbCPCeu7Op9+AU+M7kAkQijZLgowyMfrzmcoYhcFTi5+u/Ir5LEbvQe/6tQPwKoJr+NDGcoY
 vZ7r4d62P/hhy0Ou6H6UVarcMWoqbqgQZgIH9NLpbAet6M7FiA59mlM9GLH2SIcamMT9dZp+Da
 T00=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 04 Feb 2021 22:58:44 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v16 07/16] dt-bindings: fix sifive gpio properties
Date:   Fri,  5 Feb 2021 15:58:18 +0900
Message-Id: <20210205065827.577285-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210205065827.577285-1-damien.lemoal@wdc.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
interrupts property description and maxItems. Also add the standard
ngpios property to describe the number of GPIOs available on the
implementation.

Also add the "canaan,k210-gpiohs" compatible string to indicate the use
of this gpio controller in the Canaan Kendryte K210 SoC. If this
compatible string is used, do not define the clocks property as
required as the K210 SoC does not have a software controllable clock
for the Sifive gpio IP block.

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../devicetree/bindings/gpio/sifive,gpio.yaml | 22 ++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
index ab22056f8b44..211869d30212 100644
--- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
@@ -16,6 +16,7 @@ properties:
       - enum:
           - sifive,fu540-c000-gpio
           - sifive,fu740-c000-gpio
+          - canaan,k210-gpiohs
       - const: sifive,gpio0
 
   reg:
@@ -23,9 +24,9 @@ properties:
 
   interrupts:
     description:
-      interrupt mapping one per GPIO. Maximum 16 GPIOs.
+      interrupt mapping one per GPIO. Maximum 32 GPIOs.
     minItems: 1
-    maxItems: 16
+    maxItems: 32
 
   interrupt-controller: true
 
@@ -38,6 +39,11 @@ properties:
   "#gpio-cells":
     const: 2
 
+  ngpios:
+    description:
+      The number of GPIO pins available for the controller implementation.
+      It is 16 for the SiFive SoCs and 32 for the Canaan K210 SoC.
+
   gpio-controller: true
 
 required:
@@ -46,10 +52,20 @@ required:
   - interrupts
   - interrupt-controller
   - "#interrupt-cells"
-  - clocks
   - "#gpio-cells"
   - gpio-controller
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - sifive,fu540-c000-gpio
+          - sifive,fu740-c000-gpio
+then:
+  required:
+    - clocks
+
 additionalProperties: false
 
 examples:
-- 
2.29.2

