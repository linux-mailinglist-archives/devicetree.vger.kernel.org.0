Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3160956CDE1
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 10:41:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbiGJIlm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 04:41:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbiGJIlk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 04:41:40 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5AE118B1C
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 01:41:39 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id m18so4215084lfg.10
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 01:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+kCksQy9hyBEb/dg/WClV26pEAyqH6K/Nlp6/fq7zx8=;
        b=elgtiyv/9hE7IpbOInVZGopuJata+DVamrZaV4WwV5m/3OMI4591SMBpZl0melXv7p
         uJArSfXi3yBJHRfX1oH2Cki5ExfLQWFgV3UfA9vrA9d130TxWxPz8TzU2gAebjQQUAO2
         mHY0U9BuPuIBD6Br/qgSoJuqlJRVIJdFUv/dX7WvvXze0uCpA4VmjWexVnWTsHkAXI4t
         3mUjGLS1qoIz8zlTFMjdVOAOnwst25td71oN9hlDmBdCpli4kVGp4DxqyzJo0eeJQVL3
         t8W8EDuHV5uRGPJEfNzuu20a+QwJ2MjOvq8zSyJZxnDOr9WuSy0sktkZ5SEE/j7XODeQ
         6iOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+kCksQy9hyBEb/dg/WClV26pEAyqH6K/Nlp6/fq7zx8=;
        b=2jY/xWyndfN1cN9OwSdnBgRTLXBCjR4tpVi4RL0bG1koyxTy1vL1aqzbGxURk+Y79d
         FRj7QMNXsIlqizduzyIj0pYp4sU5Og6NUAfzY6qCe9BMQvLyQiGiGOahKZMXD3OZzpHV
         qF/byiLOXSyuDsbSEB4AETu1zT+/nmyTwOST5jqT4z2cnValwO4kFqlxltHPESsQ54Ew
         X5ZEAdcKwsCOfaLOFW4eGt4l8tjby0YPqbCsx2QrjJVgHaMRnaXzh1RUDRU6HHlRlRRc
         GIb/6qIWpOFAXvvpAxq++DAb9uI8ha/2HL3YFM5Z8UF7Aob4dcHdTvbyTEq6jUouIC+F
         ANew==
X-Gm-Message-State: AJIora8m3DeBnQnGAWIX651Wn59onAjRFsupHqbPgwfz0O8i9dVoFfnS
        8UTd7ehshEYOPxN4SXrpmhLotw==
X-Google-Smtp-Source: AGRyM1vU2rzSmqfURkkjagDekzoolslMTCa8n25I0AuNnvrIxF3WNQ+iDXwESlEy+d8b7rttpHxTEQ==
X-Received: by 2002:a05:6512:3408:b0:481:7a4:1919 with SMTP id i8-20020a056512340800b0048107a41919mr8513714lfr.296.1657442498318;
        Sun, 10 Jul 2022 01:41:38 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i21-20020a2ea235000000b0025d4addbad4sm912536ljm.91.2022.07.10.01.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jul 2022 01:41:37 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Subject: [PATCH v2 3/9] arm64: dts: qcom: sc7280: split register block for DP controller
Date:   Sun, 10 Jul 2022 11:41:27 +0300
Message-Id: <20220710084133.30976-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220710084133.30976-1-dmitry.baryshkov@linaro.org>
References: <20220710084133.30976-1-dmitry.baryshkov@linaro.org>
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

Follow the schema for the DP controller and declare 5 register regions
instead of using a single region for all the registers. Note, this
extends the dts by adding p1 region to the DP node (to be used for DP
MST).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index a3def1022ea2..e54c2000b098 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3810,7 +3810,11 @@ mdss_edp_phy: phy@aec2a00 {
 			mdss_dp: displayport-controller@ae90000 {
 				compatible = "qcom,sc7280-dp";
 
-				reg = <0 0x0ae90000 0 0x1400>;
+				reg = <0 0xae90000 0 0x200>,
+				      <0 0xae90200 0 0x200>,
+				      <0 0xae90400 0 0xc00>,
+				      <0 0xae91000 0 0x400>,
+				      <0 0xae91400 0 0x400>;
 
 				interrupt-parent = <&mdss>;
 				interrupts = <12>;
-- 
2.35.1

