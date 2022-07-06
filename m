Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20099568BE6
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 16:54:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233336AbiGFOyZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 10:54:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232239AbiGFOyX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 10:54:23 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D6F7CF3
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 07:54:22 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id bf9so3125033lfb.13
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 07:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+wPtHpmQ6dj+K5CWiVezNSAdoiBjL5sWc+U38WvG1wI=;
        b=wc++VBw21JceC8bWFFWN7Jzeweix1AL7NNEnG7X7GV0YwOjaDtShVqyE/Jsagu3WWW
         JEzx59KS3PV3MIeIwtllUC3louIjpnyJXe6OSklM/8JWF4awvR6kDygvqguWGnQnoTWN
         1JvI+drrlMNmnWg8cqIiKB7Cvr5Nq0bhMiNC1xcRYCxsYJqTT3YHLRpcA90fh3r/4jz/
         8c6Qw32xyPuVdXrMoCWgjhxVZ23IJeq6tsE0JvoJalVYRAfs1DzJWvcwqWTUoo0MzLVn
         buutpTZS31iePvx56AkZToXznM/P/lPc/jqNIiSZS0WvDv1PdqFhfl76/ZlMvpTahnfV
         1ysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+wPtHpmQ6dj+K5CWiVezNSAdoiBjL5sWc+U38WvG1wI=;
        b=2TGqmV7M02Y3SmBVRyP7x0nOO3lmJlopf3iqlro4OQtjUAkulJ1kVRVXGxgY+fwy3T
         9p/Es3ec/4O+39ckWIMc3og81kxWhhjCU5QVtWy9JR5zrmkZpVH2X3uWoOj36q5q5dvP
         GtwMbNJIjxYh+tWvZ3HiL9fLmj9nMf7LCfwHJZN20eH5ktlj/5dmjljonIx05LUBLxRS
         STOWwGXz0ZdBUNKoiOx2E84Q/vhY1/Mf9HWCOUbznR86fRdXohQ/sbW7vyBzndpT3ihy
         w7tA1Jb9aAaveBUnug9pb2gK8KXHUCJiqfrTb1JqVFkYWD3/ORjJBGPVj9qgWtAkOLl4
         QnYQ==
X-Gm-Message-State: AJIora9SYu10gHSKvH91PO72Msva4HiO84gHNx+Io/ADaV+9Vj12xHvU
        uu/OVBg1U5BEMdCvsK/sDuBsoPFWZ2bzFg==
X-Google-Smtp-Source: AGRyM1u1msA0VrsJLEOY8Dcg8aEY2eEGM5ztbnaWuUfaqlKta5XEvfNDPXIhbNQNBPIbsPb9MKBsoQ==
X-Received: by 2002:a05:6512:2347:b0:484:8985:f487 with SMTP id p7-20020a056512234700b004848985f487mr4563896lfu.364.1657119260741;
        Wed, 06 Jul 2022 07:54:20 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i28-20020a056512007c00b0048650aee2b2sm359374lfo.144.2022.07.06.07.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 07:54:19 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 6/6] arm: dts: qcom-msm8974: rename GPU's OPP table node
Date:   Wed,  6 Jul 2022 17:54:12 +0300
Message-Id: <20220706145412.1566011-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220706145412.1566011-1-dmitry.baryshkov@linaro.org>
References: <20220706145412.1566011-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename the GPU's opp table node to make it follow the
display/msm/gpu.yaml schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 11b4206036e6..2c323d20a1a2 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1634,7 +1634,7 @@ gpu: adreno@fdb00000 {
 
 			status = "disabled";
 
-			gpu_opp_table: opp_table {
+			gpu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 
 				opp-320000000 {
-- 
2.35.1

