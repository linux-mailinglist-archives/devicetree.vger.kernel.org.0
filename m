Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05434797E0A
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 23:40:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239586AbjIGVkX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 17:40:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239675AbjIGVkV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 17:40:21 -0400
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB38D1BD6
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 14:40:17 -0700 (PDT)
Received: by mail-il1-x12a.google.com with SMTP id e9e14a558f8ab-34f2d7c1bc8so5528985ab.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 14:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1694122817; x=1694727617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b5daRRTdLNlkY+bK37VVR4v3WldsBabAY6GSX8MwLbs=;
        b=OyHT13bXBPctSXjNAl3OPDab+bC4pZcxqmpQSrIhCcnms4Q/6xZslH2mCIu18Y2B88
         gIMYlOKZwBIqs+J4s9Tuyg50W0gq1o4pGmgG22MfvpqiVVEVKZgUjI6NLELZGdbosczf
         6RoVT7/ihB0VLbbdHcFMBx14PUAZu1RMRWC/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694122817; x=1694727617;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b5daRRTdLNlkY+bK37VVR4v3WldsBabAY6GSX8MwLbs=;
        b=wlzv9/x/QD9zruI03jNv84y6edk327u26ybSF9gDetO28NGQgQC7B/Ckwbmu1ihYEk
         K2dNDx0/QrdKFHOEP3xsjpcd5VoAYYA0tZJrRDkSsn7+ZFe8ME5gX2mkBF6SJqfA7O3J
         0ZeP/zdk93XlqN2+6vtK8ILuOP8eWnNgsTdhyWH0A08VAJFP64W+biML2iFhLUnYpjeN
         VvbdVecpGmjvWZ58wZGnO68eMfqlCxFy86hEx4xwQnI/g6d9ANC7+DvA15gQNiEm+Wb0
         LoFJIWeDloF0cAYckrodvBXOupzR3zKK9auG6TI2MtjriWGHmf6RBIzqU2/F21J2jBfe
         jJTA==
X-Gm-Message-State: AOJu0YxBuZ3ukZn96T18Rtp6WgZZO0hOp4MGIPBbP0Eug28DIj/YxZun
        o1pAtDYx81Iu7w7D9KAUr0CJzszWsfKIvKRCz5peeQ==
X-Google-Smtp-Source: AGHT+IEOo9i8+AV7SDMWoVUID/hLd8I+L2Kc4qthbyfM9QnHCrPKzqJp7ucAuhasGZkxp4mk+KwwGw==
X-Received: by 2002:a05:6e02:219b:b0:34a:c751:28ca with SMTP id j27-20020a056e02219b00b0034ac75128camr1176329ila.15.1694122817229;
        Thu, 07 Sep 2023 14:40:17 -0700 (PDT)
Received: from sjg1.lan (c-73-243-118-188.hsd1.co.comcast.net. [73.243.118.188])
        by smtp.gmail.com with ESMTPSA id x14-20020a92d30e000000b00348edca2abesm72006ila.47.2023.09.07.14.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 14:40:17 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Dhaval Sharma <dhaval@rivosinc.com>, Guo Dong <guo.dong@intel.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Yunhui Cui <cuiyunhui@bytedance.com>,
        Chiu Chasel <chasel.chiu@intel.com>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-acpi@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Maximilian Brune <maximilian.brune@9elements.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Tom Rini <trini@konsulko.com>,
        Lean Sheng Tan <sheng.tan@9elements.com>,
        Gua Guo <gua.guo@intel.com>, ron minnich <rminnich@gmail.com>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH v6 2/2] schemas: memory: Add ECC properties
Date:   Thu,  7 Sep 2023 15:40:11 -0600
Message-ID: <20230907214012.74978-2-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.283.g2d96d420d3-goog
In-Reply-To: <20230907214012.74978-1-sjg@chromium.org>
References: <20230907214012.74978-1-sjg@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some memories provide ECC detection and/or correction. For software which
wants to check memory, it is helpful to see which regions provide this
feature.

Add this as a property of the /memory nodes, since it presumably follows
the hardware-level memory system.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v6:
- Use a number of bits instead of a string property
- Fix inidcates typo

Changes in v5:
- Redo to make this property specific to ECC
- Provide properties both for detection and correction

Changes in v3:
- Add new patch to update the /memory nodes

 dtschema/schemas/memory.yaml | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/dtschema/schemas/memory.yaml b/dtschema/schemas/memory.yaml
index 1d74410..1a48b1c 100644
--- a/dtschema/schemas/memory.yaml
+++ b/dtschema/schemas/memory.yaml
@@ -31,10 +31,21 @@ patternProperties:
 
       numa-node-id:
         $ref: types.yaml#/definitions/uint32
-        description:
+        description: |
           For the purpose of identification, each NUMA node is associated with
           a unique token known as a node id.
-
+      ecc-detection-bits:
+        default: 0
+        description: |
+          If present, this indicates the number of bits of memory error which
+          can be detected and reported by the Error-Correction Code (ECC) memory
+          subsystem (typically 0, 1 or 2).
+      ecc-correction-bits:
+        default: 0
+        description: |
+          If present, this indicates the number of bits of memory error which
+          can be corrected by the Error-Correction Code (ECC) memory subsystem
+          (typically 0, 1 or 2).
 
     required:
       - device_type
-- 
2.42.0.283.g2d96d420d3-goog

