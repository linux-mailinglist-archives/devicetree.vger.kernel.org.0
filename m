Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3E9D73271C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 08:11:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242220AbjFPGLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 02:11:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242397AbjFPGLI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 02:11:08 -0400
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 655D72D67
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 23:11:03 -0700 (PDT)
Received: from loongson.cn (unknown [112.20.112.76])
        by gateway (Coremail) with SMTP id _____8CxPuv1_Itk_tsFAA--.12465S3;
        Fri, 16 Jun 2023 14:11:01 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.112.76])
        by localhost.localdomain (Coremail) with SMTP id AQAAf8CxReTv_ItkFPEcAA--.17020S4;
        Fri, 16 Jun 2023 14:11:00 +0800 (CST)
From:   Binbin Zhou <zhoubinbin@loongson.cn>
To:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>,
        Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH 2/6] dt-bindings: loongarch: Add Loongson SoC boards compatibles
Date:   Fri, 16 Jun 2023 14:10:39 +0800
Message-Id: <3b2ba830d81f85130e89316dc0c4d478482cd79d.1686882123.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <cover.1686882123.git.zhoubinbin@loongson.cn>
References: <cover.1686882123.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf8CxReTv_ItkFPEcAA--.17020S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7AFW7KrW7Ar47Wr4Uur4Utrc_yoW8GF1Upa
        9xCa47GF1IgFyxW393Wa48Aw1rZrWkA3W2qF47X34DG398W3WFqwsak34DZF17CF17tay8
        WFy8Ww45KFy8CwcCm3ZEXasCq-sJn29KB7ZKAUJUUUUx529EdanIXcx71UUUUU7KY7ZEXa
        sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
        0xBIdaVrnRJUUUBIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
        IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
        e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
        0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
        xVW8Jr0_Cr1UM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
        AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWU
        tVWrXwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
        AKI48JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
        6r1j6r4UMxCIbckI1I0E14v26r1q6r43MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
        xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xII
        jxv20xvE14v26ryj6F1UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw2
        0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY1x02
        67AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU8_gA5UUUUU==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Loongson SoC boards binding with DT schema format using json-schema

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 .../devicetree/bindings/loongarch/boards.yaml | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/loongarch/boards.yaml

diff --git a/Documentation/devicetree/bindings/loongarch/boards.yaml b/Documentation/devicetree/bindings/loongarch/boards.yaml
new file mode 100644
index 000000000000..3ef87b732668
--- /dev/null
+++ b/Documentation/devicetree/bindings/loongarch/boards.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/loongarch/boards.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Loongson SoC-based boards
+
+maintainers:
+  - Binbin Zhou <zhoubinbin@loongson.cn>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: Loongson-2K0500 processor based boards
+        items:
+          - const: loongson,ls2k0500
+
+      - description: Loongson-2K1000 processor based boards
+        items:
+          - const: loongson,ls2k1000
+
+      - description: Loongson-2K2000 processor based boards
+        items:
+          - const: loongson,ls2k2000
+
+additionalProperties: true
+
+...
-- 
2.39.3

