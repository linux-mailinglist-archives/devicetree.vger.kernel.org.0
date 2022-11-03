Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 423E2617B1B
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 11:53:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230491AbiKCKxf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 06:53:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230500AbiKCKx1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 06:53:27 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89DBF10B53
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 03:53:26 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id u11so1690006ljk.6
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 03:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KCy+EcFb0zEd4E+DP+xiKAqBhA/PUFPtdpf+dHB1sLI=;
        b=DTzAVtZcemK5B/d657/rGIzL6TCfnqfkGnGVrDqJCJJOhI7HDdodix5KSd3uaYLvjt
         /LtVJ3tYeoDoKGw6oC7S3i9pvff2Thtr25+l4e/+2IabI/yFnTT66sDJRzte0btmIcHJ
         Kk3Y5n7KhPS8Ux+ndkgieJLDlJWJUjcaVKbBO0Wc5gquXj4r4+y+iDdFPSeYvY2EkFPa
         BWgeEWclq0ebzBPq12V2a5FKZ+wZamHgc6nnxf+0GOVUedQKTL0PK0SJb2ffs+xH74Up
         pI9qJV7VyO5+DPwh7/Q1Dtr0n52z1wuhKLLmz762utWuWhOC/7dF8GaKgGUC+FamOsMY
         mttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KCy+EcFb0zEd4E+DP+xiKAqBhA/PUFPtdpf+dHB1sLI=;
        b=NbRB7bXyYL0tsfFRkVxrRVZc1KeBiaAlvrodys2oZAsdvRngkqpR67/q5uQwY2fyMv
         q6hl3jIMYd9Z0Y3EYOWmEa6ovkAVxCTMsZWWlsicEwkZPLuAOz0etc7scOred1PevAPB
         XPHWYMS1j7B3nF50/Gta3FPmhU97S18zA+htIWZFgNwIMDApaXDQVc4KGbPzTH+qInxf
         eHKtNsrIPKtDPMA26kGSWZiMZGaXGzduCuZUfnJTv3OaJC4BRYHzsUk9bkAH0J2EnPHb
         uQpZh9srbmkCStplgJBB5xc7ZdERWO8UI7VIwXWD2wnP+vGjTRj8Rfo4qcv9UuQWdiHJ
         SfXA==
X-Gm-Message-State: ACrzQf1Ly7W2b11JGPu8TbsgnfJCwL/JlOQhZTqsqgUnTBUP3duDH92f
        SkNV480bTj7j2EUDFIJCcxY=
X-Google-Smtp-Source: AMsMyM6q/sQDGnw8QFcVqks/JDZY9gcc7xTK7AXEWX7QCqw0TYbpmN6JgJOcDhp7tu+/xkK7TwRkAg==
X-Received: by 2002:a2e:b991:0:b0:277:55da:1e6c with SMTP id p17-20020a2eb991000000b0027755da1e6cmr7778405ljp.149.1667472804626;
        Thu, 03 Nov 2022 03:53:24 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id v6-20020ac258e6000000b0048afb8b8e53sm88256lfo.80.2022.11.03.03.53.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 03:53:24 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: add TWD block timer
Date:   Thu,  3 Nov 2022 11:53:16 +0100
Message-Id: <20221103105316.21294-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 TWD contains block with 4 timers. Add binding for it.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
index ba1d44e98c32..82cd8c1a47c8 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
@@ -283,6 +283,11 @@ twd: timer-mfd@400 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
+			timer@0 {
+				compatible = "brcm,bcm63138-timer";
+				reg = <0x0 0x28>;
+			};
+
 			watchdog@28 {
 				compatible = "brcm,bcm6345-wdt";
 				reg = <0x28 0x8>;
-- 
2.34.1

