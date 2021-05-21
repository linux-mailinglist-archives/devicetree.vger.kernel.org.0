Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEBA238CE3A
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 21:35:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238176AbhEUThN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 15:37:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237981AbhEUThM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 15:37:12 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D45CCC0613CE
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 12:35:48 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id b7so11097499wmh.5
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 12:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Hz8CwoiYMaTS14+pfnf5r1Rj5kC/ac6/jRZnXzFOTd4=;
        b=ZAKhk2ugxfIoHADMSW/5unSj798vH+NMOOuIKguE4SgxKdurGDK4MiOZJeJ+hyB2xK
         2WNVP/E5RYwUk33+VbzzTcx89p0SMxa6DdYM5lo01u6nLxS+yoqbI4/NtayKrgNl9mx/
         MfMY+I7fuYs6ODZACLSyZdN2jwI8BAjoNlTVUKn/QN5i2oWbcl/WjVZtIkvvMGC/WgiT
         3A5BZAyZLwe98lfSxyaFECsmVIlaXiPwciGrHCeA4ros6BPHcSXMlrUrF2Nplp6Kof+r
         GhLE+utXD/juV/m4rUF1kPMumi1IPobfDNVVQ6b19pAve0DfB/VfhWlaJwQINf8kZJaV
         mgng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Hz8CwoiYMaTS14+pfnf5r1Rj5kC/ac6/jRZnXzFOTd4=;
        b=jOHT6yAZ/EZ+7Pm1/0PwDwJhR/6hvvYHghSCcR4OtRLL0RTQH/16g76YoBshwiK4Te
         ofhK2ai4f/bGXCJZ7Xf5VxL50dFz0JbhObKbzNYwhcwXdeqJA+IS2VerXsCse4a81ABK
         fT0xFiNXs39IuMdwzeQXkaJwFjL1DlWGGzSwLenKTw/gcamuTpjK5TMEv0RSCdzK/Frz
         3/ueiX8vqLKKdB0fDV3aB/mR0OQLMykRJyl7mVd9IKVBsvee3+nhU/gGqIx8a2bPswz7
         v2huRxqWavxBQ9zoEVyUmpN+hcS9sRnP+QjEYw/Z857nAoWgS5mjQTNnC8UVdBse5ywv
         7oNw==
X-Gm-Message-State: AOAM533fYXsnPkNicIAtauX61h2ejnZAx6uDzyAUp+4eifyGmlfErCsD
        hXvE+u8C8TAZZn0tANTZnjrBoA==
X-Google-Smtp-Source: ABdhPJx47lgx32TwSiNmMqnhwY66ySsEo6fosW0nBDItiU0dED10Z6lcjs5WOq3yq5/3HqaLgPYkpw==
X-Received: by 2002:a1c:2985:: with SMTP id p127mr10272304wmp.165.1621625747362;
        Fri, 21 May 2021 12:35:47 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id k11sm479694wmj.1.2021.05.21.12.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 12:35:47 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     linus.walleij@linaro.org, robh+dt@kernel.org,
        ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 2/2] ARM: dts: gemini-dlink-dir-685: rename gpio-i2c to i2c
Date:   Fri, 21 May 2021 19:35:40 +0000
Message-Id: <20210521193540.16164-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210521193540.16164-1-clabbe@baylibre.com>
References: <20210521193540.16164-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

gemini-dlink-dir-685.dt.yaml: gpio-i2c: $nodename:0: 'gpio-i2c' does not match '^i2c(@.*)?'
From schema: /usr/src/linux-next/Documentation/devicetree/bindings/i2c/i2c-gpio.yaml

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/gemini-dlink-dir-685.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
index 111313af04c2..c79a2a02dd6b 100644
--- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
@@ -169,7 +169,7 @@ map0 {
 	 * The touchpad input is connected to a GPIO bit-banged
 	 * I2C bus.
 	 */
-	gpio-i2c {
+	i2c {
 		compatible = "i2c-gpio";
 		/* Collides with ICE */
 		sda-gpios = <&gpio0 5 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
-- 
2.26.3

