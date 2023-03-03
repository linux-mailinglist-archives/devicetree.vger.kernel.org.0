Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E08C6AA579
	for <lists+devicetree@lfdr.de>; Sat,  4 Mar 2023 00:17:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbjCCXRz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 18:17:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjCCXRx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 18:17:53 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEC381BE2
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 15:17:51 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id d30so16496215eda.4
        for <devicetree@vger.kernel.org>; Fri, 03 Mar 2023 15:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677885470;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N802Fr0mvYVFoYKvgL4Iscqjub6mN4UuWcVLOyObAeQ=;
        b=Ozg/eASHEvWK7n2DUOhYBLTZ47erKl3nXKRhiCxgUIRXL8mbh/9o5+p2VdQmbIunou
         RpHEvYtcFawButACe+bSMu6i8AHy7JLkUvFCyxNIU41ohh9URVgTsiB3SJqftmt+srre
         FOiQh26kM9a8dJA/k+eM1XcTru4qdzhgHd9QmGjgqkxHSLsbvqA6VMD6HK+72cUdNVQ2
         EwSmSnxO4TZaB3fPNN6GWUM9ZkZm6XYeXgK5RDRyme5fe9+5a74QVHfVYkO36xUjLULO
         X9RRnfDIDTvkbq/Et12tI2iHPgegGK1C9oGSHhF4dv2JLBNrJCf4c6TsJjinj4gymhtm
         wLcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677885470;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N802Fr0mvYVFoYKvgL4Iscqjub6mN4UuWcVLOyObAeQ=;
        b=PGp+NWboIazQdUoXhmMfNOHQvXQ++BUG6pr8vmaJErrXpdcnTTLLmSY0iNvoI2zM16
         wXSxmulsZaqdG4hpChPW2ax12+dFQVs0O1rOt8HGRIdoJ3TvJWJ1/HDvJ4ylMc2HY9h/
         FSpVAKYNLbtFglT9mpDbJoIeoU5lr7D75f/mqcHfQCfMurXhh6Gs+u/HO/i4yr14MpHZ
         O+n1KM1cWZCQ59Tqauoiu0sH28wkFvGq/17RHIcrU1q5yD+fSwZZ8nhuyxCHgaaTsV90
         dHbW3UqMKSInv3y5Pi45kNHFq3vUfOl9rNzNtEGL15W11NZ+KnGKhCEWf7xa0mq1K5ff
         UmMA==
X-Gm-Message-State: AO0yUKWgHGrpIC+3KOXF6TNb0HXLiQLVtizKEF7uFPPpU1wASqh8/b0M
        F12h5D91D3Bj6m1edPK9QZmn2LstEWauaW/RYJE=
X-Google-Smtp-Source: AK7set8Fdfy5WOEqMgqPc2rdpcjhWkLcJquvS80WpInpqtI8xhRl5yrormBUiwIZnCdnpW6je8iNDw==
X-Received: by 2002:ac2:4462:0:b0:4b5:8f03:a2bc with SMTP id y2-20020ac24462000000b004b58f03a2bcmr921031lfl.9.1677880698708;
        Fri, 03 Mar 2023 13:58:18 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id e27-20020ac2547b000000b004cafa01ebbfsm552670lfn.101.2023.03.03.13.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Mar 2023 13:58:18 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 03 Mar 2023 22:58:05 +0100
Subject: [PATCH 05/15] arm64: dts: qcom: sm6375: Add IMEM
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230303-topic-sm6375_features0_dts-v1-5-8c8d94fba6f0@linaro.org>
References: <20230303-topic-sm6375_features0_dts-v1-0-8c8d94fba6f0@linaro.org>
In-Reply-To: <20230303-topic-sm6375_features0_dts-v1-0-8c8d94fba6f0@linaro.org>
To:     Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1677880689; l=952;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=XeByskUh4IJy5GUSRGVEOURhAeiNtSqMfR5ebBA6Oes=;
 b=4BGCWuRt4pHZDEFG5NnlENa82CtqJNl0M7IwD7B0smCe7QLF2yvSlwkP01BJ7lIgUrn6TL3n7+R7
 Yqfs45A3AJM1sn6WX5CatJztLRKbi85YddngzJDzDLOMdYW9lsNU
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a node for the IMEM block on SM6375.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index de5882c0ff81..5a0abb7f7124 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -1233,6 +1233,20 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 			};
 		};
 
+		sram@c125000 {
+			compatible = "qcom,sm6375-imem", "syscon", "simple-mfd";
+			reg = <0 0x0c125000 0 0x1000>;
+			ranges = <0 0 0x0c125000 0x1000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			pil-reloc@94c {
+				compatible = "qcom,pil-reloc-info";
+				reg = <0x94c 0xc8>;
+			};
+		};
+
 		apps_smmu: iommu@c600000 {
 			compatible = "qcom,sm6375-smmu-500", "arm,mmu-500";
 			reg = <0 0x0c600000 0 0x100000>;

-- 
2.39.2

