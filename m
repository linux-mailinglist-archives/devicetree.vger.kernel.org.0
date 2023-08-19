Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 009C1781728
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 05:22:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245204AbjHSDWO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 23:22:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245226AbjHSDVl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 23:21:41 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC4934224
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 20:21:22 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6bd06470b68so1421128a34.1
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 20:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692415276; x=1693020076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GmejmVLGdABaT+qnw1yy9ms9gFGtTk5UP1kBkDFPK+I=;
        b=YKaiAlEMxG8TG4NwPrj8HVSkUWZ0S15L5BHPEgSxVOiV8l80zHRpbCfX6Xi6r/k406
         YgNjh7m+h+RNsd2QhvMKkXTQ2w2A80rb8NimmIhteBq9Eq9YZsC7COYu3FvtsqKKFssL
         MFzNLVz0zjEqEaZ4/vYKGI7urQuAD9a20n0TVj9kTMqgshezb8AF22lFNBUNBt3jqjoi
         wVHF3nLXmILy9YJuu0gROw2IOL7jbNMAzmdUbjUauKUF8s2sa2fpwy97vGl33wsq/dHt
         g656c1Z2aUaeawREt2wVVNXxmFqvPahXtsDFaU4J/VgMlvmkPlzV4qxJwgwwyywOh/6A
         TzEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415276; x=1693020076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GmejmVLGdABaT+qnw1yy9ms9gFGtTk5UP1kBkDFPK+I=;
        b=VNBiAz2mfidmuGM62D6mexE5UZTXwCdPEmdYCnMyghfIvYK9sfBgZXGS7Rrr5vRMKb
         cJZpHdBaFS/PKvj7sAbPtB8W4qoYckdl8KIIDt9AR6UXKvo6xAvPW09qjGcnrwNuXtt9
         Kr19HqOr2qUfUGjPCOZz8v212+M4X5WUXiI0IO3Z4cIm2qkwIMrB63lqSfi6lE0N2u/H
         S75btmSIYk5VdI+v5ctGiZFTaYfJ7Jvpol7jM/t/Bha4QWRAk7/tmnU7scTHelrOge15
         vLY/HBtnH5I2rDqEtkgRycsC0rc5upoWILAB1DhsmrZJBRMYbf7JYEkXF7wDGfEFrzGI
         eGDA==
X-Gm-Message-State: AOJu0YzTmLPyHXSUXEiARd5WBFIi6gh8/JT3mp4eps6cprnIDpeplGU1
        k6z4pWqAWHuwYaymYLVLXj0=
X-Google-Smtp-Source: AGHT+IE9Ag0OSHyGA5Ub/Fx9wqUoNKbuyV27QuHjK4T9nJtq4t6VeDDob1cXpM3apdfQvXmcLe+89A==
X-Received: by 2002:a05:6870:d1c9:b0:1c8:c22d:1130 with SMTP id b9-20020a056870d1c900b001c8c22d1130mr884510oac.21.1692415276182;
        Fri, 18 Aug 2023 20:21:16 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id ch16-20020a056871c41000b001c02f12abd0sm1728265oac.38.2023.08.18.20.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:21:15 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, me@crly.cz,
        uwu@icenowy.me, samuel@sholland.org, jernej.skrabec@gmail.com,
        wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
Subject: [PATCH V2 3/4] dt-bindings: arm: sunxi: add Anbernic RG-Nano
Date:   Fri, 18 Aug 2023 22:21:04 -0500
Message-Id: <20230819032105.67978-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230819032105.67978-1-macroalpha82@gmail.com>
References: <20230819032105.67978-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG-Nano is a portable handheld console from Anbernic which
uses the Allwinner V3s SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index ee8fdd2da869..806f25b561d9 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -56,6 +56,11 @@ properties:
           - const: amarula,a64-relic
           - const: allwinner,sun50i-a64
 
+      - description: Anbernic RG-Nano
+        items:
+          - const: anbernic,rg-nano
+          - const: allwinner,sun8i-v3s
+
       - description: Auxtek T003 A10s HDMI TV Stick
         items:
           - const: allwinner,auxtek-t003
-- 
2.34.1

