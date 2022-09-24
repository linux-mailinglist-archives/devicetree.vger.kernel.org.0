Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A73905E8A62
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:01:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233588AbiIXJBU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:01:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233469AbiIXJBP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:01:15 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75F5780F66
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:01:14 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id b24so2391067ljk.6
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=YdVPlNU92/lP4JY7hPM+wHtAwIaNWsLurZzyiWFE8I4=;
        b=qR8/3dcep19pM3FBU2OrXwuPvn+3G7nZtkRQfXAzm527gwVWZ72MMZzROOCAGReT5W
         FxPbVmX+zQDThX7AUemfpfFy0em3VUgWK9bJAXDQedrIYCGrMA80BFyF7NVAr5fmfefX
         A0Spr+GyyOYBKFJwuIBCTPvJMNJg7FMxl/CaQa6f46GWt8ni+9bt2ZghoXyof8beI9U3
         bZoz9AzAGfH5kpcPIxynJNwr2ZnegZYnqLKJxuC2t9ijpkxbIpoLFinEPG1WunPxe1UI
         z//sY8+DMHkvLBpfyE5E58HTFsikA722S9BfE/giRQ0FNZp8iwxQC4kahSYSHC+jb0EK
         Y9xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=YdVPlNU92/lP4JY7hPM+wHtAwIaNWsLurZzyiWFE8I4=;
        b=KXV6JYReHKYTQFV648vOlMjLrqlg3kGkmixQ60xJhHgwzRZmIOHviPk9CzrfZrxqnR
         dadk6IusZvTq3kLKzYs3gHXxrlh3SAiN19faz8aMUB6K5u/2lih3xQ7+gt/W0XsXGY3l
         CfK08UWuMiHLDXetOxGVS+T0e59I2aOxz5vwuoHfsXRNntTjPxGx5DGJj1clJTsPV9YW
         JuB/ulmdpAcCdEFuVw3pAiiO42NRnj9gphIcEj8qKfB+kA70+HlmRp/3C2grDVxrzWYI
         j94uvAXOPU7RzbJRnqKPSbgv83V/6kFyPECD3UP7PMrGQejoZhQuuu5RIyxwtJ8jdOaA
         3JAw==
X-Gm-Message-State: ACrzQf2f7hgl4MB7bzpDwYzoUFIAye6JAWRBwLnqlLX75EPR7W5HOE09
        3Zv2+Jssnh37iaBe3dXD1ay8Bg==
X-Google-Smtp-Source: AMsMyM7pFuJLA2EzM7FBzH2SBrVEJVSJDICrDVRgq88SsOMMzcfFDsxVkKdcSU69Q1ljDJ36t4GMVA==
X-Received: by 2002:a2e:bf0d:0:b0:25d:b7a9:8b8 with SMTP id c13-20020a2ebf0d000000b0025db7a908b8mr4245189ljr.124.1664010072638;
        Sat, 24 Sep 2022 02:01:12 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o4-20020a198c04000000b0049f54a976efsm1830024lfd.29.2022.09.24.02.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 02:01:12 -0700 (PDT)
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
Subject: [PATCH 4/9] arm64: dts: qcom: msm8996: change DSI PHY node name to generic one
Date:   Sat, 24 Sep 2022 12:01:03 +0300
Message-Id: <20220924090108.166934-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220924090108.166934-1-dmitry.baryshkov@linaro.org>
References: <20220924090108.166934-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change DSI PHY node names from custom 'dsi-phy' to the generic 'phy'.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 742eac4ce9b3..a7d0e5d68141 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -1017,7 +1017,7 @@ dsi0_out: endpoint {
 				};
 			};
 
-			dsi0_phy: dsi-phy@994400 {
+			dsi0_phy: phy@994400 {
 				compatible = "qcom,dsi-phy-14nm";
 				reg = <0x00994400 0x100>,
 				      <0x00994500 0x300>,
@@ -1085,7 +1085,7 @@ dsi1_out: endpoint {
 				};
 			};
 
-			dsi1_phy: dsi-phy@996400 {
+			dsi1_phy: phy@996400 {
 				compatible = "qcom,dsi-phy-14nm";
 				reg = <0x00996400 0x100>,
 				      <0x00996500 0x300>,
-- 
2.35.1

