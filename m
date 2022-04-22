Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4407E50BFE3
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 20:44:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbiDVSps (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 14:45:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbiDVSpr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 14:45:47 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E26A1E0C0F
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 11:41:05 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-e9027efe6aso2185346fac.10
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 11:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LSNY6HVO8IFreVRhOftkxSgz6DO0IOlvH+QazxsX1ho=;
        b=Iba2vVvBxtXSgnDlhWMHnfn96Hw0popi3Q7X963rynCXrctVGtncOJ2BaTymYuw6aa
         ylEAMeGLE5LIVd+56qR62jkJWVbauhLxJCrY8KZQ6KU28EvNMuIkY1hNcGK5dNqsV6EG
         Ig1l8q5T2NYNaYWWuRzkA2vpuvCooQfyJAGDipH7rZ2nx1uVIODj4MWrQ1uwlc8wYCLa
         mW3lvlqVLo0/dK3reD3uqW9yijX8KXORlR7NGZPH8DQMCNj5Rc+yPRfTCcSo3V1clL0m
         ukYu2v+0t+19GjICJkQr3LUhN/oaY1Xptv4+hxNRXIQeMMwEBzFA/RybEE2V8EaQXvSg
         ZIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LSNY6HVO8IFreVRhOftkxSgz6DO0IOlvH+QazxsX1ho=;
        b=pWNS0DsSm6F9LQeMimwzlKD4+zZlw2q/Q1+3czo36CMi6JNnieBS6diID5pLquMaVJ
         c4YgWGzFBcPtB23mT+QGeLCS0i2F18xx6FPalFkwoIGggnnZDUjNxmca+pkUv1K0bC5/
         mDztmvW658zY18nU3Vw3ehCxLC0UfyXEgfOwbF4gvUpgy66Ru883Vjec97DF/FDjioGN
         RhsWNd5Pak1pE+KRA9fRFMfyRHt4rawFk9PFrA6/uqfmpmt+S5DZ64nu0r2oPd6mEGzg
         N4o0+OHCuVVhYKivpKGKhL9uDNTPHdocbLNrrMjvEX6lGRdDaxxJLTpCsfWywsfzbeIW
         NN2A==
X-Gm-Message-State: AOAM530FPHYoigSRnI2aJu7UbJdhLscGdwFL3VtX696HNRyipqmId65M
        m3YoZ4YQ7Lj0UDSYVa2zzrg=
X-Google-Smtp-Source: ABdhPJxoFP1/hipX77FqcQUyEAOSv1tW+vEbmuu6sWAEFvAKoa0D0HwsO6XZftkvjo/0jL+bQA2bkw==
X-Received: by 2002:a05:6870:f29a:b0:de:eaa4:233a with SMTP id u26-20020a056870f29a00b000deeaa4233amr2586448oap.137.1650652584580;
        Fri, 22 Apr 2022 11:36:24 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:9f29:454f:1c77:1b6b])
        by smtp.gmail.com with ESMTPSA id h21-20020a056808015500b00323c43663e2sm1006651oie.32.2022.04.22.11.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 11:36:24 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     sam@ravnborg.org
Cc:     robh+dt@kernel.org, hs@denx.de, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] dt-bindings: display: simple: Add Startek KD070WVFPA043-C069A panel
Date:   Fri, 22 Apr 2022 15:36:13 -0300
Message-Id: <20220422183614.1762470-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Add Startek KD070WVFPA043-C069A 7" TFT LCD panel compatible string.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---
Changes since v1:
- None. Only added Sam's ack.

 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 1eb9dd4f8f58..e190eef66872 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -294,6 +294,8 @@ properties:
       - starry,kr070pe2t
         # Starry 12.2" (1920x1200 pixels) TFT LCD panel
       - starry,kr122ea0sra
+        # Startek KD070WVFPA043-C069A 7" TFT LCD panel
+      - startek,kd070wvfpa
         # Team Source Display Technology TST043015CMHX 4.3" WQVGA TFT LCD panel
       - team-source-display,tst043015cmhx
         # Tianma Micro-electronics TM070JDHG30 7.0" WXGA TFT LCD panel
-- 
2.25.1

