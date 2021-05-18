Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E874E387F0E
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 19:54:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351319AbhERRzt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 13:55:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351322AbhERRzq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 13:55:46 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A24E8C061760
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 10:54:27 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id r12so11211553wrp.1
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 10:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PLVQ7hIqXEULCgZ/4wiK8+ueeFxBJlxUXknsRaEIBHA=;
        b=Fw1hiSEKJwwWL4NurL0SjZg9GALsBP+nS9UPU6oFcZOXSdUM3c25El70ylGrJ7XPBZ
         JplQI+zkgEdFTLbJ/DJEEry6En7TI1P2kUM1wDrZKIS5FMp60iwF5y/5ctYpLqEdfaje
         zsP5m/516eJcdr/aVZFMEMVSC0yrRLz7zrhbHDnU40OQk+UyYTmT9KczAfN1pQWBW2mm
         /nnyQfkzFsOt9EGCaNN/4q5lFYd3XHKk6oD+cXu7nC5V6xBma4pFnwYn/V/cZckuQ7ao
         6zuKdep4qJflBGTs7ddu+uh7vP5JsONiuRJAnLp0ZF2CL/Y9jJzPo2HAMFppOfxgfMux
         prrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PLVQ7hIqXEULCgZ/4wiK8+ueeFxBJlxUXknsRaEIBHA=;
        b=XyXV/A5SCWPfSpZTkmeiJnpkplcJkCl1vlpE1IIjWebIHcaa1PL9Z2gvj1QW8fs29+
         Bfb1HeRbKFdHcXJpyJs3AoNxoinj3XnY/kwaAKcVHVhx/4DDNtz6/+zP9pLat5SmEdNm
         39nuxZe1eoNb2lv+p8WN/BgtcEOH9RyMDymV5dmpwRLodbc7+Y8bn34o7DuaquDapN2j
         mRLcNjA9GVP7FbR1vMiz4PROB6OXz3DkYDAeq+E9geF4WSVURv0Aw79LI/Nf5fbkivMP
         e8FLOtuf5Rs9T2YjjA6E3lyCAGI1VtXoV1HDnFLtd5dli0EO423OMQKcMEkvuGSwkH7e
         J03w==
X-Gm-Message-State: AOAM532FDcvKREQOYLlW6/lTUgZ4ttPIE90kCbqN89kXge/ItCYP8vhu
        bxyVKnmMorgxYy9KQ1QMctTOqw==
X-Google-Smtp-Source: ABdhPJwm91GbLiu6awzKvHAEIvP7ZGY0aWkr8qz5BvRRbbR/Sgfv5RR/wmv+HKpYkgxbUn5hDqfw8w==
X-Received: by 2002:adf:fd04:: with SMTP id e4mr8455935wrr.116.1621360466340;
        Tue, 18 May 2021 10:54:26 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id a17sm14458963wrt.53.2021.05.18.10.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 10:54:25 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: pwm: pwm-mtk-disp: add binding for MT8183 SoC
Date:   Tue, 18 May 2021 19:54:20 +0200
Message-Id: <20210518175422.2678665-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210518175422.2678665-1-fparent@baylibre.com>
References: <20210518175422.2678665-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation to the pwm-mtk-disp driver for the MT8183
SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/pwm/pwm-mtk-disp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-mtk-disp.yaml b/Documentation/devicetree/bindings/pwm/pwm-mtk-disp.yaml
index 0f016c81cd53..85bca1c59f95 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-mtk-disp.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-mtk-disp.yaml
@@ -18,6 +18,7 @@ properties:
           - mediatek,mt2701-disp-pwm
           - mediatek,mt6595-disp-pwm
           - mediatek,mt8173-disp-pwm
+          - mediatek,mt8183-disp-pwm
       - items:
           - const: mediatek,mt8167-disp-pwm
           - const: mediatek,mt8173-disp-pwm
-- 
2.31.1

