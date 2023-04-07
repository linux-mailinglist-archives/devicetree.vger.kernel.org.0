Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE9A66DB06A
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 18:15:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230253AbjDGQPm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 12:15:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230240AbjDGQPl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 12:15:41 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABF2EB77B
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 09:15:24 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-69f7c7cff1fso164083a34.1
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680884124; x=1683476124;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZyvvgQEdHO6FsUf6DGM2oqa7+ztGwt+ZwRzWk+9YQ0=;
        b=q51Ce+0CfZ0ql+gEnula+2LEuyDr7YnPVJUqoKY1kOIqUG5/z7XBxdL51CpXKd8uSm
         1LZ2EDnsWCmdlMJNH6WDER2QxTfilP32ZKuqMEcdBWDi3cAVALsHTpnzfFvdiyNE7l0y
         xfU1oq3EYfxtwFggwgg5Y7ECarwEPWhcEc+oazBw1tGVXzPVJPsxAR0iXEJfHti6CLR2
         m3K6+cIG67kq/rARxk1j7cJNcm+Pj/6K2ame6h0s3K9WxLyPa9z2lUWXjSHbO09W2u6N
         VkyxL9A9vX7l0BMc8lxaLZj4umAtsDQJFoyNJmvphhRZm6PqAit7mEBXFKcr4RZYTg/k
         U/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680884124; x=1683476124;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tZyvvgQEdHO6FsUf6DGM2oqa7+ztGwt+ZwRzWk+9YQ0=;
        b=ydAAvXyHAOuSryNGCTwNyRzzzrL5UqfY91Dm0z9AC7KCuW6bHXmtqNkfLMTaPjC/PT
         T2Jhg7lpo6EXuEWMX2GqaXQbF0VuYQz2YCDTSvPXS6rq67p2itBoZkTtED1eFSsROlc8
         e/2g9Q+OyNjjmuy1aiyagvXhX2qasybrqC8pDsWO22iJq+6zNPhqbVv14nRgSfpUNxGh
         RTVcUvUMnZA3iaM29bqOPitFwDVIhi29iIHBg+H9rInLtCkfb72ADOGD73kv8xGKfz3L
         VhhJ07txaAk3mSpowa4ZLvZmbJ1POK1w23QFEk337iWF4bMP1+64HwY6RT82iO003O4b
         e/EA==
X-Gm-Message-State: AAQBX9fIetQuzoDAHKoSmvCzVmbMp3ryeJwZZBSaA5WPQnkXf3H6V9Ij
        Cy3JkaUdm40QQd/+vm9OFXM=
X-Google-Smtp-Source: AKy350YhPE6xzw2gj/oMGKeI54CLowJ3UPwi7RoBrJaBP3PRMGjmtLZMQt5Qd2f5gEi335lIwK4GtA==
X-Received: by 2002:a05:6830:d86:b0:6a1:6d65:9849 with SMTP id bv6-20020a0568300d8600b006a16d659849mr1835998otb.2.1680884123891;
        Fri, 07 Apr 2023 09:15:23 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:7f0:b380:973d:85ce:575d:c0a1:5abf])
        by smtp.gmail.com with ESMTPSA id q25-20020a9d7c99000000b00690e21a46e1sm1801910otn.56.2023.04.07.09.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 09:15:20 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 7/7] ARM: dts: imx28-cfa: Replace deprecated spi-gpio properties
Date:   Fri,  7 Apr 2023 13:14:44 -0300
Message-Id: <20230407161444.1682038-7-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230407161444.1682038-1-festevam@gmail.com>
References: <20230407161444.1682038-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
'gpio-miso', 'gpio-mosi' and 'gpio-sck' are deprecated properties.

Use the recommeded 'miso-gpios', 'mosi-gpios' and 'sck-gpios' instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx28-cfa10049.dts | 10 +++++-----
 arch/arm/boot/dts/imx28-cfa10055.dts |  6 +++---
 arch/arm/boot/dts/imx28-cfa10056.dts |  6 +++---
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-cfa10049.dts b/arch/arm/boot/dts/imx28-cfa10049.dts
index 94d6614c1983..c5a7f56d83db 100644
--- a/arch/arm/boot/dts/imx28-cfa10049.dts
+++ b/arch/arm/boot/dts/imx28-cfa10049.dts
@@ -100,9 +100,9 @@ spi-2 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi2_pins_cfa10049>;
 		status = "okay";
-		gpio-sck = <&gpio2 16 0>;
-		gpio-mosi = <&gpio2 17 0>;
-		gpio-miso = <&gpio2 18 0>;
+		sck-gpios = <&gpio2 16 0>;
+		mosi-gpios = <&gpio2 17 0>;
+		miso-gpios = <&gpio2 18 0>;
 		cs-gpios = <&gpio3 5 0>;
 		num-chipselects = <1>;
 		#address-cells = <1>;
@@ -124,8 +124,8 @@ spi-3 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi3_pins_cfa10049>;
 		status = "okay";
-		gpio-sck = <&gpio0 24 0>;
-		gpio-mosi = <&gpio0 28 0>;
+		sck-gpios = <&gpio0 24 0>;
+		mosi-gpios = <&gpio0 28 0>;
 		cs-gpios = <&gpio0 17 0 &gpio0 26 0 &gpio0 27 0>;
 		num-chipselects = <3>;
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/imx28-cfa10055.dts b/arch/arm/boot/dts/imx28-cfa10055.dts
index 42ba7da48beb..70e225a99fbe 100644
--- a/arch/arm/boot/dts/imx28-cfa10055.dts
+++ b/arch/arm/boot/dts/imx28-cfa10055.dts
@@ -19,9 +19,9 @@ spi-2 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi2_pins_cfa10055>;
 		status = "okay";
-		gpio-sck = <&gpio2 16 0>;
-		gpio-mosi = <&gpio2 17 0>;
-		gpio-miso = <&gpio2 18 0>;
+		sck-gpios = <&gpio2 16 0>;
+		mosi-gpios = <&gpio2 17 0>;
+		miso-gpios = <&gpio2 18 0>;
 		cs-gpios = <&gpio3 5 0>;
 		num-chipselects = <1>;
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/imx28-cfa10056.dts b/arch/arm/boot/dts/imx28-cfa10056.dts
index 0e15bdfd7281..bc2d6fcad12f 100644
--- a/arch/arm/boot/dts/imx28-cfa10056.dts
+++ b/arch/arm/boot/dts/imx28-cfa10056.dts
@@ -18,9 +18,9 @@ spi-2 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi2_pins_cfa10056>;
 		status = "okay";
-		gpio-sck = <&gpio2 16 0>;
-		gpio-mosi = <&gpio2 17 0>;
-		gpio-miso = <&gpio2 18 0>;
+		sck-gpios = <&gpio2 16 0>;
+		mosi-gpios = <&gpio2 17 0>;
+		miso-gpios = <&gpio2 18 0>;
 		cs-gpios = <&gpio3 5 0>;
 		num-chipselects = <1>;
 		#address-cells = <1>;
-- 
2.34.1

