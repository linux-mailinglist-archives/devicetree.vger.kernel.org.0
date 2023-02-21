Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C312E69E817
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 20:10:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229997AbjBUTJ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 14:09:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230011AbjBUTJt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 14:09:49 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BB7F2FCC4
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:34 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id bh1so6166229plb.11
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h4Uz8oInxrBVxdaNnCcRWzHNxIOpRGtwNCns0Csq24o=;
        b=5CAoJgBaxdsOsjJt2ARXvUAXbErBCB8xjhCRl/00BIB0m+EhiyRU3XZSidGXeE83LK
         +FRtmHOsemIRPQ/ytDa3xi5xQubu32PfYgOv1GgPMlj8GBuwVt+RKxxhFTTWQgWjLJbH
         yVO3GZ6Dl6SpXYXL2PGhBsRPKRHAhmrU/mwngeMnCLv+FnBGjy3WnIrrSyPN0GYSZyeo
         jlCTpaCtDtXLMs75oLfPUTbR6nm5b9ZUPk1JPx7ptYDFvYWEZy841oLGvuf8Tn0KoTed
         qy2eDXvLc8W845c/ngN141rjsv76Zdue6P6r4RixeblK422nJLdTcHMc3EqqMVYNZDZP
         9Iwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h4Uz8oInxrBVxdaNnCcRWzHNxIOpRGtwNCns0Csq24o=;
        b=ry6Bo47Rv7MvEKN15rheKFWlzGgEyZGYhnlrSgpPSB6ztxoY3gWJUBCa3zVUK3iM4G
         /5OgHom7nAeOtgk5tRfSg4LF3dYcvCZKQm+oDXS83yOLwbjN4rmGJRle5jYavbpQ9nlx
         X2aXHdNi1pRNXmlGyFpXEXhpJBsCbupqgEpTDNdqMwxcVB48VwiNmAmOsvKiBdt55zts
         ySb48CXMfQ3RXZxbaOZxJxliZNn7a2Of4/voegFEWy0ooUE+/nlTOezH66AxDPqHA8/t
         CDkqgzRmGCbzmfuhOxjbFi/sIUqvYGZuWnOHWZRMXk+L+FSxcaBxEpPKIurS/bfwsf+y
         PniA==
X-Gm-Message-State: AO0yUKUyACRA8SaJrbZNCP2bAOlwCp+0QtjxoKCe/80OBScpT13j558i
        25LoEVFnzMqldibuPEX/sFAVvg==
X-Google-Smtp-Source: AK7set+it96+69j6MVRhBhTTnrkru5X6NVtEvUnH9vgxsurcSiwoU7po5lf6y/VdEVorq3aQjAMmjw==
X-Received: by 2002:a17:902:c407:b0:19b:dbf7:f9d1 with SMTP id k7-20020a170902c40700b0019bdbf7f9d1mr6464689plk.37.1677006573615;
        Tue, 21 Feb 2023 11:09:33 -0800 (PST)
Received: from evan.ba.rivosinc.com ([66.220.2.162])
        by smtp.gmail.com with ESMTPSA id b16-20020a170902b61000b0019602b2c00csm1583863pls.175.2023.02.21.11.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 11:09:33 -0800 (PST)
From:   Evan Green <evan@rivosinc.com>
To:     Palmer Dabbelt <palmer@rivosinc.com>
Cc:     heiko@sntech.de, Conor Dooley <conor@kernel.org>,
        slewis@rivosinc.com, vineetg@rivosinc.com,
        Evan Green <evan@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v3 4/7] dt-bindings: Add RISC-V misaligned access performance
Date:   Tue, 21 Feb 2023 11:08:55 -0800
Message-Id: <20230221190858.3159617-5-evan@rivosinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230221190858.3159617-1-evan@rivosinc.com>
References: <20230221190858.3159617-1-evan@rivosinc.com>
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

Changes in v3:
 - Added | to description: to make dt-checker happy.

 Documentation/devicetree/bindings/riscv/cpus.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index c6720764e765..f79e9e5c5ee9 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -85,6 +85,21 @@ properties:
     $ref: "/schemas/types.yaml#/definitions/string"
     pattern: ^rv(?:64|32)imaf?d?q?c?b?v?k?h?(?:_[hsxz](?:[a-z])+)*$
 
+  riscv,misaligned-access-performance:
+    description: |
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

