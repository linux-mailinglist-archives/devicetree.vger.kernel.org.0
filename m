Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1C063AAB30
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 07:46:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbhFQFs3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 01:48:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229845AbhFQFs2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Jun 2021 01:48:28 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB04C061760
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 22:46:20 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id 13-20020a17090a08cdb029016eed209ca4so3190881pjn.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 22:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hsJhWYmZBDgj/tFiSi4wj9WE1h/l2+Md9lyjAfn8iR8=;
        b=wOOS4VAbMd2nYdoJCV7egK2DDp1ZSn2v/Mh602YP5TNj1U98qN22pMvHXCHEVEA1Qt
         FbyLCP/dCif4jQFWf3+IQ80pEwNx1KWoyuxvxDN4xBTRxVAK5KPkQrUMidoUvPsLrV2Y
         n5CnoG9OS5jzBKxDG0is7darEbEt6H5odeZdifnyx4BiSpS0sml8er8yu8ZxY/q/DdEV
         KWSXIp+GlJhrNVUPzExysq+4SJxfPgyMraAN80OoymMQy0T+SmOmp/Ly0UDSIBixYa2V
         tpqC94gmiLEU+4HZiv3obFyR7lGPQb3aBysr9T8Su+88O1hF9nBP8mEv6qUsnh4augaT
         GDmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hsJhWYmZBDgj/tFiSi4wj9WE1h/l2+Md9lyjAfn8iR8=;
        b=nZKfxTQaM5BH+7Af09ocBl1PryuYMu+pvmNp8sixCzV5lyX2q/LN2rPXlekD3gH2kv
         cvONeV7trLnA4t/024Bs+/un0VQzRuJOn588GZYtEEAPd/wUlk3M6tiAxelOfqquu6Zb
         VSLMYvfyyP/Nkvz8ATCAgNeDyeP1IdK1lsqNcbuNW4cHggbfPFmpf38gtLc1qzb61QHH
         +IGixaDMqcqKUxtsI0wpdpEnDTymlA3geZM3k6v9H11a9l5b2g8wk1Tq5jOMzRLUNym1
         qyPEgf1N3x6hjbNEZUlwMqxxObvIJIpGy46esjUWA+AUMZGR4pZPm1zHMrGoMyNouSX1
         Ti+g==
X-Gm-Message-State: AOAM530kDhHtyr2eTmFrgAPKQuNnud5a6F38RaHOIGpt46CzXqz7aCCw
        QMtvlLNMUZtCgkK2963VJePNRA==
X-Google-Smtp-Source: ABdhPJwFGa8BwqCx26oWn0H764ybHhUWQQnQydJTCyAex86fJTVXNqRgghY+dzqJ0C8cV4n8umQWMg==
X-Received: by 2002:a17:90a:d483:: with SMTP id s3mr14661286pju.61.1623908780546;
        Wed, 16 Jun 2021 22:46:20 -0700 (PDT)
Received: from localhost.name ([122.177.46.2])
        by smtp.gmail.com with ESMTPSA id y27sm3882700pff.202.2021.06.16.22.46.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 22:46:20 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v3 1/5] dt-bindings: arm: qcom: Add compatible for sm8150-mtp board
Date:   Thu, 17 Jun 2021 11:15:44 +0530
Message-Id: <20210617054548.353293-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210617054548.353293-1-bhupesh.sharma@linaro.org>
References: <20210617054548.353293-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

sm8150-mtp board is based on Qualcomm Snapdragon sm8150
SoC.

Add support for the same in dt-bindings.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 9b27e991bddc..d7bb90e5082c 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -42,6 +42,7 @@ description: |
         sdm660
         sdm845
         sdx55
+        sm8150
         sm8250
         sm8350
 
@@ -198,6 +199,11 @@ properties:
               - qcom,ipq6018-cp01-c1
           - const: qcom,ipq6018
 
+      - items:
+          - enum:
+              - qcom,sm8150-mtp
+          - const: qcom,sm8150
+
       - items:
           - enum:
               - qcom,qrb5165-rb5
-- 
2.31.1

