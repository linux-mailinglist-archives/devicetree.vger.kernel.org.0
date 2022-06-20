Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8DC5551158
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 09:20:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239244AbiFTHTr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 03:19:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239300AbiFTHTq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 03:19:46 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86912E03E
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 00:19:44 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id y32so15794414lfa.6
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 00:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O6bvUEn6qypJ14chus2BifgRfhxhpHO2Z4eDROe6Tio=;
        b=cU0V4GhxLauV0I9UAYDd6ZUv6dReKOj+lm56z6EOtTAD+a2XnRUeOT3vl1QgPCWmUE
         VHyBdieUBRRYps9joSpraYJn0YED4Hqym74wcFpE7OTT7eArhaaRV60wrdG+xlp0GKeh
         DMUqMcIDMZ3iig/qkvlB5K+8MbmXu4ZRlI7GTmz3IvaYFKzV3+rcTWLK+0/Y4gEWuAwn
         NNW9PtJP+3ZPbgnzM53IaYFhwUqX+/h0pr0PhhNMXShL9rSS1/Pn3vMqOQRSSgpj/8m+
         oZko/WfwVIbrSw8v+jLhTqiEkf96ZpF/b7NbPOKox2b0u/wORrb9hMJs4ToMeDucFvRO
         0mkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O6bvUEn6qypJ14chus2BifgRfhxhpHO2Z4eDROe6Tio=;
        b=yJlTC8il0sKCvvT+XEpIBZmTjwsCsMIliqzqPZy1q6gG5QuhReCHhRjmTZpInVxpDD
         KglthR/aGlwppsjcyODRaayUIYGuUpPe60olcrwXLc4Hry7A6ZoYQh+yxzglyM4f7RYZ
         OLD7ShgLwmU/EuPE3AkUNvcSFxTIx+hGyfz0+jw93vfmqIMl61Tn1QhWfFlMSUKqdePA
         MqStRYkFCc5kdpGAZ8E3Z1ln1wjsWa3FZFz0uofBxh2QfxsX9CwJcyHE/M8V0G9wiLo3
         T1GVwSpQSjZ3uNWFSRAGB0nOKu2a2pGqCZXhRNo055im5jB8FHj+ewWwM45kuidw1tri
         wIHw==
X-Gm-Message-State: AJIora8Rmv7Puboi0dNsnEbDx/r4h8pZkn+nmSx3boJvNLuqMq9wV0hZ
        xikBgtVKqWr5Gyzn2NaKuuRvPQ==
X-Google-Smtp-Source: AGRyM1vfDDWChutVQ0BrQ2EpbIXvlsf8K/734M2hL4YoT+p7oDTvO+G6Cx/OTk+GdqhLEblnGFo6Qw==
X-Received: by 2002:a05:6512:2302:b0:479:4005:3278 with SMTP id o2-20020a056512230200b0047940053278mr12787535lfu.621.1655709582862;
        Mon, 20 Jun 2022 00:19:42 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t16-20020a195f10000000b004795bcfe953sm1649775lfb.214.2022.06.20.00.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 00:19:42 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: qcom: msm8996: add xo clock source to rpmcc
Date:   Mon, 20 Jun 2022 10:19:36 +0300
Message-Id: <20220620071936.1558906-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620071936.1558906-1-dmitry.baryshkov@linaro.org>
References: <20220620071936.1558906-1-dmitry.baryshkov@linaro.org>
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

Add XO clock source to the RPM clock controller.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 6c7380f86383..f7a69ed05968 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -463,6 +463,8 @@ rpm_requests: rpm-requests {
 			rpmcc: qcom,rpmcc {
 				compatible = "qcom,rpmcc-msm8996", "qcom,rpmcc";
 				#clock-cells = <1>;
+				clocks = <&xo_board>;
+				clock-names = "xo";
 			};
 
 			rpmpd: power-controller {
-- 
2.35.1

