Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 597EB36275C
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 20:01:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244057AbhDPSBq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 14:01:46 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:34633 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236338AbhDPSBq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 14:01:46 -0400
Received: by mail-ot1-f47.google.com with SMTP id k14-20020a9d7dce0000b02901b866632f29so26504121otn.1
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 11:01:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Vmf4XBXfx/GPa3Yjcsccgq05PYXS1ISqoSBtkIzuniw=;
        b=sR63s94G5Z8lt9saDMTArM0KszuF6siZA84znYkkvmeL60JPua/x1I2MYQBu1Sr0CR
         iG7joKshech1bQAvd6o4uqHL+U8cB+dZvyDYXEMRL90l0R9rdVih3Hhr6OoV9+MLsxJI
         o2PEAO+ybPD0E6momsxzqJN2h86k5P42MAryVModLzRYby2dMFo24eGArT1QfFKBMKzk
         gxpWICDQwqPZW/L5zoE+KyMOvcrGwWYONJ3JyxXJeCWOFN5sQTesx5IyzhVQdmgyzo/8
         OyPjh4kIGQI1NBM+NPVDk8cx9T77+qqPVJ2fI+7onCPaMerfsw6ktGxVaNT9srR1b+8M
         JLjw==
X-Gm-Message-State: AOAM5328d0Veaceg2ZdRrHx3TkUZ7iEN0dQ62f817Q9n664ral4JnSy2
        5bg+GsYTdmlyPUu4QjETnw==
X-Google-Smtp-Source: ABdhPJw5PVcUE+vhVYVOcvFfMPwx98X7v9QTzuauOkbkFxiPCfHe/t1LBStf9Tht3Dd9zlgkuTcIIQ==
X-Received: by 2002:a05:6830:1e61:: with SMTP id m1mr4523038otr.36.1618596081220;
        Fri, 16 Apr 2021 11:01:21 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id m129sm1554217oif.34.2021.04.16.11.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 11:01:19 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, Argus Lin <argus.lin@mediatek.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH] Revert "ASoC: mt6359: add ASoC mt6359 ASoC accdet jack document"
Date:   Fri, 16 Apr 2021 13:01:18 -0500
Message-Id: <20210416180118.3662904-1-robh@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit e61c589587c772c5f672b22683c3e0b38be20702.

The binding document has lots of schema errors and there's been no
effort to fix them, so let's remove it.

Cc: Argus Lin <argus.lin@mediatek.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: alsa-devel@alsa-project.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/sound/mt6359-accdet.yaml         | 164 ------------------
 1 file changed, 164 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/mt6359-accdet.yaml

