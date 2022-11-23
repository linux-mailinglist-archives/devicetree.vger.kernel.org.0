Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A46736368FE
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 19:34:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239772AbiKWSeG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 13:34:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238570AbiKWSdk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 13:33:40 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9DE670A1B
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:33:10 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id w23so17375154ply.12
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6j5mqKn84eUJHlTVhgt/r0hsiKO0EwT4B6+zjNhs7Eg=;
        b=hgftC162d1sc+SYpWOx2nKPuIy5gGpGTWHa/Gfy458NvmR/dgAq39uS6CnJQCL/jAp
         62dC9dLKDwBA9cX0gzqS9+PfikZBBT2Gp5afxBgAKDMYdEgn2wpyfND38StCB6yEWTUp
         0Vo4DPtooPRUy+/Mt7qFTx2yWL0qEPw6kMa0HQFoYoZrEp3mq6rk/k9gxmMoQdku2UOe
         J6rUHDfvdKP/X8Hw0PB0MVy4X3LqTMyGEeKhDONUDOK2VmMYRFo8lLI9NnRx3RJPy5aF
         HWjyFF0X7ertEVYt+lhLs8PdhihcqqNrougk1cqlDFoQWTIWmBZhCecvPFsm0u+uM8ze
         rppg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6j5mqKn84eUJHlTVhgt/r0hsiKO0EwT4B6+zjNhs7Eg=;
        b=A9qYIBeeaBJrWLOyPJ3AIVEVCoocB4zhJ6dfqpsS3hktEIXkTN4+yMH5FiPH6Z4wB9
         P/OVAJf04qCAFuU1pRVQtXB+OkPsyknzPJN10DGhTxqF5NyKQoOEBGwXF1ZAc/pdHF3t
         Rev4BtdEwkf0aQ/GGseUqyEX7nUqeWl8CX1UMTa8532cz4HVvJg6C0I6nKKvFobTfAa6
         IJUcdG8oODi5HBzIh4O+S3JFH0bPdjfg3Qe4aFHiOvhAL3DSDMHLvsHXanrY2b4r8ekv
         u+i5wn+ZlkFsZNWKO9c/aawKxPP1yAPl+HjgyqxnJyHieI0g1vQ09nk7g4bjtFO6LYnv
         BA8w==
X-Gm-Message-State: ANoB5pljOqPDpnthQ4pJ34/Wtte7+jukuWJUD8sh+LHUU/PYRX3wf6oB
        KTxZiCzxSWwtlqsiQA8UelDMiQ==
X-Google-Smtp-Source: AA0mqf4XxsmoOwkcSlzNimQjlNGov0Gaa06OicyYKHO3P0fF7W5uXy9L06LiE8P2FjpoOMCwDAoYEA==
X-Received: by 2002:a17:902:d502:b0:186:61fd:744e with SMTP id b2-20020a170902d50200b0018661fd744emr9877472plg.122.1669228389810;
        Wed, 23 Nov 2022 10:33:09 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:33:09 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v8 6/8] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
Date:   Thu, 24 Nov 2022 00:01:22 +0530
Message-Id: <20221123183124.6911-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123183124.6911-1-jagan@edgeble.ai>
References: <20221123183124.6911-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
based on Rockchip RV1126 from Edgeble AI.

Edgeble Neural Compute Module 2(Neu2) IO board is an industrial
form factor evaluation board from Edgeble AI.

Neu2 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 2(Neu2) IO platform.

Add dt-bindings for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v8:
- none
Changes for v7:
- collect Rob Ack
Changes for v6:
- updated SOM and Carrier name

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 244c42eaae8c..26fdd205a899 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -85,6 +85,12 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
+        items:
+          - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
+          - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
+          - const: rockchip,rv1126
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1

