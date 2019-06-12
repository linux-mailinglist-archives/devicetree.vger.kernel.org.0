Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2331941E5E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 09:56:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726182AbfFLHz0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 03:55:26 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:35251 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbfFLHzW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 03:55:22 -0400
Received: by mail-pl1-f193.google.com with SMTP id p1so6302138plo.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 00:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Fl90wvGVk9jQf/e3ED2nkXc10vHdjJ0BRJ8wEykJJm4=;
        b=DyFfgQQEx33mWJYiam6MYxvlG5nNkiPk4WCy+71VVasj+drxJg4JufGNFag39gfBEH
         zSr0p6ZySEs9Vb4s9fSruFnjk083UoQt1dAJ4v9r36BI/G4+w6wc6YDXy8MznwFvb6PI
         xzXGKBOgdDXnJ6KvOtldHLy7rk0UPyZ/Ft0P8nTKlNScfLIYyaBJhBdneF3HNjOtP5Dw
         J6CAweQoC3TLOnsXB9kf9xDoMJQKV8fdD2/AOPlBBy8PnfnoUFUrNt4PZ4G0cSrX/2BG
         1p34vLC0YZAaptN62xEiP6S45+MFJgjIVD2HV14gVazd9qNgNEjFwswjK/vwsWG+xD0L
         vgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Fl90wvGVk9jQf/e3ED2nkXc10vHdjJ0BRJ8wEykJJm4=;
        b=HJFvKqWUFSHHr+boQynIllYnLiKG0itHPhrumCWgB/8qr3+BL+FzK0zWKluLP+blQv
         9K6cdZIMfLpxmbNrv8MMzF4Kkwe6rRcDzTA7s9dPES6wTC5BnUn/9jOnaWjz9XoGey8k
         uQRt390nYJ2QnRb20jT+/NViLpIlPaFTZaJ4sJlfomFDZXtl5FGv3HkQtspnAvF9DziN
         ogUdHyvK2G35Q7q1fpc7wd+0wRlsWy3QOLsrjuiH+wU1YkqGLpOHOKggrhf2qXvDf05E
         fIR2gTPWwZKsTnNNa0ZKDtR9+erwAnebib4wsBltaTbuyzE7VZnfawVWjiJSfggca4nc
         XnSA==
X-Gm-Message-State: APjAAAUmdy7IvSGYlHjc0P5KNxdgC0seoPaIMe0qlStd/XPLrJ/OQACe
        pbIpwJbbDl6LxwUyNPSqDI4I
X-Google-Smtp-Source: APXvYqxWBYUdZW2Y4YlWacoCLLvBzvetdV8f6Kh7h4YdWN/CXwrhdOPQFCd141iMalRdxN8KCq/8mw==
X-Received: by 2002:a17:902:61:: with SMTP id 88mr3378053pla.50.1560326121013;
        Wed, 12 Jun 2019 00:55:21 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:894:d456:15b5:9ca9:e3ec:c06a])
        by smtp.gmail.com with ESMTPSA id b15sm16846399pfi.141.2019.06.12.00.55.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Jun 2019 00:55:20 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        robh+dt@kernel.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 3/4] dt-bindings: arm: stm32: Document Avenger96 devicetree binding
Date:   Wed, 12 Jun 2019 13:24:50 +0530
Message-Id: <20190612075451.8643-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
References: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit documents Avenger96 devicetree binding based on
STM32MP157 SoC.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index f53dc0f2d7b3..4d194f1eb03a 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -25,5 +25,7 @@ properties:
           - const: st,stm32h743
 
       - items:
+          - enum:
+              - arrow,stm32mp157a-avenger96 # Avenger96
           - const: st,stm32mp157
 ...
-- 
2.17.1

