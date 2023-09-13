Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEEDD79EEBF
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 18:41:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230391AbjIMQlV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 12:41:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231292AbjIMQka (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 12:40:30 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 117BF26BE
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 09:39:42 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1c1ff5b741cso63839185ad.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 09:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1694623181; x=1695227981; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JqR2RDc36TENwkhRWI02ORvUk5zlxgidXHuawQH9lCY=;
        b=BIAGgw1cTZ2OOUn+vlLi0iG60IuvEodzZL33i/tXt2o7dxvioQim7aIl5yZEYzfd5d
         pAzw99iG99y4e0Myl5+BJapdX1CsPUuKytor2JCb4uLL6mYvenFix2w/0IKn7U9Kypv9
         0/BODnig9jH82JeC/qqK9LQj5KIZfYgs9uvpNilgH3CPZ3dRDCSN+fbdmHdHFpoa45gC
         YFxplPTR2fGvEaDMAFuP6reTquUCkzFZaYIr7217v986w0PRxAdgShCS4XiMoW9IYO6F
         gs97FCwvyQLmD8H1Ea4S925Au6XdZjKK76GYuOLqwzVRpN27d8RUhV+zGMDB2hMzQ2Do
         CpaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694623181; x=1695227981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JqR2RDc36TENwkhRWI02ORvUk5zlxgidXHuawQH9lCY=;
        b=KUcQ+PvL927FJqLpCPPrXCDYDKyvgjRGS8Ozflvz6mwz4+0Dxl+Ja4BwJVJ8B+A/rb
         zn0ln/g0aAazCT823zFowjLiyG8uNaqsSPpu2aI5d5YqnJ2hZ00zOgO9/Zpb4L6VFTGy
         QVlsd+u0aXU3nPjy8HN5qCR3StmikZWg2wciYBNS5KAavdqk8eiSPkIjS4Tey0pFokpD
         qtZLSkq4lExZdMEcHQ4yMcThKl3VmObmq/z0ffLnDNi65n2BQU3IAe7Ixw3tAQ+9rGzH
         MABKWY6c0JIKsdtV1DBBDo5Tr6MDmoxSUMVX6obR3T11fOHMCFim05dFYyuCEcq8Etm/
         P3dg==
X-Gm-Message-State: AOJu0YyhHUKp9BgIuejLuBiAIcTfwHC9RaMhPlHtUnBj+d2z9knPeUqs
        I31J9Kl0hja9DEiIbxrO7bQK5Q==
X-Google-Smtp-Source: AGHT+IHMtbIOTfz0kRmTGyfIpfQHbUb9g1Cnj+NRQvjNsmXJk227T21iqKzhdHXAvFmjWS65dl3poA==
X-Received: by 2002:a17:902:7589:b0:1bd:bbc3:c87b with SMTP id j9-20020a170902758900b001bdbbc3c87bmr2860052pll.41.1694623181428;
        Wed, 13 Sep 2023 09:39:41 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id je15-20020a170903264f00b001b243a20f26sm10577756plb.273.2023.09.13.09.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 09:39:41 -0700 (PDT)
From:   Mayuresh Chitale <mchitale@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup@brainfault.org>
Cc:     Mayuresh Chitale <mchitale@ventanamicro.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        Conor Dooley <conor@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 2/7] dt-bindings: riscv: Add smstateen entry
Date:   Wed, 13 Sep 2023 22:09:00 +0530
Message-Id: <20230913163905.480819-3-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230913163905.480819-1-mchitale@ventanamicro.com>
References: <20230913163905.480819-1-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an entry for the Smstateen extension to the riscv,isa-extensions
property.

Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index cc1f546fdbdc..36ff6749fbba 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -128,6 +128,12 @@ properties:
             changes to interrupts as frozen at commit ccbddab ("Merge pull
             request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: smstateen
+          description: |
+            The standard Smstateen extension for controlling access to CSRs
+            added by other RISC-V extensions in H/S/VS/U/VU modes and as
+            ratified at commit a28bfae (Ratified (#7)) of riscv-state-enable.
+
         - const: ssaia
           description: |
             The standard Ssaia supervisor-level extension for the advanced
-- 
2.34.1

