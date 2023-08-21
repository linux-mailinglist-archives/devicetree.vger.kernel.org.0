Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E955D782FDF
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 20:02:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236805AbjHUSCy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 14:02:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233032AbjHUSCx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 14:02:53 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 173B310E
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 11:02:52 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id ca18e2360f4ac-79210064604so103220439f.3
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 11:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692640971; x=1693245771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IfhGWQLobKgWsMuweTKDotxtPEgMiW0frCVlWnHWO+o=;
        b=SuFbwGzBQd6dncU9Qd6igCgwTyiZNwlOvoBON/+gDyxTM8mI8/HStow62YfpXU+/aM
         2HwZffOy7ZWiPldHBROekVhyWUtZmlg55PvIR8TybrXh6D/8HUo0zoDD2aa6HXg5t8vv
         FzDkvcA1BN7WxYhFnCIIOcj/Y2rc8/FJZAj/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692640971; x=1693245771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IfhGWQLobKgWsMuweTKDotxtPEgMiW0frCVlWnHWO+o=;
        b=eKE6qHd8ntUlvBeccgmq50pql/sGqcl0rHNdQYj2Tl+WfKCFYzSQQehXT1jD5JRK59
         GS38UDo0ODZ7f8/UJgp8WxcWBDroobW94A71ux9Js+yhXMwZlXz1R3urnqdxwGBpkiqu
         wQMU5FUt8MyqO7zp4KUZDEYitUoNCFjJKKO/nPph0R/141PJPHJ89mimv55HTzRCnMEs
         qqYZ6HgfNjaWoo1b/23S6j0zvu3v5NXdRI3qpBi/B8xxK2DJRDQgIMc9NbD+DDFN3ysy
         yXxsb8ott/5sbNHVl5wdPYtKBFKfvVoJju/yudEmskmHsom8DdXiJGOn3yUO1YbbsPXU
         3Cww==
X-Gm-Message-State: AOJu0YzNq8u+EJks4bFhn3u7TiXe4W8BpHdhk7SIUT8d3vvCzbZ0qCA+
        G2EwqG1X97JaDTGGJaZG+Pq6OdWKxNA/OsDbWic=
X-Google-Smtp-Source: AGHT+IElWU6dSagVaMArdUWj/kycSgihKiuVnYe8/x4SdolnqJdLSIzeYJxGEia+OYZ01HZqa3bJSw==
X-Received: by 2002:a5d:8d05:0:b0:791:7e14:4347 with SMTP id p5-20020a5d8d05000000b007917e144347mr8322642ioj.13.1692640971299;
        Mon, 21 Aug 2023 11:02:51 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:9102:8976:7620:5093])
        by smtp.gmail.com with ESMTPSA id g5-20020a5ec745000000b007791e286fdbsm2583924iop.21.2023.08.21.11.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Aug 2023 11:02:51 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Rob Herring <robh@kernel.org>,
        Alper Nebi Yasak <alpernebiyasak@gmail.com>,
        Neha Malcom Francis <n-francis@ti.com>,
        Stefan Herbrechtsmeier <stefan.herbrechtsmeier@weidmueller.com>,
        Philippe Reynes <philippe.reynes@softathome.com>,
        Peng Fan <peng.fan@nxp.com>, Simon Glass <sjg@chromium.org>
Subject: [PATCH v3 2/3] schemas: Add firmware node schema
Date:   Mon, 21 Aug 2023 12:01:16 -0600
Message-ID: <20230821180220.2724080-2-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230821180220.2724080-1-sjg@chromium.org>
References: <20230821180220.2724080-1-sjg@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
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
2.42.0.rc1.204.g551eb34607-goog

