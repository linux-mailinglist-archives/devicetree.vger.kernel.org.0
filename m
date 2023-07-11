Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6241574F9A1
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 23:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229538AbjGKVSS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 17:18:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjGKVSR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 17:18:17 -0400
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98203133
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 14:18:16 -0700 (PDT)
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-78654448524so195444539f.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 14:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689110296; x=1691702296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k314+bKVevYt7P2bmYESH0/CDJZAJn2TAqwcuR3q6NI=;
        b=g2MIxxjbC48f7ehOPaRwlAQG4YsW4/LvLqxHkeHPfXi5WyGAkXxkta8vtfY3lv2WEi
         /ovs+k9V/dYB9+0N3FriPVs7ZXgcNoN6Iayhv0ltfQr5pfgDskqAKBuQRSEz4BHcQ3kP
         2ugtNqNMpaEPWeFij/1hHMJJ4PHghi+hoWfMU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689110296; x=1691702296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k314+bKVevYt7P2bmYESH0/CDJZAJn2TAqwcuR3q6NI=;
        b=d9LIznvTgx9sjriZdflO0WgeXV3Uxe8z69vDEVVNwDKk/X/jnCzzzON3lZoKKKXhKt
         J3BtUHXC552AFT5eo7wZ9O81e2apRQM92vuCFuaX72+Ps+XLi7+3FNoNfQpCD7E+Hihp
         mYT4j39NgmyC07/pFZ6Q5DfqTH76tW3KsNmT8KpqaCLYUTbgdHh3xva7F28xzaXkVH/U
         90QpxckSpKDoTJrTvF5M+LRr+d9grs7aJTztPLiistnfY0wCzqu3XgppvDY2nFsMSutq
         ooVnodcTznDNIQj7dCrIYW4kp2cwdUHrO2sOp2P7guJBxsykriuwsQAPoeP8DomZnOvS
         3/sg==
X-Gm-Message-State: ABy/qLYubsInZYH6jWTySYXkX7Y9IXJNY9rvUZ6Qm94t9mea2ZI9EhxF
        Fl45mzLGotd2p+PlDAvsN/XIlJrs6+yfsJoaWzQ=
X-Google-Smtp-Source: APBJJlH/d18cQ208pLVJMsYw4rONw5vZ6dszkeFZ8o7TKXylOJH1qV6NEzEkVdxJJKxdCxopdSOKaQ==
X-Received: by 2002:a5d:9bd0:0:b0:786:cd9b:1ccd with SMTP id d16-20020a5d9bd0000000b00786cd9b1ccdmr17844708ion.0.1689110295832;
        Tue, 11 Jul 2023 14:18:15 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:d311:4db9:a093:9b10])
        by smtp.gmail.com with ESMTPSA id i10-20020a02b68a000000b004290fd3a68dsm782774jam.1.2023.07.11.14.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 14:18:15 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH 1/2] schemas: Add firmware node schema
Date:   Tue, 11 Jul 2023 15:18:07 -0600
Message-ID: <20230711211810.4172447-1-sjg@chromium.org>
X-Mailer: git-send-email 2.41.0.255.g8b1d071c50-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a motivation and purpose for this new proposed node.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

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
2.41.0.255.g8b1d071c50-goog

