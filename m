Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8E24600B70
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 11:46:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231452AbiJQJqL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 05:46:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231440AbiJQJpt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 05:45:49 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEB133B442
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 02:45:40 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id fn7-20020a05600c688700b003b4fb113b86so9590351wmb.0
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 02:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CyWYYyXZ9YYnbw9nEI1oSUAVddSBrod4dJsXHXySnM4=;
        b=PWOkEyp/yKut9ZKFLYk4DAsnf3leaNJkE5Ne2FsUCHwmmbPvJ6atPBLCVmSlb22ndZ
         ebEltrmk07Dc8z5gS581qY3mo7JsPz3W5vmic1M+zGNc7nlv1RBo93tzvKdoVkvVzqhG
         yDC7zjIub0OoCWaZsc4ieybS2JWcC9PJ2v++rZV+ExjXqBKQ4MAIhQkWX8wmNyDsoooT
         13W7X/1/h0Z/t6V2qPHRgNYdLAMD88iouN8nDblliVP4oGDvrlF6z1Ms4DLaXasriLdC
         VYkmKbfyeBI1NfDlvOAgZzZmXvP95hzL7UWm1Pj8ufiD04oc324OwsmLQpWLBmkf6CLJ
         rmow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CyWYYyXZ9YYnbw9nEI1oSUAVddSBrod4dJsXHXySnM4=;
        b=aebgRBYaTbZYfPNL2NBFkebTyRyGJYU9LejJ2DrD2l1LMBFs2QojqlfMwOHuHXietr
         UBqbS81nNBuZzp/pV4unDPb37eaMnL7X+eS/xzbnYDw2SKpPVE9qeUIoNQ+04yKx0x+Z
         mOpwvGV/f7xTsbpYYd+3ixz949lCl6mIU53FFtho+1xAPV4dTfVFyUAmH8EfTes8yt6u
         SvDW9OBTrzPOuhITNHoWJafg/hac9uVHGteqqifTCMzgmWrI8av1g2JWIyJ2r8Xsa003
         3d1aDNiuIE94tXEN+gPnfr6/rfKAg8TUgAkOpDuxw2xLKa49IgCLbbeRaSGkIBS4+Y05
         lf4w==
X-Gm-Message-State: ACrzQf3hdpCaMHpK2dTukCT93EibSRFlubkkUfClAYY+lNcYte+5SOdI
        F9QP1PTvhUpcsOqIQO4JM0lF0X0pk+VXrcHp
X-Google-Smtp-Source: AMsMyM4fg7M3ND/KD/TNgt5lsvuR1FG+vGVLBktObB8hVrCsoKQyvXUbR03B5J16kamZtdBpkknEug==
X-Received: by 2002:a05:600c:34d4:b0:3c6:f695:b5f8 with SMTP id d20-20020a05600c34d400b003c6f695b5f8mr3443409wmq.203.1665999938641;
        Mon, 17 Oct 2022 02:45:38 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id d12-20020adfa40c000000b0022ca921dc67sm7824305wra.88.2022.10.17.02.45.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 02:45:38 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Mon, 17 Oct 2022 11:45:35 +0200
Subject: [PATCH v3 10/11] arm: dts: qcom: mdm9615: remove invalid interrupt-names from
 pl18x mmc nodes
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220928-mdm9615-dt-schema-fixes-v3-10-531da552c354@linaro.org>
References: <20220928-mdm9615-dt-schema-fixes-v3-0-531da552c354@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v3-0-531da552c354@linaro.org>
To:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>,
        Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     linux-rtc@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-input@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This solves the 'interrupt-names' was unexpected dtbs check error.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/qcom-mdm9615.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom-mdm9615.dtsi
index 366241dee522..9d950f96280d 100644
--- a/arch/arm/boot/dts/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615.dtsi
@@ -325,7 +325,6 @@ sdcc1: mmc@12180000 {
 				arm,primecell-periphid = <0x00051180>;
 				reg = <0x12180000 0x2000>;
 				interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-names = "cmd_irq";
 				clocks = <&gcc SDC1_CLK>, <&gcc SDC1_H_CLK>;
 				clock-names = "mclk", "apb_pclk";
 				bus-width = <8>;
@@ -345,7 +344,6 @@ sdcc2: mmc@12140000 {
 				status = "disabled";
 				reg = <0x12140000 0x2000>;
 				interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-names = "cmd_irq";
 				clocks = <&gcc SDC2_CLK>, <&gcc SDC2_H_CLK>;
 				clock-names = "mclk", "apb_pclk";
 				bus-width = <4>;

-- 
b4 0.10.1
