Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A85068148F
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 16:16:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237636AbjA3PQs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 10:16:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237175AbjA3PQs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 10:16:48 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FF5B3B3F1
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 07:16:27 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id n13so1233060wmr.4
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 07:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ad2CDTfEIRGVD+WwAFi71dqyquLLzi4LvwusVq+ExGM=;
        b=LUrIVvQUH5dW7iRU4JfzsvAiY507XIvIcT+m48LD8UjIwKt5mMJulbdorFPIbc6oh/
         hZ4AVQs30AIi9Fzs2OiOm3XbubB5SU5tG7jRFDa38M4yLHOKBs0XMgEz5AgkFGMTbA7V
         I8qLV11ETwq4QxbdJ86jUUJOi1jPXmHAeTNarmRxAIxkwcaeeFLcjqkgWmNDJpfDO1td
         Krupi5vZziC+B70mx8dNVqMY5GeggZk5U2MLZoF1XmxL3aZVX7cRWTQDhDbar6KqwiY0
         0ly2uHvXuqnuyDccydoomvRs78m4y71X5yPkZ3LJAutcruwDqwPntsR+lg6WAayp54MG
         zDAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ad2CDTfEIRGVD+WwAFi71dqyquLLzi4LvwusVq+ExGM=;
        b=OToTlmlEl5sKsLu89EBi2uE90eqGoPPRZtMkPzKV+5InlvfJW7ClL1R+QBRUzx84Ck
         xHQWfpuQMDTto2AnUlQPRqk/QGfvMOyHOmL4rYs8tngRiHAtA/CP0LBSDgXC0jOyI1PX
         zO8vKE7iMXR+OdepN5bemI+WvA2IspC3pUnuw16wnB+dEYHKbypFKq9/f1ygAC6fup5g
         Utc3noR6Aci0P9cvBzAfx6sFGnmkYOq9+r+fZTaHEXA2gpiWTNY72J8ftYMgREJWaKfU
         4cQVMDqta5ovaN4revTT2rg3dvt22jjBspIMIDfHjJeMX4lcILxX3LiHD0OWGrRnsXuU
         h3bg==
X-Gm-Message-State: AO0yUKW3NgcOmKqz4ViRPYvzeFJYSitoE7O22FkpzAQ39ONXS4f/DBXb
        gzkivLNZQe7GEGwPZiuzkLCTOQ==
X-Google-Smtp-Source: AK7set9wi5BcJOb1ssAxFLB99dAbfO7xQCQqxJLpjXxwihsH6nelcA/v+ljTYIQ6Y9cOuwiU8N2N7Q==
X-Received: by 2002:a05:600c:d9:b0:3dc:4fd7:31e9 with SMTP id u25-20020a05600c00d900b003dc4fd731e9mr7484043wmm.7.1675091784504;
        Mon, 30 Jan 2023 07:16:24 -0800 (PST)
Received: from jackdaw.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id u12-20020a05600c19cc00b003db0ee277b2sm18735802wmq.5.2023.01.30.07.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 07:16:23 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     netdev@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Da Xue <da@lessconfused.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 net-next 0/2] net: mdio: add amlogic gxl mdio mux support
Date:   Mon, 30 Jan 2023 16:16:14 +0100
Message-Id: <20230130151616.375168-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the MDIO multiplexer found in the Amlogic GXL SoC family.
This multiplexer allows to choose between the external (SoC pins) MDIO bus,
or the internal one leading to the integrated 10/100M PHY.

This multiplexer has been handled with the mdio-mux-mmioreg generic driver
so far. When it was added, it was thought the logic was handled by a
single register.

It turns out more than a single register need to be properly set.
As long as the device is using the Amlogic vendor bootloader, or upstream
u-boot with net support, it is working fine since the kernel is inheriting
the bootloader settings. Without net support in the bootloader, this glue
comes unset in the kernel and only the external path may operate properly.

With this driver (and the associated change in
arch/arm64/boot/dts/amlogic/meson-gxl.dtsi), the kernel no longer relies
on the bootloader to set things up, fixing the problem.

Changes since v1:
 * Fix missed checkpatch warnings
 * Change setting function prototype
 * add comment regarding the PHY id

Jerome Brunet (2):
  dt-bindings: net: add amlogic gxl mdio multiplexer
  net: mdio: add amlogic gxl mdio mux support

 .../bindings/net/amlogic,gxl-mdio-mux.yaml    |  64 +++++++
 drivers/net/mdio/Kconfig                      |  11 ++
 drivers/net/mdio/Makefile                     |   1 +
 drivers/net/mdio/mdio-mux-meson-gxl.c         | 164 ++++++++++++++++++
 4 files changed, 240 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/amlogic,gxl-mdio-mux.yaml
 create mode 100644 drivers/net/mdio/mdio-mux-meson-gxl.c

-- 
2.39.0

