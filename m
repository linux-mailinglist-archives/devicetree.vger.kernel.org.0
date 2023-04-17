Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1E546E4BA3
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 16:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbjDQOjP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 10:39:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbjDQOjN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 10:39:13 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 699FD1720
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:39:12 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2a8c51ba511so6643331fa.1
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681742350; x=1684334350;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mdXWnGN+qNaKraWMowQcC4c2XYV2qj6ZAg8aQ/wfVg8=;
        b=KE70/DF+2q+0fF/nJxKBvmnI7Wmms5EeVkDWdDNxeDaj0ZBUejawCRWxWx4vtZ+hNi
         BNAltsZoMzIIP6S83V1MS8G8bcXGKjlFxXpefTVQjc/WJeFiyfjIRbf79RxUMy8wob4C
         rkv1V4bhmS6XQMKd80T99g9JLZMHqsSGIC7DZ0vIAVKE/+my6RtalI2olaYyhqpz8ny7
         ZuSaIBP2DAmdNI+lkz5tns1UtGAbmsgu3WRD6Mg13zExIhALtpdbyI+mqZtvnU0BpNBk
         57NXLeXzLMes6TWNUn2xbBo9u/TXUsG+xsbqxewCH3LEJP5GRv/+y3BZ3PDNTI9CmwYN
         dMVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681742350; x=1684334350;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mdXWnGN+qNaKraWMowQcC4c2XYV2qj6ZAg8aQ/wfVg8=;
        b=GsJgJj/lElpl4Ba8fh+q4x/mxOiD/b+gpFjO5NkMnANX8PRwmn7z820dSlkXdwodjk
         nlocWhVqdnbJRpf1fG+cz4vpkLMajs5MIg6LMgalRfcngV9fzL/yPoRHqvhf5IzsVY5q
         MRAmklEAg+uCjNzE5g/A2TUGPk73khZ4dPdAz1XINabXdzRnGIuclggxJGwTsbmiou0a
         QxG4oFv6lgNDQ6+AlHjsF7I/QciWBGJy42gMupyCiuIC3QRlf9bo4lmydjeABRb6SUti
         B40Qfm+IKO9GepWPnvcBTm/B+JQ/5ICPAMCGF6KDO87PUDNpwUPj/tCGZySejzlhc40j
         yThw==
X-Gm-Message-State: AAQBX9fhWoWD5T8Mhphx6ftfq5CuvKGwALR5Q7s/0coyMi9fc3NtceIP
        Loe438KXKr/XlUKrF0d59iEh/rUzj9kE8+S9Oxk=
X-Google-Smtp-Source: AKy350ZZs22FrJ75JOjYRqIRCK5ZMCb8gc7SCMH/uKo6ba7IcawT04XjUUO0OH9a2hT83fV2phplbg==
X-Received: by 2002:ac2:532c:0:b0:4ec:81c7:119a with SMTP id f12-20020ac2532c000000b004ec81c7119amr2299538lfh.3.1681742350540;
        Mon, 17 Apr 2023 07:39:10 -0700 (PDT)
Received: from [192.168.1.101] (abyk99.neoplus.adsl.tpnet.pl. [83.9.30.99])
        by smtp.gmail.com with ESMTPSA id 2-20020a2eb282000000b002a76b9e4058sm2235785ljx.43.2023.04.17.07.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 07:39:10 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 17 Apr 2023 16:39:03 +0200
Subject: [PATCH v3 1/4] dt-bindings: display: panel: nt36523: Add Lenovo
 J606F panel
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230412-topic-lenovopanel-v3-1-bcf9ba4de46f@linaro.org>
References: <20230412-topic-lenovopanel-v3-0-bcf9ba4de46f@linaro.org>
In-Reply-To: <20230412-topic-lenovopanel-v3-0-bcf9ba4de46f@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1681742347; l=1499;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=5bPMRcgvavoc74XIAisYDrKLugQRhZ6brU3zPRYWSG8=;
 b=8Wd1zOxpgSAgmNNf1jSBv9gwguB/pPBp0P3GyRFUcGuVf4OEOfeSOjuiWZ/h5dCaAGZRurmMd0nI
 IrUkd+9sBdHvzpkvq0tOp2pG1CVO3hl8uxjejsOk5B1345tRlXh2
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

Some Lenovo J606F tablets come with a 2K (2000x1200) 60Hz 11" 5:3
video mode display. Document it and allow rotation while at it (Lenovo
mounted it upside down!).

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/display/panel/novatek,nt36523.yaml          | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
index 0039561ef04c..5f7e4c486094 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
@@ -19,11 +19,16 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - xiaomi,elish-boe-nt36523
-          - xiaomi,elish-csot-nt36523
-      - const: novatek,nt36523
+    oneOf:
+      - items:
+          - enum:
+              - xiaomi,elish-boe-nt36523
+              - xiaomi,elish-csot-nt36523
+          - const: novatek,nt36523
+      - items:
+          - enum:
+              - lenovo,j606f-boe-nt36523w
+          - const: novatek,nt36523w
 
   reset-gpios:
     maxItems: 1
@@ -34,6 +39,7 @@ properties:
 
   reg: true
   ports: true
+  rotation: true
   backlight: true
 
 required:

-- 
2.40.0

