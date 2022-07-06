Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DA7D568BE1
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 16:54:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233187AbiGFOyU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 10:54:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229654AbiGFOyT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 10:54:19 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 151DACF3
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 07:54:18 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id a39so18761998ljq.11
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 07:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K3TcfrzR31SgEtLPCBMM2UObU1DtxUjmHrSVvns4VBQ=;
        b=dl1GbRuoJ2KdSgcu1LTycLhVbk17O69xNdEY9+pfEk0fPvcRlvr2WpdIhKR0XfGquy
         a1oM2aIl7BC9H9KqdhpeKmWQSJCQPqjuPpROrHumeSkTOes5GF01tJrNhSe2Q7lU0CNG
         AwX8wX15/9ay4W6H9X+a31GwXqBj6wmq1EbmhQpTw3jI8hoUBtA1e4aKhruP6/Rs4T8b
         BrVCV+SEXw5kcEENEz7eojia53hM7WfPzGkG50HWOEih2FjQjpjT9V6n/jRg1pzntwF8
         HKb8VyCAchh86AyGCEYMHNF02jVIgDKYsk5TVHml3uQ4nuhPaupPwWtaY9PIisLWCjyh
         rD1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K3TcfrzR31SgEtLPCBMM2UObU1DtxUjmHrSVvns4VBQ=;
        b=hlGNRlGL7R9pKPLEOIje5M0r/oAc8MrvPAu4QmYSZj2l1HzF/pFACoGHw1a05F2awv
         HwcdVI3rDprNcMMxnz9zY8T/6uUOHYz4hzS9dWM6hv9KGFrPGvr/23seck/yIyADVUhh
         SgMlyNYYkE8+uyNdLwSRYVcrk6Gdlrqj7IFeNX4Fj0ulMtr56o4W+K+hy5MGwRttAFyj
         DNVZK0w0s66hA7wJQ+NLzkjtJIJI9CQk7RMLPpvE3+8c88ZmFbCmz6PxTPAFyfTS0/nd
         tQzZBdyE54SibSqsC5OTar5RO5g6hia+IgX3i85Sm4EBMDpF2Uj46reTBrTrjIqbGNkb
         1zEg==
X-Gm-Message-State: AJIora/juidTPnoN9CX4/+YAOVXmWzPCSAJt+6eLZFGxYcw2YRZpzr4e
        xafeRZHoLd0LPtsqbtl0GSJGaw==
X-Google-Smtp-Source: AGRyM1uYcHPpxC6foH2OODWFkK59zW/K+1WnRyMiDMHORW7JKVsr1+7g+UflF+WahU+TYCcVwSiKVg==
X-Received: by 2002:a05:651c:54a:b0:25b:c79e:e0fd with SMTP id q10-20020a05651c054a00b0025bc79ee0fdmr22901565ljp.94.1657119256386;
        Wed, 06 Jul 2022 07:54:16 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i28-20020a056512007c00b0048650aee2b2sm359374lfo.144.2022.07.06.07.54.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 07:54:15 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 3/6] arm64: dts: qcom: sc7180-idp: add vdds supply to the DSI PHY
Date:   Wed,  6 Jul 2022 17:54:09 +0300
Message-Id: <20220706145412.1566011-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220706145412.1566011-1-dmitry.baryshkov@linaro.org>
References: <20220706145412.1566011-1-dmitry.baryshkov@linaro.org>
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

Add the (required) vdss-supply property to the DSI PHY node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180-idp.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
index 2d84bc400196..9dee131b1e24 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
@@ -330,6 +330,7 @@ endpoint {
 
 &dsi_phy {
 	status = "okay";
+	vdds-supply = <&vreg_l4a_0p8>;
 };
 
 &mdp {
-- 
2.35.1

