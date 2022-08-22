Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71BFD59C83D
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 21:13:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238387AbiHVTNC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 15:13:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238255AbiHVTMm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 15:12:42 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33A925073F
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 12:11:41 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id z6so16612382lfu.9
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 12:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=iMDkWm8TCfHT8OAB3OYo4HTW9w3Q76IKCWQmxSVeQpQ=;
        b=dv1C1kBV3HwxnFUuzxtwuwq+g/+pxFAKNhm6bbtQkIuG6ymC+D2X27JIrkmMSn6PpY
         G5WNxfRMk2JrEg0rMFpYXlG2vN4pbvuyGWo2ZECoAO12VqV2m3UHP/lzazBZHqYkzXgS
         bO448cCNv0vkRNCo75AXz/fOR5NMmRUINCSEQGUeMznKqRAyOLG3Ry/ErOcxg12Dhp7T
         wGdQqh0P5Jf8JFReBoxO/jJrum9rMq0PRjOOwDoMiGhw4tTPTaRLIjl9LbKleB1e01Rn
         kXBaY9ZekMF32f+j++mt85Ahvblf9NzaU/tLI+cwHdCKd5FVXfIyr5j8lre58O5JtmVh
         jRXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=iMDkWm8TCfHT8OAB3OYo4HTW9w3Q76IKCWQmxSVeQpQ=;
        b=27uGu8vVMuMHVmOPRHcrk717evE9goVGMYD3Rq+JhIUUgVcdodZme7IKTvdB2sjszZ
         rnopDxfnziQWBN93XkP4LUS1g9FditvgMGZJC4fFq7C3fyyCOVJK/ppuoDJ3/29wmkGP
         Ze81kP5MdTOTHgRo8aNSLHmDoZ8/zD6zxqe2Go1jGYC9RUpCmOvTmX0ZBOxDDDBWbAFo
         RpxQTSq+q8WbMNTUiqGnxPZ5BgsN4HXfxqHBu+NShc00FDq6/V6ywfX6C9UPR6zf8peP
         HbJnwQJYATJL+4s5Coplv1kRFTJHFzinQzfY4SsHpYAM7T9jCCOUUAwy6kZPBgZ6/1Iw
         lk5w==
X-Gm-Message-State: ACgBeo3YQY+1DORq79dctVoTD25Lrjym4gfVG/Ai4jSLvlgyDingxmyc
        zVc2o6EvqIP4ZtDoDvc8vfb3OQ==
X-Google-Smtp-Source: AA6agR70vuKeOo3/CtRRcy/X8xj4wYkOtmS/jyu+Q6qlyjuX+3unBEUBymLpNpcfmWnefXqlX0oXKQ==
X-Received: by 2002:a05:6512:3faa:b0:48a:f17a:579e with SMTP id x42-20020a0565123faa00b0048af17a579emr8136533lfa.30.1661195499573;
        Mon, 22 Aug 2022 12:11:39 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w18-20020a05651234d200b0048b193041easm2059691lfr.209.2022.08.22.12.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 12:11:39 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH] arm64: dts: qcom: sm8250: move DSI opp table to the dsi0 node
Date:   Mon, 22 Aug 2022 22:11:38 +0300
Message-Id: <20220822191138.316912-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It makes no sense to have the OPP table for the DSI controllers in the
DSI1 PHY node. Move it to more logical dsi0 device node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 38 ++++++++++++++--------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index bc773e210023..5843e46a3164 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3571,6 +3571,25 @@ dsi0_out: endpoint {
 						};
 					};
 				};
+
+				dsi_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-187500000 {
+						opp-hz = /bits/ 64 <187500000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-300000000 {
+						opp-hz = /bits/ 64 <300000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-358000000 {
+						opp-hz = /bits/ 64 <358000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+				};
 			};
 
 			dsi0_phy: dsi-phy@ae94400 {
@@ -3663,25 +3682,6 @@ dsi1_phy: dsi-phy@ae96400 {
 				clock-names = "iface", "ref";
 
 				status = "disabled";
-
-				dsi_opp_table: opp-table {
-					compatible = "operating-points-v2";
-
-					opp-187500000 {
-						opp-hz = /bits/ 64 <187500000>;
-						required-opps = <&rpmhpd_opp_low_svs>;
-					};
-
-					opp-300000000 {
-						opp-hz = /bits/ 64 <300000000>;
-						required-opps = <&rpmhpd_opp_svs>;
-					};
-
-					opp-358000000 {
-						opp-hz = /bits/ 64 <358000000>;
-						required-opps = <&rpmhpd_opp_svs_l1>;
-					};
-				};
 			};
 		};
 
-- 
2.35.1

