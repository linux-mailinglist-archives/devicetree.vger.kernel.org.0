Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2E4170A788
	for <lists+devicetree@lfdr.de>; Sat, 20 May 2023 13:26:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229654AbjETL0P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 May 2023 07:26:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230344AbjETL0O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 May 2023 07:26:14 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 054C5186
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 04:26:13 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ab3e8f4efeso21480861fa.0
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 04:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684581971; x=1687173971;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yhy6NdrRMFc4r1W5W9OpOcWFvDgKi7GNMY28PISUPrE=;
        b=R0kf8rxaT1qyO+JVzayWX+QmaN2ulkBSvX6yqlBW3IYGCWZOJAOIO04s0CFywTmwCY
         F5CD7r6Ynt+JnDMkd60P/yq71Vq5jduFiJtmuFqZqQ1bNEHONGNPjPVS+TW6RHIa7pU5
         mWHVvc0URtVQNP261fA1I6UzYKt9I+j3Ihdf7vq5bz9Tg4AqPJoZhpqMjfWCUfSebeOa
         kZ8F61oBerT1bQVP6tLTtan/nDdJXTkYGO7xRCI9OgJxmhDCVA/ZoWzgtekbMmIhoJo4
         /HINd2PIvdpeAQk18jJHNJQr4jI75ILawUGtdNNRQH4g7eUTibh4DRZpj5IhS3PaFt3W
         nLIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684581971; x=1687173971;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yhy6NdrRMFc4r1W5W9OpOcWFvDgKi7GNMY28PISUPrE=;
        b=ID4tDDBO6dSlZqCgA3uzJbwjHrssXaGxvKf+htEXei9k8bWhMaj4sOUqiJTJtxmfY/
         uN0JWESJ0gjDmA+5gGzkeSvRYNq6OxPrvjNmiv58duM+PxS8mPzXHv9aPW+7pXLEX1eb
         QBovHPnuoM8pbvd2VsZBTOGdRvDPEMs1qeqs+uyiloxF1qwf5Hysepw30i5iJI6FTBoe
         d+fZztSzsqYB/KUlXWGB7HUMDdrHy9+ioK+T1upwSRzjlhR1nRk5pRMB4Z7BqO4RAgUh
         wx4aIn5hCk1cTDzo0b86HD1aLvvqHcMy00lnWIJSdZKG+ZzuK9S3zah2dlRwMhRjqF0E
         TBkA==
X-Gm-Message-State: AC+VfDxydRwEDF5WpA5D2wksHdxcGf9qxr9U0824o/EuPEhJv/4MSDw0
        iczCSm+PJfmc3d9gJhK7ctw=
X-Google-Smtp-Source: ACHHUZ5UN+qzjzXVsEOHnAwfMnnyHqqndWx8mo+mSsS5krDY+rsSggAkB3ifefAn8sBSg6xE1NDKUg==
X-Received: by 2002:a05:651c:231:b0:293:4b91:d03e with SMTP id z17-20020a05651c023100b002934b91d03emr2004226ljn.1.1684581970760;
        Sat, 20 May 2023 04:26:10 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id j21-20020a2e8015000000b002aeee2a093csm258949ljg.59.2023.05.20.04.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 May 2023 04:26:10 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        bcm-kernel-feedback-list@broadcom.com,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Sebastian Reichel <sre@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: arm: bcm: unify version notation of Northstar devices
Date:   Sat, 20 May 2023 13:26:00 +0200
Message-Id: <20230520112601.11821-1-zajec5@gmail.com>
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

Always use a minus/hyphen char to separate model from version. This
unifies binding's "compatible" strings.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../devicetree/bindings/arm/bcm/brcm,bcm4708.yaml    | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
index 454b0e93245d..cc34025fdc78 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
@@ -28,10 +28,10 @@ properties:
               - buffalo,wzr-1750dhp
               - linksys,ea6300-v1
               - linksys,ea6500-v2
-              - luxul,xap-1510v1
+              - luxul,xap-1510-v1
               - luxul,xwc-1000
-              - netgear,r6250v1
-              - netgear,r6300v2
+              - netgear,r6250-v1
+              - netgear,r6300-v2
               - smartrg,sr400ac
               - brcm,bcm94708
           - const: brcm,bcm4708
@@ -42,8 +42,8 @@ properties:
               - asus,rt-n18u
               - buffalo,wzr-600dhp2
               - buffalo,wzr-900dhp
-              - luxul,xap-1410v1
-              - luxul,xwr-1200v1
+              - luxul,xap-1410-v1
+              - luxul,xwr-1200-v1
               - tplink,archer-c5-v2
           - const: brcm,bcm47081
           - const: brcm,bcm4708
@@ -72,7 +72,7 @@ properties:
               - luxul,xap-1610-v1
               - luxul,xbr-4500-v1
               - luxul,xwc-2000-v1
-              - luxul,xwr-3100v1
+              - luxul,xwr-3100-v1
               - luxul,xwr-3150-v1
               - netgear,r8500
               - phicomm,k3
-- 
2.35.3

