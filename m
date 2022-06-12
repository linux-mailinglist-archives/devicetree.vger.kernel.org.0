Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB00C547CC5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 00:33:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237029AbiFLWdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 18:33:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236182AbiFLWdH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 18:33:07 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82477175B1
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 15:33:04 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id s12so7860160ejx.3
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 15:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PxmsONNK0747oJIcc0WYgerKFwFBhaqFBSVZH2Qv3uU=;
        b=2VP7ecBFlZ9U9+ev3Fa4rLGpcY1OtVAM30DcnBKT2TGUxi7nej89Ro0NfAgS93J0Ug
         jZuulBJjV4L/eimWcs0uM7efF3Sy3yQqwxfj/b6Y86qDnybFipuWE4C2SlYzQOZ6vgiB
         YTUqTkp7CVAjcIUwQdWbYVqPO5VhWk3SzBE/xYIkNZdejgqLeDIANFIxHXltexV2crbS
         lfG3ZKmgwje7Py7Yl2g8CkyjSMrFVtnNQqspUJTQn4b5uqscRjZYUznL4HdKInmTeuMd
         aMuld/7Uo6bWZlciIRGmx5K4K7Eaxz2LQJn07j0JCp2QmmRO3ZfAOHOX8ajkyOjEUmIB
         A9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PxmsONNK0747oJIcc0WYgerKFwFBhaqFBSVZH2Qv3uU=;
        b=XJh4RhDl7WpZmAM8e4daMgfAtbk19QjVTIFmJdsZTIhSTg/dKjIWbBWK7UbPYZuuet
         DjbckmX5gtMuYHRNmzUT66/DQ3DnnM029bI1v99UZ4GFqlsrPWYagBPXeXmQ6lsuWrj+
         Ksy2psW6UJogglNki8WWWB3/rsruwemXKafzkVMVnpk+AzS3n5rquY11GIRFTM1egXjC
         DqczyuyxIeijNxxofXGM360O5IVhhijNuctIjeZosbKFudKrkumgZHwpBzgVl6ClMr+M
         SCT53BnoXhAfL27PeykBP06h4gHgJZxluDIPQs0f+c9lM9EaHLsSE9soDPU3CCWvw5V1
         7n1Q==
X-Gm-Message-State: AOAM53145A+rasLQ6El/Drm3FZp2l5+DHoLif7x515mknUQnXEm6/jt8
        JMu4r27Hc/QAxR+/agt3/RCPGvb3hSneRuyQDU8=
X-Google-Smtp-Source: ABdhPJxFjSKJNSq4b3G/JClmOrxqSkJ+5meJ/f/2lUgo9VmIEzvwFszc8neocCxrslmOpbgLMo/m8A==
X-Received: by 2002:a17:906:b15:b0:715:bf2e:df92 with SMTP id u21-20020a1709060b1500b00715bf2edf92mr3768278ejg.576.1655073183114;
        Sun, 12 Jun 2022 15:33:03 -0700 (PDT)
Received: from bismarck.berto.se (p4fca22cf.dip0.t-ipconnect.de. [79.202.34.207])
        by smtp.googlemail.com with ESMTPSA id e3-20020a056402104300b0042b5cf75d6esm3766559edu.97.2022.06.12.15.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 15:33:02 -0700 (PDT)
From:   =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        Wei Xu <xuwei5@hisilicon.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH 0/6] arm64: dts: Add missing space around properties
Date:   Mon, 13 Jun 2022 00:31:55 +0200
Message-Id: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

While debugging an issue on a Renesas board I found a typo with missing 
spaces around properties that had been copied around [1]. This extends 
this fix for all arm64 files.

1. https://lore.kernel.org/linux-renesas-soc/20220608175728.1012550-1-niklas.soderlund+renesas@ragnatech.se/

Niklas Söderlund (6):
  arm64: dts: broadcom: Add missing space around status property
  arm64: dts: rockchip: Add missing space around regulator-name property
  arm64: dts: freescale: Add missing space around properties
  arm64: dts: hisilicon: Add missing space around properties
  arm64: dts: qcom: Add missing space around properties
  arm64: dts: ti: Add missing space around properties

 arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi       | 2 +-
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi            | 6 +++---
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi           | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi                 | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mn.dtsi                 | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mp.dtsi                 | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mq.dtsi                 | 2 +-
 .../arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtsi | 6 +++---
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi                | 6 +++---
 arch/arm64/boot/dts/hisilicon/hip06.dtsi                  | 6 +++---
 arch/arm64/boot/dts/hisilicon/hip07.dtsi                  | 6 +++---
 arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi     | 2 +-
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts    | 2 +-
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi                  | 4 ++--
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi                  | 4 ++--
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi        | 2 +-
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi                | 4 ++--
 arch/arm64/boot/dts/ti/k3-am654-base-board.dts            | 2 +-
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi           | 4 ++--
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi           | 4 ++--
 arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi          | 4 ++--
 22 files changed, 47 insertions(+), 47 deletions(-)

-- 
2.36.1

