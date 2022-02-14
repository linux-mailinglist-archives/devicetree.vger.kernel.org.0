Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0CA14B43BB
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241780AbiBNIRI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:08 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241748AbiBNIRI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:17:08 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB0115F8FE
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:00 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B5979407E7
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826619;
        bh=icQcZ+WFXKpPn99IyrrodPILDL6gHPyC2MLITlx0dJQ=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=I0OJfT4gEOR9pc7Hok5kjS+AbI/lUUj/zvI0dCDP3U1RuOKV7abiVKKlKpmieGHMP
         3wn3h8de9cFLFXEaah9MiK/o1/U7PSvhtkoGHdWv3h35viXSuAHw7UiVtPjlD25z7l
         khsFoHuVcnH3vsimYIcLrE/vHY+BQDptgEwMsUbwmQ13WVaS69TYaYNqWkyTrdsLy8
         L5pyicYxVhVre7Bsjyh3565i49bLYOlqnIJUH8dyTZvNXyjh9w3x7yHr7taVSrI3jO
         8bfdO+sQanQog8xuUVaZIL4UMaxCvXUANG0QqXlqzkQMRnUgHFc+Wmhjvd0NVNupBq
         VD6TYDA+340Wg==
Received: by mail-ed1-f72.google.com with SMTP id r11-20020a508d8b000000b00410a4fa4768so2499210edh.9
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=icQcZ+WFXKpPn99IyrrodPILDL6gHPyC2MLITlx0dJQ=;
        b=2XSHH1cgGaYlZ/dynx6XGKrvmRK87Mkh9yeHuJ9CDc/3qkoQoA6Xwg2q1jO+G3qE/q
         XidMl2SFWpaEXumXLO+TiilE5YaaWJgNVgIdoLveGEzqVBYaloCZZQZ80mgFFz8d2+Vz
         dDjZZYKnJPAFk21ghHN5S+X0spBdTvgY0oecyjb7WnkTjMMr6TP0DAcWT1ZVae4o8hfT
         atLdqycyyQlWkLEQslTtFopuTd6URbNPnhlYtVplNM93WcbwF5SXffVwhIAivUPY5Gwx
         7CiYMYbw3aH4pPx9ZEMX9GnlpZUCfHhHOiQgB4sip1a1K17SDwH89B1qusD9zy0QtFXT
         B7iQ==
X-Gm-Message-State: AOAM533SV+u13xwOSQWlsbiw4WTi55QvOaA+5czPc5ULQrfvTk7jJwMe
        PZ/1oifsPInCFv01eLUIGnhGHCNZyt38dNQaju8nRGP3B7pmTmSpeatL+TxtKuzqG4MagVVRsrs
        kgxOFPCzlaFONOv0NzMUOpqPiV7XxV6J9dgbamsk=
X-Received: by 2002:a17:907:7e9a:: with SMTP id qb26mr1455486ejc.294.1644826619436;
        Mon, 14 Feb 2022 00:16:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyo1kloneuL4CK5f402ZmLsMaBH9PsTCXLm/PAvrgWgzMOv7fXj/4RlM6Dc+vRLwWlSy4wiTw==
X-Received: by 2002:a17:907:7e9a:: with SMTP id qb26mr1455469ejc.294.1644826619203;
        Mon, 14 Feb 2022 00:16:59 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:16:58 -0800 (PST)
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
Subject: [PATCH 12/15] dt-bindings: pwm: samsung: do not require pwm-cells
Date:   Mon, 14 Feb 2022 09:16:02 +0100
Message-Id: <20220214081605.161394-12-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
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

pwm-cells are already required by pwm.yaml schema.

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

