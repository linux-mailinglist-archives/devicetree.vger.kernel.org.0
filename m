Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8269E59F4C1
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 10:09:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbiHXIJ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 04:09:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232881AbiHXIJZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 04:09:25 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BA6184ED2
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 01:09:24 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id y127so12805318pfy.5
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 01:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=2vTpdZQYgRFnGUjEMEzfPwPvDO0zA3CdUFVRf6A8iFI=;
        b=hUy71wp6l2Uo+tdO1eSNki5chXdiuBnBNLCPFKNtGbPi4UvdmE3VCwZG1qBobSKG3u
         0knwlFm/g2eC2ZACKATN47ZdfWQP14QGcxFCh6vMEFHBDWYF4ahXymS+sorAFDGcPJHQ
         75c/8C1IkbmETUHvswfDMBK4MP0/b8jX0pLx4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=2vTpdZQYgRFnGUjEMEzfPwPvDO0zA3CdUFVRf6A8iFI=;
        b=IcTYqGBrlMpKqQRTjRKCOuMNREhAmZerOHXfMCsc5EfJQj+mse5wy1q5B43kPoPSev
         zZitXktj5n6VfE3YsT4wmaOfu4NvuZXAGp1/gA1fG4a9IT546eBZBFyhNHt6p8KEoH2j
         8XNWBeCraj9skmPJpXKSXz4wGgxisEhLS7bEDqXF5+QwclY5fPtaJ+EaTmqECXsUzaHB
         FLvcIPB7rwQ8R5cjCN+AvED6VvFCJ8Vvlvyexl+5VubPo6GQrBi/elfFmk5W135PH1Dv
         EF51iixY/2N+p63jKiYfRM1A/y/h2W4ulz5Y9+4mIjs9oOTS9+wAbVauLy28b8l6gS/5
         G8oQ==
X-Gm-Message-State: ACgBeo0xrdMWVuAv2ckg9g9oMdgEizB4z5W7PaYAgpjQJCpUiD7EgM3O
        8lGmJvG/MriGZz0CzGkLoZhS2VvDxX6vHPLFhSs=
X-Google-Smtp-Source: AA6agR7H7t7ZYk+ooV2esxaMsHLoFR+5ZzanJ77GKXbtF126UDHawRZneXWGx3wJa17VGN7Udhvhfw==
X-Received: by 2002:a63:8243:0:b0:42b:1d94:3c66 with SMTP id w64-20020a638243000000b0042b1d943c66mr1487683pgd.278.1661328563676;
        Wed, 24 Aug 2022 01:09:23 -0700 (PDT)
Received: from localhost.localdomain ([212.102.47.105])
        by smtp.gmail.com with ESMTPSA id ik3-20020a170902ab0300b0016bdc98730bsm11859594plb.151.2022.08.24.01.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 01:09:23 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Date:   Wed, 24 Aug 2022 13:39:02 +0530
Message-Id: <20220824080903.3696847-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the dt-bindings for Radxa ROCK 4C+ SBC.

4C+ replaced DP with HDMI and updated FPC connectors
for MIPI DSI/CSI compared to 4C revision.

Also, an official naming convention from Radxa mention
to remove Pi from board name, so this 4C+ is named as
Radxa ROCK 4C+ not Radxa ROCK Pi 4C+.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..ec3525fb1e60 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -537,6 +537,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK 4C+
+        items:
+          - const: radxa,rock-4c-plus
+          - const: rockchip,rk3399
+
       - description: Radxa ROCK Pi E
         items:
           - const: radxa,rockpi-e
-- 
2.25.1

