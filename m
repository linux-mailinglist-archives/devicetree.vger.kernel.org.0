Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F61D5E8B06
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:43:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233563AbiIXJny (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:43:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230134AbiIXJnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:43:52 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3006237FF
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:43:51 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id a10so2542345ljq.0
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=VLUu6TG7vJTDj7eA5+6CLG9FwNk8lEzcvUqb2CGKe0A=;
        b=c7Lt7EFWJekW6sL8/GctkZF4qCl7seJm0RF9u/ZjcOgJvkSg+O4JzvWMcEw9wpCZYO
         ZfzlaK9rfmPmthDemNZBdqnIH2RnWB3znIRJcpZzd6X3FzDG1tKWSmgIiFjELL6fifPL
         pnS9su2xrAs1pTXJQxjem0o7+SoopL6ffBa3KZlulHMRw5ZF9gnp6ezglfplmuef86Ua
         k0J169NaRAZko0UO74q+2crXvA9QcgUH2C2p19dQL/E4EBSBXA8FJpSvUieCxz4ay39n
         J7GuRTC4beVwFSvFEzYt8iWaPHB63qINXlzhiJyyqND3w96ZYmzcmzmXuGqRjVIcO4GO
         rcNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=VLUu6TG7vJTDj7eA5+6CLG9FwNk8lEzcvUqb2CGKe0A=;
        b=aCglClfUzy0hs8MaBVPu7WTsZbrW4UwIK1tsrxt7bsDShsvD88V2TqUkkKBW9zlpud
         lVDSqhJMNaeZ4r7lbYj25nAj8RBAl4D1ebsOYqus4oIraFAo+fN4TNIjJijVWTj/JXkl
         mI+kBQkDrLJqF0Sfb9aeJt2z1srAhXF3zGXFwKcx+lV7XMfvbTkjDurt+c3q261BZcX8
         7sEs73U/N3Gi/fpB2wEWE68M/z3qVYu101un5WoiPBe053KfS2wYw7ST9mRMPXL/lM/Q
         FC/G6s+5/XDgfAd4na4TbRE4wswhz05+7o2/TnCovgciI+dAGX3luh0DOX4w13e7egdC
         mDIg==
X-Gm-Message-State: ACrzQf26+DYgKhPfT+vSE2/C9xZ8q+EwfRGP6019Jud3nXVl/2a6/RUb
        ll0//KuEJhV+esN6RVyg8CVySA==
X-Google-Smtp-Source: AMsMyM7eJ3B+KjC4+09vRqENmm7Tm/1KaexhHEQKtn3a5aJl5ftNc0zf+rMYc8NffYuA9Ch/ooyO3A==
X-Received: by 2002:a2e:a544:0:b0:26c:6abb:866d with SMTP id e4-20020a2ea544000000b0026c6abb866dmr4362216ljn.9.1664012630224;
        Sat, 24 Sep 2022 02:43:50 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x13-20020a056512078d00b00496693860dcsm1833347lfr.232.2022.09.24.02.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 02:43:49 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 2/2] arm64: dts: qcom: msm8996: change HDMI PHY node name to generic one
Date:   Sat, 24 Sep 2022 12:43:47 +0300
Message-Id: <20220924094347.178666-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220924094347.178666-1-dmitry.baryshkov@linaro.org>
References: <20220924094347.178666-1-dmitry.baryshkov@linaro.org>
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

Change HDMI PHY node name from custom 'hdmi-phy' to the generic 'phy'.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index a7d0e5d68141..ed9863854904 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -1144,7 +1144,7 @@ hdmi_in: endpoint {
 				};
 			};
 
-			hdmi_phy: hdmi-phy@9a0600 {
+			hdmi_phy: phy@9a0600 {
 				#phy-cells = <0>;
 				compatible = "qcom,hdmi-phy-8996";
 				reg = <0x009a0600 0x1c4>,
-- 
2.35.1

