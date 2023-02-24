Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 319336A1CB3
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 14:08:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbjBXNIG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 08:08:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbjBXNIF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 08:08:05 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10882113C5
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 05:08:04 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id s22so17728686lfi.9
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 05:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677244082;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gN8b9GXb2LqjzNg3cwuXCF1BQgevYypxQGrEJaz7uhM=;
        b=V5ofE10k7BW8odAS0XBia+Pvrd/krmgTyHtSvpJCKBbJ/djp1P240KmVVvghRCC31X
         S3aNkNYv3nW2JEP5TA8GdX4GbZ1Rq0GBcpIuX5RNpgQ5VeLU9dFBFL66yFd1W00gsYmW
         SpfxnLdUR6caBcGbGmTlnIymKkklk9gz5Bg5DnQrR8xW8XBUzYW3hatIyFXvN12fXgQi
         jIdlY/QyfRgR+iTr/hyC4/CFai+ca3zVS9+Zhqq/dr0rj2MEaUYx7zh54OD8LxxTPQOq
         6R1LFW/wEHy0OJKsZLTODIZ45OUyMjM9Pq7cKx1imXzMnoUZ+emkcyYszTBJeMNggAOO
         WeEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677244082;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gN8b9GXb2LqjzNg3cwuXCF1BQgevYypxQGrEJaz7uhM=;
        b=YgCIYbdgJ1zJUzPzBFbUzfYDSylweEB97BxCy8Rya6IrwGB9fKq5TorlQ5moVHUXCl
         DAILi5PEdiMe/g9bTUv7zIG3DxhbAzLUT23OergSNIW8byObHpFJFJuL/caIhc6EzHm8
         tAd09u4nnswBOpLIM+UYNVPMGem3Dmn8RCKTZ1NhtR4TXRDgsZUDw8xhUhqNqf1XJ/X/
         qbP+LV2NxQwww0vmngBnz9/ibuVIHQr8tFK6RDXkNPXAM5YnG6lUSRZm9/LCDSoDOga5
         HabOvlPIw0pjLUmJ2NSv3gh+ja3n/5AjyJ9nzgb1z+2ylktvprZ1FbLU/88NGvsyu1TK
         muEg==
X-Gm-Message-State: AO0yUKWlkbh+piyc5oA/H4+C5aFcQ3QDepDJkQOTctKjTPqG1Fg2wbnW
        9j6Tswtb620Mu63340MNc9osUg==
X-Google-Smtp-Source: AK7set+xIXkMbZ6Lc3PNf8lwh/JJt57hNiF4+8VfR6hVSWl2mptZKaQY9MkH8bPQGFeLz6HruZbmyQ==
X-Received: by 2002:a05:6512:3052:b0:4cc:a107:4227 with SMTP id b18-20020a056512305200b004cca1074227mr6397793lfb.22.1677244082333;
        Fri, 24 Feb 2023 05:08:02 -0800 (PST)
Received: from localhost.localdomain (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id i19-20020a056512007300b004dd7fefd2c8sm524046lfo.242.2023.02.24.05.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 05:08:01 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
        Luca Weiss <luca@z3ntu.xyz>, Iskren Chernev <me@iskren.info>,
        Conor Dooley <conor.dooley@microchip.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: Add Cortex-A78C and X1C
Date:   Fri, 24 Feb 2023 14:07:57 +0100
Message-Id: <20230224130759.45579-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatibles for the Cortex-A78C and X1C cores found in some
recent flagship designs.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index c145f6a035ee..a9bbe2b74b5d 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -139,6 +139,7 @@ properties:
       - arm,cortex-a77
       - arm,cortex-a78
       - arm,cortex-a78ae
+      - arm,cortex-a78c
       - arm,cortex-a510
       - arm,cortex-a710
       - arm,cortex-a715
@@ -151,6 +152,7 @@ properties:
       - arm,cortex-r5
       - arm,cortex-r7
       - arm,cortex-x1
+      - arm,cortex-x1c
       - arm,cortex-x2
       - arm,cortex-x3
       - arm,neoverse-e1
-- 
2.39.2

