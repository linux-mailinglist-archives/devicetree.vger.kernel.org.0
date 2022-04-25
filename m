Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECBA150EB06
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 23:08:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbiDYVKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 17:10:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245594AbiDYVKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 17:10:21 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0466364BF9
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 14:07:16 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d15so13897998plh.2
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 14:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fYD/F2OSbA7Q4eCV40OrtxHiQtAfyrFTFEIn6t3W6f8=;
        b=WvFR64qpnd4yCLm8ubU/W/DeKgWVe5sf1D05fbZmkSyTq8yGSG6v5hnDff1XSYazp6
         83XXw1NiHbANd+TaAV+ZBDA2iYhNtL67l2+aocpmUGDCinB5/oxcsmHaIHzPCmL0lSdx
         g5TTDnxbPbEk7GACTTB9R3BKu9hJsSL5XH2GA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fYD/F2OSbA7Q4eCV40OrtxHiQtAfyrFTFEIn6t3W6f8=;
        b=b0NRrSsg2eBn965Ap+uG/So2llYmc5Fq+nZVnPXP1aoDn+9aMIyptSHlEqP3uHThhs
         55/WjLz1r8kip9z+FJ8ok3Mr6ouJc5yBjaIY2j45ZU4Xrsz2lo3frBqbmR7ai0rd4akT
         esddclJCdPe8A+1lDy3ohLky4BBGbKfTWoFxM+4k/XcOWoZ2ZGtXec+v/orLlpwt8/hL
         2dUrfcpbac4t2sAI+L+7LMMf+tCScAx2VmxYge4DmPMvOMUZ8FJIj1kKLBaSKeKC3Gh1
         uRq3IJkUaKaBOUc0414r1UaiLxo3zFXUPIhvKanXdFhA1XVSg/Cpx9yI+fNh3cJ2gjde
         a04g==
X-Gm-Message-State: AOAM532T+U5dSzy4kCTSBJ33XfRlhVZKPx7Zxmjq3PIiFbI2z4ZxlUP5
        SKnPsOBaqkll7sDEGUnADi8DcQ==
X-Google-Smtp-Source: ABdhPJyG9Xx7/t8cUKO2ub7bBhrSNggYmBrlKgygY827SF0gU8Mp7i0d+ErwAnNSiBQq7WdPpARN0w==
X-Received: by 2002:a17:902:ed89:b0:15a:d3e:ada6 with SMTP id e9-20020a170902ed8900b0015a0d3eada6mr20094621plj.94.1650920835532;
        Mon, 25 Apr 2022 14:07:15 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:b820:7f63:f3dd:3da])
        by smtp.gmail.com with ESMTPSA id b20-20020a62a114000000b0050d231e08ffsm8523202pff.37.2022.04.25.14.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 14:07:15 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@chromium.org>
Cc:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        linux-phy@lists.infradead.org, Stephen Boyd <swboyd@chromium.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, quic_kalyant@quicinc.com,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: phy: List supplies for qcom,edp-phy
Date:   Mon, 25 Apr 2022 14:06:43 -0700
Message-Id: <20220425140619.2.Iae013f0ff4599294189f3a6e91376fad137bbabf@changeid>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
In-Reply-To: <20220425210643.2420919-1-dianders@chromium.org>
References: <20220425210643.2420919-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We're supposed to list the supplies in the dt bindings but there are
none in the eDP PHY bindings.

Looking at the driver in Linux, I can see that there seem to be two
relevant supplies: "vdda-phy" and "vdda-pll". Let's add those to the
bindings.

NOTE: from looking at the Qualcomm datasheet for sc7280, it's not
immediately clear how to figure out how to fill in these supplies. The
only two eDP related supplies are simply described as "power for eDP
0.9V circuits" and "power for eDP 1.2V circuits". From guessing and
from comparing how a similar PHY is hooked up on other similar
Qualcomm boards, I'll make the educated guess that the 1.2V supply
goes to "vdda-phy" and the 0.9V supply goes to "vdda-pll" and I'll use
that in the example here.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index a5850ff529f8..cf9e9b8011cb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -41,6 +41,9 @@ properties:
   "#phy-cells":
     const: 0
 
+  vdda-phy-supply: true
+  vdda-pll-supply: true
+
 required:
   - compatible
   - reg
@@ -65,5 +68,8 @@ examples:
 
       #clock-cells = <1>;
       #phy-cells = <0>;
+
+      vdda-phy-supply = <&vdd_a_edp_0_1p2>;
+      vdda-pll-supply = <&vdd_a_edp_0_0p9>;
     };
 ...
-- 
2.36.0.rc2.479.g8af0fa9b8e-goog

