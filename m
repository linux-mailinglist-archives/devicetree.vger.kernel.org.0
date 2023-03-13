Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8927D6B7E06
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 17:48:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231450AbjCMQsJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 12:48:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231400AbjCMQsA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 12:48:00 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B0C2D338
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 09:47:57 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id j11so16496551lfg.13
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 09:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678726077;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x4EPxcSMKiqyNw8mJBAxwHQ7n6kIvPBes74o/rWBPSc=;
        b=WGT3m6Bq+FlMV89lAyG3qHtf4a7T1H74+Zt8ihSuVZidukp4nDaGzKHmFa6q8SuA7j
         EDSs201AUmv31A5BHRpq2n51b458N4EvR8I7r7vthkBwWOIpqQdu/JNLreVpqtMk09hq
         cU1aPHmMkWqVNY+nupjvZBQX7dOmxcd6PGVHAcgmndK6UGTIZr3YYfbnyKZj/LUma8Gb
         U4v0ehJ7U5kdnEnb4BpMvW2qB2X+SOzcuEY9V21ucFMBjdAjECYLzVG148tj4qUCkrvI
         EWB0khNY5ToBkHQS7WGdwCttlL7zYurFiuEjI4z8gpnMGiSq7lG8avHwuls7gAZTmaIF
         8meA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678726077;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x4EPxcSMKiqyNw8mJBAxwHQ7n6kIvPBes74o/rWBPSc=;
        b=S3mMDwf+QTU7ZAwFJGuLdd0nUDSkfj/v1YALSddadYq0Nk1mqHBKSpZdfhmLsy++xF
         VBUItmjtPHSzpzdUD5fne6XmTkVp1bph8zsxnu545rl88LIwzqLoB/xfMWuDTBkdxRtE
         lEYi5YOlsXCSk5NSGzx1Ud3mQb0837Dv8twE+NmP0hZ4YWRd/7DQnnfL4QRi00i8/gkx
         1hUyNkqoJ/vxb8FztCyjre9mrnk0MeDa0de/qsSRIB4NVlRXIdk49biOecg67Xwp/Pr9
         CGTT8BfxyT1ers5bhCUOe2Rp89TlwC0Ze3v1NqG5uprZkpJHiWVgm0NjUb510qPjx2tT
         FK7g==
X-Gm-Message-State: AO0yUKUZt0cbt2r3ErwIdK04J9MESvOydh+mCHYQ0th3HZbpPO8du5eW
        daY0XjxBgB+ttjvleKT+MVxAVH+xkmYkjmb2wOs=
X-Google-Smtp-Source: AK7set/Jbk5EExCKOsl9LSNiNwUukfcT6PIrHp7lrdbYtZkzlEltDW1HfF8bJ5S6P8Vybs45H+Azog==
X-Received: by 2002:ac2:4859:0:b0:4e8:3f35:6844 with SMTP id 25-20020ac24859000000b004e83f356844mr1879171lfy.19.1678726077472;
        Mon, 13 Mar 2023 09:47:57 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id o9-20020a05651238a900b004db48ae69cbsm18134lft.206.2023.03.13.09.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 09:47:57 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 13 Mar 2023 17:44:21 +0100
Subject: [PATCH v3 6/6] arm64: dts: qcom: sm8350: Add qcom,smmu-500 to
 Adreno SMMU
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230313-topic-gpu_smmu_bindings-v3-6-66ab655fbfd5@linaro.org>
References: <20230313-topic-gpu_smmu_bindings-v3-0-66ab655fbfd5@linaro.org>
In-Reply-To: <20230313-topic-gpu_smmu_bindings-v3-0-66ab655fbfd5@linaro.org>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678726067; l=837;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=B33R6GkwOZUQE4WAkOBwxyKbh5vZSkdob4J+byg527A=;
 b=rbYRN3k+OOfapcGQJCdMVaFAS/giXvdxVEt4RJwwDV+/PVlnyaHmUoaBAJDQCYdc7LLb+ZIY3uwb
 Pd3VvH/pDaIRSt3IcFGDqmVWwr3M5IlEKmWKVPvQv/qNIJIohQhy
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the fallback Qualcomm SMMU500 compatible to the Adreno SMMU.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 1c97e28da6ad..19a6a9785936 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1907,7 +1907,8 @@ gpucc: clock-controller@3d90000 {
 		};
 
 		adreno_smmu: iommu@3da0000 {
-			compatible = "qcom,sm8350-smmu-500", "qcom,adreno-smmu", "arm,mmu-500";
+			compatible = "qcom,sm8350-smmu-500", "qcom,adreno-smmu",
+				     "qcom,smmu-500", "arm,mmu-500";
 			reg = <0 0x03da0000 0 0x20000>;
 			#iommu-cells = <2>;
 			#global-interrupts = <2>;

-- 
2.39.2

