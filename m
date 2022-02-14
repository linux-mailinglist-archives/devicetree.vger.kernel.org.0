Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 747A84B5CB3
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:27:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231134AbiBNVXG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:23:06 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231253AbiBNVWq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:46 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED97213C9CE
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:32 -0800 (PST)
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 926EB40336
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873751;
        bh=BTa+7+hPQApQrGc3LBEa/6uh1gwW5m1A+xf1VQ/CZYQ=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=gdyNO1vq8D0FG8CBJQ+a8HixbK7R6RwTcc661801XhPiCarawDt52UgSv28s6ZCXq
         r7lnHJxBTFPOTFYEcL9/K+xN1FO/KAtZbRFgtNaxf/u+MBgPhKwTrjEkVezWCY4K04
         ZNrwJs+a/+bRTKIfk44ZO2ZbrZvxp+93XkrGPaYBl5ala9OGIC9Du4Ozd+J+1ExjUd
         h0AGEaxIt+jnxB8JyMZPpQ4Ml3plzS0cJjFGMfst9v09mitU5noP8+yIlr98dw44fS
         MUbDcmfHivO1it5kAAr8H37QRcxawTRp/l8VTzWgziTGOKKko0JuzOwFAArtNOee4x
         QmFcCKBrDnDrQ==
Received: by mail-lj1-f198.google.com with SMTP id b17-20020a05651c0b1100b00244b873c6easo2095680ljr.4
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BTa+7+hPQApQrGc3LBEa/6uh1gwW5m1A+xf1VQ/CZYQ=;
        b=ui9jr5a15JkdaoKZzL5bgkJQq54/qz+6R6kZ9twa64+0tIcQLcj//evsx5LajtABwg
         nMjBy4BRCSnaPfN9XxSGFbvZ5m/DvxPkf5jtfnq1egXi4o3VVTphEkOg1U+jm/XFNJyy
         +rcbCd3of0jw/d/6q/hHnEFn0tA5Ns/K4qwaeFnCi/LDFx5ypt7AnlOfbAMAuAYEByr2
         jQxy2/iW0FqMksdbqnCELoyBBf67SUol/rNlGuYqjZOoLHslaPZGv6eIDuLXq58/4cGu
         k4P4+EDEgDUZRIYJKEbclt2qcPrNbAwhymYE4zIakE5nyXL5jtBr34bSPzM/tW75wfk2
         FYtQ==
X-Gm-Message-State: AOAM531AFQUJRaKsrx4yL5DZTNmrc/ngIOOLFnVCP6gu7TSPyjEoEmFR
        0GV3XATfhkVJVE399VW55nQix8RsiMpnvvWvnfzzsFs8ynfh8Hax9a+ySN9Q4+7Ml7Jqh1McAAw
        Ro5hMigtjN9oY1zRlMf25l7bvcDvMlwYlJ7MTERA=
X-Received: by 2002:a05:6402:f1b:: with SMTP id i27mr797195eda.275.1644873740823;
        Mon, 14 Feb 2022 13:22:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxI0exot3yoiNzuz9PwDF81XbTxvVVt2KMAZVFpKvmztfJkcydX4q8g7gpBrGY0uRI8V9/sXA==
X-Received: by 2002:a05:6402:f1b:: with SMTP id i27mr797171eda.275.1644873740690;
        Mon, 14 Feb 2022 13:22:20 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:22:20 -0800 (PST)
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
Subject: [PATCH v2 12/15] dt-bindings: pwm: samsung: Do not require pwm-cells twice
Date:   Mon, 14 Feb 2022 22:21:51 +0100
Message-Id: <20220214212154.8853-13-krzysztof.kozlowski@canonical.com>
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

pwm-cells property is already required by pwm.yaml schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/pwm-samsung.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
index 188679cb8b8c..fe603fb1b2cc 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
@@ -86,7 +86,6 @@ required:
   - clocks
   - clock-names
   - compatible
-  - "#pwm-cells"
   - reg
 
 additionalProperties: false
-- 
2.32.0

