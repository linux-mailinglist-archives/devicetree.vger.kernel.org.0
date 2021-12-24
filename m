Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5730247F12E
	for <lists+devicetree@lfdr.de>; Fri, 24 Dec 2021 22:16:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344392AbhLXVQu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Dec 2021 16:16:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353554AbhLXVQt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Dec 2021 16:16:49 -0500
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A310C061401
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 13:16:49 -0800 (PST)
Received: by mail-qk1-x733.google.com with SMTP id l11so9127122qke.11
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 13:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=E7A0C8rVZs2QRJZNzs755J1B2170BxsQoRwKwZ1LCd0=;
        b=aCBQJO8y74WvDSbU/2B1LveeqjispKwyXm1o/7+/WPVuwFqZ02UmHm7hzcCx89gc5A
         9J6+kCe36praG3MbMC+uTZKs5NIwHqBBk7OUF495bM3a/IwWR71MXfHNe1Za5Zpvbos7
         NydMZ0A7209w9tpH/Z6Y5QKtcmFlVeIdlI06I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=E7A0C8rVZs2QRJZNzs755J1B2170BxsQoRwKwZ1LCd0=;
        b=u0tSQSSO8nDsXK5IZ6rcPkCIZnZN8qpa1THzJFqmn7YDpwdRAxKFWrHOpSpwAE0eHU
         d1yTHRkOkDZdrC3XB8A1CQJb4CryxDGYgP3EiZBngDqeeOrrWXKyTerrR4Q47zXw+8L5
         Q1izWkqNICq3MLe+A/+6RpNgOljznqldyXAJx1biJugXRUyqPWbTjQ3bAPdIC3LKHFSv
         Yb2c8soYsMxw/0SX9tFRf4wVRBgymonXWwOBtLpupaUHkEiQAQzlIrOQPVmyq8jeqkwS
         vbROTr5ZjKMcgsPu9WRZfpfnWFYQ/wW7bLWih3s1YQP0x4izhkHXECfXyraRFpyH04RX
         PBWw==
X-Gm-Message-State: AOAM533+aevXtecAEAbHr5saAwH+zXrgaYF2EvztqUk0/V1ybpDsD68q
        295A+OZxbDk1E4OGPdABghEo
X-Google-Smtp-Source: ABdhPJzNBJqRVH9StZ+KSjtDqfw+M9wX5zkuBVKyUeUUW4V7z0QeVHE+OkjlfrQyONyEumZsqvZ56w==
X-Received: by 2002:a37:9b82:: with SMTP id d124mr5747342qke.487.1640380608526;
        Fri, 24 Dec 2021 13:16:48 -0800 (PST)
Received: from fedora.. (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id m15sm7661069qkp.76.2021.12.24.13.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Dec 2021 13:16:48 -0800 (PST)
From:   Atish Patra <atishp@atishpatra.org>
X-Google-Original-From: Atish Patra <atishp@rivosinc.com>
To:     linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1 2/2] dt-bindings: riscv: Add DT binding for RISC-V ISA extensions
Date:   Fri, 24 Dec 2021 13:16:32 -0800
Message-Id: <20211224211632.1698523-3-atishp@rivosinc.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211224211632.1698523-1-atishp@rivosinc.com>
References: <20211224211632.1698523-1-atishp@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RISC-V ISA extensions can be single letter or multi-letter names.
The single letter extensions are mostly base extensions and encoded in
"riscv,isa" DT property. However, parsing the multi-letter extensions
via the isa string is cumbersome and is not scalable.

Add a new DT node for multi-letter extensions.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index aa5fb64d57eb..6c4eecf389a9 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -78,6 +78,15 @@ properties:
       - rv64imac
       - rv64imafdc
 
+  riscv,isa-ext:
+    description:
+      Identifies the specific RISC-V instruction set architecture extensions
+      supported by one or multiple harts. All the multi-letter extensions
+      should be listed here as a boolean property. This subnode can be under
+      /cpus or under individual cpu node. In case of former, it represent
+      the common ISA extensions for all harts. The name of the boolean property
+      must match the actual ISA extension name in all lowercase format.
+    $ref: "/schemas/types.yaml#/definitions/boolean"
   # RISC-V requires 'timebase-frequency' in /cpus, so disallow it here
   timebase-frequency: false
 
-- 
2.33.1

