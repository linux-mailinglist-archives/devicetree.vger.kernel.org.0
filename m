Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A21D75020B
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 10:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230393AbjGLIwo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 04:52:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231398AbjGLIwn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 04:52:43 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5C39B1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 01:52:41 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-31441bc0092so6604637f8f.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 01:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1689151960; x=1691743960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3KQT6tn3IkIMgWvQdIWn/fFTIkPGq6wDM785k0TXyQ4=;
        b=fCk/E7k6Bn7G1jB3D236SgDCOfp+FSKoiEbYUigL0ygKoT2l/c5FpK4FVwFC+1vZsH
         NXRb3uv1hnEZ1dP0Tg2Et9reupONnDU2Pl+GetssCAHcVDagCq0PdxeMmq3ayNdX4hxn
         3gM7rBzfmGWoyWNj5Hx+ajHD9Ov2Stl2GlPzikjkUpLZnafn9qsNr/lYC9YjQ4taEyTm
         1T/sC+/Uw4c5c6S5PcTr/ooObNTzQR6MbuZCwTJJLWoRkhv+CUaXJIF38LllSGoenFes
         weXA2qDI9KOXrhAhAOInpjN/PD3MJsjTuQ+GiS6AgjuswjO1uhmtxVjUVxz9lxb+OKVK
         n+0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689151960; x=1691743960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3KQT6tn3IkIMgWvQdIWn/fFTIkPGq6wDM785k0TXyQ4=;
        b=dwDNz04ZZncGL71XLinpUrZMXBFG1SFKdBHfB3LIopF/A4s14nseg3mg7aHEdoISlE
         7nz4TgdMrNVWK1vexfpeuEbEg9QuYG5ePS9E2KTrdhhrb0/ZbY5zSTA5zOulIB4Ynr2/
         WSyGwY0o8QuHI97v0tloJwGDPAjuZ2at48cYLD5AHKphe9230NrniWWWm3i5ywfZHWrQ
         z0GPaVO8n0NBJZfwoDSeLgPsqPtfrPiCOI7yHHt4mNmVGx9TqWtQlaKbpXW2jUcznLkA
         wRuXKb5Tv0Vz8Xhb+6zCiUmT6dIUatDx/HrKdNCNRepUXLR+mWqkgkCHbYwc32+p0poH
         HAFQ==
X-Gm-Message-State: ABy/qLafC9ZONDXHON7hzT5b1HYWQRX4FmqJGYp9xOLVJJqjgRrY6ifh
        hq7xk15m1Qo7QngWUbj7Rl/yKg==
X-Google-Smtp-Source: APBJJlFyrNrVeGP+d5vQvvHiSEn3WlxIabBLopJEroWzR+YQwwdTDNSSb+n7pHkTmK1IDPvNwSMoLQ==
X-Received: by 2002:a5d:45d1:0:b0:314:321a:4bc7 with SMTP id b17-20020a5d45d1000000b00314321a4bc7mr16268948wrs.15.1689151960309;
        Wed, 12 Jul 2023 01:52:40 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id t9-20020a5d5349000000b003143b7449ffsm4475140wrv.25.2023.07.12.01.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 01:52:39 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Patrick Rudolph <patrick.rudolph@9elements.com>
Cc:     Naresh Solanki <Naresh.Solanki@9elements.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: cypress,cy8c95x0: Add reset pin
Date:   Wed, 12 Jul 2023 10:52:34 +0200
Message-ID: <20230712085236.2496651-1-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Patrick Rudolph <patrick.rudolph@9elements.com>

This patch adds support for an optional reset pin.

The reset pin is used to bring the chip into a known state and has an
internal pull-down, allowing it to be left floating if not needed.

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
---
Changes in V2:
- Update subject
- Update reset-gpios description.
---
 .../devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml b/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
index 222d57541b65..2fa22160336f 100644
--- a/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
@@ -51,6 +51,10 @@ properties:
     description:
       Optional power supply.
 
+  reset-gpios:
+    description: Reference to the GPIO connected to the XRES pin
+    maxItems: 1
+
 patternProperties:
   '-pins$':
     type: object

base-commit: 3bc551a3007a751a53bfba5b37fa16157f4fb861
-- 
2.41.0

