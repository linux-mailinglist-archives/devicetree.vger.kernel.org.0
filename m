Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52BDE4CB2A6
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 23:58:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229699AbiCBW6q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 17:58:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbiCBW6q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 17:58:46 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C105611861D
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 14:57:51 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 5so3389608lfz.9
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 14:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gjgchxLZsuXhGYdZJ0fQarmNwKoKapdDTwBQIbIMpjM=;
        b=V6JkgxJ9T1eoSI/ZmB9BIew37R4yTXQ8+bBX9ecak/v6Z8chnQlrfkn8LnYZeVNnwG
         cUgOHmUGxuj47HuSfCYVkjTwGrF29g9z5tkEccYb8FxpbeDTMdC2qc+zUkIOi9nOuye0
         oDYpxn8WqRFiwVGcn9WjOjc1fdh4uSHHp9+LS4zygTycjZB4uSVjmI/N5g3BixwMkPBj
         LuU6QhGHsZTiwCSkpvOX3i3G0mXMEnADseyfxBve3N3ES1adBy6O1E4iH1H+F/JL9GLl
         le4uZqT3GcskFVu65iSh07uTkn89ioe9qtxoO1ypswh6DHfOyU9xgog7iYWKK16z5kix
         s+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gjgchxLZsuXhGYdZJ0fQarmNwKoKapdDTwBQIbIMpjM=;
        b=XyILVASJNwFHnA5XE8Blf9Y4pIj1yZPjlbqPogox/2fUE6SK5UH+/YlBo623TB40ft
         TohFI5QDhUipvOQBPWUQYNFoaYcMcH/BvvkTIFLF221qE1LnhC8Yad5ihBmD0LJ5qLLw
         vLNQyECaB/MC++sbJvgZec1cLtXHEAIJa5N8Fz7pQQnEB7Rbu2xnZeTTVqfWvykcs9h2
         pjThH3XYZPHpyiEpHmGty/53ZUtfUeQ1C8LhdhkPZ2rN855JajdvlCRnrHXO8uFTyLjW
         +o1Zwv+JfHL7TBez7L6MUzk4emaKX7WTfz0mTy1pdZAw/oaX93ua/xSf+otyUrOPECu4
         aT+w==
X-Gm-Message-State: AOAM533jwKr5jA3GJImdahHNHC9MQHT+jNh2keiBTj91y8J95+g7f8FN
        4ABS3T2dCRnK2WXZmM2wo5IJZA==
X-Google-Smtp-Source: ABdhPJyKoQrZzXoN8ZDFwHq1i6BZ9QBWxStufx4Dq3kVyNaxyoywyJSpM3zuDZEa05c82xoq3onQSQ==
X-Received: by 2002:a05:6512:228a:b0:443:4cd1:1bcc with SMTP id f10-20020a056512228a00b004434cd11bccmr19828229lfu.133.1646261657570;
        Wed, 02 Mar 2022 14:54:17 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id x26-20020a05651c105a00b00246585ccd53sm54236ljm.75.2022.03.02.14.54.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 14:54:17 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: [PATCH v2 4/6] arm64: dts: qcom: sdm845: Drop flags for mdss irqs
Date:   Thu,  3 Mar 2022 01:54:09 +0300
Message-Id: <20220302225411.2456001-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220302225411.2456001-1-dmitry.baryshkov@linaro.org>
References: <20220302225411.2456001-1-dmitry.baryshkov@linaro.org>
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

The number of interrupt cells for the mdss interrupt controller is 1,
meaning there should only be one cell for the interrupt number, not two.
Drop the second cell containing (unused) irq flags.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Fixes: 08c2a076d18f ("arm64: dts: qcom: sdm845: Add dpu to sdm845 dts file")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 41f4e46e1f85..95e6a97c2170 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4281,7 +4281,7 @@ mdss_mdp: mdp@ae01000 {
 				power-domains = <&rpmhpd SDM845_CX>;
 
 				interrupt-parent = <&mdss>;
-				interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <0>;
 
 				ports {
 					#address-cells = <1>;
@@ -4333,7 +4333,7 @@ dsi0: dsi@ae94000 {
 				reg-names = "dsi_ctrl";
 
 				interrupt-parent = <&mdss>;
-				interrupts = <4 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <4>;
 
 				clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK>,
 					 <&dispcc DISP_CC_MDSS_BYTE0_INTF_CLK>,
@@ -4405,7 +4405,7 @@ dsi1: dsi@ae96000 {
 				reg-names = "dsi_ctrl";
 
 				interrupt-parent = <&mdss>;
-				interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <5>;
 
 				clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK>,
 					 <&dispcc DISP_CC_MDSS_BYTE1_INTF_CLK>,
-- 
2.34.1

