Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C22255770D
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 11:47:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231230AbiFWJrv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 05:47:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231318AbiFWJr3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 05:47:29 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CA1549B77
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 02:47:27 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id k14so6205648plh.4
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 02:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zLej8f+63l565Dfr6TjNR8hNfK9QCTEEzKrEBYkQU5Y=;
        b=WKeAx8RvtEjXLFH4p/djrzpN3idIhCJws1UaFiGpTIn1nHxYhCDGmjcznI37ow2mpZ
         4owRUfRFKd/DzDNaer2j7PvhNMcPioFhEysTHZ3p0qFo8azf932TgaAhEiMHigAj1U+T
         ir+5r7QVxOlgWXIFIAFKUi/lC59GF8jbOXKjDr5VXqJljLkYq/bcYMCVyFzCBQ8a4XVQ
         vS6+g9iQqSjsmUGRKvIHOi7YolkmTX46korg5ygL/RJYJ4myHeZEi1ZdLXJfLm4vy1nV
         DhA5uwunyOV2Odj80kdx+Kj36aFuKfBsLK1DpdTgyMt3C4kbomyCjm4io/BmBE+Figbk
         fxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=zLej8f+63l565Dfr6TjNR8hNfK9QCTEEzKrEBYkQU5Y=;
        b=VzNswWlq9jZw9m3t70q3lmfM9SYpcvqc7VO8TE2v1AtA7nlRTZniefFBTglRdizAkK
         xaeMFpsgq/E6zRnC98liNMIpBBfQKxrzCvopV+fcrSDFoKaEscxCkMhkuXQODEH5u7hH
         mG0jbtQNphbunAeXzVeLrZM5nA1e/qfvIvm/wFq9y1mtdVY8V0rmvNQSRhlCjWO3PD/I
         BdL9I9rraqKRmRI8xat7Mkfq6Q9yCeP94Gw3eINoB4nibDxN2JwMhrpYX8r4Mft0Hp3N
         ppS9zWQrhEwqvyJpvfBZWYAtuUc++E5tVN8t7FtA920J32lVOpgG2kLKfFXvOf90U1ke
         lTWw==
X-Gm-Message-State: AJIora/hASUh8dQVAZNCViR/fD0EGUcn+KHWnT71d9u2l4JLizXNk8EA
        4qVINON9LP2BD2tDqOB/j8KE0sHrkSU=
X-Google-Smtp-Source: AGRyM1tABMRa5ofk2QWQsD4oPb2bKTEGDD2/1JJvEUemizcSXoTgFB5sJ67opoOhE4vBpuB8nw8GNg==
X-Received: by 2002:a17:902:e54e:b0:16a:1009:42f with SMTP id n14-20020a170902e54e00b0016a1009042fmr27516813plf.90.1655977646732;
        Thu, 23 Jun 2022 02:47:26 -0700 (PDT)
Received: from localhost.localdomain ([45.124.203.18])
        by smtp.gmail.com with ESMTPSA id a17-20020a170902ee9100b0016797c33b6csm5530955pld.116.2022.06.23.02.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jun 2022 02:47:25 -0700 (PDT)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Ryan Chen <ryan_chen@aspeedtech.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Cc:     =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Subject: [PATCH] ARM: dts: aspeed: ast2600-evb: Update I2C devices
Date:   Thu, 23 Jun 2022 19:17:17 +0930
Message-Id: <20220623094717.3873328-1-joel@jms.id.au>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AST2600A3 EVB has the following I2C devices:

 - ADT7490 at 0x2e
 - EEPROM at 0xa0
 - LM75 at 0x9a

The bus these devices appear on can be configured by jumpers. The device
tree is configured with the buses given by the default jumper settings.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-ast2600-evb.dts | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-ast2600-evb.dts b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
index 5a6063bd4508..9da70b873ab6 100644
--- a/arch/arm/boot/dts/aspeed-ast2600-evb.dts
+++ b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
@@ -207,11 +207,6 @@ &uart5 {
 
 &i2c0 {
 	status = "okay";
-
-	temp@2e {
-		compatible = "adi,adt7490";
-		reg = <0x2e>;
-	};
 };
 
 &i2c1 {
@@ -240,10 +235,26 @@ &i2c6 {
 
 &i2c7 {
 	status = "okay";
+
+	temp@2e {
+		compatible = "adi,adt7490";
+		reg = <0x2e>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c08";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
 };
 
 &i2c8 {
 	status = "okay";
+
+	lm75@4d {
+		compatible = "national,lm75";
+		reg = <0x4d>;
+	};
 };
 
 &i2c9 {
-- 
2.35.1

