Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A19593A412E
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 13:21:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231519AbhFKLXO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 07:23:14 -0400
Received: from mail-pj1-f45.google.com ([209.85.216.45]:46054 "EHLO
        mail-pj1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230460AbhFKLXO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 07:23:14 -0400
Received: by mail-pj1-f45.google.com with SMTP id z3-20020a17090a3983b029016bc232e40bso5807054pjb.4
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 04:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+TF/AKS432hY9gR11OMft7K70W+Hrnb7AyCqWhl4m9s=;
        b=kzB4gw24qhVUKpuUQIjKWomf8BIdL1Fg7KnXflR1IuODTngrvXRCM2ee7VG4kMIYrx
         FraXhSHmF4qCxX9316LNxIUAEARG5YyydibAzknTNpQHsZ0lQCJ/H7FppmO1KHAOqHAC
         1RFGe9fvIDQfXctM/31iLKVAGwldADJ4YvoOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+TF/AKS432hY9gR11OMft7K70W+Hrnb7AyCqWhl4m9s=;
        b=AoxIxIrzWOXKHIU8kOtnWFHtm07ouZAXxWq4AgdvBY+T/hoa01Dy0sfP8finU1PUmL
         J2FhCu9IMs+DFnlW2aN6XqrCIw+YfZjkoPZOEPJxdnAJjva8FZ15crGa3552uq5lS8Sv
         HgL2n7SU76Z8Qr83lTILMVHbRmNbSaSKVy/I3vTMZsCzm/aXFjyST1U7oE4r2Ql7ze2A
         /Hapty/FptDDK0T8+dwR1d4s1sAm+sp4rYRp8kvTvBbZzNb6Ogl4EVkPe5QseSFpPOgU
         kBmnyMKLlbqSitcQUkiW618C3MPmwpCcPeogSOKm5UPsttkWT6LR4NMNGceQBo9Ui15B
         SFPg==
X-Gm-Message-State: AOAM530oxg/5pqOh4zX1LwsEPXxPoH9yEg+zXPb059hPjLLPmmzdihFN
        K9g1MI0R/oCxyyujtYGlsg6zXA==
X-Google-Smtp-Source: ABdhPJzhyiMKNoEeS0T1XF+LkKWfd1mMcozpdh1MQXRAbZevrhSbdTNkCMSX0EPOoKiVskph4615Iw==
X-Received: by 2002:a17:902:b909:b029:113:d052:9e27 with SMTP id bf9-20020a170902b909b0290113d0529e27mr3437886plb.73.1623410416401;
        Fri, 11 Jun 2021 04:20:16 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:73d3:4412:54cc:752d])
        by smtp.gmail.com with ESMTPSA id y5sm5177189pfo.25.2021.06.11.04.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 04:20:16 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        maoguang.meng@mediatek.com, yong.wu@mediatek.com
Subject: [PATCH v4 2/3] dt-bindings: mediatek: Add mediatek,mt8183-jpgenc compatible
Date:   Fri, 11 Jun 2021 19:20:08 +0800
Message-Id: <20210611112009.2955944-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210611112009.2955944-1-hsinyi@chromium.org>
References: <20210611112009.2955944-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add mediatek,mt8183-jpgenc compatible to binding document.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 .../devicetree/bindings/media/mediatek-jpeg-encoder.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
index 28f26e79fcb3a..e4e791d76cdaa 100644
--- a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - mediatek,mt2701-jpgenc
+          - mediatek,mt8183-jpgenc
       - const: mediatek,mtk-jpgenc
   reg:
     maxItems: 1
-- 
2.32.0.272.g935e593368-goog

