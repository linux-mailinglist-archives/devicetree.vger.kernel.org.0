Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 004286AFC65
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 02:30:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230007AbjCHBaB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 20:30:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbjCHBaA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 20:30:00 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E34A91B6B
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 17:29:20 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id i28so19575269lfv.0
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 17:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678238940;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wcH6ChrdybSOEpD7JCkvJREKmTq11gzbfL1luIuLXkc=;
        b=WmCAqaprgGN011ev+tuC6gu8/acpauS9IYp7lJcpFioq7F2/WLgU3NW9A5dF9AwsrF
         R5H6XwXd1tHuiypD7DoIr6e1pSNoLm166oGUlJrE0/jZXzBvDA99YeOjSsxpHed9J3z9
         nBHt/Zp0C71yln6yjUpOdMrPVK9keRog1l816ixjn1WtnT7bibSa8UIipjd69TBX39Z7
         nF5m5c2vIIP1TdG/w10l1p+OJXBVPY4ipVrF0iktNQJHHiIyzqxe9PxD2Y8yPn7DFIIo
         CrnYHlL5H2GbGKBjDRJQALiMN0oifRnPbuQ9qK04rjlz2vLCLQnhH3EmKJXaZpY+fi99
         GVXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678238940;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wcH6ChrdybSOEpD7JCkvJREKmTq11gzbfL1luIuLXkc=;
        b=V3cH2E8z6Pth8RSqiOjJGyt/ozW1UsHuhROaBSpWGz4e/XV8vXMCEyj9sezqUFLJ/x
         yOoOZGxSA6fI8v0M7LS3xfRKxTzYp9NlDBsn8MAYW0ZZeVWhxJnt5lJpdxKRy3mj6x+o
         i0d8bZxKl0ci6YiPuV9kHkSsXDJlN7dghU4AtZaGPSUbJrg3TNJ7i3pvkKZqBSHqGD0b
         bhQ/6/xef2aIaaLTPjovNKkYmB3vvWqq1fvaQYujB9Dmp7EDZ6mnVHsQvsIh9W2df5tI
         2HKjzS7ygdvD6vuV9Zikyp/EGEI2bguJIoosJDTeqt2e2CBdKKLon4j+5T3ZLEYa1lT8
         8vbQ==
X-Gm-Message-State: AO0yUKXgM9pltupXZx1k0R7AiX4ZxT7bzWGSOsXhriowrv+EAzhtHyab
        /sWdz6rLxkXaYSHb7EN/BkKW8w==
X-Google-Smtp-Source: AK7set/O2zOF0Eaq703LtV0Eck2mcIfZt4f+MvTQ56hwhaKSJtxi6wC+KRR0lHtAlI17pP5pDT60Rw==
X-Received: by 2002:ac2:4ac9:0:b0:4dc:84dd:eb91 with SMTP id m9-20020ac24ac9000000b004dc84ddeb91mr5202676lfp.22.1678238939731;
        Tue, 07 Mar 2023 17:28:59 -0800 (PST)
Received: from localhost.localdomain (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id u17-20020ac25191000000b004db3aa3c542sm2174173lfi.47.2023.03.07.17.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Mar 2023 17:28:59 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: timer: armv7: Don't sanction address/size-cells values
Date:   Wed,  8 Mar 2023 02:28:53 +0100
Message-Id: <20230308012854.294939-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The driver itself does not read the -cells values (and frankly, it
shouldn't), so there's little sense in only allowing [1, 2] x [1].
Allow any values.

Fixes: 4d2bb3e65035 ("dt-bindings: timer: Convert ARM timer bindings to json-schema")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../devicetree/bindings/timer/arm,arch_timer_mmio.yaml      | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml b/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
index f6efa48c4256..236e2a05c1ad 100644
--- a/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
+++ b/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
@@ -26,11 +26,9 @@ properties:
     maxItems: 1
     description: The control frame base address
 
-  '#address-cells':
-    enum: [1, 2]
+  '#address-cells': true
 
-  '#size-cells':
-    const: 1
+  '#size-cells': true
 
   ranges: true
 
-- 
2.39.2

