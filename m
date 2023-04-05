Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F8936D829F
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 17:51:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238762AbjDEPvd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 11:51:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239136AbjDEPvL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 11:51:11 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF044658D
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 08:51:03 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id br6so47219729lfb.11
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 08:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680709862;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xTfPf29tnwbydeddtxy3rMEnXluAPIWBZ5CTrs3xI8k=;
        b=sRvVNCsDZ0ZlhWStZ6R8OwsxOo5wOvM6EVbi/fYmhpMgf6y/5RbHqTjt/FlWs3G6cS
         IAibunnr7ILmsrM6EFVcV2fGLABauuDMk4jc3wrBqgicM59Q/5i6A73k+vYCb2KovdTR
         L9bW2x0NBA2NSEh+xEyj4xcwfmRuXCBg/FNj40Oio01C8KJ0i6pzD2Zd/AuJbu7wDiAV
         gE9/RVtZbHxrRBJu25B+bGjH2e04oj3c6t/mLl0jF7hgsaeYKg3euxEfU9JxzZlJEESg
         nEiRP5UT/9fxYd08j8TdvHIHYy+eA/ExCbNSECEqgv6NYi/EBKEkppWg4dYcCteogTCw
         DfSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680709862;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xTfPf29tnwbydeddtxy3rMEnXluAPIWBZ5CTrs3xI8k=;
        b=B1y2crGWRtWk1DoLGBoY9sqcQ5WhXlRt5p66FvO1c3Kve9rWpoW+Q+oF4Rb1v8eqCc
         APPh5cRxGaS1GmZ4i4aSfKNfM49JJ5zXwusopvbAO7ul1pLXOTTLLavSReruvX8WTESA
         an9ylhTbf3EnkZUpT64KCS1KmaANV8wSuotECljnymJwZdrFOgv6+A3HKNzsV79Hdrps
         31XsqGaN5xDcjmghJcyKUSComvo57h5O4EbwO4KS0F1gHk2igEmTxETW7+WjCb40dpgs
         HJjwe7/CSoJinHZk6eAeoLJydURfekwnHQgb1B8WnSOxXKdTAjgrmt7u7rPNE1eoCtMW
         y/CA==
X-Gm-Message-State: AAQBX9f2tqya06Z1eqZm5En6yRUPFQhIG0w//IR7piO6urwTE+qURSGW
        5T3GlDrtDlNe4vCVQz6nUpEuIQ==
X-Google-Smtp-Source: AKy350a7YodObssGQkTdiZ/Au3AWVlkhKV4kmKrtL+Xd9siQb4SnjapbtevtCgjO65JivXWTg+IQCg==
X-Received: by 2002:ac2:5d46:0:b0:4ea:e296:fe9e with SMTP id w6-20020ac25d46000000b004eae296fe9emr1647369lfd.9.1680709862348;
        Wed, 05 Apr 2023 08:51:02 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id o28-20020ac2495c000000b004eb2db994e7sm2869344lfi.239.2023.04.05.08.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 08:51:02 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 05 Apr 2023 17:50:34 +0200
Subject: [PATCH v2 5/5] arm64: dts: qcom: Add initial QTI RB1 device tree
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230403-topic-rb1_qcm-v2-5-dae06f8830dc@linaro.org>
References: <20230403-topic-rb1_qcm-v2-0-dae06f8830dc@linaro.org>
In-Reply-To: <20230403-topic-rb1_qcm-v2-0-dae06f8830dc@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1680709854; l=3548;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=rcgGXCqBpdi+rXuFSqHjCoOhi1FGiWNalz4gX3uEVPQ=;
 b=XTOsV6pxALvtz+ctQD4JVaAehGJXVPUF3+zvh8TOJ+T75Gy635wEghnJnN7ldIWBcipQaB2KkA2M
 kZrzxcpxCsaxG0RZ25o1LGSlNsMwpB1/W+XWQmAyFozwSW5Ao6gH
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an initial device tree for the QTI RB1 development board, based on
the QRB2210 (QCM2290 derivative) SoC. This device tree targets the SoM
revision 4, a.k.a. the Mass Production SKU.

To get a successful boot, run:

cat arch/arm64/boot/Image.gz arch/arm64/boot/dts/qcom/qrb2210-rb1.dtb >\
.Image.gz-dtb

mkbootimg \
--kernel .Image.gz-dtb \
--ramdisk some_initrd \
--output rb1-boot.img \
--pagesize 4096 \
--base 0x8000 \
--cmdline 'some cmdline'

fastboot boot rb1-boot.img

There's no dtbo or other craziness to worry about.
For the best dev experience, you can erase boot and use fastboot boot
everytime, so that the bootloader doesn't mess with you.

If you have a SoM revision 3 or older (there should be a sticker on it
with text like -r00, where r is the revision), you will need to apply
this additional diff:

aliases {
-   serial0 = &uart0;
+   serial0 = &uart4;

/* UART connected to the Micro-USB port via a FTDI chip */
-   &uart0 {
+   &uart4 {

That should however only concern preproduction boards.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 112 +++++++++++++++++++++++++++++++
 1 file changed, 112 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
new file mode 100644
index 000000000000..ef3616093289
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (c) 2023, Linaro Ltd
+ */
+
+/dts-v1/;
+
+#include "qcm2290.dtsi"
+#include "pm2250.dtsi"
+
+/ {
+	model = "Qualcomm Technologies, Inc. Robotics RB1";
+	compatible = "qcom,qrb2210-rb1", "qcom,qrb2210", "qcom,qcm2290";
+
+	aliases {
+		serial0 = &uart0;
+		sdhc1 = &sdhc_1;
+		sdhc2 = &sdhc_2;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		label = "gpio-keys";
+
+		pinctrl-0 = <&key_volp_n>;
+		pinctrl-names = "default";
+
+		key-volume-up {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			gpios = <&tlmm 96 GPIO_ACTIVE_LOW>;
+			debounce-interval = <15>;
+			linux,can-disable;
+			wakeup-source;
+		};
+	};
+};
+
+&pm2250_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
+&qupv3_id_0 {
+	status = "okay";
+};
+
+&sdhc_1 {
+	pinctrl-0 = <&sdc1_state_on>;
+	pinctrl-1 = <&sdc1_state_off>;
+	pinctrl-names = "default", "sleep";
+	non-removable;
+	supports-cqe;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+&sdhc_2 {
+	cd-gpios = <&tlmm 88 GPIO_ACTIVE_LOW>;
+	pinctrl-0 = <&sdc2_state_on &sd_det_in_on>;
+	pinctrl-1 = <&sdc2_state_off &sd_det_in_off>;
+	pinctrl-names = "default", "sleep";
+	no-sdio;
+	no-mmc;
+	status = "okay";
+};
+
+&tlmm {
+	sd_det_in_on: sd-det-in-on-state {
+		pins = "gpio88";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
+	sd_det_in_off: sd-det-in-off-state {
+		pins = "gpio88";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	key_volp_n: key-volp-n-state {
+		pins = "gpio96";
+		function = "gpio";
+		bias-pull-up;
+		output-disable;
+	};
+};
+
+/* UART connected to the Micro-USB port via a FTDI chip */
+&uart0 {
+	compatible = "qcom,geni-debug-uart";
+	status = "okay";
+};
+
+&usb {
+	status = "okay";
+};
+
+&usb_hsphy {
+	status = "okay";
+};
+
+&xo_board {
+	clock-frequency = <38400000>;
+};

-- 
2.40.0

