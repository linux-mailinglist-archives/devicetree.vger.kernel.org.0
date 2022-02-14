Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E4C64B43D4
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241768AbiBNIRK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:10 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241723AbiBNIRE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:17:04 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A28875FF10
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:55 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 65384402E0
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826614;
        bh=DkqOnedmg2q9ShhWATftW6XUUTgR2TrUisQLyEAw/GA=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=cxIZq0u3HmjdsAiPqVRsO/aDVPuLRl/+LeiUDRmn48lGJyS+LWSPc1huKPtqHCsyD
         1RL9MYmvIE0GLazWTFFcOql4+46B7CEsMpkO3Ljl/jFsVHrPlu6+CksYRuL8Ce0TTM
         e/2PcFDUzBfGIsxvmXHB+1GUC7Una9VABbFebmRgyvYieNViPFjtbhqlFzyljzdHeC
         ON89LnDH4jRPPlj4c1Iv/txDVSah/xCgfve2yarGDHQojJdk8kdTyCjlX1oA4k2A3r
         QJlsQx+G5/DP2itscrpxIl+g+EhPjPbY23SV0uLwgXLDLsi7i6UxYRTXE4R7fSJh+V
         JJZ+KOiH6Sm+g==
Received: by mail-ed1-f72.google.com with SMTP id s7-20020a508dc7000000b0040f29ccd65aso9799749edh.1
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DkqOnedmg2q9ShhWATftW6XUUTgR2TrUisQLyEAw/GA=;
        b=dXXFaRZUDQ9te5Fni9kwyeQiHODgRJEmtJEmq4XcT1XRYEUuU/8fpTIalHFlnR0DUK
         BzS3VgYCo81+70opEskGMFBPD44i96IjEU2apIlG8AyR12uWNpflSlgPEPf2MUwq84Mf
         +zE36W0SP8ok+Ejp21k80txKUSZk7qGAICz7Tc/ulDxEci4/10orof3MvYGZu7IJuNYQ
         taCDlWrlhR8XzrxN8Q4cdH4lznTS+w2GlEXgDBGeWVdvZkCbtN1h/2BMeUrGhC0/YGFp
         zZAs6pHZc9e+VUSsAk7fUUk8CBbbh7tEMxDJSRcwVGg6FMWMEhu7Gii1aj+3fZ13Jv+F
         3Kaw==
X-Gm-Message-State: AOAM5320cvqMPws9Yd+hOG7IVxn++M+blMSYqOGgDKuuQlp7SzFfh1nQ
        UKzBzopL4dqFKxDt9yThjuvFPPZzJPpqmD8o+EM82JsjeySXxplkESv5NHJcQ4vYA/jpMTO5Jxx
        R8yvdtbgia/tD8F8qR8o1v2ejtuCO4VMQWg9brgk=
X-Received: by 2002:a17:907:86a0:: with SMTP id qa32mr1461132ejc.23.1644826614002;
        Mon, 14 Feb 2022 00:16:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxDJTIba5Olc1DBbdAqq71XRQ9UAPJIT4SQ1cNLOsvgwe2lpelu0Q6nUssQgmN6E/2sLjNFyg==
X-Received: by 2002:a17:907:86a0:: with SMTP id qa32mr1461109ejc.23.1644826613791;
        Mon, 14 Feb 2022 00:16:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:16:53 -0800 (PST)
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
Subject: [PATCH 09/15] dt-bindings: pwm: toshiba,visconti: include generic pwm schema
Date:   Mon, 14 Feb 2022 09:15:59 +0100
Message-Id: <20220214081605.161394-9-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
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

