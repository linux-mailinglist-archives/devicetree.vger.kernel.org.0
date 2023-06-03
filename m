Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EA5F721065
	for <lists+devicetree@lfdr.de>; Sat,  3 Jun 2023 16:17:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230136AbjFCORA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Jun 2023 10:17:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbjFCOQ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Jun 2023 10:16:58 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F5C8132
        for <devicetree@vger.kernel.org>; Sat,  3 Jun 2023 07:16:53 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5149429c944so4711432a12.0
        for <devicetree@vger.kernel.org>; Sat, 03 Jun 2023 07:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685801811; x=1688393811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0DuN3B2LHcvuyeOBQFxhqHb1y+/3rfI7vxY3GV4q50s=;
        b=pyqX5QaoYeFKEDQ1fiXJf5ZHrruPzMn20N3+hZ/Ni1NJYn16m0OFjyzBrQQivATsck
         sEOM9kp3fDU6MyxFXyhPh8n28RTCC9VxvQNVXpbn6iHh0YkOP+hnMxrCUw+ZvHQEoOYG
         MNYIyt3CzaTJUmSoua2ZiYEdAT8QQcl/QXPi+s9ABQCXe8aIIVorcZyj8J72D1Kp5SXV
         KQDfpoCkXVoTAPNyHBUO6UOFDf0i+ZNBwPNqd7vOuxdaVmrEWTjXXSiqF5lq0QfMcT2Q
         6uu9xRU83Q8tMX/j7j7dFkNtqgRDpS85m8Dme9Q8FpmKMosvtw1eWtbInC8SJpT49QvH
         ZdVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685801811; x=1688393811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0DuN3B2LHcvuyeOBQFxhqHb1y+/3rfI7vxY3GV4q50s=;
        b=HLJEp49SIdkzJtM/Xh8Y7VqiJIsRMrmk3U50+rfv7Ex40pmPwqbnO/C83TkyG23/ac
         cCqa9n/+VvD2PmPtlOk26D2V/8bYR6Ei3gwP2l+iK8+omGx1RcoUJSnSlwCndnSYlixJ
         jcnbbX6eofyJEOUS5pAkjyRIrkJlgrea7YPYfiC6elKdZ/eoAscY7cb4uCy0oTv+xX7d
         GLES8dN0qNag+ZJMo+26VII9gCdcnVbKz3+vKP8IBWeImxoVJ+/zBvmsBOjRuNoYDuPW
         iT8qz1GtfJ5zM5sz9Y34cFx9eX16eGbmjFpXtk/Mm5mirDtdNZaagjZDWd1Ijqnd328/
         sRYw==
X-Gm-Message-State: AC+VfDwaWg4VJWmlmajHo8RtMAhotl8F9gTbPexhJ8xlZUiva2ERyh7y
        PJGA6GoSViGs409sRCHP0FQ=
X-Google-Smtp-Source: ACHHUZ65+5VW+x5obrGeuCUTvPoKnJehYp5FQH0UpkRRaAmT6pe22h+zlscAb1/4unduIbbMzrKt+A==
X-Received: by 2002:aa7:da48:0:b0:514:a5f3:be61 with SMTP id w8-20020aa7da48000000b00514a5f3be61mr3996009eds.31.1685801811320;
        Sat, 03 Jun 2023 07:16:51 -0700 (PDT)
Received: from shift.daheim (p5b0d7f08.dip0.t-ipconnect.de. [91.13.127.8])
        by smtp.gmail.com with ESMTPSA id d13-20020a05640208cd00b0051643d71ce9sm1288204edz.26.2023.06.03.07.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jun 2023 07:16:51 -0700 (PDT)
Received: from chuck by shift.daheim with local (Exim 4.96)
        (envelope-from <chuck@shift.daheim>)
        id 1q5S3m-001osW-1g;
        Sat, 03 Jun 2023 16:16:50 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v1 2/3] ARM: MR26: fix dt schema violations
Date:   Sat,  3 Jun 2023 16:16:49 +0200
Message-Id: <c2f56e4fb234418be45e640faf67f04ae66401b6.1685801691.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <869354dba00f01d4e6bde897a44180ad1658389c.1685801691.git.chunkeey@gmail.com>
References: <869354dba00f01d4e6bde897a44180ad1658389c.1685801691.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

fixes the "duplex-full" typo, adds phy-modes for the internal
switch and the PHY-chip. This also includs adding pause support
for the internal cpu port. Furthermore, both erronous unit properties
in the gpio-keys node are removed (#size-cells, #address-cells don't
belong here).

| ports:port@5:fixed-link: 'oneOf' conditional failed, one must be fixed:
|   'anyOf' conditional failed, one must be fixed:
|   {'speed': [[1000]], 'duplex-full': True} is not of type 'array'
|   'duplex-full' does not match any of the regexes
| ports:port@5: 'phy-mode' is a required property
| keys: '#address-cells', '#size-cells' do not match any of the regexes:
| [...] From schema: gpio-keys.yaml

Fixes: 935327a73553 ("ARM: dts: BCM5301X: Add DT for Meraki MR26")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
index 9ea4ffc1bb71..9acadf393dd9 100644
--- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
+++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
@@ -38,8 +38,6 @@ led-1 {
 
 	keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		key-restart {
 			label = "Reset";
@@ -127,16 +125,19 @@ ports {
 		port@0 {
 			reg = <0>;
 			label = "poe";
+			phy-mode = "rgmii";
 		};
 
 		port@5 {
 			reg = <5>;
 			label = "cpu";
 			ethernet = <&gmac0>;
+			phy-mode = "internal";
 
 			fixed-link {
 				speed = <1000>;
-				duplex-full;
+				full-duplex;
+				pause;
 			};
 		};
 	};
-- 
2.40.1

