Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8389C654B03
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 03:12:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235866AbiLWCML (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 21:12:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235120AbiLWCLT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 21:11:19 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74D1A10066
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 18:10:47 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id y16so3402110wrm.2
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 18:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eHjoTnRNTZFA0ZBsqDkIXARH9jeUb+0DAfgRumKgoyA=;
        b=lBDQtSit+1LqfmJbT1uhbKUQP17QT6jOYcXSoMTBTOZLa2xXlUhOmhQKhAvtRFKopi
         Ay1nv3bo5Xrq8o5PcsK6DjS4wliQlovmoSSTSpInMaUc8mErA8Ro1SyVnrhidsTAfAzl
         SFv5CVFN01XmU0CiED1g7Wh6QdmlHPrvuSv0YkFUQWkCjCY4Crb582wgyPwFIVloO4iv
         UVn9aehPzGoeFjylzhnKGyO4yMuMEQIiQ/My8GmvBzObXQ4uLD6kmTKz3PeVzkTgXorZ
         RvAw4sA4vGMjWnfUnjv7wxYrvC92tR8p5w0OpByZ87hIyTzNOnVlEOFoKOix2lgJCbH3
         zzzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eHjoTnRNTZFA0ZBsqDkIXARH9jeUb+0DAfgRumKgoyA=;
        b=YAWp3KUkLE/ewETFswNWT6TIu0IZnjtuUP8O+PGi+PUi5a21WSq1Mv1178I5GIiNzw
         Im62+AXhrTTLTIQg63fJ0eZAccGx9cEmkNgZinJiNuHGW2G3MIgPKp4W3JLl9Ke+yZQ9
         KF3ZOJP3rk23lxOpfwp8WsJVxQpQrUD2Tfa2EhA7T3WawlG3HsFvWF1vc2AnSBJ+KvF5
         U/UijX/hGw0vKBVtchLhQj6Bmt3xu8r7/bnv/p8YRp9xiblaVF26hWDqimxSBJ6gzYzb
         vvdBTCNNPOFk2aIVcBfM+/zdPubsYtOZRyhbLJVcQJm7d2huX4zwbCYxGId5ftU21dt6
         1Dww==
X-Gm-Message-State: AFqh2kqT1PISYiiW8n+laiEw3DZKUHVztYHpMYD4Yag8SovBm7bXt3+1
        asFqP0yKML1gmA3xBqcY7E7VQw==
X-Google-Smtp-Source: AMrXdXsjlvDyNSKBvKq4fxfuBOK1I1bluwc0R6MKJ8g3VyJ6MY+VRGeAv1iWAuoPLG8kUzwNT8Trjg==
X-Received: by 2002:a5d:4950:0:b0:26e:7604:6575 with SMTP id r16-20020a5d4950000000b0026e76046575mr3878257wrs.65.1671761447428;
        Thu, 22 Dec 2022 18:10:47 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d452b000000b0022cc0a2cbecsm1849725wra.15.2022.12.22.18.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 18:10:47 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@chromium.org,
        david@ixit.cz, krzysztof.kozlowski+dt@linaro.org,
        swboyd@chromium.org, konrad.dybcio@somainline.org,
        agross@kernel.org, andersson@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v6 18/18] arm64: dts: qcom: sm8250: Add compat qcom,sm8250-dsi-ctrl
Date:   Fri, 23 Dec 2022 02:10:25 +0000
Message-Id: <20221223021025.1646636-19-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221223021025.1646636-1-bryan.odonoghue@linaro.org>
References: <20221223021025.1646636-1-bryan.odonoghue@linaro.org>
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

Add silicon specific compatible qcom,sm8250-dsi-ctrl to the
mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
for sm8250 against the yaml documentation.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index dab5579946f35..9240132efa75e 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4050,7 +4050,8 @@ opp-460000000 {
 			};
 
 			dsi0: dsi@ae94000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,sm8250-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae94000 0 0x400>;
 				reg-names = "dsi_ctrl";
 
@@ -4141,7 +4142,8 @@ dsi0_phy: phy@ae94400 {
 			};
 
 			dsi1: dsi@ae96000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,sm8250-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae96000 0 0x400>;
 				reg-names = "dsi_ctrl";
 
-- 
2.38.1

