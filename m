Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62E973625D5
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 18:41:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235913AbhDPQlZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 12:41:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235575AbhDPQlY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 12:41:24 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F39F4C061756
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 09:40:59 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id p67so13756964pfp.10
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 09:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hVriKR5I/NFf/xSL2VyqnYW9cKu0+GSesiyqdIeCgc4=;
        b=Msc2tJZeV8WokdPoMKXC3omkWOe6CmgHgiVy8+ZwnXKQe+QgnmH/rqJuD4c2XZdeBL
         AB5zfJ9TJpNXzkXhbdYBGqDerM1rTrTrGM/0iFXLBBZBAg8z53wvGfpWqD0r+PfL21eB
         MGvGgUHeUXQnWzyTbehKUi3s03YnZZ7JZ1aK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hVriKR5I/NFf/xSL2VyqnYW9cKu0+GSesiyqdIeCgc4=;
        b=gJUeulFVyrxDLsEXmEghHDFO8cIJ7Rot16fEbj4COGMZvrYXarPLKd68KvmA+4uydW
         wc4K2XOUN1ASiDZXxvceiGPTnQiXkI7mEkStX0Gx/vFQfCh6khvGmSBUQTn057vnXw3w
         DbvfCM+df8t2Vjibi/G+zIgf/GszFFTYCRpEX7gyVXMMEP+cZcSJdtBXk9XNoVBXtE6Q
         cQ1HV9ty7psbmOd/GIGvfqMOpbtrL6YC29eTVAM2hbSejwx9m1o1k76sj9FOrmy1Kx4G
         yi3GSXpmBo7ElYEWCqJS4vozi1o0E7oEHIps41Io3HqcgPL6FHYNNFAfayMFzGLm96X2
         qL5w==
X-Gm-Message-State: AOAM532psofEmgHYon378QemXOZ0i9bBqrRvud39eLJosm2kOobKts1c
        IKDR0ehO0KbbT3yF+yBEH+eaIA==
X-Google-Smtp-Source: ABdhPJxq3u2vhRDPyJ0n6UPrUxkVQKghOU+fHnFtMyM6t2w8ke69ld6rlVKR+NYFWcvL8a1ww4jNhw==
X-Received: by 2002:a63:d153:: with SMTP id c19mr8848758pgj.311.1618591259312;
        Fri, 16 Apr 2021 09:40:59 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ccd5:218f:365:b90f])
        by smtp.gmail.com with ESMTPSA id g14sm6187186pjh.28.2021.04.16.09.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 09:40:58 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2 1/8] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-kappa
Date:   Sat, 17 Apr 2021 00:40:48 +0800
Message-Id: <20210416164055.3223088-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kappa is known as HP Chromebook 11a.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index aff57a8c8c30..81b86b189a8d 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -144,6 +144,10 @@ properties:
           - const: google,kakadu-rev2
           - const: google,kakadu
           - const: mediatek,mt8183
+      - description: Google Kappa (HP Chromebook 11a)
+        items:
+          - const: google,kappa
+          - const: mediatek,mt8183
       - description: Google Kodama (Lenovo 10e Chromebook Tablet)
         items:
           - enum:
-- 
2.31.1.368.gbe11c130af-goog

