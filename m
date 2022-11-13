Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A39362716A
	for <lists+devicetree@lfdr.de>; Sun, 13 Nov 2022 19:07:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235273AbiKMSHU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Nov 2022 13:07:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234149AbiKMSHT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Nov 2022 13:07:19 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 369D7DFF6
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 10:07:18 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id bj12so23288087ejb.13
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 10:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hbv7YYKlaqSppuU1zpOZXnIyvEOv2ULOF9JVyKn6+Xw=;
        b=fxvPUTLqsIm1+J2Ts62ndnV7ICW6YwIkVpo8McvZKG7yUMkZckY7GINnpYInrjwS51
         Hboxd+hcBu1QJ24jaq7tzbm3XIIuHOwXDzh+JgVmpC4AoGL1GAeQcBF1tuYUI2+Fec7K
         9tQV4KXFHv1yQQIrF6yOG0jFJWYg9JuG5pZFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hbv7YYKlaqSppuU1zpOZXnIyvEOv2ULOF9JVyKn6+Xw=;
        b=WAe8akWfPVM4c5fI+8KMZUdfwlLw/IAUz4sFuhG919dl+Yjy00Q43GLfQoXn1lO4xN
         Lks/5vNpnLWNBmUPfyAtg11XIxz/5Wp5fxYJROSvpp9VhUy3QjTDGTnR5XLlxYqzjRVO
         rXpvg8oo+FpdPaV9D4MywMJdFlQIrWeNLhJv42uLQj9k9Wbj7XtgB2cy0MRdSewh03BV
         aFmYjSczFyT/Di5KC9BfYI4C9t4TvzKe1tFa4tXKjeLgbToHcGUeb/YzeY0r+2ZFHa/H
         6PxsF9HW2fsfJJSsZEJGvbbzlNdHwkgae7XaAVZVjLjPyQgtGkJvGU5qAmEP/TXI2cJs
         +SEQ==
X-Gm-Message-State: ANoB5pm3GHD5n2rB1BdVzYBCQ8+JPPiYmGPFZmNMhXQCKCxpUidITrub
        q7S8sYoMAHd4P7g5q3F5dwh9mw==
X-Google-Smtp-Source: AA0mqf7lu8C0kyXaO7BpjF202Z9EWjiXLW+WtZKt4PDhB3t+Rantekcub5Fy+PNuyYGHpOwi/1V5NA==
X-Received: by 2002:a17:907:1749:b0:78d:4f05:6ba7 with SMTP id lf9-20020a170907174900b0078d4f056ba7mr8110993ejc.590.1668362836684;
        Sun, 13 Nov 2022 10:07:16 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-40-103-33.business.telecomitalia.it. [79.40.103.33])
        by smtp.gmail.com with ESMTPSA id n11-20020a170906118b00b007a8de84ce36sm3171058eja.206.2022.11.13.10.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 10:07:16 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     linux-amarula@amarulasolutions.com, michael@amarulasolutions.com,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Anson Huang <Anson.Huang@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Subject: [PATCH 0/5] clk: imx8mn: miscellaneous cleanups and bug fixes
Date:   Sun, 13 Nov 2022 19:07:05 +0100
Message-Id: <20221113180710.1625410-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
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

This series has been tested on the BSH SystemMaster (SMM) S2 board.


Dario Binacchi (5):
  clk: imx8mn: rename vpu_pll to m7_alt_pll
  clk: imx: replace osc_hdmi with dummy
  clk: imx: rename video_pll1 to video_pll
  clk: imx8mn: fix imx8mn_sai2_sels clocks list
  clk: imx8mn: fix imx8mn_enet_phy_sels clocks list

 drivers/clk/imx/clk-imx8mn.c             | 116 +++++++++++------------
 include/dt-bindings/clock/imx8mn-clock.h |  16 ++--
 2 files changed, 66 insertions(+), 66 deletions(-)

-- 
2.32.0

