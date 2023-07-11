Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3920374FB57
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 00:53:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231202AbjGKWxW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 18:53:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230360AbjGKWxW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 18:53:22 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 681A2E60
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 15:53:21 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-666fb8b1bc8so5675284b3a.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 15:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1689116001; x=1691708001;
        h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
         :subject:from:to:cc:subject:date:message-id:reply-to;
        bh=QwQpJzgOUtDm0Mu+AsWoTryCpdZUtLIqv4DVHt8QxO4=;
        b=z8OmnTr0seCS26jvOPONBDjhlxJTZYePUhOFpMD0l5VMa3ErlifqcJ4QaapybuHXkt
         JnK0MktPO569YHoUhsD8H7qud2qebEfQpVsUqQnLcj/OZoiw/JXajoEiy9rmOXcW3CZk
         lZ/zoNt4HwMip8aZUm87KsjPhegzRscHZQ17VSNh/vHt1GbaGPYdelRmugrcWFLCxje1
         2q8bNRvWn2vHQaj0bXeRfk44RLjyabxkjzoHy+H1zHcRtUewurb2SDNZfuMGibbb1++2
         MVmP9QiJkf7sbTPh54r+wsU1yTT7jCbMKVOCxT4U1xvyqGS/4PDpAB9m9xc9/wgQt4Pr
         eSzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689116001; x=1691708001;
        h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
         :subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QwQpJzgOUtDm0Mu+AsWoTryCpdZUtLIqv4DVHt8QxO4=;
        b=AtluEqpMS5drl6tqW/ys7l/V4End6Sncoz4OWVE5GA5asPP1snvscwWoSAT1xV3PPQ
         9gGYupR8NGkcdiV3vP/O/6SjvZLQMJT2pVv7/lIOT2z9jmq6TSeG2xZsvWmDcCOVtSa1
         QfmK24KJmt+QohNYR7JHLqU37EHAmc7tz+owMuMMbUpEbosKdDl8RgPpD/o/FwGTcdLa
         B1WGurUIprp1ukWy1KgUgSGmvX7xTvR3B6xg1dgbDDkWDit82aPykFN+cfp8yLPyr6+u
         CNpLubc24zxWH4m5JJk0kIjq34tniQsZuvcTfubZozI+H8XoUPClFf8fwwjph6C2Fy8W
         ZBWA==
X-Gm-Message-State: ABy/qLYVSOMg9ZjIdMCa+qBH4eNfdLUntPxnoSjeBFqKHX2GpyMaRvlk
        Jgqz3Xh5cWYN2QXdS7ZZwtzjTw==
X-Google-Smtp-Source: APBJJlHpt3AxdwD8vqEhRMiXiTRwfVDLLIQ4wgIZMwTDewDv/hdFpdAz//llB0udmZbexy4ztwb1fQ==
X-Received: by 2002:a05:6a00:39a9:b0:667:e17e:85b7 with SMTP id fi41-20020a056a0039a900b00667e17e85b7mr20232495pfb.1.1689116000734;
        Tue, 11 Jul 2023 15:53:20 -0700 (PDT)
Received: from localhost ([50.38.6.230])
        by smtp.gmail.com with ESMTPSA id x13-20020aa784cd000000b00682a61fa525sm2280872pfn.91.2023.07.11.15.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 15:53:20 -0700 (PDT)
Subject: [PATCH] dt-bindings: RISC-V: Re-word the I extension binding
Date:   Tue, 11 Jul 2023 15:52:12 -0700
Message-Id: <20230711225212.11542-1-palmer@rivosinc.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc:         linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
            Palmer Dabbelt <palmer@rivosinc.com>
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     Conor Dooley <conor@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I'd argue this changes the definition of the I binding, as there was
more than just the counters that got split out (CSRs and fence.i at
least).  We haven't released these bindings yet, so IIUC it's OK to
change the definition still.

I think this matches the original intent, or at least what the
implementation does.

Fixes: aeb71e42caae ("dt-bindings: riscv: deprecate riscv,isa")
Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
---
 .../devicetree/bindings/riscv/extensions.yaml        | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index cc1f546fdbdc..31ec244bd32f 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -67,13 +67,11 @@ properties:
       anyOf:
         # single letter extensions, in canonical order
         - const: i
-          description: |
-            The base integer instruction set, as ratified in the 20191213
-            version of the unprivileged ISA specification.
-
-            This does not include Chapter 10, "Counters", which was moved into
-            the Zicntr and Zihpm extensions after the ratification of the
-            20191213 version of the unprivileged specification.
+          description:
+            The base integer instruction set, as specified by the 2.2
+            version of the unprivileged ISA specification, formally known as
+            the user-level ISA.  This definition of I includes various
+            extensions that were later split out.
 
         - const: m
           description:
-- 
2.40.1

