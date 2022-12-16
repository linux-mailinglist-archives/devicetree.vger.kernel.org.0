Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B95BA64F514
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 00:30:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230173AbiLPX37 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 18:29:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230094AbiLPX3z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 18:29:55 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5028725EBA
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671233343;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ZraKQ8zpXaq21f6Xh7MkKwT51QM1mBosAn+IIPTlXH0=;
        b=NRmKbYMDVMdngXPT5jEUF+u/MFOxKvAddZvSpfNe53A+2fpcgx5s0ZVqwduq2/ireH6DfO
        DUnpuSgLXTbfhXFgYf3aKMzdQsPG1ASABfMVoRHFZ9J349ZTzJVzXw778zuBDXzadDXBll
        JAV+eYJRNgDr4Nxv+44K3MpcHJ5w79U=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-673-G3o-V3B7OSikQopwjAy0Cw-1; Fri, 16 Dec 2022 18:28:56 -0500
X-MC-Unique: G3o-V3B7OSikQopwjAy0Cw-1
Received: by mail-qt1-f198.google.com with SMTP id m8-20020ac807c8000000b003a7f82f0da7so2403248qth.11
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:28:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZraKQ8zpXaq21f6Xh7MkKwT51QM1mBosAn+IIPTlXH0=;
        b=MkiLyNmcAmIPFgNM9/WqQy0iOefO2R+o+FdoGaysjpanDcd9oR/FNO0kCGBqTyTL1J
         mqC2HZ4X6Ne13najnKFnRZ7qOAsOwgih9S8TBjinEj2unDOcIpC9lEoQbw0zlTQJuryT
         FgKqkwa9odjm8mZiIubUZL3eT1xSyo+diGUaT4jX9xU+rObbitXeup7L5OsHw2SnmK7t
         nOtjcdkETzVHIcweEw6TTTV+5+csd4RcfbbHqfp16khO64ibRgv+sfFGKOu7RapJ4j6d
         Wjq2gMzWagBLkmNZ6KB2zTNRqX5rVYtDOS3T2WyNbozgAzTolIyArOLp9MwwGcwGiyi/
         sNRQ==
X-Gm-Message-State: ANoB5pkr0Kn3DeJAWVrCRKzKrUAcNnCLxRN1/bjgH7hHnEk5uzJ1btbd
        qlruLkBjd2LXdUJTrpVgTm/OEyQnmIvulQAhBXVyn/rzfxak/9unBohJ7xwyidiHUz/l/odKMtr
        tvwPkh3Vl0k6VCUjiOm7+dw==
X-Received: by 2002:a05:6214:5848:b0:4c7:1c71:e7da with SMTP id ml8-20020a056214584800b004c71c71e7damr43264479qvb.17.1671233335923;
        Fri, 16 Dec 2022 15:28:55 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4JAVWjbkYBvXicruCl97xmCX2tyHqRd2/+2yW1r+Sod2aNzAhammkHTIOpCR2Pn7/S3J8BSA==
X-Received: by 2002:a05:6214:5848:b0:4c7:1c71:e7da with SMTP id ml8-20020a056214584800b004c71c71e7damr43264462qvb.17.1671233335708;
        Fri, 16 Dec 2022 15:28:55 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id z189-20020a3765c6000000b006f3e6933bacsm2349799qkb.113.2022.12.16.15.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:28:54 -0800 (PST)
From:   Eric Chanudet <echanude@redhat.com>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Brian Masney <bmasney@redhat.com>,
        Eric Chanudet <echanude@redhat.com>
Subject: [PATCH v3 3/4] arm64: dts: qcom: sa8295p-adp: use sa8540p-pmics
Date:   Fri, 16 Dec 2022 18:26:05 -0500
Message-Id: <20221216232606.2123341-4-echanude@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221216232606.2123341-1-echanude@redhat.com>
References: <20221216232606.2123341-1-echanude@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Include the dtsi to use a single pmic descriptions.
Both sa8295p-adp and sa8540p-adp have the same spmi pmic apparently.

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
 arch/arm64/boot/dts/qcom/sa8295p-adp.dts | 79 +-----------------------
 1 file changed, 1 insertion(+), 78 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
index 84cb6f3eeb56..c8437efe8235 100644
--- a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
@@ -11,6 +11,7 @@
 #include <dt-bindings/spmi/spmi.h>
 
 #include "sa8540p.dtsi"
+#include "sa8540p-pmics.dtsi"
 
 / {
 	model = "Qualcomm SA8295P ADP";
@@ -260,84 +261,6 @@ &remoteproc_nsp1 {
 	status = "okay";
 };
 
-&spmi_bus {
-	pm8450a: pmic@0 {
-		compatible = "qcom,pm8150", "qcom,spmi-pmic";
-		reg = <0x0 SPMI_USID>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		rtc@6000 {
-			compatible = "qcom,pm8941-rtc";
-			reg = <0x6000>;
-			reg-names = "rtc", "alarm";
-			interrupts = <0x0 0x61 0x1 IRQ_TYPE_NONE>;
-			wakeup-source;
-		};
-
-		pm8450a_gpios: gpio@c000 {
-			compatible = "qcom,pm8150-gpio", "qcom,spmi-gpio";
-			reg = <0xc000>;
-			gpio-controller;
-			gpio-ranges = <&pm8450a_gpios 0 0 10>;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-	};
-
-	pm8450c: pmic@4 {
-		compatible = "qcom,pm8150", "qcom,spmi-pmic";
-		reg = <0x4 SPMI_USID>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pm8450c_gpios: gpio@c000 {
-			compatible = "qcom,pm8150-gpio", "qcom,spmi-gpio";
-			reg = <0xc000>;
-			gpio-controller;
-			gpio-ranges = <&pm8450c_gpios 0 0 10>;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-	};
-
-	pm8450e: pmic@8 {
-		compatible = "qcom,pm8150", "qcom,spmi-pmic";
-		reg = <0x8 SPMI_USID>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pm8450e_gpios: gpio@c000 {
-			compatible = "qcom,pm8150-gpio", "qcom,spmi-gpio";
-			reg = <0xc000>;
-			gpio-controller;
-			gpio-ranges = <&pm8450e_gpios 0 0 10>;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-	};
-
-	pm8450g: pmic@c {
-		compatible = "qcom,pm8150", "qcom,spmi-pmic";
-		reg = <0xc SPMI_USID>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pm8450g_gpios: gpio@c000 {
-			compatible = "qcom,pm8150-gpio", "qcom,spmi-gpio";
-			reg = <0xc000>;
-			gpio-controller;
-			gpio-ranges = <&pm8450g_gpios 0 0 10>;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-	};
-};
-
 &ufs_mem_hc {
 	reset-gpios = <&tlmm 228 GPIO_ACTIVE_LOW>;
 
-- 
2.38.1

