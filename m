Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65200622FBB
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 17:09:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231520AbiKIQJh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 11:09:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231536AbiKIQJZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 11:09:25 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4290310543
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 08:09:24 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id o4so26506183wrq.6
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 08:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=newflow-co-uk.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qy2f8+NzXqqh+hHluSqYA8rs21AngxEcIYG3EwxYgis=;
        b=XPHxngsFSQWue5/ZKwoWGPpRSKFXWSnBa+6is4ftxGzhgzZYsXOceU9y1WN5JtVn1B
         aUiiZwBBdtB41SEVfqzVa/PikXsXGL1DrArg8Wv69qjCeaX8lirPnjTb0ASfilOtraGy
         2EI8ckjZXxgHO+ndRxlRY1JuCfJ8MfSuOtzIuSRvvOZN4/Tbi7Ca2fLNVMOAlbe5auY1
         aqXuIGSemPtRn7gTm2BiU3i3V6pem2ToV6TF8q1WiPWNYfDhdj6cK1Z23+c2UpASLvQv
         i3iplUkCgb7oFZjHTmRTsIsFXPLboquP5m8L3JeS+GntDH7zb+pWOuXMKzyV4yKf5eu9
         O3Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qy2f8+NzXqqh+hHluSqYA8rs21AngxEcIYG3EwxYgis=;
        b=OR/64r76o40psJDc55cDJlZJxC2rxaZ0kvGpjDygmdS1bixpVz7KyE50HK6NkiJvR6
         y98N+kJ6WEO4PPU25SUe1bYi16JcdUkUCOkXD29as2mlStWr7z9aLxI2yw7GJGTuep46
         3CZ+2W5gZZ2Jo9xAbJHAmtW89/bJ7qGF06Sav3+wvggqExwkfzeZh1ucYDZ/foHUFaWV
         ACYGCJz2l6rbzu1V8726LkLRE5u6svXr2tItLp9UD5w0POwjj2caboclkP94y7qrPz2/
         rkwxIKPsRcCw+vN26qyAN7d4rHvv0CtlIK6IZVGEI8beKvH8Ur/zNwUz97FNzr09xHDi
         jXqA==
X-Gm-Message-State: ACrzQf2DOJrBr65dV+9U/sUk7gEDWN8fvH4Z0cxc1kD3rYUNjPB0Vz3H
        eyAJdNcgMh3H33IapnDk92nTeg==
X-Google-Smtp-Source: AMsMyM4kMZdZIbntenev7NAd8FtPrEx319fPVgDr1A96WLsrqhQsOxDeGrhtoxh8EkTb1EysuRexfQ==
X-Received: by 2002:a5d:58d7:0:b0:236:6c53:6123 with SMTP id o23-20020a5d58d7000000b002366c536123mr39987592wrf.719.1668010162874;
        Wed, 09 Nov 2022 08:09:22 -0800 (PST)
Received: from mpfj-unity.. ([94.12.112.226])
        by smtp.gmail.com with ESMTPSA id n4-20020a5d6604000000b002366fb99cdasm13307772wru.50.2022.11.09.08.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 08:09:22 -0800 (PST)
From:   Mark Jackson <mpfj@newflow.co.uk>
To:     Mark Jackson <mpfj@newflow.co.uk>,
        =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] ARM: dts: nanobone: Enable USB host
Date:   Wed,  9 Nov 2022 16:09:04 +0000
Message-Id: <20221109160904.183147-6-mpfj@newflow.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221109160904.183147-1-mpfj@newflow.co.uk>
References: <20221109160904.183147-1-mpfj@newflow.co.uk>
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

Add missing entry to enable the USB host.

Signed-off-by: Mark Jackson <mpfj@newflow.co.uk>
---
 arch/arm/boot/dts/am335x-nano.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/am335x-nano.dts b/arch/arm/boot/dts/am335x-nano.dts
index 728164298a5e..61af12b70688 100644
--- a/arch/arm/boot/dts/am335x-nano.dts
+++ b/arch/arm/boot/dts/am335x-nano.dts
@@ -423,6 +423,10 @@ &mmc1 {
 	wp-gpios = <&gpio3 18 GPIO_ACTIVE_HIGH>;
 };
 
+&usb0 {
+	dr_mode = "host";
+};
+
 #include "tps65217.dtsi"
 
 &tps {
-- 
2.34.1

