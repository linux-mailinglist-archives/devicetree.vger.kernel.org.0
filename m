Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9679720728
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 18:12:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236852AbjFBQMT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 12:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236879AbjFBQLy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 12:11:54 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D485F1B3
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 09:10:59 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2af1c884b08so29094471fa.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 09:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685722231; x=1688314231;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j1ZEEeRGUGH3H/iMpk1TZJqcGKpfUDVEFjxjQYGhSHo=;
        b=nhRjaCOe35BuO5WiBy9S5jcrAiy6h4/AOQwSbqggLC0HNm3y6KrHkNd+vcxJ/2GklB
         +8u5i7hZxZeYrUPJU5R0yPUFfd1wJj6rAiA4aNacvSSZPgXcQJnFH6G/s++fo2lv6Bt8
         3J5H6NvW2WuzaGFFq0ncAD4PVcXT1MeyxxmsyKJEt8YTQ7VM4yAlw3OQsMhqQJCsnC4w
         o/e/xYiZS85ss37af4wkDfVnBQocb+EOfu5gH6j4GOi7ew0wQ/BolEUsVR9pLK6bCZb+
         WQc6XNeIdvLLKj2tDN4QFDuIwX8O5YaMkFBsjM3fZfil9hqvJxM/Isha6fHGsJYtvRTq
         KbOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685722231; x=1688314231;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j1ZEEeRGUGH3H/iMpk1TZJqcGKpfUDVEFjxjQYGhSHo=;
        b=HhEzC3yyQPcy92KmYc0IbYpily33K+KH8naVv+iqzKVXcm9zrA6Q/UsTOVWMHm37z4
         2FP2DHYygXAcx7RBNkjT9uHLu10KzKvCEIJicOEBCzkhpKGr0vUOHAhmPclLWAlnkkto
         Wm/hFwIbQdH3TZ1HdAnTDhVyNH+J133n97zGM/3IgnVCZhtKawAFFImxC/Il6o9Vl4DI
         BpsVZoRjdSd5OIPgPNGX+78JhJhDwZmqSa8PojCUHYdj57Ii/2fKwcikvzGFbeHy9v+i
         rz2VNtb/ZXXQYVp5IrQMI/VTvpDBtx5RN8dhcvACPXt4HsJ0XGzsb9Uog9OWHHVoMf3k
         9bMg==
X-Gm-Message-State: AC+VfDwAhhnz6tTNXWtndeaiWlgx/Gul643U1Zd6P7FPxAu5p4oKIKA3
        OroSFAszOAycddQs/+KG/gQ=
X-Google-Smtp-Source: ACHHUZ6bUUlLahxD+Eorcta9KYVd14vH1asfia/NmpqGxGzTxSiElWhc7kxyBWqNdarSm2DPFbJWbw==
X-Received: by 2002:a05:651c:32e:b0:2af:23dd:fd71 with SMTP id b14-20020a05651c032e00b002af23ddfd71mr64768ljp.25.1685722231203;
        Fri, 02 Jun 2023 09:10:31 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id d13-20020a2e890d000000b002a8ae16ac8csm267990lji.18.2023.06.02.09.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 09:10:30 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Pratyush Yadav <ptyadav@amazon.de>, Dhruva Gole <d-gole@ti.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: mtd: partitions: Include TP-Link SafeLoader in allowed list
Date:   Fri,  2 Jun 2023 18:10:23 +0200
Message-Id: <20230602161023.14739-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This fixes validation of Linux hosted DTS files for Northstar based
TP-Link routers.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/mtd/partitions/partitions.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
index 2edc65e0e361..1dda2c80747b 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
@@ -21,6 +21,7 @@ oneOf:
   - $ref: linksys,ns-partitions.yaml
   - $ref: qcom,smem-part.yaml
   - $ref: redboot-fis.yaml
+  - $ref: tplink,safeloader-partitions.yaml
 
 properties:
   compatible: true
-- 
2.35.3

