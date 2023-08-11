Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FD09779A68
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 00:08:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233418AbjHKWIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 18:08:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232779AbjHKWIR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 18:08:17 -0400
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 387AE1716
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 15:08:16 -0700 (PDT)
Received: by mail-il1-x130.google.com with SMTP id e9e14a558f8ab-34961362f67so9095725ab.0
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 15:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691791695; x=1692396495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=79NQdNq+xCFOXtXtaHzyPepKhOuPSeF9WL9sjk7PVJI=;
        b=A/TbFSFJtmaPSTQ7C8KeWdDFKFGfO6lYiaKSStoM6Kw7TI75OpYYz+M4LskEdfNPWv
         MwRkssqZMginOYTIwCWS+PXO5dSWL0J+OD12092D3MmUw71/OHxI4NLs3Mdnl+y1dUm5
         FpakYuzSQ8JraEjHrCMaJCPnPTDBpg9ShCe08=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691791695; x=1692396495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=79NQdNq+xCFOXtXtaHzyPepKhOuPSeF9WL9sjk7PVJI=;
        b=ePMuIIqK9pedyQvtXKZ6oWurlqaVWQ09MBbzgsVss7LVf9oDyyrfC07XpJ9mI4NpP3
         dz/m7HHfn365tGfLkTQ8ooaiz+8kxVKHct5lmcgFfwQVuc4cpU0qW+Rpg3itH2L1tWcp
         1truXNwTr750OiSBwiVPZata1kaVKnEzPyWOjAFJ8eiPrTWpu9fjkGs6u2w/7Z+DyAZK
         UlTDOgZA3wNrGHZAJFHrxIbaVgR6TMIWmo70z9xdTi1/tAXnyA9QF8pUnrn5t9yGJI3V
         ix8TBzmJpurCIQPtdCdAgFPsydGIyyPuvsYDrWBcD7uhvH74sRnQVfI/llnTx3xLqGoo
         G3MA==
X-Gm-Message-State: AOJu0YxoBIUJjkHqt3YlA3DTmMq3fB+EXbcRJYZZgb7vvyVMQMCAa7dz
        nuGygdd6MeSQyo5j60kALvtnJVrbC/IivV6veh0=
X-Google-Smtp-Source: AGHT+IFcV/ZYJpOV+eNYUJBceq+ug2qUiGV2TYA0GckRU4Mm32huomf0jygSH5mo48l1lJ1lVJgvhg==
X-Received: by 2002:a05:6e02:1c28:b0:348:f9a8:19ce with SMTP id m8-20020a056e021c2800b00348f9a819cemr3763176ilh.12.1691791695391;
        Fri, 11 Aug 2023 15:08:15 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:653a:2ace:5c03:a67d])
        by smtp.gmail.com with ESMTPSA id d4-20020a92d784000000b003492dfb8a02sm1404471iln.8.2023.08.11.15.08.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 15:08:15 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        Alper Nebi Yasak <alpernebiyasak@gmail.com>,
        Neha Malcom Francis <n-francis@ti.com>,
        Stefan Herbrechtsmeier <stefan.herbrechtsmeier@weidmueller.com>,
        Philippe Reynes <philippe.reynes@softathome.com>,
        Peng Fan <peng.fan@nxp.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH v3 1/2] schemas: Add firmware node schema
Date:   Fri, 11 Aug 2023 16:08:03 -0600
Message-ID: <20230811220811.3130954-1-sjg@chromium.org>
X-Mailer: git-send-email 2.41.0.694.ge786442a9b-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
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
2.41.0.694.ge786442a9b-goog

