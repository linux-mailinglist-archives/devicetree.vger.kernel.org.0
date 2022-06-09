Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A53C544BD1
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 14:24:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238107AbiFIMYK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 08:24:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245371AbiFIMYH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 08:24:07 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D930C1758A
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 05:24:04 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id w20so16063137lfa.11
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 05:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qs3Tgo9HxtYbegYMsCk59QI8qhrr1tyZgYEjx7n8Wk4=;
        b=SqHFt07SCMIijq4IN+FXHu5/qFgbby/8hR5MpdRzb3971Dzc5Ik0+eymmwAHuAUfKO
         bAHEZT56jczuI4+o8ngXAYtGIdC5S3n4KNKgXLP7Ag+ZXE8+iMnWijnXvtOFHEU0psMy
         Hq59zvmQyGPXhWq8Ub2EQNb5qNmFD2uKPser0sySf3l3gP01/pam1rFTv0T88dQ+ogw5
         H4cUgfvYE2vVZ5wZh4qnccUif5oK4xrGAO0vzW6X1RaflRK2VKniV90nUVn4VKz0l0YY
         HJa/3W3GQknLX/aL8SqjrLd/cejz90eLX29yUw0D6oLtBeHb85dbQh8ecosbzGd478ET
         UR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qs3Tgo9HxtYbegYMsCk59QI8qhrr1tyZgYEjx7n8Wk4=;
        b=vZLF+k9RS/QWoOxi9XyxlrDnGpRgaHqmal7AlXLCHZvjU5ntFZymKZaSN6qV2tt03v
         xkAjcK8lU1XQE3s5BbCaEVqlmsTVHVLaSeiIUFebbi/rLpn1gqY2mktgPI01Yqgf8jWA
         PcaJ7ukgJwkdQ/1jXwCUmwsIrzsUtGfCIlxMbizV/B/UbCg34pY3Csy7OghxW65lZFuT
         n16DEx2jvg9BpKk8hC8WKtt67TEWCfhB9NksCowB0hbVw3JUqhu/tw+nvJjRw1sM8zUM
         RLg3LTXiuxrcOEJEXCX27oFx2X8n17L9Eo7gN5iUwQBiOmWjw4soIJD2FnFiYwjM/HOX
         FASA==
X-Gm-Message-State: AOAM531LtPye5j3sKwMZtXgPvyWWWMxd54UfrdjuWsO+FWMfujvEUUPE
        2c68B2GABd++blGTtRZOqxd4Sx1KzZ+zRkkr
X-Google-Smtp-Source: ABdhPJyvQuKGTYPc/8i9ydAXsIXFgspf1mz3WicEZf36eNYWiwrLcqCbebVPPaTSa0mxzJpI1Rzfaw==
X-Received: by 2002:a05:6512:234e:b0:479:3bb1:8d3c with SMTP id p14-20020a056512234e00b004793bb18d3cmr14715871lfu.478.1654777444407;
        Thu, 09 Jun 2022 05:24:04 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f11-20020a056512360b00b0047daa133decsm32421lfs.166.2022.06.09.05.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 05:24:03 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v3 14/14] arm64: dts: qcom: msm8996: drop phy-names from HDMI device node
Date:   Thu,  9 Jun 2022 15:23:50 +0300
Message-Id: <20220609122350.3157529-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
References: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The HDMI driver doesn't use the phy-names to identify the PHY. Different
Qualcomm platforms have used different names for the PHY. So, we are
deprecating phy-names propertty of the HDMI device and dropping them
from existing DTs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 9932186f7ceb..fa446889d25d 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -925,7 +925,6 @@ hdmi: hdmi-tx@9a0000 {
 					"extp";
 
 				phys = <&hdmi_phy>;
-				phy-names = "hdmi_phy";
 				#sound-dai-cells = <1>;
 
 				status = "disabled";
-- 
2.35.1

