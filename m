Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A03A8508A92
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 16:16:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379303AbiDTOTS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 10:19:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380289AbiDTOSt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 10:18:49 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FD7743AF4
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 07:16:03 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id z5so806927wre.4
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 07:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/VyFi3RjbNFKUo3ZLxTfgMzz806nFEyIt4P5XIW1sGc=;
        b=IwG4NwUNCPEDcMyIiQGUNlp6AiG5pqO+Qg27bSMpYfTT5GzQRyvAlaqbje61DHmBlk
         gjp4eCEGuyoZrFZufrMBb5lWs4IaehRzLg4Vz0O0swGOimwQKFQIcvvB53q9estyVu61
         YlwViewlGuBDgDQVlnKZ89Y+i5ziTz+fk6yC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/VyFi3RjbNFKUo3ZLxTfgMzz806nFEyIt4P5XIW1sGc=;
        b=pvFOPrbwb+VFyr7UaobXMgesiddsTarxR3jcKNBBIq6fULxd3yJN7Tn3N4Vttjc5iF
         trpz6475zS0+WCWpns2Pmpq1l6g7r4iRdhdPvt8h+m+msjzaR/+HFtyuqfg2pSpdBLrM
         GK7NgOwv+FK4CyCqvJWCmRCIsiKO48TXaxB7yynMxhJJ/NYVaDz0mlsJiF5DtOTLwsV9
         klHpShKWvYzc3kUzXuIjeWnhrsESQwO74iLUUF3BDSycxWFOVP8xzBHRPJZo+zwi0Yzn
         snrGWj3g7Osoz2E+eMHOnzK2pqo658VyvxRNmuWw5xp7d4qhB0LbFZLWGIvsbqdRH7Bx
         Kvjw==
X-Gm-Message-State: AOAM531vvc+Ny7ZwDaSijxOmPEhlS1P/cZZI5yj5JSxZjuX+kV3ySkei
        Q1VzypeaG7K5ZxYLRp+SV1a/ug==
X-Google-Smtp-Source: ABdhPJwCPpU4h5O7ryUiZqPZo8a1m5XhV46nhkBy6UgMYfIAySWynMQVolOrMBh4C5OnIPP4ylpAtg==
X-Received: by 2002:a05:6000:1863:b0:20a:988f:e0ad with SMTP id d3-20020a056000186300b0020a988fe0admr11529721wri.572.1650464161908;
        Wed, 20 Apr 2022 07:16:01 -0700 (PDT)
Received: from localhost.localdomain ([37.228.205.1])
        by smtp.gmail.com with ESMTPSA id v2-20020adf8b42000000b0020aa790a258sm12447wra.8.2022.04.20.07.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 07:16:01 -0700 (PDT)
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
Subject: [PATCH v5 3/4] dt-bindings: update google,cros-ec-pwm documentation
Date:   Wed, 20 Apr 2022 14:15:55 +0000
Message-Id: <20220420141556.681212-4-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.36.0.rc0.470.gd361397f0d-goog
In-Reply-To: <20220420141556.681212-1-fabiobaltieri@chromium.org>
References: <20220420141556.681212-1-fabiobaltieri@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update google,cros-ec-pwm node documentation to mention the
google,cros-ec-pwm-type compatible.

Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
---
 .../devicetree/bindings/pwm/google,cros-ec-pwm.yaml      | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
index 7ab6912a845f..c8577bdf6c94 100644
--- a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
@@ -21,7 +21,14 @@ allOf:
 
 properties:
   compatible:
-    const: google,cros-ec-pwm
+    oneOf:
+      - description: PWM controlled using EC_PWM_TYPE_GENERIC channels.
+        items:
+          - const: google,cros-ec-pwm
+      - description: PWM controlled using CROS_EC_PWM_DT_<...> types.
+        items:
+          - const: google,cros-ec-pwm-type
+
   "#pwm-cells":
     description: The cell specifies the PWM index.
     const: 1
-- 
2.36.0.rc0.470.gd361397f0d-goog

