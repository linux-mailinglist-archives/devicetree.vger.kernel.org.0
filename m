Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 656176E7960
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 14:09:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233170AbjDSMJ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 08:09:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233160AbjDSMJ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 08:09:26 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FE3A10FE
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 05:09:20 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-2fde2879eabso1040690f8f.1
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 05:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1681906158; x=1684498158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ICV+ifexo83o57cRcwBX/lZ8ijdYT70+Vp9Lz3f2oAg=;
        b=ykMoH/onbS1531mCkS58WF+fhQb/0kz8ZY36KbB/9u0gHHuOZQOTNOcmePMMX3kdcC
         JrZg2yRBqAm6Bueq4rgEySjGr1NJE75dSQkn3jO1q5NFFu/3XDpN3QkIh3ZYNH1amdEa
         MglUuRz0NUd0vIE+JsxOWG4uSvWjcud65TMNLqrFHKUXZjbyxCt4tz0tl+SPCZecRDUt
         hvTGl+Qi8eb98CLLxeZCktJ9fd5qtP3LglWCDJs1KD/yRmust4LchvLPkPzJHp6U88yQ
         z24WJ5AiLKoRN+bHeQ6sisSV5ZVab8ED083r2ZGweEnFvBh6gromIbqRLY5tpYZ5ZD4l
         Vcjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681906158; x=1684498158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ICV+ifexo83o57cRcwBX/lZ8ijdYT70+Vp9Lz3f2oAg=;
        b=NMVgrjOCcjauTemACcg4d/1B684M9zyhw6mVnbgGgZyWCSiX4ZyShIU2DR8uAbcVd+
         0vzCoVpsUKtCI8JbWvBQdfZNIZ9Rp+IozNYQ1t96UTHxOT5EKLP/Ch0aM6gs1nuMonZm
         GcTnmQHSR0JvhJRMCmo/pzPMEid4PD1lulqurZi0elJg4uRYWIv1S9ii3dO5+swh+Ug3
         eVbMvG8WgLCSkt6aREWY70+cHhQFUP4EfdChJCatnhZhIZVOL5mMCdLpy/kG3anrAMGD
         84O19QyIG4yjkzIEOW2t+9MXiDww4jBBoN1lN2HeQSDNasTWvbXg8iQTc3l3bKC0aPwF
         8ffw==
X-Gm-Message-State: AAQBX9ci1eerI5Sd/JQ6HdP8VnYk+GGnxSvCt9IA8Mvju10WpJ6cfN67
        o2vRpJLEN7mvliG6wTePD8H7vA==
X-Google-Smtp-Source: AKy350aKXVkWQBioUWRD45UWirKdXtYI4Q7nfX+i1Dn7PTo4kmQYfduYh6Pb3t2kw30YkIia5o26xw==
X-Received: by 2002:adf:e688:0:b0:2fb:f93f:b96 with SMTP id r8-20020adfe688000000b002fbf93f0b96mr4416492wrm.31.1681906158527;
        Wed, 19 Apr 2023 05:09:18 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:e836:64e1:77c8:1d5b])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d678b000000b002fa834e1c69sm7634899wru.52.2023.04.19.05.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 05:09:17 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2] dt-bindings: phy: qmp-ufs: tweak clock and clock-names for sa8775p
Date:   Wed, 19 Apr 2023 14:09:14 +0200
Message-Id: <20230419120914.173715-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

maxItems is already globally set to 3. To make the binding easier to read
and remove redundancy, set minItems to 3 for sa8775p as this platform
requires exactly three clocks.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
v1 -> v2:
- rephrased the commit message as this is not a fix but rather
  a readability improvement

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 94c0fab065a8..a1897a7606df 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -78,9 +78,9 @@ allOf:
     then:
       properties:
         clocks:
-          maxItems: 3
+          minItems: 3
         clock-names:
-          maxItems: 3
+          minItems: 3
     else:
       properties:
         clocks:
-- 
2.37.2

