Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52543779A05
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 23:57:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235160AbjHKV5v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 17:57:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234637AbjHKV5t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 17:57:49 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAD172728
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 14:57:47 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id e9e14a558f8ab-3491a8e6fd1so8935115ab.3
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 14:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691791067; x=1692395867;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pgi0USfgZROfAox11PeNdbrO73IbaW7Wh8C9KTll2sw=;
        b=Cw7fDNGT81d/UFc4oqBNqQ05sKviQ19wQWMN80YgSHc8etJrSxACGadoZmbKPAKJsa
         HrxI+DnPvm1B7esya3+sDqw6sIPzjOpW/z3fbQRfsI17Eh3g/b0LI5rs21ThjBapgixS
         2LdMc2Rwms4csukzFfQhNpf/NNVNogXpScvww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691791067; x=1692395867;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pgi0USfgZROfAox11PeNdbrO73IbaW7Wh8C9KTll2sw=;
        b=cQHQhDZuRmqGSznitKO1gFspTyeEougTIhJ7gPnYFYnyn5Ho+QOTQyS3KUuDl9ZnI+
         IJl9tjuRw3jIKosiM3zzO0qiVOCLWIQnmqSyHtMkeuq6IvL1qgmlqzm+lb2/7/WpEXEg
         KwBinIojJzg/7bGwzPc+GJ1AsA/vdKrqvA7YbzTJmIBMtFGtV382i+krMJ0Drw7ngapz
         Ux6NJFe8Z5jbtVYg+prX+0wPdm0tBSpDc4g5NoLizGymXcZIWJ8eGbd3uuKel/rmsf54
         7i12g7Xub4oNUzRRp9FVVIfWhgAmeKvCbGHRReSK968lyJ1b9sK1/cpDGclzAl7FsJ5D
         r49w==
X-Gm-Message-State: AOJu0Yzft5eNtRasTyIdbq2XsHM6burheSM3Akdd9Bsye/C1wLgYrASl
        PnBGsFASYcWp0sPAivB9P2RB2EX2NK+1OUTl0D8=
X-Google-Smtp-Source: AGHT+IFr2iJZXWinT40Ianl6EpWTtTqvn2xbO/YS8q702iKoXzXYpiuq0zAXXmSo49RLtOCk/53vYg==
X-Received: by 2002:a05:6e02:1083:b0:348:8da1:891c with SMTP id r3-20020a056e02108300b003488da1891cmr3076281ilj.24.1691791067058;
        Fri, 11 Aug 2023 14:57:47 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:653a:2ace:5c03:a67d])
        by smtp.gmail.com with ESMTPSA id w12-20020a92c88c000000b00348fae8a5b5sm1413634ilo.42.2023.08.11.14.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 14:57:46 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Gua Guo <gua.guo@intel.com>,
        Lean Sheng Tan <sheng.tan@9elements.com>,
        Tom Rini <trini@konsulko.com>,
        Chiu Chasel <chasel.chiu@intel.com>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH] schemas: Add a schema for memory map
Date:   Fri, 11 Aug 2023 15:57:41 -0600
Message-ID: <20230811215743.3111594-1-sjg@chromium.org>
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

The Devicespec specification skips over handling of a logical view of
the memory map, pointing users to the UEFI specification.

It is common to split firmware into 'Platform Init', which does the
initial hardware setup and a "Payload" which selects the OS to be booted.
Thus an handover interface is required between these two pieces.

Where UEFI boot-time services are not available, but UEFI firmware is
present on either side of this interface, information about memory usage
and attributes must be presented to the "Payload" in some form.

This aims to provide an initial schema for this mapping.

Note that this is separate from the existing /memory and /reserved-memory
nodes, since it is mostly concerned with what the memory is used for. It
may cover only a small fraction of available memory, although it could be
used to signal which area of memory has ECC.

For now, no attempt is made to create an exhaustive binding, but this can
be completed once this has passed initial review.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 dtschema/schemas/memory-map.yaml | 51 ++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 dtschema/schemas/memory-map.yaml

diff --git a/dtschema/schemas/memory-map.yaml b/dtschema/schemas/memory-map.yaml
new file mode 100644
index 0000000..97e531e
--- /dev/null
+++ b/dtschema/schemas/memory-map.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: BSD-2-Clause
+# Copyright 2023 Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-map.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: /memory-map nodes
+description: |
+  Common properties always required in /memory-map nodes. These nodes are
+  intended to resolve the nonchalant clause 3.4.1 ("/memory node and UEFI")
+  in the Devicetree Specification.
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+properties:
+  $nodename:
+    const: '/'
+  usage:
+    $ref: /schemas/types.yaml#/definitions/string
+    description: |
+      Describes the usage of the memory region, e.g.:
+
+        "acpi-reclaim", "acpi-nvs", "bootcode", "bootdata", "bootdata",
+        "runtime-code", "runtime-data"
+  attr:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description: |
+      Attributes possessed by this memory region:
+
+        "single-bit-ecc" - supports single-bit ECC
+        "multi-bit-ecc" - supports multiple-bit ECC
+        "no-ecc" - non-ECC memory
+
+patternProperties:
+  "^([a-z][a-z0-9\\-]+@[0-9a-f]+)?$":
+    type: object
+    additionalProperties: false
+
+    properties:
+      reg:
+        minItems: 1
+        maxItems: 1024
+
+    required:
+      - reg
+
+additionalProperties: true
+
+...
-- 
2.41.0.694.ge786442a9b-goog

