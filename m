Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2297263185B
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 02:55:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229931AbiKUBzT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 20:55:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229823AbiKUBzN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 20:55:13 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A21D83134B
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:10 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id e13so14289464edj.7
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9CB+PKSY77gd3fDCjTpTtL8yvYXbKEU7hxFHC5zM8QI=;
        b=Y/jhLVoxc5NITt+vyfGKjmI2MXk68J/n5/gDbcTVHtDrq+qHydLcpWCsqOLT+1tx4K
         vJGHmCzBcZprPMxttoFB4QAqBGD5FTiUZurSUlx8DwZbnsbuBN5KPdfLfSh12xI5q+45
         ewkXZiWodF0uOn4CbYPKzFB+wkOvdmACfiHT6TIbZ9oR1yWZ2VZV07itjNQh0y0ERljn
         72Pp4i82m1BgTZfFpIEihqSdWbivHdk9jukMKe9aFRW5kzdT9k7mPZiEcYoeksjZMeQi
         /4zaGQxnrqeC5FbdRmBZ5Fsw2EP2rTwytcD718KgJENUc9W0BT2cS1f0N20MjqK6Xjum
         +j2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9CB+PKSY77gd3fDCjTpTtL8yvYXbKEU7hxFHC5zM8QI=;
        b=tRHQUVpDN5QmcxyYKdVgT2FH6T+toEMPqNRfI9W2FCyOaD9XoKhsODc4s27qAFyqW0
         RKMia1Pwg01rAYtQU0Jw5OwcsnmFTf1c0hgkkDWSyfMJgdX9hCpJ6CgCkKuQ+7WNQJOc
         bGSUElDgiGgRSbeEjAiMrzjDsbFIQtOrff5QA9g68HMAuqcDZQGUYoUbBDYT0156IU5e
         vUIEiNUZuYe3DxgNm47N+x/E6L0oPKdn17HF7w44yNuzU9tlZaW7sFscYEi/Z1+Lz+yS
         TZ7H3g3tAH/u0gDOcHqqkFz+n38pgMAgNMfsL+UZTQgoKr+3d/iMxkLTg2EDhHlk19ef
         lxTA==
X-Gm-Message-State: ANoB5pluq/PdMr6wqsB9dNJyTgHKWzUUo80I20e0Itc9eAjK3DQljRow
        SGXthP0CQOICrEILZpQfwLb4CV/tYC1QpgUp
X-Google-Smtp-Source: AA0mqf4SwjNK10hTsB4MvtZoRkF217NrnXjf0sIG6lLeKQigxLHaLKrlPchFql7FjvHVNq3vPF2dIA==
X-Received: by 2002:aa7:c055:0:b0:45a:1af2:ed6d with SMTP id k21-20020aa7c055000000b0045a1af2ed6dmr52132edo.364.1668995708996;
        Sun, 20 Nov 2022 17:55:08 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id g2-20020a170906538200b00782e3cf7277sm4415513ejo.120.2022.11.20.17.55.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Nov 2022 17:55:08 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
Subject: [PATCH 3/9] dt-bindings: pinctrl: mediatek,mt65xx: Make pins-are-numbered optional
Date:   Mon, 21 Nov 2022 02:54:45 +0100
Message-Id: <20221121015451.2471196-4-bero@baylibre.com>
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

Don't list the pins-are-numbered property as required

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 .../devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml     | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
index 33b5f79e741ab..cca9cc58a6934 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
@@ -62,7 +62,6 @@ properties:
 
 required:
   - compatible
-  - pins-are-numbered
   - gpio-controller
   - "#gpio-cells"
 
-- 
2.38.1

