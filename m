Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7AB854D668
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350445AbiFPAyn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:54:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350448AbiFPAy2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:54:28 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 775C8579A0
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:18 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id y196so105599pfb.6
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CNSMqPOWSXzw+Ck8M30e8l38LaeW0dc38daK1PaMf9A=;
        b=ibyymZp5XlJ1TVxW3Q91FpBJuuWKv1KLncQ//0p5ezpE6CTtYNLXK+lHOI/hPkd6Q4
         UGtRStig8foAJzmDcOAQ/uBCWXgSRhDIPaDpjUT6d5gq/W3B71F6AzM4cYw9qD7rEZ0y
         Jq3zXn8Euvjo8+C9vszNyro3xk+nr3E5nMYzdsLkrau/nHe4nge5+2RxMQ16d0roNjdm
         fT3sDXnnh5bfIq9kNqNdFLnoCK4Mds+xIPcZp99Q405bXeDw1cEN1TO9NawGDH5kVYnF
         sTqhxRn6OVw7r9WhqxRg+k8bClq/XoLEbhtrzDeoQwBGJoWD0BJTgbPewLH3+rP3ldSW
         LD3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CNSMqPOWSXzw+Ck8M30e8l38LaeW0dc38daK1PaMf9A=;
        b=oAti2HaV6sIIRpK2s/p43P7vvXjju6+WGcG4sMbYS1arbmjOyyV3PjhupoGtjLngIo
         KHau9QA3MLMMnGQnjgrlCZY8jNjYWe3kJdLhn/qZXwxuVjxGHXYPfwQcyJ7M+7ci0q+N
         1JcLo+lGL5HyqZQ8fMtfWtoQESbMVGUG9tfIAug6urbvzfgX9c8bXJrnQDkEYvpW7X57
         bNxdG3B1plgvJ8UethX2Ml66ttUYLoauv/0XmN0CrZDTA4jNTU2t7hb5CLX+a+RaDq8r
         /n8xQwOKGeOCV7yb+YpNxfBB856rN9wIQy0mn6HppOq1qvcfLwnEXpAnMyDYm4LSoQJ9
         GKPA==
X-Gm-Message-State: AJIora9TMMiYNWcJ6zJH4MQ0VKB/4o1iRLxOGT9A8tc/ikaIcdPBXuNW
        1xmRjHiptdZiktDC+ilqQhXz4w==
X-Google-Smtp-Source: AGRyM1tAEE0u8NJaXgmeTa2NF+QrSpNPiGi/49gozabcDXXUVDUzU+70/JslbQquvEmTpYN9QZnnOw==
X-Received: by 2002:a05:6a00:140b:b0:4e1:2cbd:30ba with SMTP id l11-20020a056a00140b00b004e12cbd30bamr2316432pfu.46.1655340858145;
        Wed, 15 Jun 2022 17:54:18 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 17/40] arm64: dts: mediatek: mt7622-rfb1: correct gpio-keys properties
Date:   Wed, 15 Jun 2022 17:53:10 -0700
Message-Id: <20220616005333.18491-17-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
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

gpio-keys children do not use unit addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index c28da9323a9c..1a86857c9027 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -40,7 +40,6 @@ cpu@1 {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		poll-interval = <100>;
 
 		key-factory {
 			label = "factory";
-- 
2.34.1

