Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5356878CCD3
	for <lists+devicetree@lfdr.de>; Tue, 29 Aug 2023 21:19:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238875AbjH2TSu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Aug 2023 15:18:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239306AbjH2TSY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Aug 2023 15:18:24 -0400
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B37A11A1
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 12:18:20 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-7928ba24936so113011439f.0
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 12:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1693336700; x=1693941500; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q2EOlIsyyalVzQJ+ySIW4EY7rt0WpPcDJsD4cRWVzLc=;
        b=Y8ndFGXUdPBDqaEMrjCfmJVCjWK3Y+qe25md0YtblEBllgsSd1oPIVru37PO6prVZU
         4eqfiJEtZ4He2OXtMXrTkWUKUjXzoKVu1LfH3s94VUxIXZYxKwnpUsQv/egO0yoJp61F
         SUelLTEiNB1m9OHnbp6uqCRQNu8CQSiYzw6CQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693336700; x=1693941500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q2EOlIsyyalVzQJ+ySIW4EY7rt0WpPcDJsD4cRWVzLc=;
        b=WdVuxWD1/6btNckLw4ot4ENPPsGwxTLTQ3YpUxhj8AEYSQG3IQmOHBZG3ehJTKLF/Z
         LgDCJlG4TKC4jPsLPCTh/s2Tpz4MtoZMFVRZNgVor1CGa4BwGIxg0dKiJKpX8SgXVsql
         NU/h2ATkW7BMq7Qpb2+sPg6aRgDzpuCBu43jHn+8L8oPhcXEKGKs33JlztPjOYcKVagi
         6/cTOfHRkCtuEeljHKlctqNADn/YSEQFZMgA1TTQ0Xld+UERheHNeklZAy3BYm850DPa
         8R6hI/yj61rMa7eGbUpXZxRPsXzV8WvsWuLC/vhn+hkHmHMtPKOKsUB4I4sJURPEuYlW
         eYrQ==
X-Gm-Message-State: AOJu0Yxf88mjnCIF9cUCe6Mn3nfKt76LnwkoKG2vbFKwAcujsO2yVLra
        0q+2CAyv5P5fDrGcZy27zzr2QQ5Hk2AnPF+zNfU=
X-Google-Smtp-Source: AGHT+IHcNTUDqeWuGnguf30MnbXSWVIEQf0YgXYlNufXHWllcBHuQB7tTPrRkRrNldw414bQICnkvA==
X-Received: by 2002:a6b:a05:0:b0:795:16b8:85fc with SMTP id z5-20020a6b0a05000000b0079516b885fcmr406492ioi.0.1693336700070;
        Tue, 29 Aug 2023 12:18:20 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:16d9:c947:1a18:4c10])
        by smtp.gmail.com with ESMTPSA id fq8-20020a056638650800b004332f6537e2sm3359798jab.83.2023.08.29.12.18.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 12:18:19 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Dhaval Sharma <dhaval@rivosinc.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Gua Guo <gua.guo@intel.com>, Tom Rini <trini@konsulko.com>,
        Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        ron minnich <rminnich@gmail.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Lean Sheng Tan <sheng.tan@9elements.com>,
        Maximilian Brune <maximilian.brune@9elements.com>,
        Chiu Chasel <chasel.chiu@intel.com>,
        lkml <linux-kernel@vger.kernel.org>,
        Yunhui Cui <cuiyunhui@bytedance.com>,
        linux-acpi@vger.kernel.org, Guo Dong <guo.dong@intel.com>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 4/4] memory: Add ECC property
Date:   Tue, 29 Aug 2023 13:18:09 -0600
Message-ID: <20230829191812.135759-4-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.rc2.253.gd59a3bf2b4-goog
In-Reply-To: <20230829191812.135759-1-sjg@chromium.org>
References: <20230829191812.135759-1-sjg@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some memories provides ECC correction. For software which wants to check
memory, it is helpful to see which regions provide this feature.

Add this as a property of the /memory nodes, since it presumably follows
the hardware-level memory system.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v3)

Changes in v3:
- Add new patch to update the /memory nodes

 dtschema/schemas/memory.yaml | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/dtschema/schemas/memory.yaml b/dtschema/schemas/memory.yaml
index 1d74410..981af04 100644
--- a/dtschema/schemas/memory.yaml
+++ b/dtschema/schemas/memory.yaml
@@ -34,7 +34,14 @@ patternProperties:
         description:
           For the purpose of identification, each NUMA node is associated with
           a unique token known as a node id.
-
+      attr:
+        $ref: /schemas/types.yaml#/definitions/string-array
+        description: |
+          Attributes possessed by this memory region:
+
+            "single-bit-ecc" - supports single-bit ECC
+            "multi-bit-ecc" - supports multiple-bit ECC
+            "no-ecc" - non-ECC memory
 
     required:
       - device_type
-- 
2.42.0.rc2.253.gd59a3bf2b4-goog

