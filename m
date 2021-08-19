Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECC663F171F
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 12:12:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238002AbhHSKMo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 06:12:44 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:54948
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236149AbhHSKMn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 06:12:43 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 572D3411CE
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 10:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629367925;
        bh=uQVhpvDvpjI0P3FxejG6bkElaqc3lP0DEFRi/YWQ1og=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=pu1QqXgr593FV6knckHIyzylDcUJBA9dYbev9jnRKZ2z89EKex6/rKlwsSwCOsOaN
         QLYWL3rpL5L5Ce8wI1Yl0YzwVZFQtfRqsQ258Yw0aDp+BPhN8lCvabO/4dXQKIdgBX
         oGdS/7GDZB0IEkxiMsyVdqTVHaTi57yNOMczcFSTH4P0caHtUNL/zm58nTjRxlHUVe
         MPsKZCof6R5dBr5W5JgyjJJUFbY+V5xmUUdjslSMwMtzyWrCVafREABC8HzHQ318IC
         JxCEt125W6DbefrPuqriS4VrFot4usY+cKsDfYxtUF/dOKA8WW3fT+lqsAKoTdLbGC
         nCcMLWTJ91c+A==
Received: by mail-ed1-f70.google.com with SMTP id f21-20020a056402005500b003bf4e6b5b96so791434edu.5
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 03:12:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uQVhpvDvpjI0P3FxejG6bkElaqc3lP0DEFRi/YWQ1og=;
        b=m69+v8mbs+sW2TWQzqcLDbCZCH/Alannl/DwEvZFTpvEoyC0GcPpR+qxQCO6po6NlI
         uIbQjqEt/0oabitJgof8d48m3xyGe5TckAXyDDWQb729iPNjMcWMkNARRTkAmx+attqN
         Iqr5pqvzPtfoYPD/s26Uy3Qkc5pnTi0MixopadC/QOUNPJGUhs8Ynpzhr7PCYC7AEzFu
         O38+5YriiRA0ZtLz8JAlya8OK6ABRsornpGFXO8fMFiYZcVO+ry1s23Cq6K0nekeTLvB
         VH353zGrrOius0mlVoSmkYZmdXOeK4o+qT8M5gruQ1zhrypuwwK9X0VWJRam5nEnXhMW
         JiHA==
X-Gm-Message-State: AOAM530oFWMvZBCXk6HzQWbYOPMh1KRkz+34CZVcLyDUpIgK165huxyt
        DqZM+iI63wYqJt+SDq9ZooGL+b5+twGLHTp+TJr3HMVxBi4dM0QUHhBDsegzXAexyUaTKkIAEDp
        +YKGEdHsAn8UXGRP0OQ/evBIEFAgiLc/GzuKeI+Y=
X-Received: by 2002:aa7:de05:: with SMTP id h5mr15692573edv.174.1629367924794;
        Thu, 19 Aug 2021 03:12:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzbx+5karGwHCd0154GL4o1bMhwTey/MCqUQCq8AL/d5JkQfHYSeV0sYRenyhjeIm/i7JNcfw==
X-Received: by 2002:aa7:de05:: with SMTP id h5mr15692564edv.174.1629367924684;
        Thu, 19 Aug 2021 03:12:04 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id bs13sm1031774ejb.98.2021.08.19.03.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 03:12:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Dillon Min <dillon.minfei@gmail.com>,
        Tzung-Bi Shih <tzungbi@google.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/2] dt-bindings: panel: ili9341: correct indentation
Date:   Thu, 19 Aug 2021 12:10:19 +0200
Message-Id: <20210819101020.26368-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Correct indentation warning:
  ilitek,ili9341.yaml:25:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/display/panel/ilitek,ili9341.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
index 2ed010f91e2d..20ce88ab4b3a 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
@@ -22,7 +22,7 @@ properties:
     items:
       - enum:
           # ili9341 240*320 Color on stm32f429-disco board
-        - st,sf-tc240t-9370-t
+          - st,sf-tc240t-9370-t
       - const: ilitek,ili9341
 
   reg: true
-- 
2.30.2

