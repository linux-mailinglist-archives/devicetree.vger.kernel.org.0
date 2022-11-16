Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DCD362BF53
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 14:22:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233753AbiKPNWk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 08:22:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237884AbiKPNWd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 08:22:33 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF4354386C
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:22:27 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id c3-20020a1c3503000000b003bd21e3dd7aso1611709wma.1
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sHca22LgXYrNlrGnPkySJcOl1jAzkArg0xTiVqkll6g=;
        b=CI/Vugssw++YPfThkn1FKNuih9hkIdMRL/AfJImdRc2E9Bt5HUjeCpC1UByiJs1SY7
         PiaZCNx8YLenQ2ZXIso4aiCFahxR5VeZYVAC/X9Er6Fvs/xskyVaG0IRG9FGEHmSH9dI
         haOt4Zo9AwSJ0lhtJw5C45yWFsYyXWBC8ThJg8FDxC8ZwyecgyHVbSZd/KKOWljecdxn
         F9P8OJkhwFAeAJ4UetV7E9vabOrQQJvo+DwMGojNoBewC+ePag0fKswTUOXieVPERHCi
         U7ddeiLWouDZMa0dWrQO4jspaSUrbMMDm2sYnDWcptPCAirtQ2wBOEzgjxwK6EUtH79i
         zMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sHca22LgXYrNlrGnPkySJcOl1jAzkArg0xTiVqkll6g=;
        b=c5I0zQ40+qoDd1DHv5E8CQFaGpNNt5MRw6AcIgdjfrl6SJugIyP90ySjVPyyiJojCD
         lX9pJ+Csw8hiSKMjXky3K+udzQuhWnZNJYuvdOi+UN0rs1znkrrOzDGxuKwZyittxhLj
         DPp4erDzIUMy47NyJ7Pv/xfftK6MF1siiLRadxUUn7HBRLUI6wCWbZ7KWoY5YQ0Pwmjn
         IpAGGyiC2U7ytVutxaEQNkUG1a2koI5mt21TQnDfPiZUgBc3ff1HyDA3RbEBAYuRdUxj
         mu37usBJnFgyQ9pCno5eojFbCNzjVOl8EDATsulWON01bBKCEaGfUbuBVMVlMZCXJoXJ
         o/2A==
X-Gm-Message-State: ANoB5pn4IdsjrX1LhYiV6LmJ0GPTiEbmLIgv59D4GQqYpII+c+YNWI1s
        NDUHJeGuW3H3LmXbRt36U0NAtQ==
X-Google-Smtp-Source: AA0mqf71IAstJnWNoFFb3080abKMj1I+/JX3WJystRMl1+Xs7S98iXdrAQc/CP4mHZOmPsLsFGouYg==
X-Received: by 2002:a05:600c:12ca:b0:3cf:98e8:3e48 with SMTP id v10-20020a05600c12ca00b003cf98e83e48mr2182134wmd.56.1668604946253;
        Wed, 16 Nov 2022 05:22:26 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e17-20020a05600c4e5100b003cfa81e2eb4sm2322074wmq.38.2022.11.16.05.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 05:22:25 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: sm8550-mtp: Add USB PHYs and HC nodes
Date:   Wed, 16 Nov 2022 15:22:12 +0200
Message-Id: <20221116132212.2842655-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116132212.2842655-1-abel.vesa@linaro.org>
References: <20221116132212.2842655-1-abel.vesa@linaro.org>
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

Enable USB HC and PHYs nodes on SM8550 MTP board.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index d4c8d5b2497e..757cf4f7f195 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -417,3 +417,25 @@ data-pins {
 &uart7 {
 	status = "okay";
 };
+
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_1_hsphy {
+	status = "okay";
+
+	vdd-supply = <&vreg_l1e_0p88>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+};
+
+&usb_1_qmpphy {
+	status = "okay";
+
+	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-pll-supply = <&vreg_l3f_0p91>;
+};
-- 
2.34.1

