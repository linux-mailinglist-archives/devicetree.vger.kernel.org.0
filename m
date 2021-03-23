Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE1613464E5
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 17:22:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233200AbhCWQVb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 12:21:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233146AbhCWQVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 12:21:19 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95049C061574
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 09:21:18 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id h10so24095029edt.13
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 09:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4MMIWmOGPIsR0xho5N27j4o+/w9x0jn+auFZmDm/Rh4=;
        b=k4figRsb7ehAHKGJZSH8XI2W8HNKoHDfgKtvHe2ScJ9DuTpt6rZGbnKFjEKjZBllk7
         U9HuVlgEkirwWajIqaFuqMLI0tyNuS7zCs6V4+51wV2130VT93C2UAC0DzLq5iruk2Qw
         BI/MVUK+mr+IqXm+oG1KGd6Vhz5q5YzgCN/RgOSuA/xoXlcssfKSanH5y8bzMDiYwlIr
         GbP0+nXRAlXMxOdeuKE5Lln9b/VgMn/GNh9W3Q6/CTFu92/RwFWFN9BEC5WCI4u7Y8QM
         rtTN2338r1Lsd2kFuUDMD9MLqzhxIPD4n6gL7EWo7l18e7H5WeEzYCKSkanXJ1sOhiPT
         LMyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4MMIWmOGPIsR0xho5N27j4o+/w9x0jn+auFZmDm/Rh4=;
        b=lFO992Z17HHh3Nu2fR5K7ZD6/WBUBoyw9pKFQaqGWVLcqGzSoVgmH5OlMJrsAwfZ3l
         ac8IcnAJg1KbdsZQ9ZC10r6MxKzjvsTb5Y/QSARb6uzHweKX7rmVIf7eyLephjXi63NY
         p8kimbOsqshjJmzJgSoxoOt8zhXiNYt+R+Cdn5vEjjvhE8K/FEocwxMQdhxEAUmua2f1
         OgSaTJDZV0fWahd5S0g36LzgiBq7vb/iL92pvM3HlZ/8Pwyy1FiYzsS2HCG0eec1uLG2
         a6dXHSPIdcL3/196MIsPubF/7RWqpPI0aDFVxgeAPYjlPcvvtGWw0IpYtyJPDabJ2qJ0
         Q3zA==
X-Gm-Message-State: AOAM532dM896osuy3SiNtjnHRgvUQOas7an5yqE0WBYNNqyQMvWwwchw
        nvhNvGycF7mwqygNqmabfMDFGA==
X-Google-Smtp-Source: ABdhPJwUh7getxQNs0HhjsRf55crVwO9SbqJuWpHtenqoArbuxu0HMHjhYk5FpvoQxFcQxRKCvFDIA==
X-Received: by 2002:aa7:d385:: with SMTP id x5mr5399254edq.289.1616516477357;
        Tue, 23 Mar 2021 09:21:17 -0700 (PDT)
Received: from localhost.localdomain ([37.120.1.234])
        by smtp.gmail.com with ESMTPSA id v8sm13073478edq.76.2021.03.23.09.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 09:21:16 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     amitk@kernel.org, agross@kernel.org, bjorn.andersson@linaro.org,
        rui.zhang@intel.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vinod Koul <vinod.koul@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Robert Foss <robert.foss@linaro.org>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: thermal: qcom-tsens: Add compatible for sm8350
Date:   Tue, 23 Mar 2021 17:20:53 +0100
Message-Id: <20210323162052.1143515-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.31.0.30.g398dba342d.dirty
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add tsens bindings for sm8350.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
---

Changes since v2:
 - Vinod: Add r-b

 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 95462e071ab4..e788378eff8d 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -43,6 +43,7 @@ properties:
               - qcom,sdm845-tsens
               - qcom,sm8150-tsens
               - qcom,sm8250-tsens
+              - qcom,sm8350-tsens
           - const: qcom,tsens-v2
 
   reg:
-- 
2.31.0.30.g398dba342d.dirty

