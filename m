Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 629274B5C7D
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:22:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230490AbiBNVWI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:22:08 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230487AbiBNVWI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:08 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6810F118601
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:21:59 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 32F6E40336
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873718;
        bh=Yyn2NqnfgQsqTNINvOf5kiaG/8cnl0ieMPcjnfWxCE8=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=SCQAX7bth7sriNYVeHYYWth8/XFEv/d+tUPhWT5gVVKvDio4qUCPq9xBV3oPWVjcM
         neBm4F1VTU5LYux9DYolTY2kFRcaf0LKOuMPwWyR+MnhNtLJYxXxtN6YmF5UeqcUws
         jQ+XzsdM8iPIKSrh1Xm1bE2V8ovu5tmSHxfnxjEUFh7VsCVEk5WmVwD498rNGmwv+M
         OnkbU/mgTzgPphsk2zn1dV4AJC9BSZ0WM0Z+Q7PBZxBvJU1YYNhy85K9GHr5JR55OJ
         SJS8Pi1k7uqptwZLtNLh+VWjJU4yCv1MvC0qcps7i5S/Sra0r2hjTAKW+EY/GFwliX
         lNTVhCX/KEZKA==
Received: by mail-ej1-f72.google.com with SMTP id m4-20020a170906160400b006be3f85906eso6394179ejd.23
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:21:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yyn2NqnfgQsqTNINvOf5kiaG/8cnl0ieMPcjnfWxCE8=;
        b=5rZ8WqdHleBzaFegmci3um45I5TV6T1B2ZlSgQfqVOV82RHFaL3XW7RNadFUOk62NQ
         y4+A9ugKJ+WSyiJmPp2I3y48egIK2VyeV38186kz0fYiGdlnuQQhhyxsovRuxnwQAAQk
         54/LFKjfcxsHJTfjGJ9doU3eqcyDIO+ELWFqQwyJusXFov+hjKX/WiR5Gty7p39PFh3X
         1nk5UCX9K1VW4vU+41v8BOHcd1F74lA1kFnhZIKmamm+piaVZNt79eETwzOcTa8iVjrt
         CqMKV3pnEURlFYzy4NCaNWJmE1CA6q4LyQXk8u/yBwrQVUYYsFmrVwuANQzdGUGHm3Yf
         OGsA==
X-Gm-Message-State: AOAM533AO5NK2C8fUHGfoEPJ5RcINow8q19j5YX+bSah3p60lzVJkKoJ
        Fu6YLwYUasz42zTnQcrJjwSD8LUZU10QjcARCXctsEDMDKSDGl7K6bChY//+nsHyANUhxllfQlL
        AGQVqz58jk2Gdju5LKT1G3cZUZ/7SodFc4lmU1MM=
X-Received: by 2002:a17:906:43c9:: with SMTP id j9mr542971ejn.652.1644873717906;
        Mon, 14 Feb 2022 13:21:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxHUEbKK+ige7iX5bnwzSKFJMTswdOEpqx7cMi1lNy54Z/tS1AK9z5IhoWWwB46l5Z1qT3wqA==
X-Received: by 2002:a17:906:43c9:: with SMTP id j9mr542949ejn.652.1644873717746;
        Mon, 14 Feb 2022 13:21:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:21:57 -0800 (PST)
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
Subject: [PATCH v2 00/15] pwm: dt-bindings: Include generic pwm schema
Date:   Mon, 14 Feb 2022 22:21:39 +0100
Message-Id: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
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

Hi,

Changes since v1:
1. Add tags.
2. Adjust subject (Uwe).

Best regards,
Krzysztof

Krzysztof Kozlowski (15):
  dt-bindings: pwm: allwinner,sun4i-a10: Include generic pwm schema
  dt-bindings: pwm: imx: Include generic pwm schema
  dt-bindings: pwm: intel,lgm: Include generic pwm schema
  dt-bindings: pwm: iqs620a: Include generic pwm schema
  dt-bindings: pwm: mxs: Include generic pwm schema
  dt-bindings: pwm: rockchip: Include generic pwm schema
  dt-bindings: pwm: sifive: Include generic pwm schema
  dt-bindings: pwm: renesas,pwm: Include generic pwm schema
  dt-bindings: pwm: toshiba,visconti: Include generic pwm schema
  dt-bindings: pwm: brcm,bcm7038: Do not require pwm-cells twice
  dt-bindings: pwm: intel,keembay: Do not require pwm-cells twice
  dt-bindings: pwm: samsung: Do not require pwm-cells twice
  dt-bindings: pwm: tiecap: Do not require pwm-cells twice
  dt-bindings: pwm: tiehrpwm: Do not require pwm-cells twice
  dt-bindings: pwm: renesas,tpu: Do not require pwm-cells twice

 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 53 ++++++-------
 .../bindings/pwm/brcm,bcm7038-pwm.yaml        |  1 -
 .../devicetree/bindings/pwm/imx-pwm.yaml      |  4 +-
 .../devicetree/bindings/pwm/imx-tpm-pwm.yaml  |  4 +-
 .../bindings/pwm/intel,keembay-pwm.yaml       |  1 -
 .../bindings/pwm/intel,lgm-pwm.yaml           |  3 +
 .../devicetree/bindings/pwm/iqs620a-pwm.yaml  |  4 +-
 .../devicetree/bindings/pwm/mxs-pwm.yaml      |  4 +-
 .../devicetree/bindings/pwm/pwm-rockchip.yaml | 74 ++++++++++---------
 .../devicetree/bindings/pwm/pwm-samsung.yaml  |  1 -
 .../devicetree/bindings/pwm/pwm-sifive.yaml   |  4 +-
 .../devicetree/bindings/pwm/pwm-tiecap.yaml   |  1 -
 .../devicetree/bindings/pwm/pwm-tiehrpwm.yaml |  1 -
 .../bindings/pwm/renesas,pwm-rcar.yaml        | 26 ++++---
 .../bindings/pwm/renesas,tpu-pwm.yaml         |  1 -
 .../bindings/pwm/toshiba,pwm-visconti.yaml    |  4 +-
 16 files changed, 101 insertions(+), 85 deletions(-)

-- 
2.32.0

