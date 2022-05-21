Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B68B52FF49
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 22:27:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234669AbiEUU1R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 16:27:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234971AbiEUU1Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 16:27:16 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D1165A2C4
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 13:27:15 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id p4so18133155lfg.4
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 13:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Gwhp/I0dDSnrdPJA/Hff6Kw9wn7tBdp+RE6bGAPimnM=;
        b=Z+3NKOUTD0Ncci9Q8preVkdGsQ+8ZYfDu7GzmyBQtfnEXIYRsqKcY3nxLq9tu0Ua3b
         6tBERy6Kfb4qdhneyW4juu0XRlEhG3YzF7EzssWmdPhXfr0MemswrBh0NdvUj0NuXspj
         +8GiF4n4KLERhPIsMi8e38pPVSjNkt8gs4O1sthupQux8KSUFtfSMZxshrVYb5vpxdb2
         sQf+/hjLeZrdB66aXkDkXz1fGov5ejgqyZ17aiDKGmmMvn94DyliE+vqAZfwP8MgFY1x
         L0OnWKG+ovCY3SBHV7WW/3TPVsfAup8TlT2diFRUC0DeESx8rJavvBELwhCjPwU/i7YV
         DCXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Gwhp/I0dDSnrdPJA/Hff6Kw9wn7tBdp+RE6bGAPimnM=;
        b=hW4nU+8Sq3enBnCBPRCBEglvz3Un8+St/eZjR+nV6Pp7WaUqfH5ZZZ8ZCjLDPO9VRc
         uwYK72KU4C9EnfNQFuq50p0HiCZEva41jfZs/faRSYp7c9PUmGAljEi9vUDsz/xr0mkC
         WnWfeUgKLI02HAzFV1U7ZeaUK/J/Jjl7Dm5eGBdEenmWvZEQILiSruTHDzw6mscAZ8ip
         gpMonbQHnQRR9w79t1Mx+vudqE5QIfcjAHTSCnFH5TSQ5GVKwVWqPUmf5UPngqQW7ibV
         fp4HZny6E/Ph6Gl8KSo3+g9bEFCqt/XoWoY2op9R8A8KwbBNX2tePWN+BLPsHgiPJPxu
         YNNQ==
X-Gm-Message-State: AOAM530q7vTceXVpvmpBPlSEpWou4AE5oimgqyRNxkbndvJ63zFWBN4T
        ssJ3pvHm2pz3oR8+Fh5VE56pXA==
X-Google-Smtp-Source: ABdhPJzOogRiAvNx3K4WbbMnsJ4QGoWoknW0SfRjFBq5BizeqOV/ojDz/3PAR4yzSHq5JbqUNQOFOw==
X-Received: by 2002:a05:6512:1686:b0:477:9266:443c with SMTP id bu6-20020a056512168600b004779266443cmr10977205lfb.609.1653164834820;
        Sat, 21 May 2022 13:27:14 -0700 (PDT)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id x1-20020ac259c1000000b004786291114fsm317773lfn.140.2022.05.21.13.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 13:27:14 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Subject: [PATCH v7 03/11] arm64: dts: qcom: sdm630: disable GPU by default
Date:   Sat, 21 May 2022 23:27:00 +0300
Message-Id: <20220521202708.1509308-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220521202708.1509308-1-dmitry.baryshkov@linaro.org>
References: <20220521202708.1509308-1-dmitry.baryshkov@linaro.org>
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

The SoC's device tree file disables gpucc and adreno's SMMU by default.
So let's disable the GPU too. Moreover it looks like SMMU might be not
usable without additional patches (which means that GPU is unusable
too). No board uses GPU at this moment.

Fixes: 5cf69dcbec8b ("arm64: dts: qcom: sdm630: Add Adreno 508 GPU configuration")
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 80d5eae9bc75..ac4e688a717a 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1050,6 +1050,8 @@ adreno_gpu: gpu@5000000 {
 
 			operating-points-v2 = <&gpu_sdm630_opp_table>;
 
+			status = "disabled";
+
 			gpu_sdm630_opp_table: opp-table {
 				compatible  = "operating-points-v2";
 				opp-775000000 {
-- 
2.35.1

