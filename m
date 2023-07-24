Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23B6475F2DE
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 12:20:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230346AbjGXKUP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 06:20:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233263AbjGXKTj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 06:19:39 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25F2B59EB
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 03:12:12 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-991ef0b464cso1114191666b.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 03:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690193530; x=1690798330;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AcrQCHl0H640KVbnOIUVpUfTojBy2QHFoqYfpFgaBqA=;
        b=kWRyDtZpaqiNQ7n1P/O4tS8cwyhDh4JaqACpOSAAIbJnDL4eCl3GJDzXHyx8HbafFB
         lHIEzoSsa+nIJoYsJtg/KBaHqogWRkCOAELrIsVc4FBrJXThe+0OTV8rE1wGDkKeZlLU
         LkCnmakqwbdiAkduYu3AoCyz5y2YIRqg/AePb34pDRD42wlsRtBZNHWq3atH9W0g0oej
         4OKs1hqvaq1Uo7YRogxv85x6krPbi3Djx/he5jl4Ivy3r/pFGanHJD5IVI9oD2nRO36M
         Of7lf5XOJCqkPUbufio1nkjkJICuFtNt3qmOkepC8WraHZPZQ/1Wl8fjWjQGI94D6xGd
         hh2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690193530; x=1690798330;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AcrQCHl0H640KVbnOIUVpUfTojBy2QHFoqYfpFgaBqA=;
        b=eCg13cnuOKjDTCg+aXFawPubf9OkP6MdKNTuQqO4XAM06E2mlWUAM4yW7WNMJeqO/p
         GIpatfjcagYdkGwjeIW2kMLH4/7/5s1mdvUDskD4l0t3yqJ5VnmtfbXEjU9Tc/fQyATs
         REENcmL5QmpYY8k9xTRN1vv7gJB+ya+uNPedP2Km9Cp+/T/e8UD/AHSVX204sTPzk2Gi
         Z4aAftaSidiyG3qe/yd9oKhPzgFZBqYK1Di+LeIz2V6/1zA59it9FEfCKr3YOGMsDzZu
         bhaXJM+MRTToUo8ltRDoLcjPQGX8zp4Y9iRMHi8+jdX97QtIEF6gllio7FPvMQZfamXS
         ZWdw==
X-Gm-Message-State: ABy/qLaeGhRTKDTsM6214g7iZCzGMgcLP0W116QRNO71K70TwFZAUn16
        uyX2gQEcGg33CCO6tgNoChI=
X-Google-Smtp-Source: APBJJlGFZV3kDJSb4sL0c2PgI4yfP/CYvQj+VXtRWJ84v69CKlAKX19JaEwqPiOoC2JrUUCiWWHfXQ==
X-Received: by 2002:a17:907:3ea0:b0:993:f9d8:9fd0 with SMTP id hs32-20020a1709073ea000b00993f9d89fd0mr17502675ejc.1.1690193530370;
        Mon, 24 Jul 2023 03:12:10 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id h13-20020a170906854d00b0099290e2c163sm6446924ejy.204.2023.07.24.03.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 03:12:10 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM53573: Disable second Ethernet on Luxul devices
Date:   Mon, 24 Jul 2023 12:11:59 +0200
Message-Id: <20230724101159.5289-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Rafał Miłecki <rafal@milecki.pl>

XAP-810 and XAP-1440 both have a single Ethernet port and BCM54210E PHY.
Their second Ethernet interface is not connected to anything.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts | 4 ++++
 arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts  | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
index 0f6d7fe30068..e86e82be3c0e 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
@@ -58,3 +58,7 @@ bcm54210e: ethernet-phy@0 {
 		};
 	};
 };
+
+&gmac1 {
+	status = "disabled";
+};
diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
index 4e0ef0af726f..d0bbc01f1806 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
@@ -94,3 +94,7 @@ bcm54210e: ethernet-phy@0 {
 		};
 	};
 };
+
+&gmac1 {
+	status = "disabled";
+};
-- 
2.35.3

