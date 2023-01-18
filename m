Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3746671913
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 11:37:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229932AbjARKhr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 05:37:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230212AbjARKfn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 05:35:43 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0A743D912
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 01:42:45 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id t5so28883963wrq.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 01:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c11ZbMdZ6CbR/mvUDBlMS1lilf+DHkhh5Ihu84dTUVE=;
        b=hZKZz+lnxUovUiiGxVM3l+A/RSBOtJaBnGY3UkTiMlcVqLx1VEBqtrh9rk0Xopo+HA
         HWkLfIQ7e87UA5S03VQelaYMkftUxBrh1sUUa8isG4h2sw02xRQjj7F1Xs+J1c/DE/2d
         coKhqajODBmQsSdCdYQFgkas5mOV5Fbomhb3aqS4mxFBmni4LKH9y1QCqwSdsq3t2N4P
         OMeNnFo5eurFs5vaQ8eSIx87qg7qXnFPnV7JMRgy4Hcq2vcWYJvlUF5Vb9HH5Pw2PYCY
         f2TiKGNCCgKvdWExVP1oaWHSBrO3bNR87HOkPFnTXE2Fg1qVEj9W9YSDG5hGbuBYSsCC
         yilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c11ZbMdZ6CbR/mvUDBlMS1lilf+DHkhh5Ihu84dTUVE=;
        b=dS3jZwZPSSxmN7B7f8/VfuB0/XhotLSyJ5uGC+i3HY/bQNNfBq5r+wiYi15KUbdFo6
         tlqua5b3dBqSs5vbBmtQKkT6euROQIagQvbHGJ5MeYE5A9u1OFuL5QdWcbHbJWt+MvwR
         2zIwr4dsmlETN/abfBLDpC63jAz8pY0/AsIpkVMbyBxlPef3tXYCZm0eq81Rtrt63b2n
         VWblO2w7bdth5X2GHpVPPLPAezq/yk9wMf0Jv6V7waJwyBXNyuClTEd7V3F/V0RpNJPx
         si0lUuffQLhsDt31SX1nknpbesyC1NAHVwk/7Hj2YM+adt8zddKgxQO2qLmKrFI9ogWJ
         /W7Q==
X-Gm-Message-State: AFqh2kphF12MZxmF00ZRDVO4709990qA0ppcTP3fg+5EJ6lOndZlFTdp
        ld2kHEwL3aIw/DDFpGsijSO6kNu9fCRWOQCl
X-Google-Smtp-Source: AMrXdXuN6LTcHYyVsgIQEDbl/n4CyNNDt40KrlPNntvuUqzdcGb+sAFsWbqCydmGsTKrPJ1lIy87vQ==
X-Received: by 2002:a5d:4606:0:b0:2bd:e960:9855 with SMTP id t6-20020a5d4606000000b002bde9609855mr5663227wrq.18.1674034949954;
        Wed, 18 Jan 2023 01:42:29 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m13-20020adfe94d000000b002714b3d2348sm30972662wrn.25.2023.01.18.01.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 01:42:29 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] arm64: dts: qcom: sm8250: drop unused clock-frequency from rx-macro
Date:   Wed, 18 Jan 2023 10:42:22 +0100
Message-Id: <20230118094224.51704-1-krzysztof.kozlowski@linaro.org>
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

Neither qcom,sm8250-lpass-rx-macro bindings nor the driver use
"clock-frequency" property.

  sm8250-mtp.dtb: rxmacro@3200000: Unevaluated properties are not allowed ('clock-frequency' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

---

Changes since v1:
1. Add Rb tag.
2. Split from SDM845 audio patchset, so this can easily be picked up.
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index f614992709d2..b22569101314 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2301,7 +2301,6 @@ rxmacro: rxmacro@3200000 {
 			clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
 
 			#clock-cells = <0>;
-			clock-frequency = <9600000>;
 			clock-output-names = "mclk";
 			#sound-dai-cells = <1>;
 		};
-- 
2.34.1

