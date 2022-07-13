Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5C9957361E
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 14:13:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231649AbiGMMM7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 08:12:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231236AbiGMMM7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 08:12:59 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7971E104039
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 05:12:58 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id bp15so9236786ejb.6
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 05:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tnaDW6JV/xykvdLPZQprjNt4nbaYdEiyUCMs+0PMNFI=;
        b=ef5FeT0/dStZIoCYmtDyNwwPsEnI/m3Je22E7lu6UNlYO7IsgjoD8B2WdnjnFzuSTw
         T86b7bnHvnXaVMQOWG2Dw3qjViXb8jtF5tSuXaFu4PsaXze7kEPeKtJB7hruKsKEuttp
         1SLMeM7Y6aY60z47hgJ72GNQ1fQVTgQuct3z2mp09bT9db5DvYowFe5+1er4BpfvaiHL
         An4DtJ3loimn6DNzxrJ02RsP9tZ4RMj0+YRFs3d9mSraUsBoAfFpUxzEqjTBehARMgqy
         p5pYWAbozJ7q0DfTnAiybyh2VABy7zg1ZRNMQ0SMdDMg1ToylZ5a4WK42nt9owrwibJ7
         TLVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tnaDW6JV/xykvdLPZQprjNt4nbaYdEiyUCMs+0PMNFI=;
        b=RDw2XYbnBVg2EmQepiZDsLp/6FIe3RBKqBOtq9Gh4iE4ePidGqcb8TIlRM1H44eflU
         Gb6CcRWAU2usdLj/hPbhz/YZQq5KSYacvldIl5wtsns0EN5tyDTTcYKdoXPfIsmg5cnI
         tvDffuvh0ERaKa/4NboTRerz6o8c9sfOtq/9FzcXcjWxiFpKiA9F9nXP+iDyNKln40zP
         wu8NxfnJ5fVaTd1wbMAcknO8X6PYvjwhtYNgeCufIgdSX0vYxOW7j4gwPJx0gjKPEvCC
         1H4ttu0xdI+3dY1Mh5I83Yv2m08g7T9ZZYkAeSaROz/9sIWOWx67NKymGumr9O2I59BG
         EboA==
X-Gm-Message-State: AJIora/+uvNZUkrf92qsjgssqIyDYWv58aF5TjGnaeyhUNJbkfQGLvMM
        5k7aOWv+gc5SJC0BAjZdmQ8=
X-Google-Smtp-Source: AGRyM1uybYI32gUzqjf/wLA5thoROKlI8AJepbsC6l53acabFb6HPCuLZ7wINWTx1g3Not44MIoacQ==
X-Received: by 2002:a17:907:7b8a:b0:72a:9a42:d5ac with SMTP id ne10-20020a1709077b8a00b0072a9a42d5acmr3194471ejc.306.1657714376784;
        Wed, 13 Jul 2022 05:12:56 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id o23-20020a170906769700b0072b3391193dsm4871372ejm.154.2022.07.13.05.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 05:12:56 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: arm: Add Asus GT-AC6000 based on BCM4912
Date:   Wed, 13 Jul 2022 14:12:34 +0200
Message-Id: <20220713121234.32604-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
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

It's a home router, the first BCM4912 SoC based public device.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
index b817051c491d..40bb5223740b 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
@@ -31,6 +31,7 @@ properties:
       - description: BCM4912 based boards
         items:
           - enum:
+              - asus,gt-ax6000
               - brcm,bcm94912
           - const: brcm,bcm4912
           - const: brcm,bcmbca
-- 
2.34.1

