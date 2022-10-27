Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15E0E60F03A
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 08:31:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233800AbiJ0GbK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 02:31:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234305AbiJ0Gau (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 02:30:50 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF9D1161FD1
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 23:30:40 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id g24so461149plq.3
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 23:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+uO33+G36OyWr6eCN7oimNs+WJJkzvXiHHivrNLNRVc=;
        b=XCN9Ev67Rcu0zSL1omPQ4ggqYmS5Lhm7a0NMm775ILNkG4WFdGozM5K2fL8G3ZNtG2
         pt9CGnGFX5ib18YNy9SbsjnIZytRpWM8qtzFJ4/xUWd32VyJ7EbE4qjVJ5PeOfcpv3nG
         DmL1NUapmoyc7d6ilmuIFYf4gZXuTLaje4XpUUyI0WBTn9LQ/ZEgdUt2fW4q+OT311sQ
         BetYZ1jG1OsqrIDKrX8iQc078iNesDNQAlTMgYILLO269VxhKC7O+m3E2zmhClZyhPg6
         NNOGhF4eWbQQKRjIyzxFo7ZkUoe24TMDOKpxQgOVqz+CCqhtjUSl9unPsZh0lbRrnY4/
         aW2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+uO33+G36OyWr6eCN7oimNs+WJJkzvXiHHivrNLNRVc=;
        b=topz97O0dg5bZfAHjr6ZH1jIgk0rEdfYYrSS7GijGV7wylbk/wnmE3Hvz7ZhopyIRd
         mc89DALKp4qOcH8bQ4oZDK+BIGH5Ce6/zSKEJv0MLNH90zyWUn8vsJSeFcHJ5uj5sC3Y
         ikTDPKkC5SIxKnFftwm55De+msxmKa/1rrT00kwQ2GkPFjSdPS0AKhFmLnuXsMyvUQAv
         G1T8Rq2FuULuyMlFz4haBOhZuPjWa4Qw54IcVwHuPqLNDqeTgw2yDz4j7yl3cwd9/96i
         bOHQe3fC6DC3G46+6QHVViWW2k8eSuPMbThyuuwuVnShDMUoM69ko3up7Gb37tHBH7Z8
         ABVQ==
X-Gm-Message-State: ACrzQf36kpRj4mO8MvKMpVyOVzyrrUejgkNYJCuuZe41jHRjcdjXSzlV
        ms7nVn5+Darw7eVJ++Eiuh3c
X-Google-Smtp-Source: AMsMyM6lacqaQ0i0FizRQTnnCWiOAshHJWNl1gd5AMRei0sDAsAast6DY9U20yvOAgN5E5I6kuwNGw==
X-Received: by 2002:a17:902:ee81:b0:186:b1bf:2308 with SMTP id a1-20020a170902ee8100b00186b1bf2308mr16935557pld.111.1666852240257;
        Wed, 26 Oct 2022 23:30:40 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.123])
        by smtp.gmail.com with ESMTPSA id i126-20020a626d84000000b00561d79f1064sm446041pfc.57.2022.10.26.23.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 23:30:39 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, johan+linaro@kernel.org,
        quic_jprakash@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 05/11] arm64: dts: qcom: sc8280xp-pmics: Add PMK8280 ADC7 block
Date:   Thu, 27 Oct 2022 12:00:00 +0530
Message-Id: <20221027063006.9056-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221027063006.9056-1-manivannan.sadhasivam@linaro.org>
References: <20221027063006.9056-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for ADC7 block available in PMK8280 for reading the
temperature via the AMUX pins.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
index 4a3464f5e6e9..32086d5edd0d 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
@@ -75,6 +75,17 @@ pmk8280_pon_resin: resin {
 				status = "disabled";
 			};
 		};
+
+		pmk8280_vadc: adc@3100 {
+			compatible = "qcom,spmi-adc7";
+			reg = <0x3100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <0x0 0x31 0x0 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "eoc-int-en-set";
+			#io-channel-cells = <1>;
+			io-channel-ranges;
+		};
 	};
 
 	pmc8280_1: pmic@1 {
-- 
2.25.1

