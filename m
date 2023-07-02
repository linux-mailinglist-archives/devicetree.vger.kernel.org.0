Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EF3C744DCD
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 15:43:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbjGBNn3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 09:43:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229974AbjGBNn1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 09:43:27 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 888DDE6C
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 06:43:26 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b69ff54321so56020261fa.2
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 06:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688305405; x=1690897405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YcbEnFCtTA9UEjtUWN7yvDCOIDS8kBLNF+kymOo1R3w=;
        b=d3EtTX3tguqQxyIruES7t3xCn3iFtmPtfT5DGrvsRQXAwVKXNao2giB6z/03gyIM+1
         vJhI35fQrhKJ5Os3ZqNFlMtHDyjmDqV4Xgy57gzBvURpPL6pq7lT8n7lm8ivDxsBtBey
         TzxUht9/RK8Ulq7/bpkw5OmZYhngByf7b9W84DRX0v9IFk0PX55xWprpQGU4BMTqCmZP
         GfZL8d7mtd7BWOJjz8V+GTHE+2lRLHi6d3rbZCJDOl23FKhsuWM3EE+ccIe78Ru7Y6hO
         fCjcH8sthO6znzrk7GNjzPqNj98hTHLx0bkz0wxTAUkT0RcdMIK4ocXgXhgbzxszRxWj
         iy3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688305405; x=1690897405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YcbEnFCtTA9UEjtUWN7yvDCOIDS8kBLNF+kymOo1R3w=;
        b=dRdb99YWmFbcdc5PQuWyF0qyaxParMl/5CaPDQyhBGYFsXANB3VN8DueZawwaStN1Q
         zxa86no8yS0k1v6KKTI5BgHvKHlQc19d0jyzx5viPQSqPbwKPwsnbYrm1dcy7FDdezMD
         DecdOFxMUVedYw+70f/9YBZohNYS+2s33Gy/BPe1UruEBmm7d9fBuTWL2YAt3stIagoG
         NO4jiR6+AsfPdy0Te2A/OuY33V62hZlZTqd11+A0dsthh5L9vbcDtE916N9kRqC1v+f2
         Pey2gHmnJ69CxiVKJ0ID7zqTAAoPPd+8WMczxiSVnpve30qXtMgA9o1Ouc06cHHj6SkB
         qn2w==
X-Gm-Message-State: ABy/qLaL3i+nBABjRxFhq33Y2oLvA+JOqORX4cjudPkmsyqqGyYk7Jow
        RQ/SWbbv9DspdP7ZlK87LUkZhA==
X-Google-Smtp-Source: APBJJlHAmJeMjdGms8FlJxqAcm2dvIa2heyuVtPlB5zstLwg820xZbETa7IZg65i9rOPH1QVb/J4zA==
X-Received: by 2002:a2e:8095:0:b0:2b6:a344:29cf with SMTP id i21-20020a2e8095000000b002b6a34429cfmr4778918ljg.17.1688305404791;
        Sun, 02 Jul 2023 06:43:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d9-20020a2e96c9000000b002b6988ca476sm4310650ljj.101.2023.07.02.06.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 06:43:24 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 04/27] ARM: dts: qcom: apq8064-nexus7: move sdcc1 node to proper place
Date:   Sun,  2 Jul 2023 16:42:57 +0300
Message-Id: <20230702134320.98831-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
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

Move sdcc1 device node to follow the alphanumberic sorting order.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts b/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
index c57c27cd8a20..0e80a5a8e3c6 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
@@ -181,13 +181,6 @@ &mdp {
 	status = "okay";
 };
 
-/* eMMC */
-&sdcc1 {
-	vmmc-supply = <&pm8921_l5>;
-	vqmmc-supply = <&pm8921_s4>;
-	status = "okay";
-};
-
 &mdp_dsi1_out {
 	remote-endpoint = <&dsi0_in>;
 };
@@ -336,6 +329,13 @@ lvs7 {
 	};
 };
 
+/* eMMC */
+&sdcc1 {
+	vmmc-supply = <&pm8921_l5>;
+	vqmmc-supply = <&pm8921_s4>;
+	status = "okay";
+};
+
 &usb_hs1_phy {
 	v3p3-supply = <&pm8921_l3>;
 	v1p8-supply = <&pm8921_l4>;
-- 
2.39.2

