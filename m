Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0B29550E49
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 03:05:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236907AbiFTBFY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 21:05:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234884AbiFTBFY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 21:05:24 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CC08B7DC
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 18:05:22 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id w20so14826158lfa.11
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 18:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tKzj6L0K8MJNmRP+vzTm8uPJzi8NEXlEW3OrwZR1Y4s=;
        b=ehbIN6DDHWJgcb8mbxbuZo7vgKAVPRGQKsNFVYB0b8wyWDj7Ye6vc6Vm1SRit6dIPT
         /ZrDDWhQt0kOs5zehbZHINwBE1FJ+SOlJZNlaE2gTjAdfA6RlirBRXbM4M1oBt8TlUr4
         FA55YQ75bS3s38zggMMtZpWLUu2VwVt8U8stbl8t5TMXkyZmbD69JczPQ7Hr7sQCTjyY
         9zJmA36E0aD4TF4qd+IY9MoWtjlcN3XDA4EFiZ7EaBA0gMrgsdbUSScg+V06FQqpV4pK
         /R/XVZtwd7NXHm9ShZu8z7eIlPR+/4kQFpdKZnKMcks8p6LYAJxI2HC9Paskkn3kf7hV
         o0Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tKzj6L0K8MJNmRP+vzTm8uPJzi8NEXlEW3OrwZR1Y4s=;
        b=3S9MW3o9MKPLCFGA8UvQFKMnCCp+vVR2OpqyhN2XkVHOt+SPN1ruTFkssEPWBrhQiI
         SLJajDK5ORYBHTsDSaURe4+j8yRgUV4zO+nnP46E3pTdRcWJ54PM8zxAjQ0B/23v4PGv
         MOmoUJHz6ZaTAnTtM6cTxhF7XOdLN8UvNEWycpNUTjOdAUVkxrKajkUJEsdPGjxYq2gK
         UvoVOU4kDvzKhyoF1Dt68dhBggaJty82VUZfJvpm66QDXla2QqIHzf1hrRQDoEInlZCp
         22gnqg0yJadsa1+gMq3R1uFnlrxg8FIDvCCf4I4bJZraiuD/LmoDi+Uk8EpD3gp5MAIE
         xzDQ==
X-Gm-Message-State: AJIora+fZZoW1TzmAOMJ1qaMspo0srdqtktOI9L7roOl+pjwZdQiCE6o
        U+Mkqn+2QiAjgPuy5xalkwNeBQ==
X-Google-Smtp-Source: AGRyM1syw6wr5qEXJjO8AL6OhfBBlFYolL5iTnPvXzK82XaidCCiBDd0cmRf6hvHckJK5roZ5q47vA==
X-Received: by 2002:a05:6512:4010:b0:47f:6fe6:119c with SMTP id br16-20020a056512401000b0047f6fe6119cmr1451315lfb.499.1655687120582;
        Sun, 19 Jun 2022 18:05:20 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h11-20020a19ca4b000000b0047f73f0af8bsm79826lfj.221.2022.06.19.18.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 18:05:20 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: msm8916: add xo clocks to rpmcc and a53pll
Date:   Mon, 20 Jun 2022 04:05:19 +0300
Message-Id: <20220620010519.1533364-1-dmitry.baryshkov@linaro.org>
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

Both a53pll and rpmcc make use of xo as a clock parent. Add it to the
respective device nodes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 562c42ce2c5c..d679aa5989a6 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -301,6 +301,8 @@ rpm_requests: rpm-requests {
 				rpmcc: clock-controller {
 					compatible = "qcom,rpmcc-msm8916", "qcom,rpmcc";
 					#clock-cells = <1>;
+					clocks = <&xo_board>;
+					clock-names = "xo";
 				};
 
 				rpmpd: power-controller {
@@ -1872,6 +1874,8 @@ a53pll: clock@b016000 {
 			compatible = "qcom,msm8916-a53pll";
 			reg = <0x0b016000 0x40>;
 			#clock-cells = <0>;
+			clocks = <&xo_board>;
+			clock-names = "xo";
 		};
 
 		timer@b020000 {
-- 
2.35.1

