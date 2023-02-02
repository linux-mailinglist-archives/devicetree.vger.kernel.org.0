Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2BBF688417
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 17:20:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232640AbjBBQT7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 11:19:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232876AbjBBQTp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 11:19:45 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5861464690
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 08:19:42 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id l37-20020a05600c1d2500b003dfe46a9801so344148wms.0
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 08:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TQm/aDJypA6VJNqGggGRp8pi0c1RvwX6CqC3v3eJ3U0=;
        b=qYYHf38oLxoDJOgkZhrNKVmD32GCEmsYgyVsdUx/d5qBzpZZQ/sdG/AA2L5L6HZ3lp
         Zqxevh1vQ8fatYCBYD/1Pzk7956nyqNrpsfQhtOuv8pcnOoMxG5O4TU6R5HuVZffP1eD
         rFXH7xy/SCiXaNGqSNbiUnK4xiz5o3LcvjxI8TwIVlL3EdDWi4RNgsrPHNYArHkARJzE
         IJLGXw4JH04k6P1m0fx49+9+/msR33fGPYzudV9+XQQvG+bA2M1V3s77/p1eY4Qelwak
         lVkmQIXvxvWi+nB812slOE7d7Q8nxz9342SnRUiM5Yp9GQgTnZ89d0m/Rg6Z06ayRDii
         GqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TQm/aDJypA6VJNqGggGRp8pi0c1RvwX6CqC3v3eJ3U0=;
        b=crwEtRaHEm0ffAqGW1f6TxcWNE6j65+3Pf5PUtC/Lb/r+8mjXGRlbAtmcFSjEWZ7mq
         Fe7AuJ/ktmNGyl8AcOrXF02FS9U9ImH0ys8Za/Hso+H5FpgWE/rtcrSnAQBfjNqtHWc+
         lR28aS00saSaCea5ysJFWYZYi+QpSTCsxMOfhUzmdDLx8rXAYAMKJ9kouWycvGTNM5u8
         bujAfost889MHiAgHV8fyl2z9BSxIRxqQ04unQyQlQhfJ4QjlHp0rKF1dI1MmDLf+6JG
         TelIvgayaQJ/vxnR2T0OwTOmQKmRFcGQBaTjQJ2Bk2XF7MtlHnsr821V0CC2cqM7ZKIx
         HrKQ==
X-Gm-Message-State: AO0yUKUFvCNgLja9UKpRIPYeGk9v3k00p9u+5EXRzTe+bNGbQE4Tqgw6
        cLdr/XNnc37Bgdhaupfu86BVkg==
X-Google-Smtp-Source: AK7set/GiVfTA094E34/ENFp26eFww8Anyqigx3Ix110eu/NZTrC1rcWcIsmFrQQIRSyf/htJl1avA==
X-Received: by 2002:a05:600c:3489:b0:3dc:de85:5007 with SMTP id a9-20020a05600c348900b003dcde855007mr6638666wmq.21.1675354780878;
        Thu, 02 Feb 2023 08:19:40 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c351000b003dc521f336esm212416wmq.14.2023.02.02.08.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 08:19:40 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 04/13] arm64: dts: qcom: ipq8074: add compatible fallback to mailbox
Date:   Thu,  2 Feb 2023 17:18:47 +0100
Message-Id: <20230202161856.385825-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202161856.385825-1-krzysztof.kozlowski@linaro.org>
References: <20230202161856.385825-1-krzysztof.kozlowski@linaro.org>
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

IPQ8074 mailbox is compatible with IPQ6018.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 0e3d1d906a22..4cbbe3add2c6 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -680,7 +680,8 @@ watchdog: watchdog@b017000 {
 		};
 
 		apcs_glb: mailbox@b111000 {
-			compatible = "qcom,ipq8074-apcs-apps-global";
+			compatible = "qcom,ipq8074-apcs-apps-global",
+				     "qcom,ipq6018-apcs-apps-global";
 			reg = <0x0b111000 0x1000>;
 			clocks = <&a53pll>, <&xo>;
 			clock-names = "pll", "xo";
-- 
2.34.1

