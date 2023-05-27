Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8ACEC71364B
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 21:50:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbjE0TuP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 15:50:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjE0TuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 15:50:15 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70342BE
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 12:50:14 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6af8a21556fso441780a34.1
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 12:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685217014; x=1687809014;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XBQTsMpoZt4MerU70Veac+jM2zEvwwaiUOvRc+FiUpM=;
        b=JFc9BY64Td9h/w/kIPGcgvMJXZVpHLlCyAFKbiDZxBTA2PmHskYnjGNujjKlwCxlEZ
         JEWVGfMtSly1BItT3JdjuhMR0mV7D/KMNNWHIHpVE9l5JzhwtmyUU/Q7cWgVp47yI1la
         1ad+Lp8rcTs9b3sRIWZ7TiOG49K7QHfL4oCeWkBIEzo3f7jL3zsPrQnNj+jPudqdKHlY
         cvYzA/oyjviE2Np4RAe/Va6C1mvb70vyBPyCXexaBKiHqMTaVxLUpPK/BIRYxuP9VSF8
         WqK2iRfL3MZ5yLjxkFZCbA7D/HeV3A4McOfSImOFvobLMGMtXnqTHGpi/UcKyp0WD9r/
         GIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685217014; x=1687809014;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XBQTsMpoZt4MerU70Veac+jM2zEvwwaiUOvRc+FiUpM=;
        b=Q69hjeuw81y+wB15/8htqcccgXUHNjxbxvV+3d+CPC3+U5BRlJAAyP0KX8zi+6WK7c
         PWrGYmpRrZg2iv+PsIhY02yyh3/4/EmJDuB+I2c3VGe2wANYn94Q2lQr92P62ujD11AS
         1V390W/5Brpy1L0+HjX2P2kDBxfiYzQr6tt2giG1OzAsrux2msnYv6OKk9bUxqRKxu2l
         X5IVjnCJwAGgjdHfPSo1Kzmto4vOSNJcAIr/n7yDTFrMsA59fq1F6+R7zFHw/+xcstsP
         LN6RzR7Ntdq5e0QI1Rpuab2ia3OTPcutmOBqIBAE0OpVqad3FJn7k6KtEJBWHQn2cVa7
         rTew==
X-Gm-Message-State: AC+VfDxJ/JnRd+VIWkZ7LXRWer2GAVZuBWxLS7F9YbvVXE+dPbhsyDHV
        y+SwuHhshQfwWYmWFgqLKYLiZUSJfH0=
X-Google-Smtp-Source: ACHHUZ6ZUVjwKlqZWuN+JjB6rq2uP2aWbEpMnpeuFKhvGrtyNiIgEoik3XpEeLOByKJFkxBZI5rl1g==
X-Received: by 2002:a05:6870:a68e:b0:199:cae6:3147 with SMTP id i14-20020a056870a68e00b00199cae63147mr3444502oam.4.1685217013648;
        Sat, 27 May 2023 12:50:13 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:e287:a09b:c5f3:bedf])
        by smtp.gmail.com with ESMTPSA id s4-20020a056871050400b0019ea8771fb0sm3035044oal.13.2023.05.27.12.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 12:50:12 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/3] dt-bindings: pfuze100.yaml: Add an entry for interrupts
Date:   Sat, 27 May 2023 16:50:03 -0300
Message-Id: <20230527195005.398815-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The PFUZE100 PMIC has an interrupt pin that can be connected to
the host SoC. Describe it in the dt-bindings to avoid warnings like:

imx6q-zii-rdu2.dtb: pmic@8: 'interrupt-parent', 'interrupts' do not match any of the regexes: 'pinctrl-[0-9]+'
From schema: Documentation/devicetree/bindings/regulator/pfuze100.yaml

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/regulator/pfuze100.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/pfuze100.yaml b/Documentation/devicetree/bindings/regulator/pfuze100.yaml
index 67a30b23b92c..e384e4953f0a 100644
--- a/Documentation/devicetree/bindings/regulator/pfuze100.yaml
+++ b/Documentation/devicetree/bindings/regulator/pfuze100.yaml
@@ -36,6 +36,9 @@ properties:
   reg:
     maxItems: 1
 
+  interrupts:
+    maxItems: 1
+
   fsl,pfuze-support-disable-sw:
     $ref: /schemas/types.yaml#/definitions/flag
     description: |
-- 
2.34.1

