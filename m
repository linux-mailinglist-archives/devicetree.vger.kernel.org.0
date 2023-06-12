Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71B5172BCB0
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 11:32:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235152AbjFLJcd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 05:32:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231223AbjFLJbD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 05:31:03 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73F3F3AA7
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:24:59 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f6e1394060so27861475e9.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561898; x=1689153898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dryPugxzZVkqmEr4Pa67GWmkXSnMJtg4EXukR1I6igY=;
        b=M5U/hsARaGla6BtHBrfakRsf8bgC4Xv7LPP5Nj/IRwkteEW4yhKwcSaFwSQ1iHYbWm
         Q0yiPLZAjS9ogGsUnUy/dhShfi9KcDvvB2h2CuruXjTqQF5VmqHPzqtBqySGi24k9f7c
         ZzcFGICrp8SyArBAwoabUFjTt474+VBi0upbh1KdppDpS2YwuCJH863C6jTtvXX93E3O
         RwShAOBQ99lfLQ8gcI9PTAVl4liqjyOogX/Z4fLNTj7ZrvRel3u6DlbW+ZTFUyxj/e0d
         +zcpbnQHWCVagDqk6GjVif26k6GX9dlAwxw6XZWdkX1DKUWy9b1/JZjtUV/uxvFF871x
         WYFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561898; x=1689153898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dryPugxzZVkqmEr4Pa67GWmkXSnMJtg4EXukR1I6igY=;
        b=LONjpVhF6sJiwIsIQ+XB6iwtI1ubMdknJ7KwPFBQv/o+3FvWHRR0lmnh/AgqlPHr2q
         tbWEQ4RPm7Jx/+Zv4SLLcgMfpDcsla6hZsvf62ZTYiK43DatuG71VWIBwEE05XDhxa1Y
         Ry7XM46ioWbPgkBD1Ywwz+YSHhf6mw01ytiqOKR1k15pqTIrGYzBhkPYt6g0dXvl6g+G
         Jo01uFwwT7Yno2c9CrVnJo8Ib69TgXldFfwtw9E7YxlN4F9YWnUFYlP//70Ygnkj5945
         YiKHjRV+Be3jpQi+KRatMH2sIZdTXGPRwPiBDGORMNkLCInv8Z4WLh3A1c9UDTaKcp/7
         QRyQ==
X-Gm-Message-State: AC+VfDwSOepVujJ1cZ7wTrt00faQQgnC7VyfjjS1cOp1B2w8mcPeiU1p
        LY2bB/7MxFasgeKZ/op0eNycgQ==
X-Google-Smtp-Source: ACHHUZ6/WgeRAlOckrgLS0zRMcfX+zZiAUsCI9uNIKrNeiHrfd9lAY0ak9xFNLSV6WJDRUU7Ceefcg==
X-Received: by 2002:a7b:cd19:0:b0:3f7:536e:fff3 with SMTP id f25-20020a7bcd19000000b003f7536efff3mr5410313wmj.25.1686561897926;
        Mon, 12 Jun 2023 02:24:57 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:57 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>
Cc:     netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 22/26] arm64: dts: qcom: sa8775p-ride: add the SGMII PHY node
Date:   Mon, 12 Jun 2023 11:23:51 +0200
Message-Id: <20230612092355.87937-23-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the internal SGMII/SerDes PHY node for sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index b130136acffe..0e59000a0c82 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -1837,6 +1837,15 @@ adreno_smmu: iommu@3da0000 {
 				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		serdes_phy: phy@8901000 {
+			compatible = "qcom,sa8775p-dwmac-sgmii-phy";
+			reg = <0 0x08901000 0 0xe10>;
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

