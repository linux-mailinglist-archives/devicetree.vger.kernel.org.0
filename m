Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0267A77C9A7
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 10:52:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229748AbjHOIv0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 04:51:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235753AbjHOIvJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 04:51:09 -0400
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 27CCAE73
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 01:51:06 -0700 (PDT)
Received: from loongson.cn (unknown [112.20.109.245])
        by gateway (Coremail) with SMTP id _____8DxPOt5PNtkPbIYAA--.45611S3;
        Tue, 15 Aug 2023 16:51:05 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.109.245])
        by localhost.localdomain (Coremail) with SMTP id AQAAf8BxniN1PNtk0wdbAA--.51871S4;
        Tue, 15 Aug 2023 16:51:05 +0800 (CST)
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
Subject: [PATCH v2 2/7] dt-bindings: loongarch: Add Loongson SoC boards compatibles
Date:   Tue, 15 Aug 2023 16:50:47 +0800
Message-Id: <6d8d0d8d21e32e0577565158bc1c4960a92fb216.1692088166.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <cover.1692088166.git.zhoubinbin@loongson.cn>
References: <cover.1692088166.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf8BxniN1PNtk0wdbAA--.51871S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7AFWrGF18GrW3Cr4rKFyfGrX_yoW8XryDpa
        9xCay7GF1IgFy7u393Xa48Cw4rZrykA3W2qF47XrnrG398X3WFqw4Sk34DZF47Cry7ta47
        XFy8Wa1UKFy8CwcCm3ZEXasCq-sJn29KB7ZKAUJUUUUx529EdanIXcx71UUUUU7KY7ZEXa
        sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
        0xBIdaVrnRJUUUBab4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
        IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
        e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
        0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAF
        wI0_Gr1j6F4UJwAaw2AFwI0_JF0_Jw1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2
        xF0cIa020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_
        Jw0_WrylYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x
        0EwIxGrwCY1x0262kKe7AKxVWUAVWUtwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkE
        bVWUJVW8JwCFI7km07C267AKxVWUAVWUtwC20s026c02F40E14v26r1j6r18MI8I3I0E74
        80Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0
        I7IYx2IY67AKxVW5JVW7JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04
        k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r4j6F4UMIIF0xvEx4A2jsIEc7Cj
        xVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07jz5lbUUUUU=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Loongson SoC boards binding with DT schema format using json-schema.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 .../devicetree/bindings/loongarch/boards.yaml | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/loongarch/boards.yaml

diff --git a/Documentation/devicetree/bindings/loongarch/boards.yaml b/Documentation/devicetree/bindings/loongarch/boards.yaml
new file mode 100644
index 000000000000..5092314b7a52
--- /dev/null
+++ b/Documentation/devicetree/bindings/loongarch/boards.yaml
@@ -0,0 +1,34 @@
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
+          - const: loongson,ls2k0500-ref
+          - const: loongson,ls2k0500
+
+      - description: Loongson-2K1000 processor based boards
+        items:
+          - const: loongson,ls2k1000-ref
+          - const: loongson,ls2k1000
+
+      - description: Loongson-2K2000 processor based boards
+        items:
+          - const: loongson,ls2k2000-ref
+          - const: loongson,ls2k2000
+
+additionalProperties: true
+
+...
-- 
2.39.3

