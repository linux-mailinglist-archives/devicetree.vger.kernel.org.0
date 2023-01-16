Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4A1C66C238
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 15:33:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232698AbjAPOdX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 09:33:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232215AbjAPOdB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 09:33:01 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54C8D2CFF4
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 06:13:43 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id x40so8831163lfu.12
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 06:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z0+W/Zj8jDpib9X/b7wfOA2JWzfWFWC+letT6lKOBN8=;
        b=pkP+o5VHNi7BbfWnMDgqz06CS8IInlSpei4vdxhdoBow7iuSE6n1CHy9p0nw+E83iu
         oSfH+nzhPBPD7ptr2ztbsK9F5Nvo0Ai/bFg80iwIeFkx43qkhkSSspdSbOfH3Jl6NuGg
         u6vv+zWUyzEBDwdsnKsiLZ8a8H84epnlCFnnZ6YLQbqm0wzqxaURAMV/bmlgyfXCCuBE
         PeM7z/Q2dFO+vUXtmj7U438xvh5c68Bt5wfnbqz9Pp/UtFz/qRGZ+OrMQ2B7Ql0F8TI2
         Z0DsBwqe3SjiZ528Fdspc0J4r1rXIOt/8YTBvQAeI9FBn0ZRzLnPwCnxICIPMc7qJPyg
         mrKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z0+W/Zj8jDpib9X/b7wfOA2JWzfWFWC+letT6lKOBN8=;
        b=6PvKWnM+0+5ltlfnOYoXe2vM6rhHh9TyPwSHiktE4DvNezajQJMSq+G1IEA3m5yOLu
         0Te7CwuAvsIjogLaANg9b5cQFWlEdh6stZ+gCXEEkXBF3fn9SrzW2OHmR5YWdZfk50AG
         vn2wQHCI2OAdnYK3lfPGm7ZVxl4AzYH6sWqY3jPw41GzRApsfwNJ6sqMaiC1A6xYx3SO
         qhk3PjPlyarKjvhtXwb6p+gH8SF1AyK+7cNku/Oz+s3RCTszfgIRFPhnx+WKfZUftL0p
         NYx3r4yBta/zH8iawzgICzPhWUxBrgs+UgIadeQR0UzvqqEzOcUG1MsImjXSCZ/fOwvP
         AuXw==
X-Gm-Message-State: AFqh2krSd+QrdTimiLJ25rAOE/YopJzKkDgU/OkoG0aNMTSQZ+EPE0Pa
        0dnAqEPfTqvGg5DNr+yrqg14WQ==
X-Google-Smtp-Source: AMrXdXsqyUisqsmfEDU6hJCgmpfK8ZpBSqwtMG9GxcFK1H2qf6hbW6vzP6Jwb9FT3/nJv4qwaV2mDA==
X-Received: by 2002:a05:6512:b04:b0:4cc:7258:f178 with SMTP id w4-20020a0565120b0400b004cc7258f178mr3912459lfu.59.1673878420746;
        Mon, 16 Jan 2023 06:13:40 -0800 (PST)
Received: from localhost.localdomain (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id c28-20020a056512239c00b0049ad2619becsm5030937lfv.131.2023.01.16.06.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 06:13:40 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: qcom: sdm630: Don't use underscores in node names
Date:   Mon, 16 Jan 2023 15:13:36 +0100
Message-Id: <20230116141337.469871-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename the reserved-memory subnodes such that they don't use
undescores.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
index 0259e90aad1c..763b1df692f2 100644
--- a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
@@ -133,12 +133,12 @@ ramoops@ffc00000 {
 			status = "okay";
 		};
 
-		debug_region@ffb00000 {
+		debug@ffb00000 {
 			reg = <0x00 0xffb00000 0x00 0x100000>;
 			no-map;
 		};
 
-		removed_region@85800000 {
+		reserved@85800000 {
 			reg = <0x00 0x85800000 0x00 0x3700000>;
 			no-map;
 		};
-- 
2.39.0

