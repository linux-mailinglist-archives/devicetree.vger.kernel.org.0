Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20F2F3DFC8F
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 10:14:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236224AbhHDIOe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 04:14:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236128AbhHDIOd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 04:14:33 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35B3BC061798
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 01:14:20 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id i10so2197992pla.3
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 01:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=YcaPLG4WLGmXTbU5bINUPvrcLWHtacPlPy/ZsqA/CZQ=;
        b=Re6jcSy8ozocfE/5M3aFbL3ix/ASrjIgvldH4BZA1HbTGfj0fHOcgwkGgNq5nLJeZI
         Gqyrni7qdL6uShKLGYHmtP3tDzE8b8SY1xoxtkwJu0enfbSEAZs2aWlA6d/wvSbt0ibB
         vKKmXOqIl7nqBIKe73eQ0608+P1wjOVVVgYRQGJnRgUBwBW2O6u4L52NHWrDtdS+T+Wv
         zpSghApqKpva8hTQpjH48Lk8NtfQv7RQIKGd+koOLMoN25A7gJ/zGvvxG1Bi+lW1dGNh
         vRP4oDVxNEl6pUDkYLPbVhudtv51hNNBwK5Xf/Vw/+rEar9oDtzDtHuCnIhQYqHz6sWz
         JyRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YcaPLG4WLGmXTbU5bINUPvrcLWHtacPlPy/ZsqA/CZQ=;
        b=dN47NwRYklOU6ib6dkVFEfACR2ZOuW2I2lPCmoSJ4FxtraeGcRJMpQdSzNLll1dOoi
         0tOZUl5ubXszBnrXapwtOZOwOgMH9Pk/NtnBZq80XLIECFJo+XME1XqbrGfaeAEf1cBg
         NbiTvrAQQ/fmbbFbo6ZqTGQIhSjiVJb+6I/HSR46fcA++UOlYBV3fuLZKoR2AhzHu7iC
         NqK+DPlNO0ztB6tzoRTllETN8tKB3cSgnJ1rry7wu3jZJlG2llIyX+QgY54/JjL7ttIR
         NRA9vpt0FP+hUTkbYvIytD4FZCr/N8SgtOo8VpE2WRfQkAn3NkPBpjh6qGg9c2knJDlR
         Cdtg==
X-Gm-Message-State: AOAM532dwbuGk/Xfq2lMUaBEvzfF9t+pHzY1mFgJLHE9lrw553+vxVMO
        vhWWeg3ZsktHVnI7QrZl/OtWYw==
X-Google-Smtp-Source: ABdhPJxsRMhLMnsBa9LXfThwHNvzsjugIf+bl+o98l2qRf5Y7XTiINNqhAyUPsEBQZoNrEdMHJT0zw==
X-Received: by 2002:a17:902:c9c3:b029:12c:8f2d:4235 with SMTP id q3-20020a170902c9c3b029012c8f2d4235mr22209648pld.9.1628064859635;
        Wed, 04 Aug 2021 01:14:19 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id g26sm2067445pgb.45.2021.08.04.01.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 01:14:19 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/2] Add Truly NT35521 panel driver support
Date:   Wed,  4 Aug 2021 16:13:50 +0800
Message-Id: <20210804081352.30595-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It adds a drm driver for Truly NT35521 5.24" 1280x720 DSI panel, which
can be found on Sony Xperia M4 Aqua phone.

Shawn Guo (2):
  dt-bindings: display: panel: Add Truly NT35521 panel support
  drm/panel: Add Truly NT35521 panel driver

 .../bindings/display/panel/truly,nt35521.yaml |  62 +++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-truly-nt35521.c   | 491 ++++++++++++++++++
 4 files changed, 563 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/truly,nt35521.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-truly-nt35521.c

-- 
2.17.1

