Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57A5A6B079C
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 13:59:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231395AbjCHM72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 07:59:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbjCHM7W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 07:59:22 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B405295E25
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:59:17 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id o12so65297319edb.9
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 04:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678280357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tiOX3EwmDm+TIkQYNUVwo2Lbwde19XmeD+yyDx6/Zb0=;
        b=UhJdZCwP9sY1Xjw6VakwwXtj5apPO78F8w3lY1yKboT4OhrwTsRsiRPhuET5/9iIPV
         jLrXKZhWgTkxgNZc2Cc6L6CYIU+prVXq3oswicHyeK9ENTcV+OqTwX++4I5lgU6ze9hJ
         fQmS3IoxVs2R4YDXmJMCT47XflifGiItfrSgYgCJzdORVpvtd0iiIL77rgpxcqxohEwU
         9V6bg+sfTv0kTP/+DO6PMC/jfN9XZ55is5WiafiqtHbkMUPXzcN5yMOcoQIgNK3tHEBY
         2GlU+oRs/KpS8NnCrx3oaH1HBppDVUDy9vfcNu+mSAajGVHiKl8mTUhNdecxO1Izgf89
         y5Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678280357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tiOX3EwmDm+TIkQYNUVwo2Lbwde19XmeD+yyDx6/Zb0=;
        b=Yq2G1+fIKfcmd9VrIulOl/NHgUVV8XrtJ3ak06pmfSvpqOiSJdBGW2gZqYwZmgx5LY
         eE6rninboaoDEq4fsnImqxGV4Q55VhS1Y10VON8lHgH7BU39sY9pld58cNPYTaRACFwF
         EEL0JWSW4QQ2tH/ceZd1r0Q4oImmpD19FVxZELlBbRXJAiluTRURBakhMuCqijduVPCN
         7qdBKinZ0TQ5wNxEvudquK2z9y7eJGXGWY8hk0SZ9AxIQ/CKbr2WqC9Ud333EkeINq84
         UfczWTu58Tz//oVx2qzYft488xWEbg4poBUnsYPYTmxd5uSRlBrRIwi9VeW8hFc9yHHS
         JpvA==
X-Gm-Message-State: AO0yUKWj7+lVtOLd+R1cucJbEYEcYYgbPRm2d2dr78mFEhRecGaF/EKr
        lcn81bi07Hn6B/awhouvhPrxiw==
X-Google-Smtp-Source: AK7set8P5laOUt5KBCn2WPVQHWidhh0zGyoi3i2u+ROAxrrYnBUiGAQsOFbW8hUB19p0Yx5zvDIDvA==
X-Received: by 2002:a17:907:7fa7:b0:8d7:6699:3bae with SMTP id qk39-20020a1709077fa700b008d766993baemr21663478ejc.57.1678280357260;
        Wed, 08 Mar 2023 04:59:17 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id h25-20020a1709063b5900b008d0dbf15b8bsm7464141ejf.212.2023.03.08.04.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 04:59:16 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 09/11] arm64: dts: qcom: msm8994: correct RPMCC node name
Date:   Wed,  8 Mar 2023 13:59:04 +0100
Message-Id: <20230308125906.236885-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230308125906.236885-1-krzysztof.kozlowski@linaro.org>
References: <20230308125906.236885-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The bindings expect RPM clock controller subnode to be named
'clock-controller':

  apq8094-sony-xperia-kitakami-karin_windy.dtb: smd: rpm:rpm-requests: 'rpmcc' does not match any of the regexes: '^regulators(-[01])?$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

---

Changes since v1:
1. None
---
 arch/arm64/boot/dts/qcom/msm8994.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8994.dtsi b/arch/arm64/boot/dts/qcom/msm8994.dtsi
index 9ff9d35496d2..768fe2326933 100644
--- a/arch/arm64/boot/dts/qcom/msm8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994.dtsi
@@ -242,7 +242,7 @@ rpm_requests: rpm-requests {
 				compatible = "qcom,rpm-msm8994";
 				qcom,smd-channels = "rpm_requests";
 
-				rpmcc: rpmcc {
+				rpmcc: clock-controller {
 					compatible = "qcom,rpmcc-msm8994", "qcom,rpmcc";
 					#clock-cells = <1>;
 				};
-- 
2.34.1

