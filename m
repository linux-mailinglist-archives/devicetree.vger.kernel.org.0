Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 411B57351B8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 12:14:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231801AbjFSKOe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 06:14:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231698AbjFSKOd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 06:14:33 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB4341A6
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 03:14:31 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-51a200fc3eeso4576728a12.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 03:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687169670; x=1689761670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=jmy3F/STWdRiL9bkqBfvVFLMvAXz5VhFeOVkXrx1CF4=;
        b=wQThKrx+V5oo09dQi+r3zPsMwmfjwQyVipEpwJsNEiLF1Z4vY+W0lrXMO0WKykqGOR
         EH4bEpxGufI7N5p//HoX3BtghojxkfiHV26ShxRtV+M58RtL1P41umG9+Z4QnWWcJArQ
         qzjKqqn5R6BHN7dVUY9+MrJs3nCsC6OHLQoJPMqZRuspLOwDALCJoDU/J75gAoo1Xw6N
         wHaEe2kbM+UiltiO0JIgYS3PIUOyj8/p8cb4fxJkOqf5CYhiOK/sVgJL4bNEdK36lKWm
         Do36EAxLI7WhFMAuHg41vlV3zIn5th71zojhqj7WE/aaN/Fy8ruoWGcosnvUZcHTWdJw
         GWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687169670; x=1689761670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jmy3F/STWdRiL9bkqBfvVFLMvAXz5VhFeOVkXrx1CF4=;
        b=f78uKxxT2/DKOdOfpOEvVPqxKmfr1c4H+CY4A0eXgLm0Wap/0FA6JdBgzPOV4pY3hy
         So+WJ35gd+II9dQfMLEQhSl+UH6Zzwkjl9Y2Yky4aVrQrfmMXPCZ6RM7BEUm2+lE03Rm
         jxWtRUj4r7r4ixZJTCgtoZ60ClL3VoZNz1h71+w6MgBC7sydpK0+Q++hi8oo5FTYZy0X
         9xQj+XZEG1r8j6/ZWEEY3RxeVp2Ho2bd0S/ZvyX2QwbMNYgLR5DectGFzF8olltipMPQ
         YPU6XjMdMwAPd+MEVJ1m1dsDVz05hwxFRsisb+9woEJiZKC8L02NQR9/6Id+vVH/erwd
         0BfA==
X-Gm-Message-State: AC+VfDw/EAyx2ZJI7SxpWBwG6jZ4zIZkuc3lnu29nrwYJYdTSkN9WgoD
        1mCLk0G3JPVWzTkZN9i7nC7FYFC6A4l3d51Wl7w=
X-Google-Smtp-Source: ACHHUZ64qvqhSjA86PMKDj5ir0y2AJzbUzQGkl3PfbIW4mBGV0fCUurWI+TSUVL56A6MX4V1lAW8iA==
X-Received: by 2002:a05:6402:642:b0:51a:5ebe:4ab9 with SMTP id u2-20020a056402064200b0051a5ebe4ab9mr920088edx.14.1687169670039;
        Mon, 19 Jun 2023 03:14:30 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id v24-20020aa7d818000000b005184165f1fasm109431edq.5.2023.06.19.03.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 03:14:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: samsung,s5m8767: Simplify excluding properties
Date:   Mon, 19 Jun 2023 12:14:24 +0200
Message-Id: <20230619101424.25897-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mutually exclusive s5m8767,pmic-buck[234]-uses-gpio-dvs properties can
be written simpler, with half of the lines of code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/mfd/samsung,s5m8767.yaml         | 25 ++++++-------------
 1 file changed, 7 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml b/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
index 10c7b408f33a..aea0b7d57d04 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
+++ b/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
@@ -153,29 +153,18 @@ dependencies:
 additionalProperties: false
 
 allOf:
-  - if:
+  - not:
       required:
         - s5m8767,pmic-buck2-uses-gpio-dvs
-    then:
-      properties:
-        s5m8767,pmic-buck3-uses-gpio-dvs: false
-        s5m8767,pmic-buck4-uses-gpio-dvs: false
-
-  - if:
+        - s5m8767,pmic-buck3-uses-gpio-dvs
+  - not:
+      required:
+        - s5m8767,pmic-buck2-uses-gpio-dvs
+        - s5m8767,pmic-buck4-uses-gpio-dvs
+  - not:
       required:
         - s5m8767,pmic-buck3-uses-gpio-dvs
-    then:
-      properties:
-        s5m8767,pmic-buck2-uses-gpio-dvs: false
-        s5m8767,pmic-buck4-uses-gpio-dvs: false
-
-  - if:
-      required:
         - s5m8767,pmic-buck4-uses-gpio-dvs
-    then:
-      properties:
-        s5m8767,pmic-buck2-uses-gpio-dvs: false
-        s5m8767,pmic-buck3-uses-gpio-dvs: false
 
 examples:
   - |
-- 
2.34.1

