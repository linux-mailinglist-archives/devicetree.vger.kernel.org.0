Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FB1164ACAD
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 01:58:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233674AbiLMA6C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 19:58:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229679AbiLMA6A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 19:58:00 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C61BCFADE
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 16:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1670893025;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=LmjUSyg67D39D4GXwHdsjU8ybX4fVmhyxG/436wX9C0=;
        b=Algvt+AOEF6WT6t/1LyxWBv4AOiK58liF75wQ+jvdendVQliLL/BNmPaTNscrKP+gC+qwt
        Qgobrd9HCO5wroaeFucZijGc8f9zka7ta0s0x9Bamkn2CRjrfjgwRqxeV64ZhkZDlZaNgN
        hOLpgz51/a8bG1GY8ekLQNnzFCDpjfU=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-15-0nqmIVMiNH6HYpX4zKsj4w-1; Mon, 12 Dec 2022 19:57:04 -0500
X-MC-Unique: 0nqmIVMiNH6HYpX4zKsj4w-1
Received: by mail-qk1-f198.google.com with SMTP id i21-20020a05620a405500b006fb25ba3e00so15895389qko.1
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 16:57:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LmjUSyg67D39D4GXwHdsjU8ybX4fVmhyxG/436wX9C0=;
        b=F8IP4m5jOHfglzp18/DOErwb1ret8CUTI2feGRl0n1joSU0R41GHcyJ1JzRsQTMVy7
         /LQtqzUboeev43zoJfJaphyaE94lXo5JP8Eat0nkvD2w5OIJmcGltYQM6NfdtPZ2UwaS
         icubLC5AjON8dnCEvhWmDP2v2p2csfvuLJ3cMYqtQgfzUSJmGoS8+FyDpRGACL9J7m5C
         FrjW/QauhWMotSnRj/S9Ew6ULFzeAtcxCFmWb48ouEY/MRies5yaJOO6Xfx1R2LDxJWP
         lx1fQKdTizYe1BsxxrW307918jjbCjLxyUJk80G2sn8FPE4xQe3aoBF6cq/K4S31a7gw
         FkXg==
X-Gm-Message-State: ANoB5pnMNC9x9iCy0K5QcqWBQF0FGqu3P2/gE4z2Y04PcGkdrxqgxgvt
        tsoX2wtDcMEJh0Mb7Q0wTWCwRQFdNYcPBBTuyroUFGrAkSlPW6/SGjF5Ut7L4W7qlvchARM8hiE
        iInXb1c2moDpjVItmeA3Y+w==
X-Received: by 2002:ac8:774b:0:b0:3a6:8f7c:5936 with SMTP id g11-20020ac8774b000000b003a68f7c5936mr1754139qtu.25.1670893024249;
        Mon, 12 Dec 2022 16:57:04 -0800 (PST)
X-Google-Smtp-Source: AA0mqf674cJF6yhclcLs4EvITmWpHOXQVs9weEWZ55ytja8rJmZ3rdmQO2pxz9sI7RA8elgBIz1d6A==
X-Received: by 2002:ac8:774b:0:b0:3a6:8f7c:5936 with SMTP id g11-20020ac8774b000000b003a68f7c5936mr1754116qtu.25.1670893024030;
        Mon, 12 Dec 2022 16:57:04 -0800 (PST)
Received: from localhost (pool-96-230-116-121.bstnma.fios.verizon.net. [96.230.116.121])
        by smtp.gmail.com with ESMTPSA id m11-20020a05620a290b00b006fc6529abaesm6829570qkp.101.2022.12.12.16.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 16:57:03 -0800 (PST)
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
Subject: [PATCH 2/2] arm64: dts: qcom: sa8295p-adp: use pm8450a dtsi
Date:   Mon, 12 Dec 2022 19:55:39 -0500
Message-Id: <20221213005539.1133443-2-echanude@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221213005539.1133443-1-echanude@redhat.com>
References: <20221213005539.1133443-1-echanude@redhat.com>
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
index 84cb6f3eeb56..889259df3287 100644
--- a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
@@ -11,6 +11,7 @@
 #include <dt-bindings/spmi/spmi.h>
 
 #include "sa8540p.dtsi"
+#include "pm8450a.dtsi"
 
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

