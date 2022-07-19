Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5914857A88E
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 22:51:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240417AbiGSUvd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 16:51:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240355AbiGSUvZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 16:51:25 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4527430574
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:51:13 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id w7so1337697pll.7
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fTd5dTMrn/vgfpcVVVlcdHYJzr85DThlvIgg60myah0=;
        b=Vrb9FCHRYkBU+cUOZUPiQiH+0W7IsjCfVBpeqUtU6F/+nfBCiqKrCMclgxjh9ZvPjz
         UBCXfmKm8WnXCYeoJ4YTNYh9E3j0p6hAJRKpTWKgK2OnYaGTwwLbzEn6NdVajwZ2edRb
         7Zoy7cw8e6kuqkXroGNKiAgPVn3bpuaVuno2dtoxfYkXPNLVUsi46JJpOZiA2C3gKzks
         b3LZ4gjqEQdYA3sq2n4arXzRDl8JiBHsXby1vJ4qTsGU51A3PfmlwT6gZzoHfjqsD3J1
         IHlLigdIG4rCgpC16UzjLswom1CGNaZZbFO/8PW+jkaExe15yxEH76PsQ2Vr7dKqR49Q
         +d0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fTd5dTMrn/vgfpcVVVlcdHYJzr85DThlvIgg60myah0=;
        b=tm9lUryeBdrCdIF0y+UOMLoimEI27M4G0SBRlEPeEk5w0jd11hEGlY3t3ddAvS8hFk
         xlKrspwYT+m//+9KZqXEBsA0MS5b79eu+pUiUcBjXRwfVR+DqfyhnN5W7SiIJSKLNhP/
         Np7kbkoqQcvaG1a7OLZuPiFodG5ORPv5FV4ViyLuha8i5a9zOYeR88RdHm5X0mf+PabO
         s5GcAFNmKeAV+6mAh3U3ql3ceGkslGMFFzY4ZyudasorLmPfH6Y3rsatmBTsPJ5MTRi6
         /ZJm6gaVB5BHBFG81OeNFs8VRY8pQte35v7xA7x5/tNiTPj3btcYDUw3bBa4F88imMI6
         zrYg==
X-Gm-Message-State: AJIora8v0RBQanqk3r5kGTy+rk3ZeCRm2p1WSizQxM5Zsmli6sw4RFmg
        +A/JBzB4i2XOU/GYuFve3d2M5A==
X-Google-Smtp-Source: AGRyM1tN1EYwqpvi4mugEEfLGNHXNLDcF3n1MGEFYj5Wmknt2voTMQurz3xwOX0Gx+W05DXxMHAo2Q==
X-Received: by 2002:a17:902:da8f:b0:16d:1c82:624b with SMTP id j15-20020a170902da8f00b0016d1c82624bmr1032201plx.163.1658263872621;
        Tue, 19 Jul 2022 13:51:12 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:709e:6fec:df37:6562:5a80])
        by smtp.gmail.com with ESMTPSA id n1-20020a622701000000b00525496442ccsm11929173pfn.216.2022.07.19.13.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 13:51:11 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, robh@kernel.org,
        linux-leds@vger.kernel.org, pavel@ucw.cz,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 2/3] arm64: dts: qcom: qrb5165-rb5: Fix 'dtbs_check' error for lpg nodes
Date:   Wed, 20 Jul 2022 02:20:57 +0530
Message-Id: <20220719205058.1004942-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220719205058.1004942-1-bhupesh.sharma@linaro.org>
References: <20220719205058.1004942-1-bhupesh.sharma@linaro.org>
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

make dtbs_check currently reports the following warnings
with qrb5165-rb5 lpg nodes:

arch/arm64/boot/dts/qcom/qrb5165-rb5.dts:
 Warning (reg_format): /soc@0/spmi@c440000/pmic@5/lpg/led@1:reg:
  property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
arch/arm64/boot/dts/qcom/qrb5165-rb5.dts:
 Warning (avoid_default_addr_size): /soc@0/spmi@c440000/pmic@5/lpg/led@1:
  Relying on default #address-cells value

Fix the same.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index b3740375dd4c..a7278928efc1 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -816,6 +816,9 @@ lt9611_rst_pin: lt9611-rst-state {
 &pm8150l_lpg {
 	status = "okay";
 
+	#address-cells = <1>;
+	#size-cells = <0>;
+
 	led@1 {
 		reg = <1>;
 		color = <LED_COLOR_ID_GREEN>;
-- 
2.35.3

