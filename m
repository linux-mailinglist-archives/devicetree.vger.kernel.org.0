Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11CBD68C761
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 21:15:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbjBFUPw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 15:15:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229899AbjBFUPt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 15:15:49 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2ABE29E20
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 12:15:34 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id j1so6862108pjd.0
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 12:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ggzc1GTHoLiBAu4kfMHEm/fbizYyfDbBZlVMBkPr/K4=;
        b=LJTUsmkjEjxAWc1IoFf2wxj/67dVsvTcPqb/jJBjxsyqYyVz3ScQAmEmLk7rLdnoH2
         0G+w1w7rUgLxoJG6JGeK3oBnyoikVbeT2iqgsNILC3XuFyOKGDcmP6bbCSZGhfVOECgU
         3sXnzYhBeGAERqormKcypgWG9XWhAAPUpOh4F6QyBmnObP3SI24BGHjffKmGOd2C6h6M
         nFlREjaXPwWSA4WBnjQF1PYXsDM8gl0fe+zFGdgbvHUSF0tQ9pj4/mXQRf2gDg9e6iTA
         ZA4SYFH9Hgm45V+ECqXetPqrjaeYznz677JdCHLdnP+AJ8p2xJmxcea26IMGvNKEjbXU
         86dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ggzc1GTHoLiBAu4kfMHEm/fbizYyfDbBZlVMBkPr/K4=;
        b=ge/pKejFEKWXU1usumIz/Ah5JoW6/bhFawJvMNRSCyXazEkMwtqaW5foPNy99uVD9Z
         X+DD45dWbKykOQq/0e0jE6aOIddRPH2GYNtIr5o/bDI857XAyNWEIX1qr7o6HUo8HmL0
         sa7AnFN4ArDiv8l06NHqT37T7KKlaq6I/S1HIqoN+oC+lNd9DpRWwXH7Ss1gNKcaXxCD
         zwBC2/tQQl/QmjN1PyD8E1GOpAQRBYaot8VrIucZMORnh5fxwJ4ti5OZqYH4rWTcyusF
         soVRNt9hgfJJmQCuKu+axovx4Lx26jjHjc1Q7JiV6cjzHPh50S/CDBbUerPp3bxe8PLD
         tXrQ==
X-Gm-Message-State: AO0yUKXma8XJ1Nh7Os2FZO6BUuTjkxwqGlGXM7u0jmn7/0xbSuXRE0eA
        dhTcizZng4WywFKzlazc/3g4+A==
X-Google-Smtp-Source: AK7set/bTb9lu1cNF6xPBp2fVUYIdNuGgf1zzRTNh18SIWd68l70lafUBIHe2ViUvh3qp2wqLmLP9w==
X-Received: by 2002:a17:90a:54:b0:230:acb2:e3f0 with SMTP id 20-20020a17090a005400b00230acb2e3f0mr840256pjb.33.1675714534354;
        Mon, 06 Feb 2023 12:15:34 -0800 (PST)
Received: from evan.ba.rivosinc.com ([66.220.2.162])
        by smtp.gmail.com with ESMTPSA id k10-20020a63ab4a000000b004df4fbb9823sm6425079pgp.68.2023.02.06.12.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 12:15:33 -0800 (PST)
From:   Evan Green <evan@rivosinc.com>
To:     Palmer Dabbelt <palmer@rivosinc.com>
Cc:     Conor Dooley <conor@kernel.org>, vineetg@rivosinc.com,
        heiko@sntech.de, slewis@rivosinc.com,
        Evan Green <evan@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 4/6] dt-bindings: Add RISC-V misaligned access performance
Date:   Mon,  6 Feb 2023 12:14:53 -0800
Message-Id: <20230206201455.1790329-5-evan@rivosinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230206201455.1790329-1-evan@rivosinc.com>
References: <20230206201455.1790329-1-evan@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Palmer Dabbelt <palmer@rivosinc.com>

This key allows device trees to specify the performance of misaligned
accesses to main memory regions from each CPU in the system.

Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
Signed-off-by: Evan Green <evan@rivosinc.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/riscv/cpus.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index c6720764e765..2c09bd6f2927 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -85,6 +85,21 @@ properties:
     $ref: "/schemas/types.yaml#/definitions/string"
     pattern: ^rv(?:64|32)imaf?d?q?c?b?v?k?h?(?:_[hsxz](?:[a-z])+)*$
 
+  riscv,misaligned-access-performance:
+    description:
+      Identifies the performance of misaligned memory accesses to main memory
+      regions.  There are three flavors of unaligned access performance: "emulated"
+      means that misaligned accesses are emulated via software and thus
+      extremely slow, "slow" means that misaligned accesses are supported by
+      hardware but still slower that aligned accesses sequences, and "fast"
+      means that misaligned accesses are as fast or faster than the
+      cooresponding aligned accesses sequences.
+    $ref: "/schemas/types.yaml#/definitions/string"
+    enum:
+      - emulated
+      - slow
+      - fast
+
   # RISC-V requires 'timebase-frequency' in /cpus, so disallow it here
   timebase-frequency: false
 
-- 
2.25.1

