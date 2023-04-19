Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC4446E7790
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 12:41:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231978AbjDSKlT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 06:41:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231968AbjDSKlO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 06:41:14 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 849BAE5F
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 03:41:12 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id j11so21293235ljq.10
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 03:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681900871; x=1684492871;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RZxVMEh9KILGtkcQBVWxPt1W9P5HUJPkp/aglLZNmOE=;
        b=n4N1GlsvUd4WzaLAEqR7DCy6mNV5YcQWHtXQSpD0o9fyo+f5USa+0NaskB4HS23XfY
         TJ5kQjndnbQp7dk3/WMn1+jD1yM+dheGRwmAH3MCPo82AZxtoJrefR9U68Z53W1Vc7n/
         RCAZfUpwRdC2szu9jm7SCSOrW4wTlA0evAU0Zq9cbv2aFrezWntoASFqdAi+wyQUWuS+
         9KkAhMzYRFlXLkgoLyEe9sdINnE/r9xROkMeEXFEDaYQIcfMIbcnhAh0iaP0P4D0PGms
         1KgIDRoKb98HNts75g2pYAPPnRpHSX7Mb5Ui0HDUqC5hPfBm66p+j0z3j2ls3ALKproV
         k/oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681900871; x=1684492871;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RZxVMEh9KILGtkcQBVWxPt1W9P5HUJPkp/aglLZNmOE=;
        b=ainPqXz3IDQEG/KoelyH6hT1/mY5+ADT6ZsrqidGEy8pSGSWmVXGjI3ZSWDc5Dd4yl
         M75QV1yhq8u/o7Aer5V1bQc6xBd/C5/wTDl59EnFkP+bXV4Hlf4mkYmiYSWWvyS5PG7F
         Yl63Zd060ptOiv31PdNUUI+RA3ASisyAN2U1r8DKkyvHbflYZx2Xn11alekpA5sNI3E7
         ztxLZiqfmVZLPGlnWgeQhN1yTqEr6IDiv55uBmLww8z/toJZFs03gAKkXqmwnqXVxz2R
         mE1UMlANwOZKG2rZvBJCvm0W8mnau6IbRQBUFj2n7Ck67tDW9Ibvyr1uSAJpB9q6Rj+R
         6olA==
X-Gm-Message-State: AAQBX9dO3+GU6R/r977rgh9HjMWIqC1O77anF7oHsVf4o/o/bfVnS8ft
        zYYbebnU8Av/QGF21gj/v6MKPA==
X-Google-Smtp-Source: AKy350aP60fgBEJ41q0RaTQf5isT0wekpXkkSe9MGe+zXxSmg86QKN6MWT3LJpA9S7GifYiAAE1Hlg==
X-Received: by 2002:a2e:b5d2:0:b0:2a8:be0a:9c52 with SMTP id g18-20020a2eb5d2000000b002a8be0a9c52mr683657ljn.21.1681900870772;
        Wed, 19 Apr 2023 03:41:10 -0700 (PDT)
Received: from [192.168.1.101] (abyj144.neoplus.adsl.tpnet.pl. [83.9.29.144])
        by smtp.gmail.com with ESMTPSA id s12-20020a2e9c0c000000b00295a583a20bsm2863366lji.74.2023.04.19.03.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 03:41:10 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 19 Apr 2023 12:41:06 +0200
Subject: [PATCH] dt-bindings: power: reset: qcom-pon: Only allow
 reboot-mode pre-pmk8350
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230419-topic-pmic_pon_bindings-v1-1-ea233dae0117@linaro.org>
X-B4-Tracking: v=1; b=H4sIAEHFP2QC/x2NWwqDMBAAryL73UDUUtJepRTJY6MLdhOytgji3
 bv0cwaGOUCwEQo8ugMafkmosEJ/6SAunmc0lJRhsMNor/3dbKVSNPVNcaqFp0CciGcxOad0i9a
 57BC0Dl7QhOY5LtrzZ11V1oaZ9v/u+TrPH3td+xp+AAAA
To:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Anjelique Melendez <quic_amelende@quicinc.com>,
        David Collins <quic_collinsd@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1681900869; l=1540;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=2aZ3HfQSYlnBEwHgH5XeH4h3AP9+DA2PwArsm4RGbHw=;
 b=Bs5hfZVu7ebswkV4EDCAyX0cgv0zVPAUv5NXngn6UIZljq16V4jurBCK8qraiJRe8dhdl4Q3HUpQ
 X6HJvO46An7tRyuvIFg+fPiEc4TcfI79zuM1XBhZcqJRBg7qSMWO
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As pointed out by Shazad [1], PMICs using a separate HLOS+PBS scheme
(so PMK8350 and newer) are expected to pass reboot mode data through SDAM,
as the reboot mode registers are absent in the HLOS reg space.

Limit the reboot-mode.yaml inclusion to PMICs without a separate PBS
region.

[1] https://lore.kernel.org/linux-arm-msm/12f13183-c381-25f7-459e-62e0c2b19498@quicinc.com/

Fixes: 03fccdc76dce ("dt-bindings: power: reset: qcom-pon: Add new compatible "qcom,pmk8350-pon"")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/power/reset/qcom,pon.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
index d96170eecbd2..0b1eca734d3b 100644
--- a/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
+++ b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
@@ -56,7 +56,6 @@ required:
 unevaluatedProperties: false
 
 allOf:
-  - $ref: reboot-mode.yaml#
   - if:
       properties:
         compatible:
@@ -66,6 +65,9 @@ allOf:
               - qcom,pms405-pon
               - qcom,pm8998-pon
     then:
+      allOf:
+        - $ref: reboot-mode.yaml#
+
       properties:
         reg:
           maxItems: 1

---
base-commit: 67d5d9f013d6c3829383c08162939cabff14fccc
change-id: 20230419-topic-pmic_pon_bindings-ffdd6c088f8e

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

