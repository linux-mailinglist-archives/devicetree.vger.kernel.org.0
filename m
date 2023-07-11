Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5782B74F2C5
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 16:52:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232288AbjGKOwG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 10:52:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233117AbjGKOwE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 10:52:04 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA5DA10EB
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:52:02 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b701dee4bfso95393761fa.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087121; x=1691679121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7dErEvYLmRlIV1rxHMjDe/kO5lvnWUZ0gQiQRSSG5cc=;
        b=RMQ8wa3L3Q0JGMxtTBoCS5z1ud3qXSPOQsGel4a35xilBvZasCWWf4qkmZB4Q300Gf
         wQ/XvDPrtVGCTVSM2obH2p8KywPwvWw3CT35PGwr3dgd8iaxA8PNhTw1OVchsC0/mB3M
         cuzBFutdB4DYC3hnFzQylnmsqrccTG2xOovZB/3vAzYUc2uFb5SP6+VhukPNKULmKuyu
         2klGtOsQ4sG0ZoFQfVBJUU1B6merzgHdW/t05ZWihjQtpwQRJFU33QDbX4KxJx/B5+iy
         ul2cJvyQllBatCfv+DkgMGhDiHKuEwAZCNcinLc2S0H+3orRWVoDTLsTG9pi8jwsCzzE
         idrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087121; x=1691679121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7dErEvYLmRlIV1rxHMjDe/kO5lvnWUZ0gQiQRSSG5cc=;
        b=VldACaJc33dn53smqFzjDTfVVbBQgAVCnmwIzXLXzgkszv1aLmhC70XXvuUv8j5bxe
         Z0bMDEVQW6jWMZ6dPnHgoVz8DVbYQ2X62lH6gNypot32dxpKN+ciKb8AZ/z0CtiuKNF/
         XlCE7pRBDPD+z0zBAfy2ZDCF7IrgJ8f8HsgqtcA6ObKUqKhZkyzpeQcaetVzzO8iETo7
         4eiJRSeuUo7I2YiKWnCQQ0zZbfZ6oejZEHba2f8UfcUAjQMOxBP2WHztXaKh8ZXP6nol
         NfME5+wpctNeS0s6NF0QmEL3d+FU9Bc4SysFUejMwy8UOGnzGVBKrlw/HI0uxdDMjqSu
         b2Fw==
X-Gm-Message-State: ABy/qLZ3HQ71KHdEZeISft9qbKe+0QAtnzJ5ICJXC5a5UUbzdGLs7/HU
        mFc24p5R8qbVpbmyajV+dG8oOw==
X-Google-Smtp-Source: APBJJlHRe3n7NWwTDlLJyoOiDBPc89XFmkVeyDkfXstvOPbHKWJgApj36OXu/k2i0+juGepChjf/iQ==
X-Received: by 2002:a2e:8902:0:b0:2b6:de6d:8148 with SMTP id d2-20020a2e8902000000b002b6de6d8148mr13435207lji.31.1689087121104;
        Tue, 11 Jul 2023 07:52:01 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.52.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:52:00 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v4 09/11] arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings
Date:   Tue, 11 Jul 2023 17:51:51 +0300
Message-Id: <20230711145153.4167820-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index d522dea65ba7..ee6a16ed0a91 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2169,7 +2169,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2213,10 +2213,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8250-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
@@ -2224,16 +2222,10 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x16c>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x16c>,
-				      <0 0x01d87a00 0 0x200>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		cryptobam: dma-controller@1dc4000 {
-- 
2.39.2

