Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEF4B73A064
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 14:02:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231368AbjFVMCd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 08:02:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231162AbjFVMCQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 08:02:16 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3AE82708
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 05:01:54 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3fa71db4208so6371505e9.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 05:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1687435312; x=1690027312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pNAeXLliRXJ/Fju8aom0p2nCiliRpCVZGRMXzhoOle4=;
        b=Eg5P5nkwqggXiAkSQlSXkGdRxJFqB0Y/mKfA979fmkGozdANKi7Nd2fwOa0CSm9mea
         YOR3tMUyLUPtkm4Q6/4pnN6N3CW/Bk/KQkrA/FgIWNMpQL34lJp+iGqkON4pQ6ZcrXAB
         /1RkxD+2bjSPHAHyLcEGEikd7By+lZxqKGAb6l6hIPO73dL/2wYmJn80juV0nS5sotUv
         YTrwY/2Qro+HPwYmtLr/ky0//qErPakpAf5njAl8aMvUBIQU3VX9YU7O4AT+Yu8sk1oE
         CQKxYuiTn7bFzPdkXy5swITVgc3P4egQBDi8NJSv4d6you8KPxKI75u+tLsNVF4QNQkU
         Yyeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687435312; x=1690027312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pNAeXLliRXJ/Fju8aom0p2nCiliRpCVZGRMXzhoOle4=;
        b=Mt8cHjGxJ0/1ih3kYZaL14Mvs25N1HCDMruWSBSCRyhDy2F/jbZrcroKYZkLmT3VwE
         DToi1GsbCThwOhfDbq8qS6KvyP6Ni2/DzCx5JjCnVGNP/lKjnXciwzBPNmZl0BIoHKlK
         w/HDN3CDUh1ieHecJYnYY8UgTWcySEN+eznR3qfFAEjykj2oYhNndv1d7dQ+dcAXYG0G
         MFprD9j1JQMJY9neHYvGVUhRt43iUXU+bUl4g76AIfZoCt4zg58+h1DjeygDb0d/sA14
         NmgsmkeBogOyBkVo7DF0Jymj8xG4LjiR2+zYf+XlbxmpNX7CtqbHnV9Ws3KXhcq562Ao
         edIQ==
X-Gm-Message-State: AC+VfDwQSUPyQlbSVFk8gzJdFJjsKWN+b7ejFUVfOtMVV5DicTWKbBzW
        sdFnfCriEbBYyPMLy8Yx0ScSVg==
X-Google-Smtp-Source: ACHHUZ623qSTpv6LHLD0L0z1POeFaDwWSKr0LgOVmSpoH+ZotM8lOmLmmlqstH24oxjFygDatL1GHg==
X-Received: by 2002:a1c:4c14:0:b0:3f9:b0c2:9ff7 with SMTP id z20-20020a1c4c14000000b003f9b0c29ff7mr8094437wmf.30.1687435312358;
        Thu, 22 Jun 2023 05:01:52 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d785:af3e:3bf5:7f36])
        by smtp.gmail.com with ESMTPSA id 17-20020a05600c231100b003f8ec58995fsm7594296wmo.6.2023.06.22.05.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 05:01:51 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [RESEND PATCH v2 1/5] arm64: dts: qcom: sa8775p: add the SGMII PHY node
Date:   Thu, 22 Jun 2023 14:01:38 +0200
Message-Id: <20230622120142.218055-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622120142.218055-1-brgl@bgdev.pl>
References: <20230622120142.218055-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the internal SGMII/SerDes PHY node for sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index b130136acffe..b6d95813c98c 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -1837,6 +1837,15 @@ adreno_smmu: iommu@3da0000 {
 				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		serdes0: phy@8901000 {
+			compatible = "qcom,sa8775p-dwmac-sgmii-phy";
+			reg = <0x0 0x08901000 0x0 0xe10>;
+			clocks = <&gcc GCC_SGMI_CLKREF_EN>;
+			clock-names = "sgmi_ref";
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sa8775p-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x30000>,
-- 
2.39.2

