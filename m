Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E252631861
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 02:55:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbiKUBzX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 20:55:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229947AbiKUBzS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 20:55:18 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 615CA30F66
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:15 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id f27so25439039eje.1
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ceFmBEehHLI+ITdAPlxa6x5ctDzSMQAGOAJN5msaS7Y=;
        b=ZuKr/0Zc29q+ZYF7gRE55Vbwj+z/hYLrFwmhPnFhQxvbUtoIUGYXO/jAAegCGo8Z2U
         At24z1lPg2jroJx0YN6UU0W3Nas9o9tdrUDN4tKP/drF/gavXWF3Q1ij/ACjI+yd1v59
         kGxTJh0yngyQ6tSXBMvPGXE79aLk03MEq58v5hbFoNW+Q6PY0fSJhls4R4pNAkS/7k29
         jJ7/sANZO9TvVJ9FfIefpTFUKskoS28yzqWuU0po2+JPUznsHDfwJe4TU3BTx8Q1y5mX
         u8+I7iyMtB07mcONXkN215YOmN14qLYw/rLzX16158JSw0nwu+zb/+Rp/Fbuw3UiDw0h
         3ShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ceFmBEehHLI+ITdAPlxa6x5ctDzSMQAGOAJN5msaS7Y=;
        b=0Hurqgpv/HQdRuNDUsl/kRhRL5kdJ1AJFthBMXCJEhkw04szvNeMUkAZVmBXVb+vd8
         0yHNbDVob0sZ8qRchPjDPRGhfDLtNsKKRMk5ghcSgIhrtYkvNIMSH3HZ4RCWcrbThttu
         d8XRnnf0cfnyNR7Kdd0HI5LcFWIbu1yKcnYGS4m/JmD9joPsdC9MrAib8PQe8MqudcDn
         bAVeW6gtV+fMeQ2uAUvatjBM0oXlH4nBGCnK6guJzQfvcm2FJeCUl3SWM32JuL/iD+vG
         zb+tudAT5aMh6VyRkx5WDyLJ4TdFkr0INruj7Pn6GRfPPKhzStpo3EpJCNDIA+I5a1Zj
         6ozg==
X-Gm-Message-State: ANoB5pkbSRjLsOP96VKusvL0gI+ZnNdiHamzvvhnk0K7Hr8KLC6WzsBC
        y5H9ohCmCRudoVvT+jA1DdC+IzH2iPkGzVEX
X-Google-Smtp-Source: AA0mqf6GyYZ2MDoz5DmOIUHPUfsFhTnyAk1GDDWwK4E8E+3sEktkUs6XwVC5a+TccSYHOAq2BHzuQA==
X-Received: by 2002:a17:906:1498:b0:73f:40a9:62ff with SMTP id x24-20020a170906149800b0073f40a962ffmr13976603ejc.678.1668995714821;
        Sun, 20 Nov 2022 17:55:14 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id g2-20020a170906538200b00782e3cf7277sm4415513ejo.120.2022.11.20.17.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Nov 2022 17:55:14 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
Subject: [PATCH 9/9] dt-bindings: pinctrl: st,stm32: Remove the pins-are-numbered property
Date:   Mon, 21 Nov 2022 02:54:51 +0100
Message-Id: <20221121015451.2471196-10-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221121015451.2471196-1-bero@baylibre.com>
References: <20221121015451.2471196-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove the pins-are-numbered property from the STM32 DeviceTree schema

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 .../devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml          | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
index 7c08d362132a4..dc111122ff5d2 100644
--- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
@@ -34,7 +34,6 @@ properties:
     const: 1
 
   ranges: true
-  pins-are-numbered: true
   hwlocks: true
 
   interrupts:
@@ -219,7 +218,6 @@ examples:
               #size-cells = <1>;
               compatible = "st,stm32f429-pinctrl";
               ranges = <0 0x40020000 0x3000>;
-              pins-are-numbered;
 
               gpioa: gpio@0 {
                       gpio-controller;
@@ -237,7 +235,6 @@ examples:
               #size-cells = <1>;
               compatible = "st,stm32f429-pinctrl";
               ranges = <0 0x50020000 0x3000>;
-              pins-are-numbered;
 
               gpiob: gpio@1000 {
                       gpio-controller;
-- 
2.38.1

