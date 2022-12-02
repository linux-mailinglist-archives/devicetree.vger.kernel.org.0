Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54A1864066C
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 13:10:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233096AbiLBMKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 07:10:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233349AbiLBMKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 07:10:21 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87631D290C
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 04:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1669982968;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=QDs0C2fmxqmYDWtpSHD/g/vXtX88DZ2gNF8Y6fio0uk=;
        b=UJ9lAdM4NVBdvGXkmh68QNIoClp/8Nfcy/vNtG63sZFmsSRQzsvJyGzblDD2oynyHz5OIF
        E60wz0F43au+YyxCT9tzNxWhQWn978N3M6uSwtP9zYI8Vak50HJJp4Hcy8r8ATQBwLdcPR
        bKLC+u6+m5NgpuV6vAG+qKNz0/7GD9g=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-94-MSuREbroNAWbQ9gl2V2-zA-1; Fri, 02 Dec 2022 07:09:27 -0500
X-MC-Unique: MSuREbroNAWbQ9gl2V2-zA-1
Received: by mail-qv1-f71.google.com with SMTP id 71-20020a0c804d000000b004b2fb260447so15518760qva.10
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 04:09:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QDs0C2fmxqmYDWtpSHD/g/vXtX88DZ2gNF8Y6fio0uk=;
        b=SO127mASEWGj8qKQ0mR0zzW8EsB6//UwC+dZp9ZEZLw28ioKvPzJdUhat2YYZRIHva
         hvmqYpjqIDefgg2BYsrnvKTKS5mA/aE9Joxo3MiLaJaHhnrzwLvSs7/vwyZs+YW37N6c
         gr7IrXog4HbAf1g2C0BC5NEey5reEtFkYLrQGi1F/AWXPH82J6PcHq0DU4cp5A3+VJXd
         FfLO0BCS+HJt2IgNYDoGn+8AS+KiD+Td98T+Zk/YYzWDe4wZWKOJjefDwHEI2q2vcJBm
         NtD87hhFefkxfEtAssqL5x0rCeqJTYlNBdprTBqMVyQ1FXyfEtDe/xxQeU/V6lzKHkPE
         Lzgw==
X-Gm-Message-State: ANoB5pllt7FUXKD0bqTiZpM4o4TmW/zqkZZ0/HH89YaqUnvjhbKxL/aK
        tTvtjj0/Wi5TsvbLZgkPtA5jEtimWVL6xn5vzX+KPgopJrPvd6e5e26X139f6f77mwoDlP7r77f
        wBhwtKu1W5k1n4UZGKhqZtw==
X-Received: by 2002:a05:620a:1905:b0:6fa:6636:a7b0 with SMTP id bj5-20020a05620a190500b006fa6636a7b0mr45631024qkb.55.1669982966997;
        Fri, 02 Dec 2022 04:09:26 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5YjcswExkGO5i/b6YuVbtoxUr2ScSuUSv0DFJoBnnNxIWpoRhXwG58o2w4w5CQEhpadbF0RQ==
X-Received: by 2002:a05:620a:1905:b0:6fa:6636:a7b0 with SMTP id bj5-20020a05620a190500b006fa6636a7b0mr45631006qkb.55.1669982966736;
        Fri, 02 Dec 2022 04:09:26 -0800 (PST)
Received: from x1.redhat.com (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id f21-20020a05620a409500b006b953a7929csm5515218qko.73.2022.12.02.04.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Dec 2022 04:09:26 -0800 (PST)
From:   Brian Masney <bmasney@redhat.com>
To:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     agross@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_shazhuss@quicinc.com,
        psodagud@quicinc.com, ahalaney@redhat.com, echanude@redhat.com
Subject: [PATCH v3] arm64: dts: qcom: sa8540p-ride: enable PCIe support
Date:   Fri,  2 Dec 2022 07:09:18 -0500
Message-Id: <20221202120918.2252647-1-bmasney@redhat.com>
X-Mailer: git-send-email 2.38.1
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

Add the vreg_l11a, pcie3a, pcie3a_phy, and tlmm nodes that are necessary
in order to get PCIe working on the QDrive3.

This patch also increases the width of the ranges property for the PCIe
switch that's found on this platform. Note that this change requires
the latest trustzone (TZ) firmware that's available from Qualcomm as
of November 2022. If this is used against a board with the older
firmware, then the board will go into ramdump mode when PCIe is probed
on startup.

The ranges property is overridden in this sa8540p-ride.dts file since
this is what's used to describe the QDrive3 variant with dual SoCs.
There's another variant of this board that only has a single SoC where
this change is not applicable, and hence why this specific change was
not done in sa8540p.dtsi.

These changes were derived from various patches that Qualcomm
delivered to Red Hat in a downstream kernel.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
Changes since v2:
- Dropped regulator-allow-set-load (Bjorn)
- Updated first member of ranges property to match downstream:
  s/0x32200000/0x40200000/ (Andrew)

Changes since v1:
- Add -state and -pins suffixes to tlmm (Krzysztof)

This patch depends on the following series that hasn't made it's way
into linux-next yet:

[PATCH v10 0/2] arm64: dts: qcom: add dts for sa8540p-ride board
https://lore.kernel.org/lkml/20221118025158.16902-1-quic_ppareek@quicinc.com/

I can't find the specific TZ firmware version that we have so that's why
I included the date instead.

 arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 53 +++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
index a5f87a8629d6..a638e3784543 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
@@ -51,6 +51,13 @@ vreg_l7a: ldo7 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
+		vreg_l11a: ldo11 {
+			regulator-name = "vreg_l11a";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <880000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
 		vreg_l13a: ldo13 {
 			regulator-name = "vreg_l13a";
 			regulator-min-microvolt = <3072000>;
@@ -139,6 +146,27 @@ vreg_l8g: ldo8 {
 	};
 };
 
+&pcie3a {
+	ranges = <0x01000000 0x0 0x40200000 0x0 0x40200000 0x0 0x100000>,
+	         <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x20000000>,
+	         <0x03000000 0x6 0x00000000 0x6 0x00000000 0x2 0x00000000>;
+
+	perst-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 56 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie3a_default>;
+
+	status = "okay";
+};
+
+&pcie3a_phy {
+	vdda-phy-supply = <&vreg_l11a>;
+	vdda-pll-supply = <&vreg_l3a>;
+
+	status = "okay";
+};
+
 &qup2 {
 	status = "okay";
 };
@@ -158,6 +186,31 @@ &remoteproc_nsp1 {
 	status = "okay";
 };
 
+&tlmm {
+	pcie3a_default: pcie3a-default-state {
+		perst-pins {
+			pins = "gpio151";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		clkreq-pins {
+			pins = "gpio150";
+			function = "pcie3a_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		wake-pins {
+			pins = "gpio56";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+};
+
 &ufs_mem_hc {
 	reset-gpios = <&tlmm 228 GPIO_ACTIVE_LOW>;
 
-- 
2.38.1

