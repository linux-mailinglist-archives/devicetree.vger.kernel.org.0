Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13B9B6968E1
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 17:12:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231778AbjBNQMX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 11:12:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231701AbjBNQMW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 11:12:22 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA3E346B4
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 08:12:20 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id rp23so41339449ejb.7
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 08:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U7FmuUYV4i+tUiEr3sQgj1FjRrcMIeNDDjtwxcnomOg=;
        b=ChWsQKERNUzcd/oJs7wTTCOMWypEqtx1FKjgOWz7kJ+kkTcf4QMZwOsyT4AmKiepR1
         wmxrLJ4iRxvFe0J1XGA2Z3esLkJoV7N3DC8zgmX0k29BYLjTY/Ai2/kwEJhGVOCreKAR
         yMGNAxkWetCgLSo4NI2y2Ba1GE+hwP3q2eDmOrC0f3ytM/gZaoK14SdcyfaWtnudMzOD
         RlwTWR3t6HnEyuw05f6HCN5WDFn9wi+EeeZj/Cq9Tt3N+ahT2cnQunaABSIXajZLoYdH
         o97szoafzgzU6RlKejoU8n1dWmjfGPFSVfFLoQtuOpJwAx698Mw6iZ7NC2NDQiiYZqlb
         rjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U7FmuUYV4i+tUiEr3sQgj1FjRrcMIeNDDjtwxcnomOg=;
        b=CLkK86usDA66mKO32sf4VD4njeORx34JSTm+DbH/gmll4x1fm4iJtOBim31dQrRz3F
         P42BXMapIMs9IA1cornxybsGo1s/afD7cWf2PS3JcMXqy/6AhnG8DMsfEXRBPD+ddHPj
         J4l44buoaGxpQuNaZYAoNwAA10QG/3XmtWI3Kx3vTCXGmN4Ox4sLrHaMfAd/Y0RifBep
         yssrKJJ/Hu0tbDDJjGk/V62uzA9x6fLxplYz5Cy9387wGmGqtm8JePDjly5o5JKQ+s5g
         xkLdqZKr9PjO79uxbtwnqFLfx/FnsYZFultZmOuW+BVY1/thFd/NP1GceZgHdnh/kKn5
         Icbw==
X-Gm-Message-State: AO0yUKWgHfz1OWLZq95O8+OXkdTsUrSqeHa2N9Ms3oHL0cVJKhfZNeL9
        TGm9RxN8As7qxkD4KHdmEBAZMQ==
X-Google-Smtp-Source: AK7set8I/5R1R2ISxCMl/lGAba1E4D5oDFL02UTwyH1kszy4po+MhCYWuX1EWAPCSKb5IDTUW9p5Zg==
X-Received: by 2002:a17:906:8410:b0:8ac:f02b:7ea8 with SMTP id n16-20020a170906841000b008acf02b7ea8mr175787ejx.6.1676391139426;
        Tue, 14 Feb 2023 08:12:19 -0800 (PST)
Received: from fedora.. (cpezg-94-253-130-165-cbl.xnet.hr. [94.253.130.165])
        by smtp.googlemail.com with ESMTPSA id de56-20020a1709069bf800b00878530f5324sm8564376ejc.90.2023.02.14.08.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 08:12:19 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 4/4] ARM: dts: qcom: ipq4018-ap120c-ac: use NVMEM for ath10k caldata
Date:   Tue, 14 Feb 2023 17:12:11 +0100
Message-Id: <20230214161211.306462-4-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230214161211.306462-1-robert.marko@sartura.hr>
References: <20230214161211.306462-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since ath10k now supports loading the pre-cal via NVMEM instead of having
to use userspace scripts, lets use it.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi b/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
index bb0c888b048ec..d90b4f4c63afe 100644
--- a/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
@@ -170,6 +170,17 @@ partition@170000 {
 				label = "ART";
 				reg = <0x00170000 0x00010000>;
 				read-only;
+				compatible = "nvmem-cells";
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				precal_art_1000: precal@1000 {
+					reg = <0x1000 0x2f20>;
+				};
+
+				precal_art_5000: precal@5000 {
+					reg = <0x5000 0x2f20>;
+				};
 			};
 
 			partition@180000 {
@@ -233,10 +244,14 @@ &mdio {
 
 &wifi0 {
 	status = "okay";
+	nvmem-cell-names = "pre-calibration";
+	nvmem-cells = <&precal_art_1000>;
 };
 
 &wifi1 {
 	status = "okay";
+	nvmem-cell-names = "pre-calibration";
+	nvmem-cells = <&precal_art_5000>;
 	qcom,ath10k-calibration-variant = "ALFA-Network-AP120C-AC";
 };
 
-- 
2.39.1

