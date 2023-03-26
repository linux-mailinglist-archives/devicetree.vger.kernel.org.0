Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4146C96ED
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 18:47:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbjCZQrH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 12:47:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231443AbjCZQrF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 12:47:05 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D0414C28
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 09:47:04 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id ek18so26533080edb.6
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 09:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679849223;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k9We10+aJn7ul+hCgyePSABdIzaHTrq5ihMYDVZioG4=;
        b=BCsjrgqFL9KlSvIHJbDWc+7t9N9t7oUU7WOToekUV2EO0SQFTiQJkmaPhEo+fSPZSj
         YzD6G0Bs8epjf8soLwdWa8IiodufrmYgfC2Y6HJKABANlO5CqqxCn1jRAt1cNqOBGPQr
         w0ieqdPMBSuNYj7BrVImGEqks1o532QUn6V4Rrp/jg52X5FOcictKEqqkIj+Up+Wex3F
         TNeUV9hHK5z8SNJbp9uozti78VVFRY9YXlNUR5Ky/u0EWVkU8rNvXsBbkRjVlOvYaCEi
         IJJGXXGKUSHluZgsnf330T60ddYCUQFKqV+VZISktF+QI9KDub2OX7T4bWEEciHNWlDY
         ziXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679849223;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k9We10+aJn7ul+hCgyePSABdIzaHTrq5ihMYDVZioG4=;
        b=yZptu0vpUf/FprltwGaGuqaSFBjLA5ysv4qXzgxiyL3c/ohha2Atp5ZyI31q8PgmHk
         xMreo7UGq5iJK+upOrFhVcA5vczthYlPNjC1iS2h2xN6K4o8gPmvXXLIVrMBqDr2tyQC
         98+EFW0FajuABYIwCXFzIQtOooUub1OBaliKaCuihyDxgsFeg1XGR1/2MRccZpfOY9ZF
         WLNT54FAJwLwYz0+DJB9L4EUebctTu308YZ9ihsYszIt07VJQ9R8Q9P3Ew+9s7l8M2Ww
         tzXfxcDhXzzbiQ536n3dZIABFhry8olz0davBvWOMHkG5guW0D6iM1WgV3PFY2Ck7Bp7
         psdg==
X-Gm-Message-State: AAQBX9d0AIXi6pytyFAl5kWpS7i5+/xrO8kvMimstUsg7zMvNJiLk5Ss
        2D7UnlGN+MkSJcniUb+EVO3Mcw==
X-Google-Smtp-Source: AKy350ZaVi6CbGP1f3BlaM7CAOyL3H/tqpdjSxBn5g9IpqoBK7QlOK2q99MGJbJADsg/UvN5lWgoxQ==
X-Received: by 2002:aa7:c90d:0:b0:4fb:2060:4c20 with SMTP id b13-20020aa7c90d000000b004fb20604c20mr9205267edt.31.1679849222778;
        Sun, 26 Mar 2023 09:47:02 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:eca3:3b8f:823b:2669])
        by smtp.gmail.com with ESMTPSA id v4-20020a509544000000b004fb402a2a37sm13833982eda.33.2023.03.26.09.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 09:47:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: display: sitronix,st7789v: document dc-gpios
Date:   Sun, 26 Mar 2023 18:47:00 +0200
Message-Id: <20230326164700.104570-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The device comes with DCX pin which is already used in
canaan/sipeed_maixduino.dts (although not in Linux driver).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/panel/sitronix,st7789v.yaml   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
index d984b59daa4a..fa6556363cca 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
@@ -26,6 +26,10 @@ properties:
   spi-cpha: true
   spi-cpol: true
 
+  dc-gpios:
+    maxItems: 1
+    description: DCX pin, Display data/command selection pin in parallel interface
+
 required:
   - compatible
   - reg
-- 
2.34.1

