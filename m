Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F39275B85A
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 21:56:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229643AbjGTT4Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 15:56:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231200AbjGTT4Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 15:56:24 -0400
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C42426AB
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 12:56:22 -0700 (PDT)
Received: by mail-il1-x12d.google.com with SMTP id e9e14a558f8ab-3461163c0b6so6153655ab.2
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 12:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689882981; x=1690487781;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xXl892T0PaKIOAwD7J+bRw/VtaxqmN4Oiq9yBSj0X7I=;
        b=ISs2J3F2XaLSb1992VWaMy8KJxDHvVfSnrGVzH+qnMRi5Ct9f5h5Y7VaZ+SJtz5y8U
         ngpGTlnZl6uh4MMT+/ZeSSwrZw+gRD60uvWubLT4Y6+T45knFjVBodreQiOdthPJ9cwF
         VhZ9JqoK5dw13pa5sfW+JDfnaNUCsnPHK8R9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689882981; x=1690487781;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xXl892T0PaKIOAwD7J+bRw/VtaxqmN4Oiq9yBSj0X7I=;
        b=aEFBxlXhKLABIRYBxokkIrlA8KKJFQf5+rBuRB/V0T7AGbuUSWXhzFngtzBLy/IOuM
         kcSGFsQh120OF52clsE3YgRlk4mL38B/NFRN5NX888sAiEZe2rNMOzEsxEpy5G7zhrgr
         hm/BVHV/oNCxtegUqIOI60hM9gHw0JmPXY6lBkSIq+IytskSwP7ez2YsTogyz6PnUIih
         b3szJtny3i8oZPnmfofERjMWbbzFe8vzKR6VOD6PjjT3x91kHFIlgtE0d01dCjtIlBFY
         vmDY0V9QyHuMrfaCkMBUGkz8HzwvXc5KgfaUrgvzeoKfKY9dZVuKZmiuYLUCCsrpb2+E
         vvwQ==
X-Gm-Message-State: ABy/qLbqp2hstwLfkLydDrT4iur9pilHBHUdWyJMIMfCeDpyFxKxEYSe
        /DA0A3OMR9aUOoVlF49FElwoSgHm0GoLUyahMhs=
X-Google-Smtp-Source: APBJJlHBJWNJcFhxK/QXaFJ9kr3SbPsKIXgMwuSHpiByJSLVIugVHCjY8ZI6hEo/uPNSxUO4mTfZVg==
X-Received: by 2002:a05:6e02:e0f:b0:346:6550:d30 with SMTP id a15-20020a056e020e0f00b0034665500d30mr2867784ilk.20.1689882981474;
        Thu, 20 Jul 2023 12:56:21 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:2c76:15eb:8d48:aada])
        by smtp.gmail.com with ESMTPSA id u12-20020a056e02080c00b0033e62b47a49sm475670ilm.41.2023.07.20.12.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 12:56:20 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     U-Boot Mailing List <u-boot@lists.denx.de>,
        Tom Rini <trini@konsulko.com>,
        Alper Nebi Yasak <alpernebiyasak@gmail.com>,
        Neha Malcom Francis <n-francis@ti.com>,
        Stefan Herbrechtsmeier <stefan.herbrechtsmeier@weidmueller.com>,
        Philippe Reynes <philippe.reynes@softathome.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh@kernel.org>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH v2 1/2] schemas: Add firmware node schema
Date:   Thu, 20 Jul 2023 13:56:01 -0600
Message-ID: <20230720195617.2276563-1-sjg@chromium.org>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a motivation and purpose for this new proposed node.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v1)

 dtschema/schemas/firmware.yaml | 83 ++++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 dtschema/schemas/firmware.yaml

diff --git a/dtschema/schemas/firmware.yaml b/dtschema/schemas/firmware.yaml
new file mode 100644
index 0000000..4439a70
--- /dev/null
+++ b/dtschema/schemas/firmware.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-clause
+# Copyright 2023 Google LLC
+#
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: /firmware Node
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description: |
+  The '/firmware' node does not represent a real device, but serves as a place
+  for recording information about the main firmware used on the device, such as
+  a map of its contents. This is used by the Operating System (OS), user space
+  programs and possibly other firmware components. Data in the '/firmware' node
+  does not itself represent the hardware.
+
+  Properties in this node should be common to (and used by) at least two
+  firmware projects, such as U-Boot and TF-A. Project-specific subnodes can be
+  used for properties which are specific to a single project.
+
+  Purpose of '/firmware' node
+  ---------------------------
+
+  Firmware has traditionally been fairly opaque to the OS, with the OS taking
+  no interest in its contents, version, layout or how it might be updated. This
+  is less than ideal, since firmware is an important part of the system and
+  visibility into its operation is every bit as important as visbility into the
+  OS and user-space programs within the system.
+
+  The traditional approach has been to let firmware deal with firmware, and the
+  OS deal with everything else. Updating firmware has been handled by firmware.
+  For example, the UEFI spec defines a way for the OS to post a 'capsule' which
+  is discovered next time the system boots, permitting firmware updates. But
+  firmware updates in firmware are highly problematic. They require a reboot
+  and a sometimes-lengthy wait with a strange-looking interface unfamiliar
+  to most users. It seems better to make the update as transparent as possible
+  to the user. As an example of that, ChromeOS has full knowledge of the
+  firmware version and layout, updates it in the background from user space and
+  instantly selects the new firmware when the user reboots or logs out.
+
+  A common objection to considering the system holistically is that some parts
+  of the system are inaccessible to the OS, such as a secure enclave. However
+  this does not preclude providing visibility into what is present in that
+  enclave. Firmware-version information is still useful. Firmware updates are
+  still needed and can still be initiated from user space.
+
+  Another objection is that firmware should provide an interface to the OS,
+  while keeping its structure private. This thinking is largely driven by
+  extrapolating from how firmware has been handled in the 'BIOS' days.
+  It should be considered a degenerate case rather than the norm. As complexity
+  increases, it creates an artificial boundary between two pieces of the whole.
+  Mechanisms then need to be invented to cross this unnecessary chasm. An
+  example of this is Intel's Dynamic Platform and Thermal Framework (DPTF),
+  which consists of user-space, OS and firmware components all working towards
+  a shared goal. We need a standard description of these cross-system pieces.
+
+  In order to 'teach the OS about firmware', we need a place to put this
+  information. That is the purpose of this node.
+
+  In an Open Source world the entire model of firmware needs to adjust to be
+  more open, more visible and managed just like any other part of the system.
+  The major goal is to standardise how firmware is presented to the OS and user
+  space, so that common utilities can be used to manage the entire system,
+  including the firmware. For example, fwupd can look in this node for
+  information on how to update the firmware, similar to how VBE works. [1]
+  It is likely that other purposes will come to light over time.
+
+  [1] https://github.com/fwupd/fwupd/tree/main/plugins/vbe
+
+properties:
+  $nodename:
+    const: firmware
+
+  "#address-cells": true
+  "#size-cells": true
+
+additionalProperties:
+  type: object
-- 
2.41.0.487.g6d72f3e995-goog

