Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E191539006
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 13:46:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343928AbiEaLpz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 07:45:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343930AbiEaLpx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 07:45:53 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B97129968C
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 04:45:52 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id f23-20020a7bcc17000000b003972dda143eso1076236wmh.3
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 04:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vQ/9SuRW2gSNxyY7HSFEc0S6z28TQqq+nMHdkwJ6Hjs=;
        b=eShVvcrfk3gqYk2CaIpk67IugOw/7xJh08X9rt5dq/FTYWlqCHjqocwOSulr6rc/SZ
         0pN/1bbnmr9jDniFi1PhCd/EFfPtEwx/6M1d3KzJIGpFwUjBwyu7G9OHbP/+ra01qnyk
         L5N0C2IxkBFrqrEIJDtb4c1QFogW3rvLHvHTSs/lRGz+gVbJqtcFV2/mRN7RBPvonQeI
         Flmg752rG11r8oF352pxCHrDetidSJn3QzDJ+VrHT7tSuf3iQ5TcZA2pKlMBeRLstHNs
         pbZr/LYgOTivalc9VeAfiz9ddSB/Ulw8NfnZjKQRnc4djzSsiRpcuA/GAgwKXCuzlXYA
         9bDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vQ/9SuRW2gSNxyY7HSFEc0S6z28TQqq+nMHdkwJ6Hjs=;
        b=dq5qjS/GR0+YkaIQ5j4zB4hiSxWqNQb3ebFoxiQc0a6ghIIQ3CdZZkaGnI9w5lnVgg
         J0W3vfuIdWXYjS8dOURlM4MbLWixxgj/TF76lOwerLblfKKvtLb5h7XRIh0jwue4scXv
         toeSatHP593tdYv5D43VAU99fS443dA41WBSAATh1wF2+9zTVNbmCnfUOVzmU+CJEbdy
         ehR3gaVtcZ366zZxT+GKhY+aWUjt2GVF8GwD1ibs4Nr1Rz/EZU6Tmu1ufo8ApX8+RZSS
         B3RQwm1K7P5oGuf3zANtw94whIuKegagdDI7uxmBkTbfn76oEC0S4Gpd4HR2Bdeaddqr
         u0KA==
X-Gm-Message-State: AOAM532HnkbNI+34WSJjMpyvlxEdR5t59dCxx4HiwEygd9Z9G2N+KQDT
        3UBmrWRnWR/CnTaWScPvZJ3LTg==
X-Google-Smtp-Source: ABdhPJwJjhIwNfHDxLSY/eNUnC7ZtsMB76qjz5vk7LG+i1TjoIDN2lSFL9muj7ndGdSsaK4RYxe/Fw==
X-Received: by 2002:a05:600c:c5:b0:39c:1396:b489 with SMTP id u5-20020a05600c00c500b0039c1396b489mr7093277wmm.146.1653997551291;
        Tue, 31 May 2022 04:45:51 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id i12-20020a05600c354c00b0039765a7add4sm2064154wmq.29.2022.05.31.04.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 04:45:50 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: pwm: mediatek: add pwm binding for MT8195
Date:   Tue, 31 May 2022 13:45:43 +0200
Message-Id: <20220531114544.144785-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MT8195's PWM IP is compatible with the MT8183 PWM IP.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
index 25ed214473d7..7b53355470d6 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
+++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
@@ -8,6 +8,7 @@ Required properties:
    - "mediatek,mt7628-pwm": found on mt7628 SoC.
    - "mediatek,mt7629-pwm": found on mt7629 SoC.
    - "mediatek,mt8183-pwm": found on mt8183 SoC.
+   - "mediatek,mt8195-pwm", "mediatek,mt8183-pwm": found on mt8195 SoC.
    - "mediatek,mt8516-pwm": found on mt8516 SoC.
  - reg: physical base address and length of the controller's registers.
  - #pwm-cells: must be 2. See pwm.yaml in this directory for a description of
-- 
2.36.1

