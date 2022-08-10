Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6146258EB06
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 13:12:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231191AbiHJLLc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 07:11:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231881AbiHJLL2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 07:11:28 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E08442F676
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 04:11:26 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id l10so11141233lje.7
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 04:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=VHNhyDjWR9A/L2KQArWKJFSPozuYsj2rLhAic5fPBHM=;
        b=ROXXSFVzqe1Zz63dqIcfPgzxzvUEqLnmhfjU1XisX6pI7Fg9VI/iP2XZzbqWIwWtEC
         G8B8CEQNitjRp2rdh5nA1ZI6wiqWGq9IR55uU/NhlYWarV7o9jTrCEPT4SyZekxbP0AA
         MDLsuLv7VMHfAOZhFPXAszKJt0DwvQcgundVF4tnmUoBeI7+ivB9POtozCMHD+AG5oaB
         mXDDzsB9OTthVc66TOozJn9yB/OCHE5L+s69esV5Vy+BpzWxLzvu3HQP2GjnbW5jLeBy
         CjcyvOSQu5UaKlFm/hSV7NFtPOt0K0Npo+aCaeZaxKMEGrGZMNraTS3cgxL2TQizPqOS
         CnZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=VHNhyDjWR9A/L2KQArWKJFSPozuYsj2rLhAic5fPBHM=;
        b=UHlfSnCtg9RTcT0SWbv96BccTggYtf4uzbYhMRYMivA9ZSkR+ZDQYEDk/BcoUlXWG0
         Kxg1Y+ZMAUC9UjpmLItbWHo/hV+RoXOSnWH/AzG652Qv1Ut2nPPiPImhmeHLKLkjlGmA
         hvvizzh4gf+7VoWJpQUajSxPzYmM0vBXgongGtmqMY9RJ/E6Y003hu6pSjS9snyyGnPH
         J9Y0StNs4JPTHZ6NcK7slCD0Wfdc4QVBXdqSNzh6+xN0HSYPTfTWJHnD8fkCmrGdDz8z
         zj1O6zIOS6YIFnqq3sn7ZB8FCNEys+Byujr6B9+2aIwIHtif5DtNlUrnURx+JS7YJPt2
         peOw==
X-Gm-Message-State: ACgBeo1b+3FuJ2q4F5sJ1LrF6SQZzJ1nppQgYzqEa5tL++VbbYC/Aau5
        Fxg2XHqPkqmFFno6tixLsuQkFg==
X-Google-Smtp-Source: AA6agR7k195OyxE1PMCoZG/M/aQ6yVDYxWIX2vFnmcbu3QLh+nAhyFchz97evph2O/by9pUP40qmug==
X-Received: by 2002:a2e:8081:0:b0:253:ce61:3c66 with SMTP id i1-20020a2e8081000000b00253ce613c66mr8237625ljg.98.1660129885304;
        Wed, 10 Aug 2022 04:11:25 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id f1-20020a193801000000b0048b119dbb40sm306483lfa.74.2022.08.10.04.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 04:11:24 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: armada-xp: align SPI node name with dtschema
Date:   Wed, 10 Aug 2022 14:11:22 +0300
Message-Id: <20220810111122.281184-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The node names should be generic and DT schema expects certain pattern.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts b/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts
index 87dcb502f72d..0dad95ea26c2 100644
--- a/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts
+++ b/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts
@@ -164,7 +164,7 @@ scroll-button {
 		};
 	};
 
-	spi3 {
+	spi-3 {
 		compatible = "spi-gpio";
 		status = "okay";
 		gpio-sck = <&gpio0 25 GPIO_ACTIVE_LOW>;
-- 
2.34.1

