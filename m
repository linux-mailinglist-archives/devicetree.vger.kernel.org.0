Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7284F41098E
	for <lists+devicetree@lfdr.de>; Sun, 19 Sep 2021 05:35:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236070AbhISDgx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Sep 2021 23:36:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235893AbhISDgw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Sep 2021 23:36:52 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39225C06175F
        for <devicetree@vger.kernel.org>; Sat, 18 Sep 2021 20:35:28 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id y4so11461833pfe.5
        for <devicetree@vger.kernel.org>; Sat, 18 Sep 2021 20:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=2ZHVK/Jt1mzqXZxHbsZQx8f4Inu42Nq3yYQLi7QmACA=;
        b=yDXRj+7JMxBz4eJVFeHMHnBiwLOzFA7A0Idi+V8spGFR6kLdjnBgQankrYQ6dMk6fJ
         ZqXEVNw+EbCJRergP2xlyOSvLiBr8ORsxQP5dkvX6ZvjmZUYm5QDcCeKvo41KYz4J2J9
         3jKEf4uzCQDgMw/tgMIlzPJ/h+vRuQ7kF61vyOLpqV52zwg3KbTZlA436EO17teF1Vzr
         yYuzf+x/Uda4WbKCZA2dbrmSf8hZL4tJLy+XCpLHQDwwbiN82HLF8DL6PntmC+4BuKQu
         dMVGoXl30wP0GEACIG5UvLwswV8itAiULFVPJ/1EacGkitCkS0zfDtkPxa/3s4MAS97e
         bABg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2ZHVK/Jt1mzqXZxHbsZQx8f4Inu42Nq3yYQLi7QmACA=;
        b=YbhZ1pUOKxBVZnM67fiZhUcYVlOqvs8mD06emML7CDQChilsPv/f8KE4ZjN8mC+dXO
         yRPLGDxruUVReiN2SY0bT/JKyLyavwrgJUyu+kU51B+gOyhR0e9Bk06CEej3ITgt/+ZE
         GYcovS8XzEOpA1VHFent7pa5EdcJwY/wsk4A7wHlh9ZfNYY3Kj2GX9lxF4HNnaGuQgxh
         Y0KacJ9yCAQR1XrrAdFxrhLwwZhapW4vOTqPRgxgGqFQMeSWSU731NNiVixtnHEG+J4H
         g/hB4Arx2CbAEbDAapj790gLRvOEFbThr23E6e4teS7WMYZ4V6ynyouDZ/WAHtJILIzk
         +/lA==
X-Gm-Message-State: AOAM532XPHS+KvGyiO9VjJC2oKlMXqeUoTaHjkeABEPdVVhl6seRH9eX
        7/QbBkAN3+eWMUpqXRLEz8hbstBYRu3RTg==
X-Google-Smtp-Source: ABdhPJy8kRKK01qfSwpFJtkhq1N9s3rgKcp2JFmJyloTNrozfp56ZQ5kzL6yUVOU6GzPOUA9NL8w7A==
X-Received: by 2002:a62:774b:0:b0:43c:36de:ed14 with SMTP id s72-20020a62774b000000b0043c36deed14mr19028132pfc.36.1632022526820;
        Sat, 18 Sep 2021 20:35:26 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id s2sm1644509pjs.56.2021.09.18.20.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Sep 2021 20:35:26 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,qusb2: Update maintainer email
Date:   Sun, 19 Sep 2021 11:35:19 +0800
Message-Id: <20210919033519.29559-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Manu's codeaurora.org email address bounces.  Before he comes
back with his new email, fill Vinod's address in there.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index ec9ccaaba098..d6301471780c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -8,7 +8,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 title: Qualcomm QUSB2 phy controller
 
 maintainers:
-  - Manu Gautam <mgautam@codeaurora.org>
+  - Vinod Koul <vkoul@kernel.org>
 
 description:
   QUSB2 controller supports LS/FS/HS usb connectivity on Qualcomm chipsets.
-- 
2.17.1

