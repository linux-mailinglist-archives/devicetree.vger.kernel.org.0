Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E0D83A050B
	for <lists+devicetree@lfdr.de>; Tue,  8 Jun 2021 22:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235041AbhFHUTZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Jun 2021 16:19:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234815AbhFHUTW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Jun 2021 16:19:22 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0297DC061787
        for <devicetree@vger.kernel.org>; Tue,  8 Jun 2021 13:17:27 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 36-20020a9d0ba70000b02902e0a0a8fe36so21606940oth.8
        for <devicetree@vger.kernel.org>; Tue, 08 Jun 2021 13:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=So38bth6mBWT6iiBoQOuRXazg1ugN3YaIyiAe68Qh/M=;
        b=VuAfbKtmWgPabI31uDdBl82sfzFiBGAm7/ciGwvTc403GGwWNAu7XSAEQE7qzl7LqM
         N03Wuy8VsfReMphaXsGXviECqa8CAs97t5wmQceiymT64kFWwbQktu76g1uXD+cNNe48
         4y7dFklcmE96wx+sROdmiU22Ci8e42dUFLbe1ab5kX/+4q2S96thIisu6o3o+sHSYnTW
         TWJdpK9zvoQfjsgmkM81C1LeYKJY5Nu4lxQIX6roMvh27WhmoLQQ2NQPgbtiCnw0qIfS
         15IdAj+kGvDGFl8eUJoTeM6BaorRfm4rU832X9gPZCQPQzk61LjM5lWD0r3uJ+4b7us0
         6hQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=So38bth6mBWT6iiBoQOuRXazg1ugN3YaIyiAe68Qh/M=;
        b=Dy1t6bPehKAvGewTghwi2LEjcpwilmv/EOwDdK9bIZTnsYUCvWLB4r6knvPmR2uJE4
         z0YcDi3bfP0SfJkr8Qdi199GtY3uqPzzq1SxbajaBeAJq+HjjlbKtaxv2q5fzg6DTOI+
         dP7IXgC8+vUi+4xpiWNfm+P5b6EkoAdjjrlhGxTMACndrDE7W3nS2ceZkWl1vmkMllQd
         CQP1OdfrrXp9NvHdQocD7EJaMhrAtS2v/hO4GLUNdE0awE8GPUjRE/PuUyzKF9GkSZgI
         bVep2Ts+4uZz8xRYPvuo50BgGYTm5b2CUssL+TC8ali6D9OJ3J/eKd3Ge5r3tmgjViGz
         5Z+g==
X-Gm-Message-State: AOAM5304OdxXp8VjQPGcNOYIC3lJBoV45J4tiSdOe3DtAYd5ieDE67Wo
        ZJ8owWNZcgSgo+8we3i0NWqigg==
X-Google-Smtp-Source: ABdhPJyZKF1RWsMB7ZjmDMdJI+FRLFEI6UQz8/ft8bojNZcuIrpkXRyQZtuoeYQ4ehCHpYpQBAK+fw==
X-Received: by 2002:a05:6830:161a:: with SMTP id g26mr12529361otr.62.1623183446592;
        Tue, 08 Jun 2021 13:17:26 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id i4sm3263231oth.38.2021.06.08.13.17.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 13:17:26 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: thermal: tsens: Add sc8180x compatible
Date:   Tue,  8 Jun 2021 13:16:38 -0700
Message-Id: <20210608201638.2136344-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm sc8180x platform has the usual tsens blocks, add compatible
for this.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 0242fd91b622..fdd7c361104f 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -46,6 +46,7 @@ properties:
               - qcom,msm8996-tsens
               - qcom,msm8998-tsens
               - qcom,sc7180-tsens
+              - qcom,sc8180x-tsens
               - qcom,sdm845-tsens
               - qcom,sm8150-tsens
               - qcom,sm8250-tsens
-- 
2.29.2

