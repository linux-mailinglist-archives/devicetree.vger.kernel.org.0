Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2CD855FE36
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 13:07:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229777AbiF2LH3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 07:07:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbiF2LHZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 07:07:25 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D01C83D488
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 04:07:23 -0700 (PDT)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 487C03FC0C
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1656500842;
        bh=s7/yNxuq40RrKk0Bz5LG0QXWmTYN2ZnVslg7p7peeiE=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=BTR+ebQzdnm4XjQ2PPerIAej5DgqY9ZgiWUBkcsrd/DcUWUSBzMDXuldXSDsV4N9e
         ycZfKNeKa3bQTV2/J/o0ysMOn6cRptN0sxk7rJsENrzbrQ+XVh2dD5IKQ4SkaYk9Sn
         qA2MQQglFEyXL5b1L1JmgZeEJubmuxZNr/VoNJD2v1F6ORamUxUsHQkpRxVTLHaszw
         oI6AEW73sEOS+L+QjXv77RhXh1n1tREFF3Ldwj8EbuvtPTkXRFTi139ucB59wSjFdm
         CbAzifvBZehIj4vgJOlmNTP3f1DWhlnvM0e2y+ndeQuFrOSVNsdPHtjcmKnwkVt0rE
         8DGShLvwLezpA==
Received: by mail-ej1-f70.google.com with SMTP id qa41-20020a17090786a900b00722f313a60eso4776909ejc.13
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 04:07:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s7/yNxuq40RrKk0Bz5LG0QXWmTYN2ZnVslg7p7peeiE=;
        b=mnglHEEBuveF9mnOf9C7jrl1vkmGYNeSXlj5r0J5P61lqyt7HOIrto8wIw5yPCCT5Z
         BwV73HE+UiT/Ozdbnp+e/KGMR0ON0ouxmmbFdnUGcKafajpOD+fN0d9x4fFuV2o8SdGj
         5VveGBbT2t+sWjRVJOP42BB+DeDu01VY9RLvu17bim//x0TqaEjFwky0cKcKFusEdJ7d
         p63teAGCfTXd9rT0y+sSzs8UmAHq1JtfeOcyqn8rLX2T0pxS2FKu14hEyJ0RfPHzWdZ9
         DB5KmOij2FiSeVbHDzO/BRao3+RbAuwsC1eFN6lquBgSvQ77lmR2vS+QD9UR5u0L7UYq
         b1+Q==
X-Gm-Message-State: AJIora/CmS2N/g4eLKDM7qPTu6uGUXtwh/sUcG40nz5Cp/QQ7LfuG8El
        kjIYZ+ktMUB3Rb15t/t/Ikeh0AlDiyvaOZWaVkvpgRgC4oCoPA0YE0wU1EC0pqruwXgfrLWvum/
        E2ANYAHl+Z/hIpqRoBidVYYSI4x3Wg42s7adnRI8=
X-Received: by 2002:a17:906:6545:b0:722:7c99:1ad7 with SMTP id u5-20020a170906654500b007227c991ad7mr2738174ejn.325.1656500841103;
        Wed, 29 Jun 2022 04:07:21 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1sKWzKffTLYTO8eiGO8f6TCl+ogtMvFqx7iN8S/I3sXiDkEvulKUNZaeOvQuHQ0kxAuN1DX5A==
X-Received: by 2002:a17:906:6545:b0:722:7c99:1ad7 with SMTP id u5-20020a170906654500b007227c991ad7mr2738159ejn.325.1656500840947;
        Wed, 29 Jun 2022 04:07:20 -0700 (PDT)
Received: from Isaac-Laptop.fritz.box ([2a02:908:672:1020:dd2a:5258:a4c9:43ea])
        by smtp.gmail.com with ESMTPSA id r1-20020aa7cb81000000b004357b717a96sm11127630edt.85.2022.06.29.04.07.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 04:07:20 -0700 (PDT)
From:   Isaac True <isaac.true@canonical.com>
To:     linux-watchdog@vger.kernel.org
Cc:     devicetree@vger.kernel.org, wim@linux-watchdog.org,
        linux@roeck-us.net, Isaac True <isaac.true@canonical.com>
Subject: [PATCH 1/2] dt-bindings: watchdog: gpio: add minimum interval
Date:   Wed, 29 Jun 2022 13:06:25 +0200
Message-Id: <20220629110626.2158127-1-isaac.true@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the "min_hw_margin_ms" parameter to gpio_wdt devices, allowing a
minimum interval to be specified, stopping watchdog devices from being
fed too quickly if they require a certain interval between feeds.

Signed-off-by: Isaac True <isaac.true@canonical.com>
---
 Documentation/devicetree/bindings/watchdog/gpio-wdt.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/gpio-wdt.txt b/Documentation/devicetree/bindings/watchdog/gpio-wdt.txt
index 198794963786..4f13dbbf12fd 100644
--- a/Documentation/devicetree/bindings/watchdog/gpio-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/gpio-wdt.txt
@@ -12,6 +12,8 @@ Required Properties:
     the opposite level disables the WDT. Active level is determined
     by the GPIO flags.
 - hw_margin_ms: Maximum time to reset watchdog circuit (milliseconds).
+- min_hw_margin_ms: Minimum time to reset watchdog circuit (milliseconds).
+  Defaults to 0 ms.
 
 Optional Properties:
 - always-running: If the watchdog timer cannot be disabled, add this flag to
-- 
2.34.1

