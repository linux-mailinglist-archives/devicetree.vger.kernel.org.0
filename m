Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FB727573C8
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 08:12:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231379AbjGRGMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 02:12:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231297AbjGRGMF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 02:12:05 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18524171B
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 23:11:39 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-666e3b15370so3833897b3a.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 23:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689660695; x=1692252695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KBuW+Z6XAY92SVZQectHpFEOvJKx1OjjfxzUkTjvZPo=;
        b=HpItcyu7TwZNFo58M81iGHOFCpUHkELtwgFlwcO5K656OeM/KJNbjrS2Ykxk3rclD7
         EFTcQWs1yumftqz7D9wuddmT5F74I9bZb4ga3Un4KoQ3ioiHTftVv6Ycs8ORC+nBTdho
         PS1EqzW0L4mQ9+Y4JYlfwBIIvOiRSMr7B9jPQZA4Qd9Y22PDatnGVZ0aYxH36B3B8aDx
         G/6m3OewEnFcu78RN68VEccyQjY4t5fYEHltPmRx2k+emafeEVw9bR10Hm22O9pltCoW
         T5sSofYru55zyyeZNkouZR9A1lsJej+CTIica5m3Fdl+7J4JvleGBA/gt9JhHoxwzg7+
         MkeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689660695; x=1692252695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KBuW+Z6XAY92SVZQectHpFEOvJKx1OjjfxzUkTjvZPo=;
        b=iiYMP8wMFLhUD/Owhm3/VhXxXKH8ekTYt4ulXwK9UvYqwan18IhvZR6cMOPR48TOLa
         +N8yEWgBDucH2d9dJI6V+xCRgK4QmkuSr99msHVZerApIORz/QdZxf2eZLEFdYT3HDl3
         CuPAgslJogA1xPmCGRo8TiIZAhsE2qgmzVgnvJNMvoosneq0e8rm9cLevGgTT7t2lO+D
         NGXCp14Esh0oEOGNxFSoIZySxcy+oXL2GiApph65ZT23+MJxMRP9zw7AYy871mdlt76C
         0WsiWjzQwXJwwAvz/0dV9Bv1xjLJO3t+KQrAKJxCAZXN0JQJIHlrYt1oYH8Ql9jAi2vi
         YUKA==
X-Gm-Message-State: ABy/qLbqPjd04ONcSSoTFKBk+PMRT1ZgKqdj9IHoneUC/pk0ZxP7GnB6
        ysXzAc3nVG6mHIfQDEDFFUt2pg==
X-Google-Smtp-Source: APBJJlH+DaQe/ju2WQZKWRTQhPO13bSlEIgdpThEmIyQKrkImkT+D5KNj9EzA6R71c4B7ISRyXPYyw==
X-Received: by 2002:a05:6a00:3a17:b0:677:c9da:14b0 with SMTP id fj23-20020a056a003a1700b00677c9da14b0mr1550121pfb.32.1689660695495;
        Mon, 17 Jul 2023 23:11:35 -0700 (PDT)
Received: from localhost.localdomain ([223.233.68.54])
        by smtp.gmail.com with ESMTPSA id h21-20020a62b415000000b0067db7c32419sm778106pfn.15.2023.07.17.23.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 23:11:35 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org,
        quic_schowdhu@quicinc.com, gregkh@linuxfoundation.org,
        stephan@gerhold.net
Subject: [PATCH v9 6/7] arm64: dts: qcom: sm6115: Add EUD dt node and dwc3 connector
Date:   Tue, 18 Jul 2023 11:40:51 +0530
Message-Id: <20230718061052.1332993-7-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230718061052.1332993-1-bhupesh.sharma@linaro.org>
References: <20230718061052.1332993-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the Embedded USB Debugger(EUD) device tree node for
SM6115 / SM4250 SoC.

The node contains EUD base register region, EUD mode manager
register region.

The TCSR Base register region is defined via a vendor specific
dt-property.

Also add the typec connector node for EUD which is attached to
EUD node via port. EUD is also attached to DWC3 node via port.

To enable the role switch, we need to set dr_mode = "otg" property
for 'usb_dwc3' sub-node in the board dts file.

Also the EUD device can be enabled on a board once linux is boot'ed
by setting:
 $ echo 1 > /sys/bus/platform/drivers/qcom_eud/../enable

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 51 ++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 3be0b54fc3628..cd5b85b63a9ec 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -260,6 +260,18 @@ CLUSTER_1_SLEEP_1: cluster-sleep-1-1 {
 		};
 	};
 
+	eud_typec: connector {
+		compatible = "usb-c-connector";
+
+		ports {
+			port@0 {
+				con_eud: endpoint {
+					remote-endpoint = <&eud_con>;
+				};
+			};
+		};
+	};
+
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-sm6115", "qcom,scm";
@@ -794,6 +806,38 @@ gcc: clock-controller@1400000 {
 			#power-domain-cells = <1>;
 		};
 
+		eud: eud@1610000 {
+			compatible = "qcom,sm6115-eud", "qcom,eud";
+			reg = <0x0 0x01610000 0x0 0x2000>,
+			      <0x0 0x01612000 0x0 0x1000>;
+			reg-names = "eud-base", "eud-mode-mgr";
+			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
+
+			qcom,secure-eud-reg = <&tcsr_regs 0x25018>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					eud_ep: endpoint {
+						remote-endpoint = <&usb2_role_switch>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					eud_con: endpoint {
+						remote-endpoint = <&con_eud>;
+					};
+				};
+			};
+		};
+
 		usb_hsphy: phy@1613000 {
 			compatible = "qcom,sm6115-qusb2-phy";
 			reg = <0x0 0x01613000 0x0 0x180>;
@@ -1327,6 +1371,13 @@ usb_dwc3: usb@4e00000 {
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
 				snps,usb3_lpm_capable;
+				usb-role-switch;
+
+				port {
+					usb2_role_switch: endpoint {
+						remote-endpoint = <&eud_ep>;
+					};
+				};
 			};
 		};
 
-- 
2.38.1

