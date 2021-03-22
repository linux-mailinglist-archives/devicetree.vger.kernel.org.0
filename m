Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63682343D71
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 11:05:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229482AbhCVKEu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 06:04:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230063AbhCVKEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 06:04:31 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69B83C061762
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 03:04:30 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v4so15975468wrp.13
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 03:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CepUcafGtrFUpUZtYhucDpANeVxiqNaK7mNfdLMmOyM=;
        b=yWJAq52CA4INE7iXDnaYptH1BTLgfMIl6PzyQODxCPzAQ+7EUPO/BqiFi9+o/DgPme
         Lvgxl9/p74/XfEVeSIwq2ngmbPo1Bo244gPwtMgt11Oe8W3NS2bLSLfEQsM1eCF0adgR
         wrgDCIKh+Caf9lgGoUxeTzNPNYrI/H2zGr9bgztW6OAhq3jSTGTd8vUofjRZ7fCW9jq9
         ZIApIIHRG8096xaq89lMdCDKFrL5wqrVqSKLhGWu3Dod8j7Uhu7CFp8WcUmO95ZUDolL
         7A8IFd+caYcRKW9M/GMrI9E2EdjR5sWKvIOZbNAtIvkhja61P4XHeehI0Ct6+9PV27Z9
         dEEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CepUcafGtrFUpUZtYhucDpANeVxiqNaK7mNfdLMmOyM=;
        b=jZqneONAA+loSu0oTyhjusaCu2FRn4zXokwwqN83veZA/IrcimXws2mN4pC4CUk0rB
         gMY/U1QPGg5m9Xj8HqtXGl/UwaD8OAejDatG/t9OV4MqP+k7/XbcDkyFVaywqsNt+sFd
         E1NgMYuST9WrtWzYApF+rD+BtwZpZInTTFYN3LTck+lqt48Svl3CUtvWbWS1KRaVNCLy
         acRPFrX32gf69VNKfk0q6LPUWRqBBRNcO5vaEtRJmmNZNuUw2TEqzVDKlLWXVJ9tCVvW
         Q71vUpPPSyV33uLGU8xJS/jBMm5pWeisWwKSxUz5m+9AM1x467jYd90LXZuu+334Y2AJ
         curw==
X-Gm-Message-State: AOAM532m4F+RB+/cEVlJLv2hfz/8rM6aAUAFTDsABrY1ayar92hYl1bZ
        VXhguVPwdubxIC7tDFJYUYHaJQ==
X-Google-Smtp-Source: ABdhPJw9QK/1HBJXshVTSvZfl4rt93whlMJsWfKuUP45H/OpXfPTGNJxDVOQZA/t50Sij0JNtwJDBA==
X-Received: by 2002:adf:f2c3:: with SMTP id d3mr17611687wrp.380.1616407469020;
        Mon, 22 Mar 2021 03:04:29 -0700 (PDT)
Received: from localhost.localdomain ([2a02:2454:3e3:5f00:58c4:610d:c87c:33cc])
        by smtp.gmail.com with ESMTPSA id p10sm20268168wrw.33.2021.03.22.03.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 03:04:28 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, amitk@kernel.org,
        rui.zhang@intel.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vinod Koul <vinod.koul@linaro.org>
Cc:     Robert Foss <robert.foss@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: thermal: qcom-tsens: Add compatible for sm8350
Date:   Mon, 22 Mar 2021 11:04:19 +0100
Message-Id: <20210322100420.125616-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add tsens bindings for sm8350.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
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
2.27.0

