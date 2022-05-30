Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CFCA538851
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 22:50:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239846AbiE3Uur (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 16:50:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234201AbiE3Uuq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 16:50:46 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F1937CDCD
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 13:50:44 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h5so8015054wrb.0
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 13:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1lLChvyS/A963A4FUBu+MX1MVuqX0L31WAxbAXk0Rco=;
        b=TbWWfG3mwDAj3SlGK80UuCpJ+MU0f/6ckruWH7QPFPzJCTSVxTMObr+5jdPopbqJlc
         m+Xe8iKMzLEPVeY40Ofg+nC0bMhyd3DI/UcEaV6u+W4DH1149GT2GUCTM5XiLrc5eDuZ
         K3MODHqwWUmOH3IsgR2EzmAOPbAdDybF0HU+yL2d66R2Kzf8+KVLa2DYp6t8hiOZsyhI
         oLc+YnVjoPtrWKRwVbTl456dj/Z/n0ZK80hy9nFJ1Ra2pkvzPxQAMZjee3tbPUWVwq+w
         jWymAdqKP8tTerCgrRRNkWONCAkck0LqyJ+Qy7Xrj6E2jfyUteHh0EVy/vO+YFEk2CmB
         PZ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1lLChvyS/A963A4FUBu+MX1MVuqX0L31WAxbAXk0Rco=;
        b=T3h5pDrNoE0x3wT7UGtZKDORXvibde3czpe4xpt2WbU8ySW3JZB7DvDSWZ1dtik75+
         AKwzuCPVgIDoMhfaq0Ba8+ZzNIFLkV+JT88ZGVYW1xh99P6JDySaIAoQMxWcdX7gxKfl
         WeZVcTUwU3pFevyiSNu0S8Vz/YWEiJRbcZUEFgT7Tm0IGHK0hq/MsA5slyXejGIsWkU0
         8Lv6HybBqaCFIx4bWGK17U1xN4vv5tGkVvgplwCOL3NlW61di3N9ylTk4KWJdKuDT6cI
         35l5/BL+PKD2qUkoqfDOUh/bFEDz+9ILV9z4IufK07ZAhFJdGJ9rQmhkPPX9j5cGldkM
         doCg==
X-Gm-Message-State: AOAM530OvKde1+4d0XMesoDAnoWudaGtn2SGMduHKFT10L5GXECYGhDJ
        Ymh4PDBMQgMwOUXkNcnjjWAzwg==
X-Google-Smtp-Source: ABdhPJzI+EByJbFzqqyfHEexvTgYT9aG7LLERB46N3RzB/NvGbW2le+Yxe0x4SZCCWeuFEYWmA6dWQ==
X-Received: by 2002:a5d:5955:0:b0:20d:4b4:9879 with SMTP id e21-20020a5d5955000000b0020d04b49879mr46283608wri.550.1653943842941;
        Mon, 30 May 2022 13:50:42 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id u7-20020a05600c19c700b003942a244f2bsm384976wmq.4.2022.05.30.13.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 13:50:42 -0700 (PDT)
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
Subject: [PATCH v2 1/2] dt-bindings: pwm: add MT8365 SoC binding
Date:   Mon, 30 May 2022 22:50:37 +0200
Message-Id: <20220530205038.917431-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
v2: fix clock description (five -> three)

 Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
index 25ed214473d7..ff792512399b 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
+++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
@@ -8,6 +8,7 @@ Required properties:
    - "mediatek,mt7628-pwm": found on mt7628 SoC.
    - "mediatek,mt7629-pwm": found on mt7629 SoC.
    - "mediatek,mt8183-pwm": found on mt8183 SoC.
+   - "mediatek,mt8365-pwm": found on mt8365 SoC.
    - "mediatek,mt8516-pwm": found on mt8516 SoC.
  - reg: physical base address and length of the controller's registers.
  - #pwm-cells: must be 2. See pwm.yaml in this directory for a description of
@@ -17,6 +18,7 @@ Required properties:
                 has no clocks
    - "top": the top clock generator
    - "main": clock used by the PWM core
+   - "pwm1-3": the three per PWM clocks for mt8365
    - "pwm1-8": the eight per PWM clocks for mt2712
    - "pwm1-6": the six per PWM clocks for mt7622
    - "pwm1-5": the five per PWM clocks for mt7623
-- 
2.36.1

