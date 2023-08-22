Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8441C784B7C
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 22:35:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231140AbjHVUfE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 16:35:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231138AbjHVUfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 16:35:01 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E635CFC
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 13:34:59 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id ca18e2360f4ac-7909307ecd1so167944239f.1
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 13:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692736498; x=1693341298;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IAoCNyZqfvnfH/0/0Sp/bNbHBZV5FWrs/u1Wpi/L2lY=;
        b=LT5Eqx/qlnBPzXAqQIgggqVZHv+YCKJ+0iWbylurX1QFNVV18FyFBIyuIoD9FU/0eg
         0JUuimV6sFdex20VLm+bcsgHJ+a542gNwqwX/Kwr6lWylmlmK92K8pIIXEi6OlaEv7au
         a/wps5s1f+rdlw80rXaimfr2ZjQyq39JTggvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692736498; x=1693341298;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IAoCNyZqfvnfH/0/0Sp/bNbHBZV5FWrs/u1Wpi/L2lY=;
        b=Li6izMH/63CKbQ7L7QUYiIh7YDOIOL5TEuh+8qLQmiDPJEwzLDpAMchOuxs8Ba4z32
         0W4olNstLGz6bkycIl5WpJ0AP5Pec3gUL8VlgXUXhYHxywvVX2ZymPZNn4wGAOjrHL2Z
         QHlPL502HlUPtmgRfWfxgIsn+FP1H7PGiOTGJu4Bmv46kpLNM+CM80x7lBQDiYkI3qF1
         vlnBWlbblhnqkTCMsKtNOG46MdcclHs2UKCuLZDfhq064uaL8Z3/KjdDjpJllwOlF2Dg
         Dodt12ZxOqcJes14h9nPtEAi2b1FFqDtN+N+4UmTkzv33ms1GyROsZ6KXyhUroog9khC
         CR4w==
X-Gm-Message-State: AOJu0YxplRIKtrEGdopM8i1tpl7X5zyEFiUUJe/I3vF50nb1EOJb4lbO
        DySzPyXq1+/v+hafTpeq5B6lXtpIQH2Nft/vn7A=
X-Google-Smtp-Source: AGHT+IGrtcKkLUDbfM2/xR8cobFWMcEKBMWgBL9b5Nhq1+ovWu1dKbVkA9ITN/X9uDBnaMJz55KHKg==
X-Received: by 2002:a6b:dd08:0:b0:783:3899:e1d0 with SMTP id f8-20020a6bdd08000000b007833899e1d0mr1007976ioc.6.1692736498725;
        Tue, 22 Aug 2023 13:34:58 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:b7f:10f7:eb5:da54])
        by smtp.gmail.com with ESMTPSA id s20-20020a5eaa14000000b0078754bed499sm3500745ioe.37.2023.08.22.13.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Aug 2023 13:34:57 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Chiu Chasel <chasel.chiu@intel.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Gua Guo <gua.guo@intel.com>, linux-acpi@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>,
        Yunhui Cui <cuiyunhui@bytedance.com>,
        ron minnich <rminnich@gmail.com>,
        Tom Rini <trini@konsulko.com>,
        Lean Sheng Tan <sheng.tan@9elements.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH v3 2/2] memory: Add ECC property
Date:   Tue, 22 Aug 2023 14:34:43 -0600
Message-ID: <20230822203446.4111742-2-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230822203446.4111742-1-sjg@chromium.org>
References: <20230822203446.4111742-1-sjg@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
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
2.42.0.rc1.204.g551eb34607-goog

