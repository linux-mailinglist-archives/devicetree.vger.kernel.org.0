Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 287A3720377
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 15:35:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235091AbjFBNfK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 09:35:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234614AbjFBNfJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 09:35:09 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20007D3
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 06:35:08 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b15a327c20so27026511fa.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 06:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685712906; x=1688304906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XwsxbT25PF9eM65ENJshHzomGetethXrVsqSLx5JvfI=;
        b=AGNWBwB9f4KjWXlJYx/SzwfHU3W6ERF+WeVnAYlW/8Ta627i7kHXvEV8IyZx7eVPOi
         q3q/5czQck+7RHSAHy5DKWMU8eKI6MustX2Kz1vVlcNrs3nhRw+SfzVevTBxk5TytAbI
         nB56p1v+ZcjDUBtsjGYZc8iu2Db9Uk9QmIL36XOugBgSyOU4Gp4Y0oUpLDIJF3jGg49v
         6SlISKZm4tHC/FWBbQGsnm3bYcmBj6OzB6peQAmlvTcZtJojmHXPyad3onZ1tejFa8SV
         b6MzwBWL7AANjaXZWgnNv2BL47JhXJOLcvDJGub808RY19ovaes8FWAeK97pNrpWinNJ
         H4pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685712906; x=1688304906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XwsxbT25PF9eM65ENJshHzomGetethXrVsqSLx5JvfI=;
        b=OPiEmR4PA+V6PFvfEItESyXXPx5fATRRWIIgLgz+zpODr5CeK1pVin42ihNFysvc3X
         CtfNtf6IVN7lLJABmPdb9b0CONafc2POU/hYZSlDWHmpzBETFcMLAEJ1hu6cnsgIkkls
         4zkt9M7lK3vcPEr8teQPRv9/R6Lq6E3sCNvFui6d4JJKkK7BZyd0UyHpr3rX76fJYxpi
         qKF0l+WfVPEPVnztm7l5Re6ZlnDEv0shUwCRxnmeeoOW5bYK+uN0UqTYPwRaJ8UVgRQC
         IlLgUEutiKLBi/2DTkbu55qJEWDMp8TQ2Byz2mgn1n0eQmh5+1ND0gqGxiwcLaGN1jpK
         9djQ==
X-Gm-Message-State: AC+VfDyOvc/VJvC1Bj9HidGOyZzmpoXRIcbCukMWlMUNcvPu5WGuJotK
        /BIHIvMg9jTNAHyFRQimRlg=
X-Google-Smtp-Source: ACHHUZ7GIa7/bJq0WmCAc/ABT8cqbIKduv9AM7H7BeRA2e+u+bjh1wLy5Wpjq8gT5I8uNGYZtkZCQQ==
X-Received: by 2002:a2e:8503:0:b0:2ac:80cd:6c0d with SMTP id j3-20020a2e8503000000b002ac80cd6c0dmr12759lji.19.1685712905988;
        Fri, 02 Jun 2023 06:35:05 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a4-20020a05651c010400b002a8bc9918d4sm225892ljb.97.2023.06.02.06.35.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 06:35:05 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] ARM: dts: BCM5301X: Drop invalid properties from Meraki MR32 keys
Date:   Fri,  2 Jun 2023 15:34:55 +0200
Message-Id: <20230602133455.7441-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230602133455.7441-1-zajec5@gmail.com>
References: <20230602133455.7441-1-zajec5@gmail.com>
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

This fixes:
arch/arm/boot/dts/bcm53015-meraki-mr26.dtb: keys: '#address-cells', '#size-cells' do not match any of the regexes: '^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9-]+-(button|event|key|switch))$', 'pinctrl-[0-9]+'
        From schema: Documentation/devicetree/bindings/input/gpio-keys.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
index 14f58033efeb..071f2cb97251 100644
--- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
+++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
@@ -39,8 +39,6 @@ led-1 {
 
 	keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		key-restart {
 			label = "Reset";
-- 
2.35.3

