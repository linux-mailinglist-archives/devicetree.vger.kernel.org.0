Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CD596E8A74
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 08:36:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233913AbjDTGgS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 02:36:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229687AbjDTGgR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 02:36:17 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1F2846B8
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 23:36:15 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-506bfe81303so610104a12.1
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 23:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681972574; x=1684564574;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a4yglOSPzzAHeSTsBLg4Ee200Y5n2ib/pHvnlVkuu8o=;
        b=GKgYqE0Fc+uJ5kRRIqNbc9rVRxh0ybrUbCORXk9+Upqjxd75nmSQC8NG2p9uMjbu2W
         TGRr/fkZoamE/44gxLfsO6dNrxtyibTZ3aFWaDkd4A1yg00wjApbB4XCyPQ7nB/hpWHl
         gqacRrROOD7v3c+bNhcz9zdep5nNLAqW2/xHDs3+lJtVVcVLIKtcxvGWKuEv90q6tG8T
         FVGuFThiraRMgwUjrwNPagcMopMEOlzY07tqdr0O4kRuXOjBfTTr9hEzzItLRn7QIadO
         loK10Hw+DcgVlq1R1xm4S0Kd9o9qvmkRPw5DS2gYn6LPLTtTWTNg+smFTjQycQ0WqAeP
         SO1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681972574; x=1684564574;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a4yglOSPzzAHeSTsBLg4Ee200Y5n2ib/pHvnlVkuu8o=;
        b=R+AYT2mGuMBttWjt/TGui8zyEwE0WI6Z/N+w7+ljN92BMgDKnHEy8bkG2Y0KeOu7Pg
         HL0oUU27HPbBXaIScMLhZ1wxzFswH31m3dp9/aFJ8ani9mJuO8FdHflcDEuEYJLwGM3D
         jValmfF2OXS4Nq1eujdTdHshXqcCQGP6BJAJ4O2SpfHMS1UfDK96YPUPe45qg35kkQNN
         bhWaG2+3S9rc6QMolQ+LYbZOsW2IvT1Z0TkinitBlHLxqhRlypRR45q8PL++TLYJ1VfU
         tuinWm4OF2/O+0CF/mUfxj4CwnYzin4iksdoQBs9klBmAeYeBRxuv5PXC31Cb18FgyWR
         c8bA==
X-Gm-Message-State: AAQBX9fZrEVZcJYYUpzubGm1KeAxkX+dEReS1gpqzUk210Dv5/M+ndhH
        4Te6xSDrlJEWopbN6kyjmKWqHg==
X-Google-Smtp-Source: AKy350bwuDjqv38vYkF8i9BugJ61z75Dyp9Wk+2ngnBHHNe1sdFCU9zikbH5B/r9ROg5GNbmtIlpog==
X-Received: by 2002:a05:6402:74c:b0:506:976e:5242 with SMTP id p12-20020a056402074c00b00506976e5242mr630503edy.25.1681972574318;
        Wed, 19 Apr 2023 23:36:14 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:bcb8:77e6:8f45:4771])
        by smtp.gmail.com with ESMTPSA id f7-20020a05640214c700b004fa380a14e7sm395342edx.77.2023.04.19.23.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 23:36:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/7] arm64: dts: qcom: ipq6018: add unit address to soc node
Date:   Thu, 20 Apr 2023 08:36:04 +0200
Message-Id: <20230420063610.11068-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"soc" node is supposed to have unit address:

  Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 8ec9e282b412..e4267a6ec9a5 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -198,7 +198,7 @@ smem {
 		hwlocks = <&tcsr_mutex 0>;
 	};
 
-	soc: soc {
+	soc: soc@0 {
 		#address-cells = <2>;
 		#size-cells = <2>;
 		ranges = <0 0 0 0 0x0 0xffffffff>;
-- 
2.34.1

