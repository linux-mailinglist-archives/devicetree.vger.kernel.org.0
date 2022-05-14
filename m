Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 952EF52719C
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 16:10:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232946AbiENOKs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 10:10:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231211AbiENOKs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 10:10:48 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08145140C1
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:10:46 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id b18so18902326lfv.9
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ypxafSXytWa1pPBeHJ41K2y3Cfr7QvnghKr6SvtMtAA=;
        b=lwl1u/CLn67GrQl8k1xpyGiVF9l1USF+zHwYPOpibgw0rG86X3JASfLk2olkq1YeFO
         uf/aDxFJ50K8pI+AlksFUQTW2iPJSh/XCj13GjPkRsS9PQ0sMPoZesx+Ag9zhNbDZI68
         7SgleCDJk8rP6FNTiXHfzj5NdujLnP9P+e4zHHgau4PgGHXUaYkjh8kjQ0lWSzqE1cEo
         OvQlsuMl88FicL6wwDiMZWWr2oV9BmrpbRxZeQHFQkgINc7GLsZy1Ffxuh0S2dSlhjOz
         R3e8EiQmAF8CazrQmDzC/d27ZlATUTS2Z/1Xn/wf/8z7umKEoyOm1yljteU2b4sq6kPr
         bHVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ypxafSXytWa1pPBeHJ41K2y3Cfr7QvnghKr6SvtMtAA=;
        b=5Yjui0KFB9qRXaJFBIbWcEAoh/kBQC1WpdMdkcLhGZU1AhVzKjALq2GVHb2XPIWYzp
         17UCvZqv16vP8lyjOZLcVE9yrCoPVeDVHm7wkqylaRcfpEDCOqm3Y5naflzNkYgj5WJs
         RUwiDA9yRWGalywihCe9x2MGgFugvByiKznrw5iDnv1LBWaywK8T1yFjEKm0HJhl+CGv
         l7b6Uy53K4j6Wl1+E87y2x84Kg+OJN1d8Q3Pm0jp6/KDmOXWCKPtRU36YFYa7OzRDrf6
         EGt3+WH3WhCEUQSxbE7rHiQDDYa+6qo1LnBZept6o+6Qtuk8ZPBz4afKhLOYc7XPiI6L
         QxLQ==
X-Gm-Message-State: AOAM530ncr2sD5TAXA32ChuHggug69cSs4jNmd4jtCSUx/93cwa1+1cI
        lHeUDa4Ff7iY/Ju4WfFR7kEwJg==
X-Google-Smtp-Source: ABdhPJwgG1GZ4Bypt8jajdAGNK3nhdf5rfnXcTDCYaTEtqDY/IQO4vcNj/stGmw35pT01mYQoyzjUQ==
X-Received: by 2002:a05:6512:150a:b0:474:bb9:5174 with SMTP id bq10-20020a056512150a00b004740bb95174mr6455136lfb.207.1652537444376;
        Sat, 14 May 2022 07:10:44 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x9-20020a05651c104900b0024f3d1daedasm845912ljm.98.2022.05.14.07.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 May 2022 07:10:43 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v4 02/12] arm64: dts: qcom: sdm660: disable dsi1/dsi1_phy by default
Date:   Sat, 14 May 2022 17:10:31 +0300
Message-Id: <20220514141041.3158521-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
References: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Follow the typical practice and keep DSI1/DSI1 PHY disabled by default.
They should be enabled in the board DT files. No existing boards use
them at this moment.

Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm660.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
index eccf6fde16b4..023b0ac4118c 100644
--- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
@@ -192,6 +192,8 @@ dsi1: dsi@c996000 {
 		phys = <&dsi1_phy>;
 		phy-names = "dsi";
 
+		status = "disabled";
+
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -225,6 +227,7 @@ dsi1_phy: dsi-phy@c996400 {
 
 		clocks = <&mmcc MDSS_AHB_CLK>, <&rpmcc RPM_SMD_XO_CLK_SRC>;
 		clock-names = "iface", "ref";
+		status = "disabled";
 	};
 };
 
-- 
2.35.1

