Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55B9C4B5CB8
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:27:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231178AbiBNVWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:22:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231221AbiBNVWo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:44 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60E2713D915
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:27 -0800 (PST)
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 44E5640338
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873746;
        bh=fQGwcHi8/nTW0SMwp6SpOvSaCBhZUIuzRLgVqfnHG+w=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=cfNLw5bm2//6Y7Q1p8Kj/H5+TZlMoKkOnuRyAq1wzWIvI2JbRMy89SQ0FeA9zq0jK
         GJGJ7HcIrcWgqRs3JABONxhkUPKXlKnxAbu602KOdwQJc40y/nq6ljpnoQ7+7wH9Cv
         quso+Pk8PZ9nZhCrHIcnXVuldNlmXcQujcvEfCsGD2CxfPtuOlnvEpQ1q7Gp4Qev0u
         cgv/15i7cv0Og943xGbCSN3y5hkOXzVAUV7ONZ6djBrAFsO90ljs3Mi0GI+swj4I6Q
         /ItQrX93iFw1rm3J3/egGI+6UZBRva1+7ooA5XLoBNKwR52oEtZiGnjzrnOzxfzCTs
         0YO9u53mLCATw==
Received: by mail-lj1-f199.google.com with SMTP id j11-20020a2e3c0b000000b00244c34b83d8so1554906lja.17
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fQGwcHi8/nTW0SMwp6SpOvSaCBhZUIuzRLgVqfnHG+w=;
        b=gUjvINioJOFsprmDVKV2c8TBu+oe6IB+1n5+MRMevk4/DTh5kQA2JOQ2X1GtPDPPwZ
         WNHw7r+3+/MJXGg+xCTSWaIyq7HBtEBhoNbUkBqKn1KM58VvU95Zr+Bjs/7h+BbMjQ26
         LVuqLNJtUIlSMpC/ThkmMNQ1NUxHI+8HKssns780rwFLYfY1mQpcgJGXbGXIeReCTzTL
         tAQfOiGPaDMt8kVAOtgEJFrFgvfcGdJqi37n65nsYX7+kEBb1zQXoDnv+nGAUw/F6RZ2
         8wIJbn/Ueyy1WkKNWtdlwEELfCo/Qk/0KfZpZeL8QFtm1t7XIELYXcF0gvlR7rpE345C
         gIyQ==
X-Gm-Message-State: AOAM531PSCSO7scgjPLkqMTimZ3KiQ27gmW56/3GV/8O8J25rAz5azZ0
        Jlj+Qy5dkRTLALCpp2kaN1jFT3gL0THKZqr9dvFxmnt91/YExoP0DvSvsda2mP2VtsieZ0Jcka6
        uW8egFMCER0byPd7WvnJrFlpNL9pGSEHiW++CIRU=
X-Received: by 2002:a05:6402:3687:: with SMTP id ej7mr784101edb.335.1644873734549;
        Mon, 14 Feb 2022 13:22:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxIpInfMiZOfc9K2mvopmHJpGq7HGo1U79elFbaK9u9/4kmAeiVck7Mp6uIQadoSXhIA1gAlg==
X-Received: by 2002:a05:6402:3687:: with SMTP id ej7mr784084edb.335.1644873734367;
        Mon, 14 Feb 2022 13:22:14 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:22:13 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Anson Huang <anson.huang@nxp.com>,
        Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
        Rahul Tanwar <rtanwar@maxlinear.com>,
        Jeff LaBundy <jeff@labundy.com>,
        Yash Shah <yash.shah@sifive.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Vignesh R <vigneshr@ti.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v2 09/15] dt-bindings: pwm: toshiba,visconti: Include generic pwm schema
Date:   Mon, 14 Feb 2022 22:21:48 +0100
Message-Id: <20220214212154.8853-10-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Include generic pwm.yaml schema, which enforces PWM node naming and
brings pwm-cells requirement.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 .../devicetree/bindings/pwm/toshiba,pwm-visconti.yaml         | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/toshiba,pwm-visconti.yaml b/Documentation/devicetree/bindings/pwm/toshiba,pwm-visconti.yaml
index d350f5edfb67..46622661e5fb 100644
--- a/Documentation/devicetree/bindings/pwm/toshiba,pwm-visconti.yaml
+++ b/Documentation/devicetree/bindings/pwm/toshiba,pwm-visconti.yaml
@@ -9,6 +9,9 @@ title: Toshiba Visconti PWM Controller
 maintainers:
   - Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     items:
@@ -23,7 +26,6 @@ properties:
 required:
   - compatible
   - reg
-  - '#pwm-cells'
 
 additionalProperties: false
 
-- 
2.32.0

