Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28A074B5CB2
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:27:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231277AbiBNVWv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:22:51 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231175AbiBNVWk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:40 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F2EE13CA08
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:17 -0800 (PST)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 28AC440053
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873736;
        bh=05sXSD4PIb8v0ICor9Lwlzw82mhcHvJZHXpVeLkjK/k=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=gJwVeWhSUe8k8BBAm2F5PavH/pPD/TjJqzzW6N61SqlxSt9rMjIZ6s0ZYP3vPGtav
         CNvkpiAk6tgZq1D2YMHLshWyqyAqvTwgKhW+USX+FNmqnpTsA181PbEXDlmWUkVfeC
         0Qs6N50hyDn9ckr3XmORHZPx5SREQ4yWYsjtHkKn9rodJlxxjaiz3i+GvwPU2PC/GK
         6g4SDHU8bi+Ur1gNcKP+2yOEtfrDDDHNasjEjupEFMqYTVwbICKRFzMvOCUx7PAQSo
         lERUMNF+g35FE/bbKJ1DelaRZjyU3cJ9kJ+gmeQu+/z/L0UTfOOZzROBy/4YCnneob
         ej/ieHWerIZWg==
Received: by mail-wm1-f72.google.com with SMTP id j39-20020a05600c1c2700b0037becd18addso125160wms.4
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=05sXSD4PIb8v0ICor9Lwlzw82mhcHvJZHXpVeLkjK/k=;
        b=j7bcwhOc7xsITx8IsAe+fuY3hhEaH0hxbBUVjBI08NAuvMrTiUGZK1MOjTzeb6trnG
         4P1s1x45N+ybpDQE9VLkAFJ9iZKsfYHiMPldkl0EUPbepnyHWw8ZfzXaVI9poNTayGOj
         U9vuUamfQP2py0257xzbHiYoqiz8YBPxvWTaaVnz0w/3xLCf4TiPU47rCFQmKhyzlozp
         GMmkkMhYDBAjJViEY80uwVd3P+4wbmryeJOa0yP0GLhvdxfJbMQixj+Qy8uxaAzteLNP
         BQU3Qaz6AFudRd+MdHKJHtw54wAYxh65hQLHKTZzv0jgUNtAlG0nbLV/mDxVGRpZAfNE
         PY+A==
X-Gm-Message-State: AOAM533jw0V166VZVEYuFnPzk2iOfN4mV7WRF/DG9E78FjILADsIQkVK
        Ul3laYLcSidVGCuRN07SaY74q6A8jtJqJyHQGQG3Xd66cF8LwKp9KTnido/PVwiMxAjOq9TJRa6
        kQoUhFm2H1JIcCXJKQL3LMeCA+3dX6yfPc+TOI8Q=
X-Received: by 2002:a17:906:dc94:: with SMTP id cs20mr569395ejc.197.1644873725549;
        Mon, 14 Feb 2022 13:22:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxypzu9p7HsT4S7Ad50YuGuHC9KWwPHqmyrycOPMKzhRcEXciPDMggnLpRKMW5EEgnh0II1dQ==
X-Received: by 2002:a17:906:dc94:: with SMTP id cs20mr569374ejc.197.1644873725370;
        Mon, 14 Feb 2022 13:22:05 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:22:04 -0800 (PST)
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
Subject: [PATCH v2 04/15] dt-bindings: pwm: iqs620a: Include generic pwm schema
Date:   Mon, 14 Feb 2022 22:21:43 +0100
Message-Id: <20220214212154.8853-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
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
 Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml b/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
index 1d7c27be50da..0a46af240d83 100644
--- a/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
@@ -15,6 +15,9 @@ description: |
   Documentation/devicetree/bindings/mfd/iqs62x.yaml for further details as
   well as an example.
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     enum:
@@ -25,7 +28,6 @@ properties:
 
 required:
   - compatible
-  - "#pwm-cells"
 
 additionalProperties: false
 
-- 
2.32.0

