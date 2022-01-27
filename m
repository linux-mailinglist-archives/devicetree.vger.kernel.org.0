Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51BED49E22A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 13:20:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240664AbiA0MUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 07:20:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236131AbiA0MUF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 07:20:05 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F438C061714
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 04:20:05 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id s18so4415256wrv.7
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 04:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SXCJKgua9IOP7ZZ8L1T8exfDe6Y8hRB/10rQrO1fO5g=;
        b=N0dh3y0RnknkW67MgC0xj8N9weplnujuLdrwLC6ZvhPm09uuZk8svPLAeIl4PMo6Co
         1pDmIcCZkyXAwHF/vHcDnWKmFFAcj/lQjCT0oVRzRzH0u9jOoyxG6w58j7Wy6ZyI3QjJ
         ZeVS61oau1VpcnIG4fJ6mdgP7BCZ9ZAlg+7xDGCLTPA1SEpZf06NOS/pb/Q5QIlSONXo
         +G1deNf+iZUqm9DfZyu17R7EsU2tBR6BzojYdwVOA7Bfza7AGH/aSmbo7of/343a/KDt
         ILoBzBk9YEnW1+nMyDemjpOd9aqlSI0vn79xEkgyRhgZDKChcFsqibEB29HSw9uktUKg
         MpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SXCJKgua9IOP7ZZ8L1T8exfDe6Y8hRB/10rQrO1fO5g=;
        b=I+PC8Iog6KanqdyFecOyjkeWKcmJ2sW4GDT5Dvmn8OVkqtAzVy6V8ZDz9Ekln+ChY1
         eT4AcXl6ntBrXIkKJxu8lVGRrxJUOm7V8gzxQuwCLaBSdP5UfE3ehigZAT1Bi/Orv/+h
         U4KduUG8YTeGnEXLnrdDbD0WWgGw4aI0aeMDNOuc1qweP9GOBu7jlZ2/gLm5XNO3dqe7
         eFl/SPJiC2fQlwIb8RTQ6WWVZ31urzijEWpat1VNHnhAD2k2yVdVXwS0B4XKgL/eLy/y
         AWQcaPKfAeybwu8As9yuq49TfcowG0Au9dhjzMHqQmEGmZholXoiLfC7XYDwm5t5ZsZR
         Phpw==
X-Gm-Message-State: AOAM5305boT9MKxZ0o4ZaH5knvZfGXwbVIr/67Aez1lI3RsXqXu9ORpA
        wh/Zl5eieymm4GgpupwL45+Wzw==
X-Google-Smtp-Source: ABdhPJxVl9w/ppxzzdHkGN6KP7X4FtTENzJePI8kGhbvQD41pVUSXbgeSl1GJR63yU5x4Xxi8q1nZg==
X-Received: by 2002:a5d:4888:: with SMTP id g8mr2846429wrq.555.1643286003962;
        Thu, 27 Jan 2022 04:20:03 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id m14sm2584465wrp.4.2022.01.27.04.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 04:20:03 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     a.kartashev@yadro.com, andrew@aj.id.au, joel@jms.id.au,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] ARM: dts: aspeed: remove unhandled fttmr010,pwm-outputs
Date:   Thu, 27 Jan 2022 12:19:52 +0000
Message-Id: <20220127121952.3985981-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

fttmr010,pwm-outputs is not handled by its timer driver, so this
property is useless.
Fixes: 67ac01d03862 ("ARM: dts: aspeed: add device tree for YADRO VEGMAN BMC")

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/aspeed-bmc-vegman.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-vegman.dtsi b/arch/arm/boot/dts/aspeed-bmc-vegman.dtsi
index 1a5b25b2ea29..43af63910571 100644
--- a/arch/arm/boot/dts/aspeed-bmc-vegman.dtsi
+++ b/arch/arm/boot/dts/aspeed-bmc-vegman.dtsi
@@ -166,7 +166,6 @@ &sdhci1 {
 };
 
 &timer {
-	fttmr010,pwm-outputs = <5>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_timer5_default>;
 	#pwm-cells = <3>;
-- 
2.34.1

