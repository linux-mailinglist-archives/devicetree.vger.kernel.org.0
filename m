Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CAF16BD20A
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 15:14:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230351AbjCPOOH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 10:14:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230452AbjCPONn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 10:13:43 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F3FDD5A6C
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 07:13:16 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id y14so1844791ljq.4
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 07:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678975996;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fr1OHq/Y0F9EXyjJfE+Cc02kHVOPdqYGSbtmI+oAs6M=;
        b=rmAjPw9dYkNrX6arOkoSKNjd5H/0Ya+0BKCtPDecJv+RvkwIt/aC2JgtA/lfbcAaDR
         CeeNm4im8ce9HAll9Jpuoe2g+Sz829sLuL4UVRaWCm5f5K7b1gDt7dst1B8hO1OPOb8O
         N+rbYTqWe2XSzumOr7Qy+1RdxtRVs8pGkgIYptiuxV40BANKEUkxEYA0mQTCzgbD0M+q
         UrysLafzXHocnmPyl9QWAS4BXc1qtIFbUg/RUT0knG/YLgV5OnZvvDuKen3tTFtkXqSI
         ukcqPXFnaw4H908jmFXEHpm0QzXgkh+OuH8Nu3V3eZMh2IKWcKuioaNYUlkL6QT31KDi
         5Nyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678975996;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fr1OHq/Y0F9EXyjJfE+Cc02kHVOPdqYGSbtmI+oAs6M=;
        b=BGYfZw/8zng8ePPWAId2f3OeIbzPHv+ae6c+Kg/vxf3cY6h+Hbp9bYtHdEye1vcETV
         udYDFtiZ5HfRJjPAfHADjQ2ltrZeA1zThLPhQKZk/rOssQWqozOrZsXMURkG/O3d1xXs
         6PE5wE9i76nsKlSdaLTL0FZjoi65HTbOLXCCDCr41TkmNx+N23GLGX1kjExziy8YwpIl
         zMFi3WSSdnGiL2phFHJ5r1XpgEbl/2LyOVle4xbsORXj4fnKDRkcpDSYODhHr1wev9yx
         6sDtQg2NL7Lt1HphURrmT2ylPu6DSOd06aQI+fiblv+VvvwfhXdM4HNl4vrmzciFdr4q
         blww==
X-Gm-Message-State: AO0yUKWGywWbDQh+6kaoTou2pFooSfOqh6a9dY6jcfQeJMvp4cT1HAkZ
        8rqr9C7QLI8n3NOjm7fUMhPUxw==
X-Google-Smtp-Source: AK7set8ThKwBkKu2BrUDOGOMqgR1WPAMp7Ne81823lYwufkm8aDqSutp/EvOWtU3807T9HVinO8mCw==
X-Received: by 2002:a2e:b88f:0:b0:293:4ba3:17be with SMTP id r15-20020a2eb88f000000b002934ba317bemr2862778ljp.11.1678975996476;
        Thu, 16 Mar 2023 07:13:16 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id a9-20020a2eb549000000b00295735991edsm1261639ljn.38.2023.03.16.07.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 07:13:16 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Thu, 16 Mar 2023 15:12:59 +0100
Subject: [PATCH v2 10/14] arm64: dts: qcom: sm6375: Add TSENS
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230303-topic-sm6375_features0_dts-v2-10-708b8191f7eb@linaro.org>
References: <20230303-topic-sm6375_features0_dts-v2-0-708b8191f7eb@linaro.org>
In-Reply-To: <20230303-topic-sm6375_features0_dts-v2-0-708b8191f7eb@linaro.org>
To:     Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678975978; l=1456;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=ykqp5bp58crzGqyySJ//g66g5IA2DYwCTKLczf3b59w=;
 b=8GcRkKVlQgGRI2QfzqrSgsroa+vRBMeCjg6PCLbWsbDsW4cFAfUFp2dVuA4NWxY3NQicPPNPtaLD
 Xtx0wfYTDEjXwBShR65VrLUHrSCJdKQ35FzYtpNowdt4JYAduk4p
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add nodes for the two TSENS v2.8.0 controllers present on the SoC.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index 59d7ed25aa36..a88ed6467e68 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -764,6 +764,28 @@ spmi_bus: spmi@1c40000 {
 			#interrupt-cells = <4>;
 		};
 
+		tsens0: thermal-sensor@4411000 {
+			compatible = "qcom,sm6375-tsens", "qcom,tsens-v2";
+			reg = <0 0x04411000 0 0x140>, /* TM */
+			      <0 0x04410000 0 0x20>;  /* SROT */
+			interrupts = <GIC_SPI 275 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow", "critical";
+			#thermal-sensor-cells = <1>;
+			#qcom,sensors = <15>;
+		};
+
+		tsens1: thermal-sensor@4413000 {
+			compatible = "qcom,sm6375-tsens", "qcom,tsens-v2";
+			reg = <0 0x04413000 0 0x140>, /* TM */
+			      <0 0x04412000 0 0x20>;  /* SROT */
+			interrupts = <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow", "critical";
+			#thermal-sensor-cells = <1>;
+			#qcom,sensors = <11>;
+		};
+
 		rpm_msg_ram: sram@45f0000 {
 			compatible = "qcom,rpm-msg-ram";
 			reg = <0 0x045f0000 0 0x7000>;

-- 
2.39.2

