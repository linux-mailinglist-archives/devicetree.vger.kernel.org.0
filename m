Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56CE375048F
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 12:34:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231948AbjGLKeI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 06:34:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231177AbjGLKd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 06:33:58 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 334091FC2
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 03:33:52 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-66767d628e2so4656967b3a.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 03:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689158031; x=1691750031;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gIJwX+rRxRyxzpkMToX1TQb/1UCAf5+FnTJGGYz4XKg=;
        b=NeyNSvzgYdxpT+1wzKNzQ5WhR40zorHH6ZNsQirKzl/EpMkPMs2ZDK8Je1mRK63voE
         56qkQBCBqN3AAQX1wKZreKg1e977oeX5oVJ3Z5eWIUJevdyzyLF52qoFgSOPfiwrhEMH
         eRkIAoYv2HA4o2SEDwMbr27yeWfokE0Kpm+v2iPruDl/+RUDFsbcqGBns+b9pz9tV19B
         jXz8Fo4m3DxPz1SLNJnMyrurrkokL2k8Qd2QIVpcIYphQn1LopOIbv/2YvOf2ydjvLkr
         RYo4Ja7UyTPEkfw4oru6AWMofN8zl+I7Hvgh4Q1jFOnfgbB91Ge7Fzhl1BASqjce6D6S
         wksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689158031; x=1691750031;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gIJwX+rRxRyxzpkMToX1TQb/1UCAf5+FnTJGGYz4XKg=;
        b=cAxTpcq+yYhIrl8cC0v7YKnNzAaKgO4FhicNtewtbzzY6H2yiZGbA5ngmaoJbAZ1Sb
         gWMnE6OiHoS5BBgg1Lor+gWuNBWFsEa2sP5T6b7rVEthp0ef64QvJ7mqgS0CCe2EXdAH
         8q1p9HuZz+6j534s0y6fE6mJm+pe7tUuvnGJgunvt+IvYgjRFCUAsUbJosnZ+jLtOzSB
         1TvQEhfiyrYDWV/YXnKNmJcEZzx8A43YZcBGnfceSAusqtCodczEHL63vT12GcFO84b8
         aq1PBous1d6iGrzVjZYAQkiEYGfQbsE0FGuProi+77E6LdIVj8fujcPTcRrYZQe0zNB4
         Y5pQ==
X-Gm-Message-State: ABy/qLYt0GuGqkiWtR33GvwWKOQwK3jvHpsorWmvFK8szg9ZNmxHSyGq
        Nmr27FOUPbm9qHaK8xssXPUS
X-Google-Smtp-Source: APBJJlFi5zqKpPcqLru+rlQ6LVN47aXmCb0MDfyTb6GjrV/q6h0xXtcX3lFvVK+m3+Sq4rpt+VIo5w==
X-Received: by 2002:a05:6a00:1943:b0:67a:a4d1:e70 with SMTP id s3-20020a056a00194300b0067aa4d10e70mr16356784pfk.16.1689158031680;
        Wed, 12 Jul 2023 03:33:51 -0700 (PDT)
Received: from localhost.localdomain ([117.207.27.131])
        by smtp.gmail.com with ESMTPSA id k15-20020aa790cf000000b00666b3706be6sm3247860pfk.107.2023.07.12.03.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 03:33:51 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org,
        myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
        cw00.choi@samsung.com, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_asutoshd@quicinc.com, quic_cang@quicinc.com,
        quic_nitirawa@quicinc.com, quic_narepall@quicinc.com,
        quic_bhaskarv@quicinc.com, quic_richardp@quicinc.com,
        quic_nguyenb@quicinc.com, quic_ziqichen@quicinc.com,
        bmasney@redhat.com, krzysztof.kozlowski@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 06/14] arm64: dts: qcom: sm8250: Add OPP table support to UFSHC
Date:   Wed, 12 Jul 2023 16:02:01 +0530
Message-Id: <20230712103213.101770-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230712103213.101770-1-manivannan.sadhasivam@linaro.org>
References: <20230712103213.101770-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

UFS host controller, when scaling gears, should choose appropriate
performance state of RPMh power domain controller along with clock
frequency. So let's add the OPP table support to specify both clock
frequency and RPMh performance states replacing the old "freq-table-hz"
property.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 39 +++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 83ab6de459bc..72fd66db9c51 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2194,17 +2194,38 @@ ufs_mem_hc: ufshc@1d84000 {
 				<&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
 				<&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
 				<&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
-			freq-table-hz =
-				<37500000 300000000>,
-				<0 0>,
-				<0 0>,
-				<37500000 300000000>,
-				<0 0>,
-				<0 0>,
-				<0 0>,
-				<0 0>;
+
+			operating-points-v2 = <&ufs_opp_table>;
 
 			status = "disabled";
+
+			ufs_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-37500000 {
+					opp-hz = /bits/ 64 <37500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <37500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-300000000 {
+					opp-hz = /bits/ 64 <300000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <300000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
 		};
 
 		ufs_mem_phy: phy@1d87000 {
-- 
2.25.1

