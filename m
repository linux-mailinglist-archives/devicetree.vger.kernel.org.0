Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92E7C6AAFC7
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 14:00:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229694AbjCENAQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 08:00:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229695AbjCENAK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 08:00:10 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5082713532
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 05:00:04 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id a25so28235764edb.0
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 05:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678021203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tUx1xLTlutgBfjIYu/Hp8av6rLoDT+60813IRc3iOvM=;
        b=giRAwX8M1n42CaSGiQqAl5I/m9OROZD4QOPzN3XGz7hmM/QBsMqs7wTOx5y2idBNKK
         t/VTAdSVv92p34Ot/KZ52ODAImnfQX/MxIr92aQcK9qEOHvxOJz7FgthgBkoZ8E4LpMi
         PSc8n2wPDrQO8qniT35+fDJllG82coG9F4Dfk4MH+dvPxyIWu7VcRNkNP9Z+el/CZiJ9
         BgogfzYmFRI3AX7jxG5Qg+3KP+m2Q7NFbhq2k9HXPhJwp6g4By1D71aIRCOXRh884G/2
         eI6/hwmvxJ7yTxVgaUojMhj5spRqe1Wvy/2QvyP6UmCwTJMAxu4GoldfARGx6IM21MaZ
         pWNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678021203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tUx1xLTlutgBfjIYu/Hp8av6rLoDT+60813IRc3iOvM=;
        b=WCpQ/bMtTclsWNKXMcjkkLgY6dEBwZU1p/+M3j4m9rrLriB5HsDfWaPuL1yC5RK5KX
         cA4ytHdz24jCQB4t52uIPGFU1y907Ud4CKBpSWqnwU7M1w/WZ6rJDuZ7IQJfDhD/rKjw
         GGDU61C59RC1G9YuPKNyheq/updfxyLjyQCMcmjp2u0jB7aXe5axN2eN8CEV+FzLAf9S
         Y2hdQlDGXHikMGgvXlVvTjAKNBU/7rGQkXd7oAk/tFKshq9zD1hcl84LE1pHIcEOETI4
         kZMS0d85bfS+UXjl1cD9bTYzyEPjYN0JnajkM0mLxrY5WdXN3u1Lj+G138SxVO74PXp0
         JuIA==
X-Gm-Message-State: AO0yUKW5N/iaV+ggk6diTOYEnEl78JXOoc6B419w9MQYUa/52QdF0Puy
        etAxe3S6BcyBWe0aFpjapsHGsw==
X-Google-Smtp-Source: AK7set/F26AdavjzYxP6OwLV+s0or+wWJpBP+B6I1eV3004Q1TS6HefhPA6otk8pUhQTCGpSjjiFqA==
X-Received: by 2002:a17:906:5ad3:b0:8b1:3b96:3fe8 with SMTP id x19-20020a1709065ad300b008b13b963fe8mr6919932ejs.52.1678021202920;
        Sun, 05 Mar 2023 05:00:02 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:71e7:13d:1c29:505f])
        by smtp.gmail.com with ESMTPSA id l15-20020a170906078f00b008ea8effe947sm3193158ejc.225.2023.03.05.05.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Mar 2023 05:00:02 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 07/11] arm64: dts: qcom: msm8953: correct RPMCC node name
Date:   Sun,  5 Mar 2023 13:59:50 +0100
Message-Id: <20230305125954.209559-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230305125954.209559-1-krzysztof.kozlowski@linaro.org>
References: <20230305125954.209559-1-krzysztof.kozlowski@linaro.org>
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

The bindings expect RPM clock controller subnode to be named
'clock-controller':

  msm8953-motorola-potter.dtb: smd: rpm:rpm-requests: 'rpmcc' does not match any of the regexes: '^regulators(-[01])?$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8953.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
index 610f3e3fc0c2..4e362b9012bd 100644
--- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
@@ -269,7 +269,7 @@ rpm_requests: rpm-requests {
 				compatible = "qcom,rpm-msm8953";
 				qcom,smd-channels = "rpm_requests";
 
-				rpmcc: rpmcc {
+				rpmcc: clock-controller {
 					compatible = "qcom,rpmcc-msm8953", "qcom,rpmcc";
 					clocks = <&xo_board>;
 					clock-names = "xo";
-- 
2.34.1

