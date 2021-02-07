Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31108312813
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 00:15:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbhBGXOy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 18:14:54 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:64368 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbhBGXOy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 18:14:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612740911; x=1644276911;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=U5RPnx9naL44L8pODbHMwPFT+udQFeaq9RcnNssxEXo=;
  b=luiAPe3rhSiWIWvHwLGWmi0WCt9MhLKnM8h9p7fTAAmXLDRB93Kfmsav
   bITWoLm/5QYGsHg8UqXX9voi4A9tRoYsZwFtuLifzprIt9jgFdtBc21qG
   06CW9u7QtV6GcNlBfpjZmOBcTlC/QbGFP/0UIbEddwvUoc+B60VomJw3c
   29uTkXSIsDct2s5fWTUomZ6JrP0kWK+ww3dFHDtJYEnRAeT+Gx1UiKPgf
   GQMirJwJR2Iyq8WhZfloYqdMG6gxNHDn8ytfU2zPNMLFFpcs1m4D2OGE9
   4OD6+Rik3V4aoEkgKTT/qDyBX3FkZVm1MguefhxIUvK1/VT5Yi3CXlNQz
   A==;
IronPort-SDR: N04SLQPZ/FqIfRDWVPis8EVT6NSHLjRwbRahlPYnOplFmlh903LnVdQl/VrhtWInp5U3VLh3FD
 LDe7aMaxsz6OKun/FkGJClD9zXklWccE4gOcNYTKWKIb7hAr/4xOISVgArqNv/fr3kECeSxGkX
 vh4POkQLt7JLpgwgh/n2ZuBxpp/ZvI0SDDIVzQgl5IJjTG9KqS5OxYaH4v4bYwUN7Yw1zH+cIB
 6ho48FXEklGQZ4L3MKvwAh3kYsdmytY71CKA49h0vF/uKHull60gyCuVRbZ6+CiCowM4unB2s0
 Pao=
X-IronPort-AV: E=Sophos;i="5.81,160,1610380800"; 
   d="scan'208";a="263503239"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 08 Feb 2021 07:32:26 +0800
IronPort-SDR: LjY4HnUkLquWHCtpNc7siYQP/5sMGKi4JTS/TgN9wtsvkM58NFZV0VHXlFLP7o0SMlAjSaePw+
 crZqyaLbz+8Q8D0IlarF+scuP5HLxUrQZxF0OYfWCqFAqfRMmjlclUQvdsjPug08KO8JUTMJkG
 rb0M6YTdcbYj5fx+b7m+GselBb8cPY+rIy9u+KFnRSshLGnm7PwxdNs2jnrt2vALKDqpWrA5Be
 hkox7BEdSdaIDeA7fypCtMzE8aHlQzu9GVs248WekfreJ7sNlsn0q3/t2SlPR3NzzETHfJWNWj
 MyDYZAjo8oIf5UuR3XsOHT3x
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 14:56:57 -0800
IronPort-SDR: VK66jiKZ0AydLoNU9tF39WZx9m9H4S8LruBDNXtjmeANlMHBw7+IuyTrczsSLJ6aA78lXT+GAq
 182m6Yl8M0TrUGIBqfYEqKK5iw9VtgGELM/ajQUcz0StMcqQn0NKV/wMyx6cmKOXsTIN6Htpdo
 vve5/wngjNBcvtAHyz5Mj4djjl5vJTrTZFT9eMjzivtL3yfQ2tjur5efvJLcvbLq4cfLGky7t0
 DmcgJBfpjXvICQQWQWy3L1Aqn0pYqrKstk/8CTWPM8q4/jU9MW7SH6d4KbddgkgnaasxToSyh0
 p/E=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip02.wdc.com with ESMTP; 07 Feb 2021 15:13:04 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v17 02/16] dt-bindings: add Canaan boards compatible strings
Date:   Mon,  8 Feb 2021 08:12:42 +0900
Message-Id: <20210207231256.115130-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210207231256.115130-1-damien.lemoal@wdc.com>
References: <20210207231256.115130-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce the file riscv/canaan.yaml to document compatible strings
related to the Canaan Kendryte K210 SoC. The compatible string
"canaan,kendryte-k210" used to indicate the use of this SoC to the
early SoC init code is added. This new file also defines the compatible
strings of all supported boards based on this SoC.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/riscv/canaan.yaml     | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/canaan.yaml

diff --git a/Documentation/devicetree/bindings/riscv/canaan.yaml b/Documentation/devicetree/bindings/riscv/canaan.yaml
new file mode 100644
index 000000000000..f8f3f286bd55
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/canaan.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/canaan.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Canaan SoC-based boards
+
+maintainers:
+  - Damien Le Moal <damien.lemoal@wdc.com>
+
+description:
+  Canaan Kendryte K210 SoC-based boards
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - items:
+          - const: sipeed,maix-bit
+          - const: sipeed,maix-bitm
+          - const: canaan,kendryte-k210
+
+      - items:
+          - const: sipeed,maix-go
+          - const: canaan,kendryte-k210
+
+      - items:
+          - const: sipeed,maix-dock-m1
+          - const: sipeed,maix-dock-m1w
+          - const: canaan,kendryte-k210
+
+      - items:
+          - const: sipeed,maixduino
+          - const: canaan,kendryte-k210
+
+      - items:
+          - const: canaan,kendryte-kd233
+          - const: canaan,kendryte-k210
+
+      - items:
+          - const: canaan,kendryte-k210
+
+additionalProperties: true
+
+...
-- 
2.29.2

