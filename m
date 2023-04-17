Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AEEB6E4B9E
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 16:39:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbjDQOjO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 10:39:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbjDQOjN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 10:39:13 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33AD435A2
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:39:11 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id c3so3400755ljf.7
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681742349; x=1684334349;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XsIvUH+XayEW3em5sjVpj1a0LkS0qVXLQ3PvMIChjTs=;
        b=U8TVSD3ytEtFzyvwE3/ugTmdIEWJA21DHC6b5S6xIO76jbPO5FBdsTz1/nijJgTWFF
         gsITLQVnyvAuHbKThXL28aUs4ow/2Suj4/zDOuGMrAcs4c7n3RuqMWZ37dZEsrX+CTKT
         C62gf67VvC3WMEGWv99eYCMvw2Un4Pc6yP4tJEpjysnN3f5lNnVmlCPixF5JfNBTu5Gy
         dFvJcGvLhBaPxmp9glat18mwwi+eJapqyuWgKEDYIJ0frgqbK8ks+3ZRGxmfiuLAzYiK
         IaUVJBit/XYGSdHFIhqp9sIk6oeqkyz5W0025WtME/WmwK7iukgsJvzuon0ONMFSRjf3
         4HZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681742349; x=1684334349;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XsIvUH+XayEW3em5sjVpj1a0LkS0qVXLQ3PvMIChjTs=;
        b=CAmJ2BfoFcusLwzO9QPhKo/4KISRijHpZo3V1ZmFsriBc9AZLXIsVMTNmfF+PfAt8F
         UPBs9ILBGSuaPT45d8RovPvRNNFdgyWitdNm4pmUWa7l7DSvYNF4kHdQt+EFha/1jveO
         3W2EI1SzVKs0lhqpjv/gWIwHboyDJzHnfK34SxAjYdPzGqbCap1RGGzo0NNoi790r0ni
         /6sk00/2Tn5fJZboA4Gg1hATXYZUdObUXObIQu57FiuUHlTaRUmX/QDlgEIdLap81LVP
         V3COdgc8hTJqtBrv0ZOJrLTyJbEh217C/ueSlcGlbhTKVVLNn/qrfphd6qOt+xYAdh1c
         7JzQ==
X-Gm-Message-State: AAQBX9d7U9esTvDXep7TlJJ77zOqucXysyfzr4by65ezcndl5P9Xq7py
        d7i8ENIAUBgJDzt9ilq8WeG/l2xnUWDOwFcFHDI=
X-Google-Smtp-Source: AKy350avdw011yiluXtOCLZaMkfJCMPHvpeq1uuP2Rp+U2kGyI5FYCROYpmK/Q8kdkD2pGGEjb3mRg==
X-Received: by 2002:a2e:7c18:0:b0:2a8:bcea:7d18 with SMTP id x24-20020a2e7c18000000b002a8bcea7d18mr1827308ljc.19.1681742349218;
        Mon, 17 Apr 2023 07:39:09 -0700 (PDT)
Received: from [192.168.1.101] (abyk99.neoplus.adsl.tpnet.pl. [83.9.30.99])
        by smtp.gmail.com with ESMTPSA id 2-20020a2eb282000000b002a76b9e4058sm2235785ljx.43.2023.04.17.07.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 07:39:08 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v3 0/4] Lenovo Tab P11 panel
Date:   Mon, 17 Apr 2023 16:39:02 +0200
Message-Id: <20230412-topic-lenovopanel-v3-0-bcf9ba4de46f@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAZaPWQC/4WNwQ6CMBAFf4X0bE3ZUkBP/ofxUMoCmzQtabHRE
 P7dws2LHuclb2ZlEQNhZNdiZQETRfIugzwVzEzajcipz8xAgBRVCXzxMxlu0fnkZ+3QctFLLVS
 D0oBk+dfpiLwL2pkpP93T2jzOAQd6HaH7I/NEcfHhfXRTua+/EqnkggvRgeqHqm6hullyOvizD
 yPbdQn+KmBXKGVkXV2atsUvxbZtH0/CNhgLAQAA
To:     Jianhua Lu <lujianhua000@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1681742347; l=1221;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Li0EROMjBKT4+PRFLwKoKhmbnSL5mgFiclMhq0TezPY=;
 b=3XTRoAvKGwihPYa4YKQSmrCyU05BaQDzP+rUjAbRS5YBW+GG21irjYzz40VaBrSQMC7sQUrUzA3x
 GuLnZ9fqDpk2kLh3HfbfqE/VReIgyauC/VRONMFX+Pe25+in6DQ4
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v2 -> v3:
- Drop patch 1 (the one allowing port AND ports)
- Pick up tags

v2: https://lore.kernel.org/r/20230412-topic-lenovopanel-v2-0-055c3649788e@linaro.org

v1 -> v2:
- Remove dsi_info (unused for single DSI) [5/5]
- Add backlight.scale [3/5]
- pick up tags

v1: https://lore.kernel.org/r/20230412-topic-lenovopanel-v1-0-00b25df46824@linaro.org

Continuation of:
https://lore.kernel.org/lkml/20230217-topic-lenovo-panel-v2-0-2e2c64729330@linaro.org/

I rolled back the versioning, as this has been remade from scratch.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (4):
      dt-bindings: display: panel: nt36523: Add Lenovo J606F panel
      drm/panel: nt36523: Add DCS backlight support
      drm/panel: nt36523: Get orientation from OF
      drm/panel: nt36523: Add Lenovo J606F panel

 .../bindings/display/panel/novatek,nt36523.yaml    |  16 +-
 drivers/gpu/drm/panel/panel-novatek-nt36523.c      | 569 ++++++++++++++++++++-
 2 files changed, 577 insertions(+), 8 deletions(-)
---
base-commit: 7d8214bba44c1aa6a75921a09a691945d26a8d43
change-id: 20230412-topic-lenovopanel-0d3a057e3c23

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

