Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36AFD5AF683
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 23:03:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbiIFVDo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 17:03:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiIFVDb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 17:03:31 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE9CEA9252
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 14:03:30 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1225219ee46so31362612fac.2
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 14:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qU0hBg0k575Y0eMQn5Xm+FCoXjQNs8jpsAvRZNdQ/pY=;
        b=GprUKii7nck3JfoU2MPSdK1ZFVnRwfniPYXocued7FCLe0G+Lt+ZOy7xAfExTrXV+h
         WWLgIF0NpWskIu8mHacibNp+Mt/jbcMKOiyYl0GZUdsmpevF+J7ntIdPL+Xu++Czdz2z
         naFlg4i7UH0KjoP8yvI72b7266HTJCK15LO+O5uvC1xwzMiC2umFk1Sqoi3O3r8h9yE2
         YUEgbhrI5YwX9eAkg2S0IP9tfAmJT5smylte628lGYWGipJM+lbZR+AKX8NPo2Y2yP8x
         yJi+NY8kOXMGe6deAH7+6P5SPxDHwuDbeYMrkJv5VjCrYIIuOGgoZv53e4H7vZMj3R6Q
         g/1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qU0hBg0k575Y0eMQn5Xm+FCoXjQNs8jpsAvRZNdQ/pY=;
        b=ePzWawdBDJZmyentHq1xRv6wJvpAZBb/WTpbvZG5PefjW95dSUpPyttzr3dXD3y8Js
         cE/uy5gtmgEdZy7QbLnkhGDyMZyk1D4ojsaoRqQKAGFQdKeIbs4uGrFIvVukSDKoLzMV
         aYc6DsKTZ5o8EYCgBpmvSRlUaT0TYShAFBFyq/y17C6lbQs4wBmzUvzQHesZ1A1DjDy/
         H5lNdF+hrTfDsWZVeiDbmXSVqYGfsOKBLNLYa7V+Jr1QXYhbcprHFhHZko7/qyICDqDg
         rzl29Tmf+LNh00ArLFtoC2pLEWOiZ1h3p1xQFP0LaN3rwctVXyND0bpQEj4Q1OVHvbHY
         xZEw==
X-Gm-Message-State: ACgBeo3qtHj1uffGsvBGasUIOyh13Pfq+G5QzyHJ84QixExty2SXRkO0
        oF3GWeVuo+nAW6e+ZgIYCV3moyo4+qA=
X-Google-Smtp-Source: AA6agR5HJnm+BvvsbPSslAiII0/C6HxcTiL6cf9vJI5k75sqwEVk1QkgHUSSUTGDdRbutE5xhfUtrw==
X-Received: by 2002:aca:aa44:0:b0:33a:bcb6:8f21 with SMTP id t65-20020acaaa44000000b0033abcb68f21mr119487oie.208.1662498210004;
        Tue, 06 Sep 2022 14:03:30 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id t8-20020a4ad0a8000000b004357ccfc8bfsm4482846oor.7.2022.09.06.14.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 14:03:29 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, heiko@sntech.de,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        pgwipeout@gmail.com, cphealy@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353P and RG503
Date:   Tue,  6 Sep 2022 16:03:23 -0500
Message-Id: <20220906210324.28986-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906210324.28986-1-macroalpha82@gmail.com>
References: <20220906210324.28986-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add entry for the Anbernic RG353P and RG503 handheld devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..5d947a2de739 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,6 +30,16 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
+      - description: Anbernic RG353P
+        items:
+          - const: anbernic,rg353p
+          - const: rockchip,rk3566
+
+      - description: Anbernic RG503
+        items:
+          - const: anbernic,rg503
+          - const: rockchip,rk3566
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
-- 
2.25.1

