Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCF94616CE7
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 19:45:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231180AbiKBSpN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 14:45:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231566AbiKBSpK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 14:45:10 -0400
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C10A92D1C1
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 11:45:09 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id l15so1202854qtv.4
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 11:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OaJC1NoewmXjPxS0Lyt64Qa/JvMUE2LWOQneWFWHmgg=;
        b=midHby3kR8uErqu/QMklWynWJ1iNS4A6IADiLuugjxJDxFM2F+urA+6P4RVv7Xes8R
         COsOFSMAurr8NGV6v7V+gWlzpbPx1qYL8oqOpONVecxzTEoY5iIUrf1Btb0XWRi8IvzG
         cMWzZZFBwnDfI042JdRV5dCMwSXtHINOzz4Az2HF6+BltG9GGJ7ittZQnpCQOBfvwlsX
         ifqzr8I8mx1SabvBWpbjH6+/dCBa+DHmEj3PGb0UVtkxUEeMNbVCqymH0TzC8YjJhIDy
         WTXDVKYRIp7MfmP3JH5c87enlyHRgMDbs+tA1+rSw51FGSNPIrE0SSqzeaOeaz7+xOpw
         c9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OaJC1NoewmXjPxS0Lyt64Qa/JvMUE2LWOQneWFWHmgg=;
        b=suxMsH4j420U1HPLxA/D/W7j07fjcD5zdAnoGWPPLjfny7NGyuXrRvBEt5Nbr8PuUl
         SKHeGlaKyGvjiicwQxIQSSq+ZVqguNjXSG9kYya3g0VFEbJE7OGZoZ9ko1a812dd9Znq
         0xKDdih4zZ0Uo5D743bOOjGTuCCJFJI6ANQ4vHQMB/Tcbf+UjTRH7vk67+gd6deCqRZi
         nj9YdjFMjI42Zet9AGZAkweVzbNg4M36rjbejaaI/CSua9uOVrUzbHz5zHps0hdSxYsS
         EKNGuohQsuD0osgwsZQaAFpRbnKFoLiT9YBOjbJETCFAcfVxlfJyLYtLJSaAfsFseWDg
         ltGQ==
X-Gm-Message-State: ACrzQf1f+6SA3v3Xu9Thlkhq8xuE5tuNZrnX8BG/lqf+ZTx3um3RVZre
        Ib8Eme7Bo2ymDBZWDlgrhvVONQ==
X-Google-Smtp-Source: AMsMyM4Xsbl0+npXWymI1g53Xuyz+ex5cxhVd/HsL/qqxgeky19y68fomQ9rZPZYd9MZ1kbNFoA2NQ==
X-Received: by 2002:ac8:5c11:0:b0:39c:fd77:336d with SMTP id i17-20020ac85c11000000b0039cfd77336dmr21164500qti.479.1667414708952;
        Wed, 02 Nov 2022 11:45:08 -0700 (PDT)
Received: from krzk-bin.. ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id w16-20020a05620a425000b006e54251993esm9090413qko.97.2022.11.02.11.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 11:45:08 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Sebastian Reichel <sre@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
        Purism Kernel Team <kernel@puri.sm>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        Chris Zhong <zyw@rock-chips.com>,
        Zhang Qing <zhangqing@rock-chips.com>,
        =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        "Andrew F. Davis" <afd@ti.com>,
        Artur Rojek <contact@artur-rojek.eu>,
        Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Markus Laine <markus.laine@fi.rohmeurope.com>,
        Mikko Mutanen <mikko.mutanen@fi.rohmeurope.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 3/3] dt-bindings: power: supply: maxim,max17042: allow power-supplies
Date:   Wed,  2 Nov 2022 14:45:01 -0400
Message-Id: <20221102184501.109148-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221102184501.109148-1-krzysztof.kozlowski@linaro.org>
References: <20221102184501.109148-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MAX17042 Fuel Gauge uses power-supplies supplies:

  arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dtb: fuel-gauge@36: 'power-supplies' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. New patch
---
 .../devicetree/bindings/power/supply/maxim,max17042.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
index aff5d0792e0f..64a0edb7bc47 100644
--- a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
@@ -59,6 +59,8 @@ properties:
       Voltage threshold to report battery as over voltage (in mV).
       Default is not to report over-voltage events.
 
+  power-supplies: true
+
 required:
   - compatible
   - reg
-- 
2.34.1