diff --git a/Documentation/devicetree/bindings/sound/mt6359-accdet.yaml b/Documentation/devicetree/bindings/sound/mt6359-accdet.yaml
deleted file mode 100644
index 7fb3e8dfb4c5..000000000000
--- a/Documentation/devicetree/bindings/sound/mt6359-accdet.yaml
+++ /dev/null
@@ -1,164 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/sound/mt6359-accdet.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Mediatek Technologies Inc. MT6359 ASoC accdet jack driver bindings
-
-maintainers:
-  - Chipeng Chang <chipeng.chang@mediatek.com>
-
-description: |
-  This binding describes the Mediatek Technologies MT6359 ASoC
-  accdet jack driver.
-
-properties:
-  mediatek,accdet-name:
-    maxItems: 1
-    description: named as "mt6359-accdet" jack.
-
-  mediatek,mic-vol:
-    maxItems: 1
-    description: |
-      accdet micbias1 voltage.
-
-      enum:
-        - 0x00 # 1.7v - micbias1 volage is 1.7v.
-        - 0x01 # 1.8v - micbias1 volage is 1.8v.
-        - 0x02 # 1.9v - micbias1 volage is 1.9v.
-        - 0x03 # 2.0v - micbias1 volage is 2.0v.
-        - 0x04 # 2.1v - micbias1 volage is 2.1v.
-        - 0x05 # 2.5v - micbias1 volage is 2.5v.
-        - 0x06 # 2.6v - micbias1 volage is 2.6v.
-        - 0x07 # 2.7v - micbias1 volage is 2.7v.
-        - 0x08 # 2.8v - micbias1 volage is 2.8v.
-        - 0x09 # 2.85v - micbias1 volage is 2.85v.
-
-  mediatek,mic-mode:
-    maxItems: 1
-    description: |
-      value as 1, 2, 6 to indicate ACC/DCC mode. default is DCC mode 2.
-
-      enum:
-        - 0x01 # ACC - ACC mode.
-        - 0x02 # DCC - low cost without in bias.
-        - 0x06 # DCC - low cost with in bias.
-
-  mediatek,pwm-deb-setting:
-    maxItems: 15
-    description: |
-       headset-mode-setting : Indicates customized pwm, debounce setting
-       accdet pwm_width, pwm_thresh, fall_delay, rise_delay
-       debounce0, debounce1, debounce3, debounce4
-       eint pwm_width, eint pwm_thresh
-       eint deb(debounce0, debounce1, debounce2, debounce3), inv_debounce.
-
-  mediatek,eint-use-ap:
-    maxItems: 1
-    description: |
-      indicates to use ap gpio.
-
-      enum:
-        - 0x00 # MT6359 eint detection mode.
-        - 0x01 # SoC GPIO detection mode.
-
-  mediatek,eint-detect-mode:
-    maxItems: 1
-    description: |
-      indicates to use ap gpio.
-
-      enum:
-        - 0x00 # detection mode with higher detection power.
-        - 0x01 # detection mode with lower detection power.
-        - 0x02 # detection mode with sw moisture detection mode.
-        - 0x03 # detection mode with hw moisture detection mode1.
-        - 0x04 # detection mode with hw moisture detection mode2.
-
-  mediatek,eint-num:
-    maxItems: 1
-    description: |
-      incicates pmic eint usage.
-
-      enum:
-        - 0x0 # PMIC_EINT0 - use pmic eint0 to trigger plug interrupt.
-        - 0x1 # PMIC_EINT1 - use pmic eint1 to trigger plug interrupt.
-        - 0x2 # PMIC_BI_EINT - use pmic eint0/1 to trigger plug interrupt.
-
-  mediatek,eint-trig-mode:
-    maxItems: 1
-    description: |
-      incicates pmic eint trigger mode.
-
-      enum:
-        - 0x0 # PMIC_GPIO - use pmic gpio to detect plug status.
-        - 0x1 # PMIC_INVERTER - use pmic inverter to detect plug status.
-
-  mediatek,eint-use-ext-res:
-    maxItems: 1
-    description: |
-      select HP_EINT pull up resistance, default 0 use internal resistance.
-
-      enum:
-        - 0x0 # use internal resistor.
-        - 0x1 # use external resistor.
-
-  mediatek,eint-comp-vth:
-    maxItems: 1
-    description: |
-      indicates comparator detection voltage.
-
-      enum:
-        - 0x00 # 2.8v.
-        - 0x01 # 2.4v.
-        - 0x02 # 2.0v.
-        - 0x03 # 0.7v.
-
-  mediatek,key-mode:
-    maxItems: 1
-    description: |
-      incicates key mode type.
-
-      enum:
-        - 0x0 # THREE_KEY - support 3-key key mode.
-        - 0x1 # FOUR_KEY - support 4-key key mode.
-        - 0x2 # TRI_KEY_CDD - support 3-key google CDD key mode.
-
-  mediatek,three-key-thr:
-    maxItems: 4
-    description: |
-      3 key device detection threshold: 0--MD_MAX--UP_MAX--DW_MAX.
-
-  mediatek,tri-key-cdd-thr:
-    maxItems: 4
-    description: |
-      3 key CDD device detection threshold: 0--MD_MAX--UP_MAX--DW_MAX.
-
-  mediatek,four-key-thr:
-    maxItems: 4
-    description: |
-      4 key device detection threshold: 0--MD_MAX--VOICE_MAX--UP_MAX--DW_MAX.
-
-additionalProperties: false
-
-examples:
-  - |
-    accdet: accdet {
-        mediatek,accdet-name = "mt6359-accdet";
-        mediatek,mic-vol = <8>;
-        mediatek,mic-mode = <2>;
-        mediatek,pwm-deb-setting = <0x500 0x500 1 0x1f0
-                                    0x800 0x800 0x20 0x44
-                                    0x4 0x1
-                                    0x5 0x3 0x3 0x5 0xe>;
-        mediatek,eint-use-ap = <0>;
-        mediatek,eint-detect-mode = <4>;
-        mediatek,eint-num = <0>;
-        mediatek,eint-trig-mode = <1>;
-        mediatek,eint-use-ext-res = <0>;
-        mediatek,eint-comp-vth = <2>;
-        mediatek,key-mode = <0>;
-        mediatek,three-key-thr = <0 80 220 400>;
-        status = "okay";
-    };
-...
-- 
2.27.0

