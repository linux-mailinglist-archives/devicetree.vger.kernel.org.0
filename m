Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7100367E47F
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 13:04:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232699AbjA0MED (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 07:04:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230244AbjA0MD0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 07:03:26 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2050F4B754
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 03:58:36 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id br9so7798471lfb.4
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 03:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+geWY6qVjZfig772ABS5/qXq/ZgJ7dn7lm+IKTyyWoI=;
        b=OMyHpbZ6HsEXqsz63vAd4jHNfBYMOzUxEox4x4gurP8O0BJ3WNDi7Qfju7Qdwg47NQ
         ivENSeZCff6XNNlGgqgzrI4vkWNPIKDBSYo2RZOvtV6lmQigxDq+18EpGXfFCa1MoJPH
         waeigfCMTbN/MfGO1t44svziHIuudDf/rGmDk8h1N527WpTQn+tSiYN5YDHCWF0SAF27
         erqCVpFHDT/g6g8Jpjrni73vdnlsX/zmdSPuByJP/U1wHSigNN8Uj2JNwrR7zyOb3CLR
         8ebi7HH8CzMuaLjenHYUtqpIqUHqnmY0g1br1ykcepRU37Ut1+8vOP5kEW/J9ghEDBDo
         Ds/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+geWY6qVjZfig772ABS5/qXq/ZgJ7dn7lm+IKTyyWoI=;
        b=7PiYIne9bksWTM+o+mRMTrz5LqA+H1yvtHyXUZXfYzgwhG4GsA0ubu0A3CCjqnFz4J
         1EZ4AQpnBo2WjSBQ/MgRavgAWFUwktMD5WaUmN3x4eRoXHBebsH0D7x7tFA8GE0eAX+K
         vE9++58OCdDhuuGoIJQDdVjBZ+vehCMYm86I1Da7DwlxbSabF+pqvx3d1/Q1qQVg/qdC
         +CszROxwZeM6Kw4NsHnnLTjE+0qHxxVNVXwtrjvkmbnbvIIkoFnhCyM9uYqHU2A99KVN
         6OifwJ9X/sMiXI1QNWLRT817qBbFXVSCPbIqLh9HETDLLpqVOLk+/J2DIYOGLnq+8YH1
         I1mg==
X-Gm-Message-State: AFqh2koitUG6iaoMQJ4GAp9P9ifDEuj6/vvyn6GO7zbIXa4kgYUDLtik
        ANgw0wWSvF9R9691GE57PngkJdHlHLzc9Pti
X-Google-Smtp-Source: AK7set+DdbYHUvl6CYuPKq1XuN538q52AQpEocIbtSSMPdQoBsz7gj5GUL/KzPkcIOEzfFJF3/xWpA==
X-Received: by 2002:a5d:4911:0:b0:2bf:b217:e365 with SMTP id x17-20020a5d4911000000b002bfb217e365mr11110995wrq.11.1674819851073;
        Fri, 27 Jan 2023 03:44:11 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z14-20020a5d4c8e000000b002bfc2d0eff0sm3807760wrs.47.2023.01.27.03.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 03:44:10 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 01/11] ARM: dts: qcom-sdx55: align RPMh regulator nodes with bindings
Date:   Fri, 27 Jan 2023 12:43:37 +0100
Message-Id: <20230127114347.235963-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Device node names should be generic and bindings expect certain pattern
for RPMh regulator nodes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

See:
https://lore.kernel.org/all/20230112203653.23139-1-quic_molvera@quicinc.com/
---
 arch/arm/boot/dts/qcom-sdx55-mtp.dts             | 2 +-
 arch/arm/boot/dts/qcom-sdx55-t55.dts             | 2 +-
 arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55-mtp.dts b/arch/arm/boot/dts/qcom-sdx55-mtp.dts
index 6f8909731faf..7e97ad5803d8 100644
--- a/arch/arm/boot/dts/qcom-sdx55-mtp.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-mtp.dts
@@ -75,7 +75,7 @@ vreg_s7e_mx_0p752: pmx55-s7e {
 };
 
 &apps_rsc {
-	pmx55-rpmh-regulators {
+	regulators-0 {
 		compatible = "qcom,pmx55-rpmh-regulators";
 		qcom,pmic-id = "e";
 
diff --git a/arch/arm/boot/dts/qcom-sdx55-t55.dts b/arch/arm/boot/dts/qcom-sdx55-t55.dts
index ccf2b8b42b16..d5343bb0daee 100644
--- a/arch/arm/boot/dts/qcom-sdx55-t55.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-t55.dts
@@ -98,7 +98,7 @@ vreg_vddpx_2: vddpx-2 {
 };
 
 &apps_rsc {
-	pmx55-rpmh-regulators {
+	regulators-0 {
 		compatible = "qcom,pmx55-rpmh-regulators";
 		qcom,pmic-id = "e";
 
diff --git a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
index db7b3d5b0bd0..ad74ecc2a196 100644
--- a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
@@ -98,7 +98,7 @@ vreg_vddpx_2: vddpx-2 {
 };
 
 &apps_rsc {
-	pmx55-rpmh-regulators {
+	regulators-0 {
 		compatible = "qcom,pmx55-rpmh-regulators";
 		qcom,pmic-id = "e";
 
-- 
2.34.1

