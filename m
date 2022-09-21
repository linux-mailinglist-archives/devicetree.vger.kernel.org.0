Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6799B5BFBBD
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 11:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbiIUJy0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 05:54:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231940AbiIUJxv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 05:53:51 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 276525F80
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 02:53:01 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id x27so8390863lfu.0
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 02:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=HybsSNYSRccLavRmMCYeRgEaGHdyFC9lgC0pGHiT8HE=;
        b=qIaToEIRN1GM5f90fj2sGInjUBethcEg0NFiuKSuFhkPPQSHrnMcFOwsim7maVoBiw
         GU14VcCnXO45Rd07dTZkQONdVqrtkHQP0LEPg61NjgEJszMH8vMGSqCO2uJLyovd/lyd
         6jFntX/cHmdRScXa0pHG2ZCCrZ1J448U/gOdjoobqP6Q/2h7aWsRVJmpGsrONG5f0Des
         JTNlHYY5sxLa6GKa2ZOJ/oV3ZiYX1iZf9ofB3xwS3OrLKWdHocWTTbKVb/wwvNNm9QXy
         KO7+iUw83jP8xSinebCNpQkFhKReQqcizD9jTiX0vq2MHuUWwGbPbSuZRv9YN7lrlCAL
         hKwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=HybsSNYSRccLavRmMCYeRgEaGHdyFC9lgC0pGHiT8HE=;
        b=fO6VPpfW5doIJaYB04XioV5zFxptPrFS3X7K2iYEa3/QB61VideHgEzvVULO8lRS+T
         G+fV7vZJCvFk85r101RWwWOfj1qT84on5YQWB/y7+kuwk1Cx5bzWEAcAFneWGSmMj8Yd
         ZrRnfm79Jrx/7gLPRicEzXv5/TLV707c4WJVeLQOi5o4VPlsLzOLtN407gTqWhtXjgDw
         sl3mNf+bwHntjwnVOZMDfbP4bhgnnB1PYffBxwFmS8h1sgLJHDaVrGLRYeTzx9FvplFN
         Om2rCBEsnHtxYWDyOjm0nXC5z/fd53fzC/5K+zktCh5Nwm/BdSa4IJ+3mObaq5XV6Qzo
         hfzg==
X-Gm-Message-State: ACrzQf38bDy8EhR6K7sq1Ls3KDOMOV+wDfHQ9z9OsnrS7/jK6SgYPrZn
        o3Dn56CqmCnAvr13L4sXhDKI6Q==
X-Google-Smtp-Source: AMsMyM76AMjIBJiLGczAVQGoYwviqaeF+80j2ARYXJwH4jcLAjoWE9VCKr/q5bTBgHAYHMYOb0BDhg==
X-Received: by 2002:ac2:528c:0:b0:49f:53b7:937d with SMTP id q12-20020ac2528c000000b0049f53b7937dmr8884987lfm.5.1663753979489;
        Wed, 21 Sep 2022 02:52:59 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i11-20020ac2522b000000b0048a921664e8sm367694lfl.37.2022.09.21.02.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 02:52:59 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] Revert "arm64: dts: qcom: msm8996: add missing TCSR syscon compatible"
Date:   Wed, 21 Sep 2022 12:52:58 +0300
Message-Id: <20220921095258.2332568-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

This reverts commit 8a99e0fc8bd3 ("arm64: dts: qcom: msm8996: add
missing TCSR syscon compatible").

This commit marked the saw3 (syscon@9a10000) node as compatible with
qcom,tcsr-msm8996. However the mentioned device is not not a TCSR
(system registers, hardware mutex). It is a CPU power
controller/regulator, which is currently being handled as a syscon.

Fixes: 8a99e0fc8bd3 ("arm64: dts: qcom: msm8996: add missing TCSR syscon compatible")
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index c0a2baffa49d..aba717644391 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -3504,7 +3504,7 @@ frame@98c0000 {
 		};
 
 		saw3: syscon@9a10000 {
-			compatible = "qcom,tcsr-msm8996", "syscon";
+			compatible = "syscon";
 			reg = <0x09a10000 0x1000>;
 		};
 
-- 
2.35.1

