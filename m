Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBEA851911C
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 00:16:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbiECWNH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 18:13:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243524AbiECWNG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 18:13:06 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3C5D41FA5
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 15:09:32 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id s27so23719595ljd.2
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 15:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=x77yuXv5BtdGGUwSqrBKhtb4m+5xi8gdiDRGz1Tgj6A=;
        b=MvfR5KWnkyQ5z66XRLgt9gUNzNfzz1E2OfAei0n+QCgJ4T1ZBor405muZpdNFVvj7X
         YinivZsQsofFLprI0NMQSblwMJ3FeZoaIs5HE5nbVpF5q+FwUUF9nsTz8FUKlX9OZ/qr
         hCnuo1EUYwqvQjCiY+BRH9gxlD+FHogX1z5sdvrKi7OM0x4O3CRHVbmwsknItKxMU9r5
         1a2kK7O7/+/8eVfMUDy5HHNnsgOpTuGg66cTyW5R0mM7Ez73vEzjVdviipCNmLlHgBU5
         9zugz3vlB5m4leSiXij2kYFfOmyQ3iltkhj6tsm0zAXcfXwMVKvUyE8BGNy4iI2it92Q
         Zs5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=x77yuXv5BtdGGUwSqrBKhtb4m+5xi8gdiDRGz1Tgj6A=;
        b=LztdPF5cEnfip2++ROZGrpSXlkLxfFO1i57ocEViXvdip6orvy55Fj8m0Oi3vb6Mn1
         Flzaudc4Dq0M0hSMQist7e0k5TRnEE76kf9u+SAYbTaYmU61K7Ay6A04UHVkoqaUc038
         1+aOcAyMdY6bFxxQD6rnezcQxOg2SN08GrxXmvDyxMCE+CvKodOWStxdSqPqg0a/kwmH
         j7H1ESa50p6lk6/5bXhGvvwUxcfgUzVny15PqksV+k4buzjSa/je3DAuOW/qa4Anvus3
         G4IoAYog/dycxYPIYHpDHBg+i9qIA6F6wdJy5iou+7xC9JHlXQyZOhetUij3q41rOPzF
         pQnw==
X-Gm-Message-State: AOAM531rO+jtzCcfKaRwzXSAu53jAXjGbikj5BwXl0Gu/aGQLq70QQbO
        dNAWYOc+fgcwUduPEfSNZDWGww==
X-Google-Smtp-Source: ABdhPJyGax+qrJ+6s7feG3Xfj+msn65IPVR71DAfH8LtdyQsEx9xN77RxAwEgYmZf9D5u1/HkeRBSA==
X-Received: by 2002:a05:651c:549:b0:250:6051:b5 with SMTP id q9-20020a05651c054900b00250605100b5mr4491859ljp.36.1651615771135;
        Tue, 03 May 2022 15:09:31 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j9-20020ac24549000000b0047255d2111bsm1042349lfm.74.2022.05.03.15.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 May 2022 15:09:30 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH v1 3/5] arm64: dts: qcom: sdm630: fix the qusb2phy ref clock
Date:   Wed,  4 May 2022 01:09:25 +0300
Message-Id: <20220503220927.960821-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503220927.960821-1-dmitry.baryshkov@linaro.org>
References: <20220503220927.960821-1-dmitry.baryshkov@linaro.org>
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

According to the downstram DT file, the qusb2phy ref clock should be
GCC_RX0_USB2_CLKREF_CLK, not GCC_RX1_USB2_CLKREF_CLK.

Fixes: c65a4ed2ea8b ("arm64: dts: qcom: sdm630: Add USB configuration")
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 45eaaa6a4a74..d8c3d2569340 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1262,7 +1262,7 @@ qusb2phy: phy@c012000 {
 			#phy-cells = <0>;
 
 			clocks = <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				<&gcc GCC_RX1_USB2_CLKREF_CLK>;
+				<&gcc GCC_RX0_USB2_CLKREF_CLK>;
 			clock-names = "cfg_ahb", "ref";
 
 			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
-- 
2.35.1

