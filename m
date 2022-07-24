Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A770957F561
	for <lists+devicetree@lfdr.de>; Sun, 24 Jul 2022 16:04:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbiGXOEd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Jul 2022 10:04:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231591AbiGXOEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Jul 2022 10:04:31 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8879012634
        for <devicetree@vger.kernel.org>; Sun, 24 Jul 2022 07:04:30 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id o12so10338608ljc.3
        for <devicetree@vger.kernel.org>; Sun, 24 Jul 2022 07:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oKmnR8pcWpFGv+QMlFKOsQCj6vs8uoDIFMT8NXu4mE4=;
        b=BbUEJ5yryTOknJOga7tAdzzxQAAl/+zE4ertI1WlpIJkzy2AAI+FNvWicbtP1Xf+7Z
         85DzniV+WEi/m4UwekFaNZpydoyuSLv1lSCAbcSnGOAgWS4rxFmD4wbj7OlxeGvUEjEk
         Ll4rPPJJt/OtQ+4Lld8GbRxjwFSENPtJVgX63VE7T/T4ER+9Aw+p0kKLUW0nY99lkKTc
         VMPq4vOpuJBzmBNMVJ6WpdvCs4b3d562VxpxdwiyphDfC0vJEPBV6720B48iX6+G9ri8
         5817niPo/IP2ouyE7QTh0fx1Fa3/suRXrLh91w2SPF/iyOCtw8vm3yudlCUgO+cQGCc2
         FvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oKmnR8pcWpFGv+QMlFKOsQCj6vs8uoDIFMT8NXu4mE4=;
        b=6fPTR/dwba0THtH0f0ZcHwbGRx9yEimDLKjSBB1TIkbPsSocES61lFBL0Y2Vwk8fKR
         gl59NKyKpEM10liw2o0Oz5uC8pDA7wxA5W2ygyhqqjXHPGA1QS0GDQBKMYd6oZ0nzpuf
         IQKAJTyt8s5VUqKULmSdniVVeiQPucOPyhmx141kSYsyjK7g1DmaYGyjBrmQAePWf/MM
         FXMPT3R1xN9Nyyo4H15lgZCMr8yPnmYRElM0WM28BO8SP6E+A1tfog4DNn0HhaqWItx4
         v6mNm99AGLaP95mhZy0yiGDFDvBUcmu/6dgeXUfb61WkEMfcxYQXQBMSItWM8puuPPRx
         Kqww==
X-Gm-Message-State: AJIora8bwdoLgfWdxriDesiv2MOTlvn1Tmb3gX+hY96JqnXo8HMlj6E3
        /le7rZzCWb+BWjO2j++Ba1Bdtg==
X-Google-Smtp-Source: AGRyM1vNwBgh5Q8CltLCA8YuXXXU4qliUHu5dJy1ZJA9o0NqxOXhMwALe8Ik5TCoLIZDppIAMa+NQg==
X-Received: by 2002:a2e:a884:0:b0:25d:d8a2:d18c with SMTP id m4-20020a2ea884000000b0025dd8a2d18cmr2613583ljq.305.1658671468673;
        Sun, 24 Jul 2022 07:04:28 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s13-20020a056512202d00b00489dedf1dcfsm2192622lfs.289.2022.07.24.07.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jul 2022 07:04:28 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Yassine Oudjana <yassine.oudjana@gmail.com>
Subject: [PATCH 6/7] arm64: dts: qcom: msm8996: fix GPU OPP table
Date:   Sun, 24 Jul 2022 17:04:20 +0300
Message-Id: <20220724140421.1933004-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220724140421.1933004-1-dmitry.baryshkov@linaro.org>
References: <20220724140421.1933004-1-dmitry.baryshkov@linaro.org>
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

Fix Adreno OPP table according to the msm-3.18. Enable 624 MHz for the
speed bin 3 and 560 MHz for bins 2 and 3.

Fixes: 69cc3114ab0f ("arm64: dts: Add Adreno GPU definitions")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 3ce572f3765f..6dfd30a91af7 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -1228,17 +1228,17 @@ gpu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 
 				/*
-				 * 624Mhz and 560Mhz are only available on speed
-				 * bin (1 << 0). All the rest are available on
-				 * all bins of the hardware
+				 * 624Mhz is only available on speed bins 0 and 3.
+				 * 560Mhz is only available on speed bins 0, 2 and 3.
+				 * All the rest are available on all bins of the hardware.
 				 */
 				opp-624000000 {
 					opp-hz = /bits/ 64 <624000000>;
-					opp-supported-hw = <0x01>;
+					opp-supported-hw = <0x09>;
 				};
 				opp-560000000 {
 					opp-hz = /bits/ 64 <560000000>;
-					opp-supported-hw = <0x01>;
+					opp-supported-hw = <0x0d>;
 				};
 				opp-510000000 {
 					opp-hz = /bits/ 64 <510000000>;
-- 
2.35.1

