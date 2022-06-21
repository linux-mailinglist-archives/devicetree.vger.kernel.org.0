Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44037552C90
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 10:05:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348003AbiFUIEY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 04:04:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347987AbiFUIEW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 04:04:22 -0400
Received: from mail-wm1-x34a.google.com (mail-wm1-x34a.google.com [IPv6:2a00:1450:4864:20::34a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C2F824945
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 01:04:21 -0700 (PDT)
Received: by mail-wm1-x34a.google.com with SMTP id j31-20020a05600c1c1f00b0039c481c4664so3997716wms.7
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 01:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=7VMne+EKLRft0qoamTnr0CI/OXg/OuA4q1t0xWWFe2o=;
        b=ZpdHpS/kVBkUOJwVEPcdo0gHpjf8MKHUz7jPBmYGq3k1KMLmPRd2ZpB11ScYvhPYae
         VjmHZ8Ey9n3Vpqt/V6ZU/qw6JFNt9DK1IsZ8n5VLXLJd1g/pMjcuhqNEkoizuIMOS6mB
         TazxErIT81eBlOJLg2c0lJ4vyf0Mt8cnXnMKeRyHZJ2iJL3a7DZvSut3ypbnmpBCRUGA
         pWpM7rBrtWwCRhZscik0zotn0r/1QsvGmD9P1w506MAyRnfmQfz1ACVf4HGy3HZaNUA/
         80MxefG+6aa6G6gDBH1ES8d/L41NpdX8mUPXJ3Zo48mMb3gfFI0Bg5o0lvXNre+Vu4Ur
         5i/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=7VMne+EKLRft0qoamTnr0CI/OXg/OuA4q1t0xWWFe2o=;
        b=RiN8gPxhKehTfF/ge6Yil+viKHYUwStYus3cNO6dby6E58Fll/ApZNViCStoclJp/7
         CFBTFHIjr++VzDMWgHC4Tuv3VS5qqhMwjBUqaNzin0fHmD4HCfuJTRYI0Hs/m2tZ5Lyk
         iqxeSUrT9E8mnjOLTroqqXwpD8hYyZW8WawcvscJSkBYcl9VicyZYh7uDQzxPDoPTSkE
         sM2tsnLMWXMxBddmaz8vf90DClbbbBuYVW1g3jA5gdulxi3lX4tQfcvMNDYtQ5SYx3GJ
         vO8e6IHaAtPgXXg9Rj1OIOIHMJWj8kghbMCFPihml1GRp5AgNzHYObLGHQ4exPS2uO+T
         7gnw==
X-Gm-Message-State: AJIora+EHjuA/QB8CVCJ3Jc00votwSUqeej51567D8tg99DRWT0IVDiR
        7ddFCrrYlVfx9qVUL6ZrUQJIpOIfAL735DiaxdY=
X-Google-Smtp-Source: AGRyM1ujwRu2sdSHU9sTM0W4DcaqqDbif+GyCUpF+D26HvIKZJ21ukdIuyNRS4oR6aOod2DgIwlQUI6WIjlSTX3K81w=
X-Received: from sene.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:27c4])
 (user=sebastianene job=sendgmr) by 2002:a5d:500a:0:b0:21b:8274:9ddc with SMTP
 id e10-20020a5d500a000000b0021b82749ddcmr18548837wrt.251.1655798659798; Tue,
 21 Jun 2022 01:04:19 -0700 (PDT)
Date:   Tue, 21 Jun 2022 08:03:08 +0000
In-Reply-To: <20220621080308.3952915-1-sebastianene@google.com>
Message-Id: <20220621080308.3952915-2-sebastianene@google.com>
Mime-Version: 1.0
References: <20220621080308.3952915-1-sebastianene@google.com>
X-Mailer: git-send-email 2.37.0.rc0.104.g0611611a94-goog
Subject: [PATCH v7 1/2] dt-bindings: vcpu_stall_detector: Add
 qemu,vcpu-stall-detector compatible
From:   Sebastian Ene <sebastianene@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        maz@kernel.org, will@kernel.org, vdonnefort@google.com,
        Guenter Roeck <linux@roeck-us.net>,
        Sebastian Ene <sebastianene@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The VCPU stall detection mechanism allows to configure the expiration
duration and the internal counter clock frequency measured in Hz.
Add these properties in the schema.

While this is a memory mapped virtual device, it is expected to be loaded
when the DT contains the compatible: "qemu,vcpu-stall-detector" node.
In a protected VM we trust the generated DT nodes and we don't rely on
the host to present the hardware peripherals.

Signed-off-by: Sebastian Ene <sebastianene@google.com>
---
 .../misc/qemu,vcpu-stall-detector.yaml        | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml

diff --git a/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml b/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
new file mode 100644
index 000000000000..91f012d2a382
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/qemu,vcpu-stall-detector.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: VCPU stall detector
+
+description:
+  This binding describes a CPU stall detector mechanism for virtual CPUs
+  which is accessed through MMIO.
+
+maintainers:
+  - Sebastian Ene <sebastianene@google.com>
+
+properties:
+  compatible:
+    enum:
+      - qemu,vcpu-stall-detector
+
+  clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      The internal clock of the stall detector peripheral measure in Hz used
+      to decrement its internal counter register on each tick.
+      Defaults to 10 if unset.
+    default: 10
+
+  timeout-sec:
+    description: |
+      The stall detector expiration timeout measured in seconds.
+      Defaults to 8 if unset. Please note that it also takes into account the
+      time spent while the VCPU is not running.
+    default: 8
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    vmwdt@9030000 {
+      compatible = "qemu,vcpu-stall-detector";
+      clock-frequency = <10>;
+      timeout-sec = <8>;
+      reg = <0x0 0x9030000 0x0 0x10000>;
+    };
+
+...
-- 
2.36.1.476.g0c4daa206d-goog

