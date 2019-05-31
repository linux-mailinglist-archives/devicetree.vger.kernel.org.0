Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CAA45308C1
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 08:39:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726908AbfEaGjb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 02:39:31 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:34253 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726892AbfEaGjb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 02:39:31 -0400
Received: by mail-pf1-f195.google.com with SMTP id c14so3157391pfi.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 23:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ICFTAiKSf2WEzyVIUIY8aH5uQWN1lQV5+leEube4wOk=;
        b=yINLZjD+HVEFLHnmBFCdaPByQVMX2rctt7beGazUFTz8SHp0i6GnldmLXvhO0SP1Mz
         7fX8RkgnOgIIb2Yw3l4Y21M7JGbNFv+YLDPL4/l3XsYsQVW6gGUyANu0YsgWNQx5IlxX
         f8QIY1qI8vwu0jLKn8vFzYaePqLd2NGNmIQb162ZDMIqMlOf6tQ6II45zLwA26CK+O7n
         dPe+qTtVVsiNhNaoSnBeLdaoeawx1YDrAajs+58G5KKSDFRSeaBUkt09kb13GOd2gdBQ
         YMgtz5njgfXJCFAJkcKQM4lP6OFfh6dx1xvguxX/bK2i0l/RfWExcQGo9P//Xyf2munI
         VRhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ICFTAiKSf2WEzyVIUIY8aH5uQWN1lQV5+leEube4wOk=;
        b=gRGPUd5JUcnSEJUXe0Ju2jG86XLeskJRUqN5UnYJKDIGg0Tu/NO7Vx96tDV5gQnPez
         5wz5+c+md5Mzt1hOfX76NPUhvTD3pC3ARDByVprISoEivxQ3N0vYRflPEcf0w6Bt4DK9
         FxUyaTvU2+RvTrTlMIKm3zuBsMOrcyluQY5pg2TtEsG4PGcTKFqmrTK0ZXl4Q6d3Fcot
         klVOhOAYZ4VUBZc03vJvtbxW+jO8O00U29ITlVRrHMvB2wQMAvO51JoDVpZF0sJVDZTU
         j7O8d/9aeY7KB2/f3RoI5paea4V0lQEwF1v9BT6WHUAeo1fBMoIl2atLZaTkgaNdPpWn
         IU7A==
X-Gm-Message-State: APjAAAXh/5TmUQwC0sSLTtLnZPdwS34L/VPlGA5bJQk1JggenIxjpA0B
        v2eknW8GPaHPqEOzOy6R76sL
X-Google-Smtp-Source: APXvYqznyxZqc7FxorCk79gSUVlxMAYRL8gfbuzZWRdj6FY2XyPDB/CbxTdwXToIOIdbggnpYI8PVg==
X-Received: by 2002:a17:90a:d3d7:: with SMTP id d23mr6850098pjw.26.1559284770391;
        Thu, 30 May 2019 23:39:30 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
        by smtp.gmail.com with ESMTPSA id y12sm4644158pgp.63.2019.05.30.23.39.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 23:39:29 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        robh+dt@kernel.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 3/4] dt-bindings: arm: stm32: Document Avenger96 devicetree binding
Date:   Fri, 31 May 2019 12:08:48 +0530
Message-Id: <20190531063849.26142-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
References: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit documents Avenger96 devicetree binding based on
STM32MP157 SoC.

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

