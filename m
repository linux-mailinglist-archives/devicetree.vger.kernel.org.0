Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBB8B66BA38
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 10:25:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232338AbjAPJZM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 04:25:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232213AbjAPJZJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 04:25:09 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18E2D144BD
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 01:25:09 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id y25so41830934lfa.9
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 01:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z4CRc7b5in8r0rd5dEL7SAssCcA18qplF3EkYfmNT78=;
        b=uUV2PpcOkw9p1crb6g3kqcR6F/zaUsfzgqjC6cIXpPQvpIcQQRmzNQ+UAZJ3QneTPM
         MwDF9qM6DLJ4P6fcdJ6w6kMghW1avwlm8LP3aDo5LvSdiVq/Ad6utYP/608rDzzTZ2T6
         T/SmrmlQegHCyKhRKTJqY+DCk52CBQptYIggx+hKdahed/whFFIL1QD2Uq36O/4ROKsi
         wiXz7+1zRoCQO0lRgUgfQk4phIZ9EkF4d3lQocaZGMrmLnYp456wv66JyirLmzx2PipB
         dGCsZX9+fyUQksVhXv9EZXb6A4/450vcMKzkK3L+QWnQH6yHBcYzZ31/9zUTMFGHdnFZ
         Ra+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z4CRc7b5in8r0rd5dEL7SAssCcA18qplF3EkYfmNT78=;
        b=zjEib/jfowfXSPLCcGeNAZVGyRsfsk8SEZ3oZxUuPaO4nKt9pg5KBI5AV/t7zmilU3
         KHBf2fEezRcvOo+s1D3HFj0Miws3PcWatSnUCUoBf08IPwUzjATppcs52p4OEDUEcCfF
         ytSEvDaG47f4VA5uZWCLBsrcMcMPOsTwNsFXEFlpPW34bM78bNMn94+889S6Ymc4NRdj
         rLnm2Ue9GPdJ3ODobE1ECNm8ukkU2mrXG4FdLSt64ouZ775Mue0zzVUIyocxwbulvAyA
         fP5ABR07DszhDuq9/BX71PxAnSNWT3dEO/mX2KAnnWRwXK5noszmxB0OUk8iBWQidfrh
         jaUg==
X-Gm-Message-State: AFqh2kooKnZxW6X4iRry8A16HjyNeHolBR0aSHJAdotkdYQ0zHkukGH7
        CU9g7Agdp1Mipz61ZL2OxrNbVw==
X-Google-Smtp-Source: AMrXdXsPZHxfkVpga19fGCmyb3HzbzGA84o9bApfuxNmqtonKX4jYH7/zCGE6NEV8Lst2Bse1Ln6Yg==
X-Received: by 2002:a05:6512:d1:b0:4a4:68b7:dec0 with SMTP id c17-20020a05651200d100b004a468b7dec0mr2263148lfp.28.1673861107397;
        Mon, 16 Jan 2023 01:25:07 -0800 (PST)
Received: from localhost.localdomain (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id d22-20020a196b16000000b004d093d60f50sm1448003lfa.215.2023.01.16.01.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 01:25:06 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [RFC PATCH] regulator: dt-bindings: qcom-labibb: Allow regulator-common properties
Date:   Mon, 16 Jan 2023 10:25:02 +0100
Message-Id: <20230116092502.71146-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow regulator-common properties on lab/ibb regulators, such as
regulator-always-on, etc.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/regulator/qcom-labibb-regulator.yaml           | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom-labibb-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom-labibb-regulator.yaml
index f97b8083678f..c0be7d5a6d40 100644
--- a/Documentation/devicetree/bindings/regulator/qcom-labibb-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom-labibb-regulator.yaml
@@ -20,7 +20,8 @@ properties:
 
   lab:
     type: object
-    additionalProperties: false
+    $ref: "regulator.yaml#"
+    unevaluatedProperties: false
 
     properties:
       qcom,soft-start-us:
@@ -46,7 +47,8 @@ properties:
 
   ibb:
     type: object
-    additionalProperties: false
+    $ref: "regulator.yaml#"
+    unevaluatedProperties: false
 
     properties:
       qcom,discharge-resistor-kohms:
-- 
2.39.0

