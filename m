Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0DF575AD96
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 13:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231579AbjGTL4A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 07:56:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231510AbjGTLzv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 07:55:51 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA8072D7B
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 04:55:32 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-992dcae74e0so127305266b.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 04:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689854129; x=1690458929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4zLJ1Oj3kSBfbjihXdE/XmMtOGoxz3oug8jEpZmCjro=;
        b=XwgJrdeVPw41zvNsE8UGvDqsva6JQ1K8UtA9AKhWlaBc7nyuaz/fGQu/StnMN3bEyS
         AlvegPRLXnNqckX8Xukj0tOiQddQFCpwN483Iec5G2Zx7FRkbq5jk/oSrF/UMxWlOwMf
         z3hbUDg6t6E/r5LeQLj1FV13uOyDYUoqhjwAxO1j6wYzNPmR+0YHKhnKsc5L1NvbgWsE
         DjgdAeBag2BDjK0p4u5FwGNqSn1CXrISm6R/uuRje7r6OdSyJjKk/c+q5TPRXfwJkSGK
         HHLQxbOWZfhLf69drUl3qwLM9TgA/UoiX0jdLvblG9piZpkOUWWeWnjO9VlQ8ktF9Wln
         iHsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689854129; x=1690458929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4zLJ1Oj3kSBfbjihXdE/XmMtOGoxz3oug8jEpZmCjro=;
        b=b2ahjBvnwpV8fjqTSxd5zPVnzGY2YVu2bX7H10yIzRZ2oESfiwQi+FZmsME5qQhlh8
         MVlMyzjEGXq4GhPAiaTvPPG433RVSAan8LnhNpv30b2NLoWAIoVWKt7iYop2DRUsIUM+
         OJm6xJci1aPmI1KKBnuty4ktn2iGmAnSJGIECB0AtMV7sCnP6IrGHRx7O5EGhcERgkhB
         2yod694zyW2o+5ATAsj/sh1NVohRJgtGT2szqewlCSIHDbv/5PF8tYlYreyWUcmT3hVX
         FFZJUwNlzURznJTTq7yHAA18v3DgIbPK+ON/sKN35m+eBWBY+Dd913/cmGOT9QxtB4qp
         SwGw==
X-Gm-Message-State: ABy/qLaPyxG+kVt+XI5/IsY51FRTAU+X5/uJNkcOUq7RkrN5UYnFJUvL
        ehz7vqjcfBGLpPnnEMvgMchD2A==
X-Google-Smtp-Source: APBJJlFJtTawySCNamduzrAO1i9rsmyG+g1lmF8NaG5vNildbmqGawSPDKlxVZsj5AiZj9KI4j6Lng==
X-Received: by 2002:a17:906:108d:b0:99b:4378:a5aa with SMTP id u13-20020a170906108d00b0099b4378a5aamr4203426eju.49.1689854129479;
        Thu, 20 Jul 2023 04:55:29 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id qt10-20020a170906ecea00b00988e953a586sm606466ejb.61.2023.07.20.04.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 04:55:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: st: href-tvk1281618: correct touchscreen syna,nosleep-mode
Date:   Thu, 20 Jul 2023 13:55:24 +0200
Message-Id: <20230720115524.137944-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230720115524.137944-1-krzysztof.kozlowski@linaro.org>
References: <20230720115524.137944-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no syna,nosleep property in Synaptics RMI4 touchscreen:

  ste-hrefprev60-tvk.dtb: synaptics@4b: rmi4-f01@1: 'syna,nosleep' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/st/ste-href-tvk1281618-r2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/ste-href-tvk1281618-r2.dtsi b/arch/arm/boot/dts/st/ste-href-tvk1281618-r2.dtsi
index 469e61c9a349..7448135e25f6 100644
--- a/arch/arm/boot/dts/st/ste-href-tvk1281618-r2.dtsi
+++ b/arch/arm/boot/dts/st/ste-href-tvk1281618-r2.dtsi
@@ -200,7 +200,7 @@ synaptics@4b {
 
 				rmi4-f01@1 {
 					reg = <0x1>;
-					syna,nosleep = <1>;
+					syna,nosleep-mode = <1>;
 				};
 				rmi4-f11@11 {
 					reg = <0x11>;
-- 
2.34.1

