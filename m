Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3D5162C2FA
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 16:49:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233330AbiKPPtn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 10:49:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231937AbiKPPtk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 10:49:40 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D99DE30F6C
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 07:49:39 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id g7so30201846lfv.5
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 07:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WRq975pOHSBL2O4qHBQgJgyg+ZtVjZYYysfpveiobOw=;
        b=uqzcSMjgkiVeNaT86rHdysOYS4NDSWXMJ8hQub0LY2UA7TZyDXtdEn7bJv5TGoDx0B
         CQm1AEeOJKLklli1T6gY2PH5XKQecsoHNkRXoItFKkrWY3r/ADXVNWI9/k3M4pMVoZQw
         FrlGckv18rUfHA8irLlyyDrMwqc5QSEr2cH7M9MrsWSlc4LPZHK6YLFQ+SlAGvSJVLXC
         kE0TulnpTLnqEvjrF+zIEM4oHl7qg2WEOdfruGogiZsnnm6pGtNsZkZChlGGJfYiw/qP
         h7P1Edig0s9Fk4MdE4ofS/S94ZU7li60R7QRZmC3NcSmUCMFSrXu23LesNKeqMlORHwN
         1Llg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WRq975pOHSBL2O4qHBQgJgyg+ZtVjZYYysfpveiobOw=;
        b=T1ynUi4Ib9sIGfEDrfzKB+nvfkOBOYpl6VdkyeNjkI7TVSuyHy+ssmzpGOs2VjVzuF
         3w6a3A3QNnF+DneegqcO3EHgP4AgHo9JhhFfmHW+xqd4/4rDKiy5ocwXdBbRJeICcjf/
         POGHCfvAbmSIJZXnEe9nBG4NmdtcOk4l0WjCkiGDlD+lxuo9x2eEaXl8fe8jcmJ9qoOm
         DugQNh99Tx5sD1vK/0hupOZKbwltVQFpl0tFOqAkT5h6eTvf6aJgFe+MRGVDw9vdfvd/
         RfTHkRRhX9U+AeGmNiPphYs6IUL3iWi9v4v6AyfY+BJu0ddj6wyxXeUi91975MVbpqXi
         Y9rw==
X-Gm-Message-State: ANoB5pkQrI2bH2vs7f+vjXapgoF/BMt6sB5dQtt8h7jz5f8j+IlzvF1m
        V/Otu4/fnznFvUjmne+l2aDV0NBI9nAPY/q7
X-Google-Smtp-Source: AA0mqf5UKRMNyZg3+iBk/VXqraGa6I6JRnHq+iZuGCwDMFfc/EfQNZebTW551muRhEqG1J2cO+NVQg==
X-Received: by 2002:a19:2d53:0:b0:499:cce2:12d9 with SMTP id t19-20020a192d53000000b00499cce212d9mr8132767lft.4.1668613778061;
        Wed, 16 Nov 2022 07:49:38 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k2-20020a2ea262000000b0026dcf81d804sm3060422ljm.31.2022.11.16.07.49.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 07:49:37 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8150: use defines for RPMh power domains
Date:   Wed, 16 Nov 2022 16:49:35 +0100
Message-Id: <20221116154935.163810-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use defines for RPMh power domains instead of hard-coding numbers.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index d1b64280ab0b..136fa5360e8e 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2074,8 +2074,8 @@ remoteproc_slpi: remoteproc@2400000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd 3>,
-					<&rpmhpd 2>;
+			power-domains = <&rpmhpd SM8150_LCX>,
+					<&rpmhpd SM8150_LMX>;
 			power-domain-names = "lcx", "lmx";
 
 			memory-region = <&slpi_mem>;
@@ -2619,8 +2619,8 @@ remoteproc_mpss: remoteproc@4080000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd 7>,
-					<&rpmhpd 0>;
+			power-domains = <&rpmhpd SM8150_CX>,
+					<&rpmhpd SM8150_MSS>;
 			power-domain-names = "cx", "mss";
 
 			memory-region = <&mpss_mem>;
@@ -3246,7 +3246,7 @@ remoteproc_cdsp: remoteproc@8300000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd 7>;
+			power-domains = <&rpmhpd SM8150_CX>;
 
 			memory-region = <&cdsp_mem>;
 
@@ -3747,7 +3747,7 @@ remoteproc_adsp: remoteproc@17300000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd 7>;
+			power-domains = <&rpmhpd SM8150_CX>;
 
 			memory-region = <&adsp_mem>;
 
-- 
2.34.1

