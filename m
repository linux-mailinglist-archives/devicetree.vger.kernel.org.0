Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 593694EDA19
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 14:59:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236484AbiCaNAO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 09:00:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236472AbiCaNAN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 09:00:13 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2EC65F4EF
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 05:58:25 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 123-20020a1c1981000000b0038b3616a71aso1995382wmz.4
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 05:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PHj2yaKnS2M1KOdUTGiqnQ+9k0gkJHuJpJKOczjT4Hs=;
        b=Xbgbh+foEr2rAHw4Sr8Bfq8UUS3ZEb3koEM0QHWGI43FMcZA1mNn5JZofdILiXh921
         K41glotjEMpNwjS5ZjNMMdenGPwCBArY50eHWgD1Xc0jQbSXmf77g6irM1O6EfR6klgW
         nmHCF9hWbrtqOXjDQcH/5UGdrNwCYKrnavE94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PHj2yaKnS2M1KOdUTGiqnQ+9k0gkJHuJpJKOczjT4Hs=;
        b=wRWO5toUC19QsiUGdBdzlr9M8cDO4crb0fB2830CVrztYBvdWcz39n7KljIwUPJm/s
         aE3p9QYpp25lWQWx9Yb4uQCvfwfrIZQu6bBChTq1z4fOuQx4pt+PB45NibkYPRSeTobu
         JakPzfPEoxe42fVPMCErq9d0sbpujirbX7bAnaX5pGNtl27n6SjEm1YQxHTer8mmMHNV
         YlBm3l6fsO6aXZ5VGUhqsETl7Um2rty8RYki2BtbM9U4Ymerv0Q4VM/NABrvkkRf5dDt
         wg+3ejPNxPSnJEXdR6KURbMJhrlQbxqItLZjSdjKRf4tMw2L/MPax1d+5jI0OJ024yLI
         NU3A==
X-Gm-Message-State: AOAM531jUZvkFm81GSz6tbrc8Ry+TevhuTGpsLwyigy5f2EdRdFwDIl5
        TbmxEgN+pwlHrIopVwVaHFFEWMWspin3kA==
X-Google-Smtp-Source: ABdhPJwXdAAL6wD9Ov1Hgzxy94Cl3sK1TvG300imQA6EIlQwLYDqW2ZbdNO+fZgCDkDLbW04xnRPmw==
X-Received: by 2002:a05:600c:3009:b0:381:194a:8cb5 with SMTP id j9-20020a05600c300900b00381194a8cb5mr4746639wmh.43.1648731504409;
        Thu, 31 Mar 2022 05:58:24 -0700 (PDT)
Received: from fabiobaltieri-linux.lan ([37.228.205.1])
        by smtp.gmail.com with ESMTPSA id j16-20020a05600c191000b0038c9249ffdesm8230695wmq.9.2022.03.31.05.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 05:58:24 -0700 (PDT)
From:   Fabio Baltieri <fabiobaltieri@chromium.org>
To:     Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        chrome-platform@lists.linux.dev, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Fabio Baltieri <fabiobaltieri@chromium.org>
Subject: [PATCH v2 3/4] dt-bindings: update google,cros-ec-pwm documentation
Date:   Thu, 31 Mar 2022 12:58:17 +0000
Message-Id: <20220331125818.3776912-4-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.35.1.1021.g381101b075-goog
In-Reply-To: <20220331125818.3776912-1-fabiobaltieri@chromium.org>
References: <20220331125818.3776912-1-fabiobaltieri@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,TVD_SPACE_RATIO,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update google,cros-ec-pwm node documentation to mention the
google,use_pwm_type property.

Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
---
 .../devicetree/bindings/pwm/google,cros-ec-pwm.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
index 4cfbffd8414a..9c895c990ed8 100644
--- a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
@@ -19,6 +19,12 @@ description: |
 properties:
   compatible:
     const: google,cros-ec-pwm
+
+  google,use-pwm-type:
+    description:
+      Use PWM types (CROS_EC_PWM_DT_<...>) instead of generic channels.
+    type: boolean
+
   "#pwm-cells":
     description: The cell specifies the PWM index.
     const: 1
-- 
2.35.1.1021.g381101b075-goog

