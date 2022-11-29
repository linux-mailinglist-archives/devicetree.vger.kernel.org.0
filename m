Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4C2963C4C3
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 17:10:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234020AbiK2QJo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 11:09:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235311AbiK2QJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 11:09:38 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F4323F052
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 08:09:37 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id f18so792351wrj.5
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 08:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=newflow-co-uk.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FS/5LEGLs22k9BmiIQdsJAlL0wF9ROsh2ANGCIE2GiM=;
        b=z4P2p+r6LmvYcnmHYnhYEX6wofHjFnJjqLigVn+NnbvEjmxJzdusAUjD/WtXUpeE7x
         rJ4ac0lAnSkDok5AOABiwtwLXE6F6zXca/jdtxnXPTYX9nzijM7DXhg5UysqsbEwSA8v
         ULIxGP31dc94WwGoOeZFOaFIJfB80WGgBcfNn5fMLC4X3p3F79fxLTPnBcLneZv2H1Az
         MjSQZ1PDi4EdwU18eXErqRZO952t8aJXrTN+Sw1NqsuaPMcf/wgo3vKOGIivB4WyUfjs
         KiCokWJORvNtz9gnh/T7O7up48UG60yYLmI3juw7HBcNJ/M8lb3zlw3sQsV/zIdIrrDB
         ZQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FS/5LEGLs22k9BmiIQdsJAlL0wF9ROsh2ANGCIE2GiM=;
        b=kDgaTTGKkUbEP3Sa2/GzXE2SElzHsIlJEygAW8DTR5ue1/XCc3ABTIkHr4OR4I4Ni2
         dDwpxpmFeS2fEPFm7tP0mIUdy/svtVqyPl99I5htzRT8If4esZnbkh5H2EX7i7CuffJZ
         uotvi9nTV8IcuyBE81PrhpBFch26vvrOOC/jpCanGRJ0L/C8wCXdda8zbpowktAPtnmg
         S5y4w7QIXQwHsFB88oYfOpGDorpw0quchNdaJjUDsyxQhVcc8EUYF+kWcqkFd624KnWI
         RcZsv4BQ4rCOskOFV7jjM+YBoVL8wAQv1lNSrCBreSewGqzIIFjXNuMMdhX5TsExNWPk
         bB2g==
X-Gm-Message-State: ANoB5pkjMHOJzDBdgUsLgo6mqycOelejVtjB335ZCHpPXljXVCNyp0UZ
        QEnpw4AMgpYL2kul0KNm7sNT6A==
X-Google-Smtp-Source: AA0mqf7R1dXJhsBNs9CzYGGdVM28FQNzCd6pAGTUZ5dOBOIAVEmtv1iIlXQy3EwwpalpQuomIhF7Kw==
X-Received: by 2002:a05:6000:1b8a:b0:241:e737:2d7c with SMTP id r10-20020a0560001b8a00b00241e7372d7cmr21099048wru.523.1669738176134;
        Tue, 29 Nov 2022 08:09:36 -0800 (PST)
Received: from mpfj-unity.. ([94.12.112.226])
        by smtp.gmail.com with ESMTPSA id y18-20020a05600c365200b003c6c5a5a651sm2477572wmq.28.2022.11.29.08.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 08:09:35 -0800 (PST)
From:   Mark Jackson <mpfj@newflow.co.uk>
To:     =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Mark Jackson <mpfj@newflow.co.uk>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] ARM: dts: am335x-nano: Enable I2C temperature sensor
Date:   Tue, 29 Nov 2022 16:08:16 +0000
Message-Id: <20221129160818.276696-4-mpfj@newflow.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221129160818.276696-1-mpfj@newflow.co.uk>
References: <20221129160818.276696-1-mpfj@newflow.co.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The NanoBone platform supports a temperature sensor on the I2C bus.

Signed-off-by: Mark Jackson <mpfj@newflow.co.uk>
---
 arch/arm/boot/dts/am335x-nano.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/am335x-nano.dts b/arch/arm/boot/dts/am335x-nano.dts
index cecc2afaeff4..960ef1384bbe 100644
--- a/arch/arm/boot/dts/am335x-nano.dts
+++ b/arch/arm/boot/dts/am335x-nano.dts
@@ -230,6 +230,11 @@ tps: tps@24 {
 		reg = <0x24>;
 	};
 
+	temperature-sensor@48 {
+		compatible = "lm75";
+		reg = <0x48>;
+	};
+
 	eeprom@53 {
 		compatible = "microchip,24c02", "atmel,24c02";
 		reg = <0x53>;
-- 
2.34.1

