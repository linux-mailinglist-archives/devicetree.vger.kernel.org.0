Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F95D6DFEF7
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 21:48:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229635AbjDLTsA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 15:48:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229620AbjDLTr7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 15:47:59 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FDAC7A83
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 12:47:29 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id q26so3940836lfe.9
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 12:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681328845; x=1683920845;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HqG0pVW7OSa0fms1qxmeVYPhF6UJZQ18Q2XwjNeh0Vg=;
        b=LHfEzIoOe/iboNkq3bxnP99FpIAXg6ZxIfA4WrkQsBjUYX1S2QeBgAvVzTB0DCb3lJ
         EFdFd/ZvVx7V8muv863Tt/QXFSiXOnWdYq0iHa65tCOviUVX7znyeqC5URaHwg/MhR0C
         JS2IlAJoV1wNlltRem7f08zZvexPpEm55cOoz4B11mUcQXmDFinKq3h++xw5t/q0KssS
         kckmsEPg1p90inH73rZtoMvUA+Xp34NM+eqiE2Hw5LzriLloXpe1vCpDkSFnxgP0naOq
         4sxo0/iJP/LV5c3aq3SJvhclk7ZiaHULmfBXiqgEgaBtLTb58ekVmk221oGvpjZJ73we
         C4UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681328845; x=1683920845;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HqG0pVW7OSa0fms1qxmeVYPhF6UJZQ18Q2XwjNeh0Vg=;
        b=DDF3ujkgn011Hy84k3tAwWVhUuw7BwZgU4A3LiSypo1Gj4VimccXl+J2WwncPrPc0M
         tbXsGLL5FUfXeY0FWZECiASBWQFCqnKbLjrZI3QULUcG67sDJxlUl+KS8Pe7XiOwzWoH
         NaxjAjhp9/l9Hbi49kT509qQx2HyQvZAgeDHnSv9VyiZfFTgCkCmVi3o8TOMXpcFmAmq
         R6aQESTZiwpYJQrSKD2FuMxklgbVuVdHCfD9jV/a9suY9MoKgqyvNkQgNNr0uMt5XSiC
         5Ua7HtyJZF+QlS2MjVCtzSTUPQ9iuvT93eyBT3hf8jJlmIzx+F/ztJfncBzonSMpAR5O
         fDdA==
X-Gm-Message-State: AAQBX9cj7qx+RMb4KOYr4q4jwDI9b43mCz71MNfMGiXrATmSbMnt0nAP
        Uk/OGVGrtBmalsfI2xN1ZTdHdw==
X-Google-Smtp-Source: AKy350ZmlaXPhl+Hu0r8dt+mPvo6tDuGnkFvWu/ESgMhieonZw2og/Ol6Ceo6m3w4XuqlwSpDFMp/A==
X-Received: by 2002:ac2:418c:0:b0:4db:268a:4ec5 with SMTP id z12-20020ac2418c000000b004db268a4ec5mr10285lfh.52.1681328845201;
        Wed, 12 Apr 2023 12:47:25 -0700 (PDT)
Received: from [192.168.1.101] (abxj23.neoplus.adsl.tpnet.pl. [83.9.3.23])
        by smtp.gmail.com with ESMTPSA id v30-20020a056512049e00b004e8508899basm3152061lfq.86.2023.04.12.12.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Apr 2023 12:47:24 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 12 Apr 2023 21:47:20 +0200
Subject: [PATCH] arm64: dts: qcom: sm8250-elish-*: Fix panel compatibles
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230412-topic-elish_compat-v1-1-4e03f95d5410@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMcKN2QC/x2N0QqDMAwAf0XyvICtFtl+ZQypWbYGurY0bgjiv
 1v2eAfH7aBchRVu3Q6Vf6KSUwNz6YCCT29GeTYG29uhH43FNRch5CgaZsqf4lecBhqdMVc3eQc
 tXLwyLtUnCi1N3xibLJVfsv1P98dxnJODqy15AAAA
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jianhua Lu <lujianhua000@gmail.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1681328843; l=1572;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=guEOBYs2F4QRT5xWcrhvLTzzjeo2J6/kxLNuJ4zGbDQ=;
 b=jP4om3LAubPcpOCEuYKH3tlVK6C7M9u5tHSAnFZJWrzIvKsxJPT4+bLHQnkCpVWAEjTmMrYFp33Y
 ahDa+JRKBmUd/5WzNiH7kXBeySd/FQHEvU2p80iLw6H6S75T9IFY
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fallback compatible was missing, resulting in dtbs_check failing.
Fix it.

Fixes: 51c4c2bd6f31 ("arm64: dts: qcom: sm8250-xiaomi-elish-boe: Add mdss and dsi panel")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
foo b4 requires i put something here
---
 arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-boe.dts  | 2 +-
 arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-csot.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-boe.dts b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-boe.dts
index 8b2ae39950ff..de6101ddebe7 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-boe.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-boe.dts
@@ -13,6 +13,6 @@ / {
 };
 
 &display_panel {
-	compatible = "xiaomi,elish-boe-nt36523";
+	compatible = "xiaomi,elish-boe-nt36523", "novatek,nt36523";
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-csot.dts b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-csot.dts
index a4d5341495cf..4cffe9c703df 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-csot.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-csot.dts
@@ -13,6 +13,6 @@ / {
 };
 
 &display_panel {
-	compatible = "xiaomi,elish-csot-nt36523";
+	compatible = "xiaomi,elish-csot-nt36523", "novatek,nt36523";
 	status = "okay";
 };

---
base-commit: 7d8214bba44c1aa6a75921a09a691945d26a8d43
change-id: 20230412-topic-elish_compat-73c4511957a5

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

