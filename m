Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21E4C6A2AB3
	for <lists+devicetree@lfdr.de>; Sat, 25 Feb 2023 17:22:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjBYQWq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Feb 2023 11:22:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbjBYQWp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Feb 2023 11:22:45 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F160ECC22
        for <devicetree@vger.kernel.org>; Sat, 25 Feb 2023 08:22:43 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id ay29-20020a05600c1e1d00b003e9f4c2b623so4340152wmb.3
        for <devicetree@vger.kernel.org>; Sat, 25 Feb 2023 08:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4UzpVaZytKcLsXqShGzDCNEbw1p9sY2b5QAjio7ekeY=;
        b=ZPaVxQdfCRmnackJCVG2l50d8ypO+7nluWrSD/sL3W4gqsJo/rG0w6rFL8aFzWRkHO
         esuWfA+T+NmFuIXvgHH0TaJyMQVHdEjTx7bbENjK5OUxBctniG7DHPmlPUBocMY9Gt2W
         lxgfKdqoh91SEd+haH0Yb/sQvsGP2gKPt4cASb6vaVbXPk66t/BDbTohC7LIB/uI3BVe
         1IisnOMBvABLqG+PId07TyCVLBwyclJjR0wUE20N+LcF+eUs7Vdv7s5oQ+NVeSKlslDc
         EGqxbsOdPXxmCyjR1K/8BeNrn/zkmStAhxL7VYE0oYExMX9rj0uMGKZJWY1KRs0BgXT/
         qb0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4UzpVaZytKcLsXqShGzDCNEbw1p9sY2b5QAjio7ekeY=;
        b=hQIGvtNn5AwGxSc13lETHp4WOkqDGhgcQQaSZY3MxzNayE45ML7EfwKHKbt3ab4Ao7
         VjPNv45AyFd2F5wYfKdIQF/uhnjynZxirLJHSMY7QrgEyUrC+yF6QmC6ecYrbWSZWmZe
         11dwpggF2nRCOYVDAib9OXkUxVWtAMkys8wXkh1WousUGRH7BQh5pcH6uH4cNur9wpD6
         ujtBZ5unO0EJjMaxQRbsS6nzZ2C6Pk0EGEVqxloYwCK0bN0Wl3E+TJTecqmdvWiwYjxC
         ULSsuLyBq8g3pdCTk2QSeOi2rdklHoERC2z0wkZQbD24tUQxkkC63dAGNPhXL5PAdEHV
         onnA==
X-Gm-Message-State: AO0yUKUmsbwbViHRboINYjxMs3J2WgzYKfQDEUnjw+MNBoZEd+mCxlpI
        TnfYVWRBT5E0cLvAsdmG4BpDgA==
X-Google-Smtp-Source: AK7set/Nod/Xia4rV9jLSmmGp54Zu4nS6/zzzbVWrPbcoZ/Om2gUpFAkQ6vS1IW1nmQJoiyZR6NZMQ==
X-Received: by 2002:a05:600c:2e94:b0:3e2:201a:5bcc with SMTP id p20-20020a05600c2e9400b003e2201a5bccmr10927795wmn.33.1677342162501;
        Sat, 25 Feb 2023 08:22:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i20-20020a5d5234000000b002c5493a17efsm2193087wra.25.2023.02.25.08.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Feb 2023 08:22:42 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     linus.walleij@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: spear320-hmi: correct STMPE GPIO compatible
Date:   Sat, 25 Feb 2023 17:22:37 +0100
Message-Id: <20230225162237.40242-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The compatible is st,stmpe-gpio.

Fixes: e2eb69183ec4 ("ARM: SPEAr320: DT: Add SPEAr 320 HMI board support")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/spear320-hmi.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/spear320-hmi.dts b/arch/arm/boot/dts/spear320-hmi.dts
index 34503ac9c51c..721e5ee7b680 100644
--- a/arch/arm/boot/dts/spear320-hmi.dts
+++ b/arch/arm/boot/dts/spear320-hmi.dts
@@ -241,7 +241,7 @@ stmpe811@41 {
 					irq-trigger = <0x1>;
 
 					stmpegpio: stmpe-gpio {
-						compatible = "stmpe,gpio";
+						compatible = "st,stmpe-gpio";
 						reg = <0>;
 						gpio-controller;
 						#gpio-cells = <2>;
-- 
2.34.1

