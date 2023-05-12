Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D01F37009AE
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 15:59:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241362AbjELN7H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 09:59:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241216AbjELN7D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 09:59:03 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B065A13859
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 06:58:56 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-965cc5170bdso1503770866b.2
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 06:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1683899935; x=1686491935;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zyYcNXudTdGwmmyXYtomjXhMBjfx2oalrvadhl4fK/Y=;
        b=lfrx+FLuS5VaSd6DraCCI8ElBa+Sn4/A5AfMpx12ZuyVDis12qMc7okoq3u2PdBp0j
         c/X678b7wBJdJrS1RCO0IuhNKPUKMuQT/lHS1UCQ+6AS4gQd6RhOMHVk6PV/gshA+UN4
         irik+/wlVYZyqr5p6AalGw4eZBZy5/jtOMEkR7sERrsG0NzJW3J70+h5naeqP/Cw8mVl
         DL7NcPBE7XQ7675EurdzoCMlxN10kDwZb1bipxE8NDMNuZtCoSwXiSOe970xbVK8Ce5S
         bJerGENqUvVlDLU0/mv85IeVn1F1J2Ly3cLy5M0QRUcoJnSLI9tqx8c9JJ0ci+nL+lfN
         cCTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683899935; x=1686491935;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zyYcNXudTdGwmmyXYtomjXhMBjfx2oalrvadhl4fK/Y=;
        b=D+6LNBJz5LdXg7zpjIW4r2hs4I5DHpS0LwW2oROoEyYO41jJDZbZIEeL9WuMmQmMnU
         tKT1OjKxWObkaQQgr7qvUa1fNQ9wetwYGMwGbshcKvzG1xSK6amtjbyNwYOM9L/7D9bX
         UfUk7cbCWqnIJVj4GMDOry9nJ4BEft3D4SzOGxOwzPtnUGN+rfoClBo4vt7zzsGMpW87
         DkV8gCvF8zKUrgVsE+Cy1NjW6hQ0mud6NDKhJrBvQKVFQRS8nRC93uOoh8FIZ5PYtwVB
         p3/ob2IJ9YgMgAGhcn6cs0FY8rd9Z+U1zUmqJIO/BrI2hb92U8OxB16XaJDuBTpFHq1I
         ckqQ==
X-Gm-Message-State: AC+VfDzcxjn0j3mk2SjWk8yx9UVf0NqpDk5rTk7E4Pe4+6mucsrYwwhW
        DQ88MFDWyJzZ2TNrFvUI1JxYUmQaWk7mNI4qUmWC9g==
X-Google-Smtp-Source: ACHHUZ7/2xsGefcOxssYnxWByuUjO0BEvLRcnh6n6LA0W3SsJTaXCHBea0RharA5JlkMe7fnICfo9w==
X-Received: by 2002:a17:907:9415:b0:94f:395b:df1b with SMTP id dk21-20020a170907941500b0094f395bdf1bmr20606239ejc.21.1683899935213;
        Fri, 12 May 2023 06:58:55 -0700 (PDT)
Received: from [172.16.240.113] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id mc27-20020a170906eb5b00b00966330021e9sm5399061ejb.47.2023.05.12.06.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 06:58:54 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
Date:   Fri, 12 May 2023 15:58:25 +0200
Subject: [PATCH v2 3/4] arm64: dts: qcom: sm6350: add uart1 node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230421-fp4-bluetooth-v2-3-3de840d5483e@fairphone.com>
References: <20230421-fp4-bluetooth-v2-0-3de840d5483e@fairphone.com>
In-Reply-To: <20230421-fp4-bluetooth-v2-0-3de840d5483e@fairphone.com>
To:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the node describing uart1 incl. opp table and pinctrl.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 63 ++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 18c4616848ce..eb46dc2d969b 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -378,6 +378,25 @@ opp-2073600000 {
 		};
 	};
 
+	qup_opp_table: opp-table-qup {
+		compatible = "operating-points-v2";
+
+		opp-75000000 {
+			opp-hz = /bits/ 64 <75000000>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+		};
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			required-opps = <&rpmhpd_opp_svs>;
+		};
+
+		opp-128000000 {
+			opp-hz = /bits/ 64 <128000000>;
+			required-opps = <&rpmhpd_opp_nom>;
+		};
+	};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_LOW>;
@@ -741,6 +760,22 @@ i2c0: i2c@880000 {
 				status = "disabled";
 			};
 
+			uart1: serial@884000 {
+				compatible = "qcom,geni-uart";
+				reg = <0 0x00884000 0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S1_CLK>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&qup_uart1_cts>, <&qup_uart1_rts>, <&qup_uart1_tx>, <&qup_uart1_rx>;
+				interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&rpmhpd SM6350_CX>;
+				operating-points-v2 = <&qup_opp_table>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 0 &clk_virt SLAVE_QUP_CORE_0 0>,
+						<&aggre1_noc MASTER_QUP_0 0 &clk_virt SLAVE_EBI_CH0 0>;
+				interconnect-names = "qup-core", "qup-config";
+				status = "disabled";
+			};
+
 			i2c2: i2c@888000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00888000 0 0x4000>;
@@ -1726,6 +1761,34 @@ qup_i2c10_default: qup-i2c10-default-state {
 				drive-strength = <2>;
 				bias-pull-up;
 			};
+
+			qup_uart1_cts: qup-uart1-cts-default-state {
+				pins = "gpio61";
+				function = "qup01";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_uart1_rts: qup-uart1-rts-default-state {
+				pins = "gpio62";
+				function = "qup01";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			qup_uart1_rx: qup-uart1-rx-default-state {
+				pins = "gpio64";
+				function = "qup01";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_uart1_tx: qup-uart1-tx-default-state {
+				pins = "gpio63";
+				function = "qup01";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
 		};
 
 		apps_smmu: iommu@15000000 {

-- 
2.40.1

