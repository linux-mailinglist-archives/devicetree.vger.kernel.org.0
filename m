Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4796765FA37
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 04:29:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231721AbjAFD3M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 22:29:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231702AbjAFD3L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 22:29:11 -0500
Received: from out29-129.mail.aliyun.com (out29-129.mail.aliyun.com [115.124.29.129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E85E6A0D0;
        Thu,  5 Jan 2023 19:29:08 -0800 (PST)
X-Alimail-AntiSpam: AC=CONTINUE;BC=0.1530381|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.325954-0.000438573-0.673608;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047207;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=26;RT=26;SR=0;TI=SMTPD_---.QlbrpT3_1672975741;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.QlbrpT3_1672975741)
          by smtp.aliyun-inc.com;
          Fri, 06 Jan 2023 11:29:04 +0800
From:   wangweidong.a@awinic.com
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        ckeepax@opensource.cirrus.com, rf@opensource.cirrus.com,
        pierre-louis.bossart@linux.intel.com, james.schulman@cirrus.com,
        flatmax@flatmax.com, cezary.rojewski@intel.com,
        wangweidong.a@awinic.com, povik+lin@cutebit.org,
        yangxiaohua@everest-semi.com, daniel.beer@igorinstitute.com,
        13691752556@139.com, srinivas.kandagatla@linaro.org,
        jonathan.albrieux@gmail.com, steve@sk2.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     liweilei@awinic.com, zhaolei@awinic.com, yijiangtao@awinic.com
Subject: [PATCH V9 5/5] ASoC: dt-bindings: Add schema for "awinic,aw88395"
Date:   Fri,  6 Jan 2023 11:28:35 +0800
Message-Id: <20230106032835.141918-6-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230106032835.141918-1-wangweidong.a@awinic.com>
References: <20230106032835.141918-1-wangweidong.a@awinic.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,UNPARSEABLE_RELAY autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Weidong Wang <wangweidong.a@awinic.com>

Add a DT schema for describing Awinic AW88395 audio amplifiers. They are
controlled using I2C.

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 .../bindings/sound/awinic,aw88395.yaml        | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/awinic,aw88395.yaml

diff --git a/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
new file mode 100644
index 000000000000..35eef7d818a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/awinic,aw88395.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Awinic AW88395 Smart Audio Amplifier
+
+maintainers:
+  - Weidong Wang <wangweidong.a@awinic.com>
+
+description:
+  The Awinic AW88395 is an I2S/TDM input, high efficiency
+  digital Smart K audio amplifier with an integrated 10.25V
+  smart boost convert.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: awinic,aw88395
+
+  reg:
+    maxItems: 1
+
+  '#sound-dai-cells':
+    const: 0
+
+  reset-gpios:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - '#sound-dai-cells'
+  - reset-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        audio-codec@34 {
+            compatible = "awinic,aw88395";
+            reg = <0x34>;
+            #sound-dai-cells = <0>;
+            reset-gpios = <&gpio 10 GPIO_ACTIVE_LOW>;
+        };
+    };
-- 
2.39.0

