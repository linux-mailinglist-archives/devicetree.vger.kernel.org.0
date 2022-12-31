Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8DD865A454
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 14:01:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235804AbiLaNAE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 08:00:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232010AbiLaM7s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 07:59:48 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59E31EE23
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 04:59:45 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id cf42so35170002lfb.1
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 04:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=irSxaIcjW3n1PCvBEUpCzHQASe7UMs9Blgt3PcMzjTI=;
        b=VgaVL9fw/qliJ4/NI+fc3fd7xyitgX6Y35L2vtGZBZItbkzTbac7VKdBTRpZJP+bZf
         9zTU/nsHMsj5dy9dWMwMcf5nSH6+rmlkuJSFzm/DDe4s7mt78smBq+T/6xhbLFsIv7xg
         H/uOizGGPH/W0atLrqY594yzj9Iuofy9YDcA1VyQENCdAX2PPtjMMZd8kraOS/CHS6KT
         pGN+5Pt9o+p2oB1xT7csaVgOPFhjNL+qMe9PHj8HDGHRtoLPuh2VKqxji0Qv3xZHDqDK
         JNZD7ljwddNc0cyUrBY2RNb3kM6UCb25xqBsloyfNX1Yjw63eC6UtDHxjeu2PUdCRNYn
         ORSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=irSxaIcjW3n1PCvBEUpCzHQASe7UMs9Blgt3PcMzjTI=;
        b=2y1bf1CDsKaW92DO5ODs600FEBYNXcOGQMtRfE5o4Ohu/qPHt1Vw1ut2j/uLfxUgFc
         xd1uor+Na/xKluplrjFCqGuhh84lb+vzr7pYoJPafaam8VBYFQ4FFvp1+4+RYIIa8O6B
         QA/m76deBOL48yU/I6hKfoDZOLuY9MLnPakJZiQAlFFCsSdSQzniSijR/EIjOeMQ8FFv
         3Kx/60MFUb+cYbWnulAbUGcaEHJtge7i4Xk8t4o28wTi/97gjpe5OoxMfpqjdJtPSclI
         mllG5gCOPB5JMwBRfF/lSWafG4ynyyBMVBJ3xFfSEd08LgmCcuhH6AVQ0GF7WpaDJw1n
         bWRg==
X-Gm-Message-State: AFqh2krvRQ8aaRlz2ws8qgCCwnh5AaxH7+Jw+xQgUGGElk9chQM8tQGv
        3bjOaL8/2SxCTH2O3GGPmKZMaQ==
X-Google-Smtp-Source: AMrXdXvALujMJGMrmv+KDLKv+DuGNj2hOF15E9ai+k2KXulrtY1gZWnm7caYvRmdK8SYnmTaSBM08A==
X-Received: by 2002:a05:6512:1054:b0:4bb:70b2:6f50 with SMTP id c20-20020a056512105400b004bb70b26f50mr10911154lfb.52.1672491583603;
        Sat, 31 Dec 2022 04:59:43 -0800 (PST)
Received: from localhost.localdomain (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id d10-20020a0565123d0a00b004cb344a8c77sm22266lfv.54.2022.12.31.04.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Dec 2022 04:59:43 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 18/18] arm64: dts: qcom: sm6115: Pad addresses to 8 hex digits
Date:   Sat, 31 Dec 2022 13:59:11 +0100
Message-Id: <20221231125911.437599-19-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221231125911.437599-1-konrad.dybcio@linaro.org>
References: <20221231125911.437599-1-konrad.dybcio@linaro.org>
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

Some addresses were 7-hex-digits long, or less. Fix that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index b3ed6ec16205..76dab4c2e8ed 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -831,9 +831,9 @@ ufs_mem_phy: phy@4807000 {
 			status = "disabled";
 
 			ufs_mem_phy_lanes: phy@4807400 {
-				reg = <0 0x4807400 0 0x098>,
-				      <0 0x4807600 0 0x130>,
-				      <0 0x4807c00 0 0x16c>;
+				reg = <0 0x04807400 0 0x098>,
+				      <0 0x04807600 0 0x130>,
+				      <0 0x04807c00 0 0x16c>;
 				#phy-cells = <0>;
 			};
 		};
-- 
2.39.0

