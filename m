Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 096B84EFAB3
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 22:08:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348473AbiDAUKC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 16:10:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244385AbiDAUKC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 16:10:02 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AD1320A969
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 13:08:11 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id c15-20020a17090a8d0f00b001c9c81d9648so3514500pjo.2
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 13:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=subject:date:message-id:mime-version:content-transfer-encoding:cc
         :from:to;
        bh=oaVvbEqqipwHQTIf3joX3UWU9ygyYcl2y8a8ITVo6tI=;
        b=k7EeWNdpIH4WVpMJowLLTM4siPOiAyNkMqgjSycH5vsKmBkC7gr9Ro4YhGjd9mW2c5
         e2uvsu+UIhH/sVriu5walOhuwLGAa6jfbO9wAJA4E9re2XJPSyXAEifJR7JdhtxQSns6
         jsfrd9ioepD20/E7Tn76cLOHNA7YWqhQ7DQ5Mf9QQzATupE2j7LFeZmP3gT5nBvqIDrN
         +3VOtAndRkkg36h5zfyWBg2rlKeNlKhaEIn9m5WPFaKwAHGHIH0xj5m/9/L/NFBil44X
         Hg+zuOAqOcbN5etjgIZ7CNrmHGFBnZ8WS2dsAliwokqgDXCT9wWb/1wvl0rScQpwrv/Z
         gzQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:date:message-id:mime-version
         :content-transfer-encoding:cc:from:to;
        bh=oaVvbEqqipwHQTIf3joX3UWU9ygyYcl2y8a8ITVo6tI=;
        b=Sa0hWaqIzdBSPlglrRqD9oVGkmxyIn+a7hdR7xhsKuJmBHUsh2uO4T+7mT1RbAcf8W
         bzvvW45vsCnZSjILWttjyOBs2JjTC8w0aXjPzHuvUKvMTZYrVOt6S2kVGJj2KDf0e4b1
         fCQK5BwLhGrK7kTYgdqo0OIVbTdYmYGu1zKiHgsFycd5UjvpEoe781WpifhLGxHWiWwB
         tM2y/d36sqwJS1kdwmSGjQegFovvHQ/UoIXSj+srO08i7CMwLBk7gfgj6SyojNch2wUi
         1TsubHoYk+/WnGhmwPKspLljDVHyes8AlSXm7ks5oeVSWsVZy2wrbNJoVgmM54111kH2
         pXpQ==
X-Gm-Message-State: AOAM533fObHLulCz3NCpZrZPMkF5PsLDTwxldc1sHM1mgEfMRqNKfAGW
        pYSgMcNAjWwimqTpheVtUKy3DQ==
X-Google-Smtp-Source: ABdhPJwdZOxVp13ruSzXMOCgT6zwk8pQe20NJqecZkfUiDNZjB2McLUszTbrgpXIKCb6iddg5qehtA==
X-Received: by 2002:a17:90a:448d:b0:1ca:1ff6:da22 with SMTP id t13-20020a17090a448d00b001ca1ff6da22mr10772027pjg.12.1648843690487;
        Fri, 01 Apr 2022 13:08:10 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id c69-20020a633548000000b0038554192b91sm3179858pga.38.2022.04.01.13.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 13:08:08 -0700 (PDT)
Subject: [PATCH v2] dt-bindings: Fix phandle-array issues in the idle-states bindings
Date:   Fri,  1 Apr 2022 12:59:19 -0700
Message-Id: <20220401195919.17493-1-palmer@rivosinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc:     robh+dt@kernel.org, Palmer Dabbelt <palmer@rivosinc.com>,
        anup@brainfault.org, guoren@kernel.org, lorenzo.pieralisi@arm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     Rob Herring <robh@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Palmer Dabbelt <palmer@rivosinc.com>

As per 39bd2b6a3783 ("dt-bindings: Improve phandle-array schemas"), the
phandle-array bindings have been disambiguated.  This fixes the new
RISC-V idle-states bindings to comply with the schema.

Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>

---

Changes since v1:

* Only fix the RISC-V bindings, to avoid a merge conflict.
---
 .../devicetree/bindings/cpu/idle-states.yaml     | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/cpu/idle-states.yaml b/Documentation/devicetree/bindings/cpu/idle-states.yaml
index 95506ffb816c..0e89c469d0fc 100644
--- a/Documentation/devicetree/bindings/cpu/idle-states.yaml
+++ b/Documentation/devicetree/bindings/cpu/idle-states.yaml
@@ -719,8 +719,8 @@ examples:
             reg = <0x0>;
             riscv,isa = "rv64imafdc";
             mmu-type = "riscv,sv48";
-            cpu-idle-states = <&CPU_RET_0_0 &CPU_NONRET_0_0
-                            &CLUSTER_RET_0 &CLUSTER_NONRET_0>;
+            cpu-idle-states = <&CPU_RET_0_0>, <&CPU_NONRET_0_0>,
+                            <&CLUSTER_RET_0>, <&CLUSTER_NONRET_0>;
 
             cpu_intc0: interrupt-controller {
                 #interrupt-cells = <1>;
@@ -735,8 +735,8 @@ examples:
             reg = <0x1>;
             riscv,isa = "rv64imafdc";
             mmu-type = "riscv,sv48";
-            cpu-idle-states = <&CPU_RET_0_0 &CPU_NONRET_0_0
-                            &CLUSTER_RET_0 &CLUSTER_NONRET_0>;
+            cpu-idle-states = <&CPU_RET_0_0>, <&CPU_NONRET_0_0>,
+                            <&CLUSTER_RET_0>, <&CLUSTER_NONRET_0>;
 
             cpu_intc1: interrupt-controller {
                 #interrupt-cells = <1>;
@@ -751,8 +751,8 @@ examples:
             reg = <0x10>;
             riscv,isa = "rv64imafdc";
             mmu-type = "riscv,sv48";
-            cpu-idle-states = <&CPU_RET_1_0 &CPU_NONRET_1_0
-                            &CLUSTER_RET_1 &CLUSTER_NONRET_1>;
+            cpu-idle-states = <&CPU_RET_1_0>, <&CPU_NONRET_1_0>,
+                            <&CLUSTER_RET_1>, <&CLUSTER_NONRET_1>;
 
             cpu_intc10: interrupt-controller {
                 #interrupt-cells = <1>;
@@ -767,8 +767,8 @@ examples:
             reg = <0x11>;
             riscv,isa = "rv64imafdc";
             mmu-type = "riscv,sv48";
-            cpu-idle-states = <&CPU_RET_1_0 &CPU_NONRET_1_0
-                            &CLUSTER_RET_1 &CLUSTER_NONRET_1>;
+            cpu-idle-states = <&CPU_RET_1_0>, <&CPU_NONRET_1_0>,
+                            <&CLUSTER_RET_1>, <&CLUSTER_NONRET_1>;
 
             cpu_intc11: interrupt-controller {
                 #interrupt-cells = <1>;
-- 
2.34.1

