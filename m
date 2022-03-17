Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 519DE4DC51C
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 12:56:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233179AbiCQL5V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 07:57:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233181AbiCQL5S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 07:57:18 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6B0F1E6E83
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:56:01 -0700 (PDT)
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DC6293F4C0
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 11:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647518158;
        bh=FcFbQHcGNFkpGdda+W/UDbbdrtmD52pzfetu6Zdta/c=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=YSBANethy5bTOoX7MUgNJga7ferOKQ0LZqfLrin7/ME6gzfoJvs2TEXCOe/twPkLs
         5uJ6fqU/bityCy4eDzv3K9M/K7c4DnIbxjdYDqj/3Afcv3GdnJzdMxW8j39bGF/TDI
         vdyeVmomJMKVmlxWvNVesf7fNZ0Xfw/cwSqDE4m01KYiWwO0bx+lwlkp0btWGaXoUk
         dHNnQ0XdRgQxF9kTTH51ym1Bu9PVQ2inD6PZbcF9bXEpZftqrySQUSM2IrbgwGbYOP
         zkiUlzcD34hJdGzroaEbdg6emHAkGrX7nExaTjPPsX9K5zjdJlsKKHlA2ROGDjwPpM
         6hTORohwos/zw==
Received: by mail-lf1-f70.google.com with SMTP id w13-20020ac25d4d000000b004488cf80eb1so1731798lfd.23
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:55:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FcFbQHcGNFkpGdda+W/UDbbdrtmD52pzfetu6Zdta/c=;
        b=eJNhcN9rkjHr1YIoW72GTWXihYzRiNPNCZDKdH+VXtHEozob6wXbVwveGt+sYacYUM
         OlbysqDtrbYi3oO64fd4VErc4+ZVNdwc9wAj46sHrIJyWfFH7sSTe3Oj/88NOVHCZd6/
         Zbp7nwasqOmn6EUm53US6UJD0+hVwT+Amv5NIUwnOnYGAtrUEpjtRvDRPOVZWHzVaV3e
         KnV0/9feyRUdZUp0AuRfyIkM2DrvOfrWuuYLTN9djLLSUnpMzOaLmeVcLh2sYmkTrxUM
         wRku2k3wlZsppH/7Jwh93nOMOVik2TG/g/oD+bDKJFoce1TtjFmtQciKDkNF1QUH2C8w
         wIaA==
X-Gm-Message-State: AOAM533hexNaDVvpvvmiqAxPTqId2WyzpRU7Wr0b5qPuioSDClQXjPn+
        H1L/cqr5cICNtJrUB6L0H3Pe4C0MzcOJgUEA0uDXjl6Vgwl7eT1AnqyOLqPtePn0nzWWS2qgmef
        3pUGbVvMMkMpaE0NYG+LtW+gA57NMYNWO3XoZTug=
X-Received: by 2002:adf:ebc3:0:b0:203:da35:a9c1 with SMTP id v3-20020adfebc3000000b00203da35a9c1mr3846090wrn.610.1647518147101;
        Thu, 17 Mar 2022 04:55:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwo+9tYsHqgUbTsMitSzq8mwjoiBGte5RGn6KnSHAj4SsmoojLzUqarbdnwawIw9oRk9oUklg==
X-Received: by 2002:adf:ebc3:0:b0:203:da35:a9c1 with SMTP id v3-20020adfebc3000000b00203da35a9c1mr3846069wrn.610.1647518146894;
        Thu, 17 Mar 2022 04:55:46 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j34-20020a05600c1c2200b0038995cb915fsm11462862wms.9.2022.03.17.04.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 04:55:46 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Michael Walle <michael@walle.cc>,
        Mark-PK Tsai <mark-pk.tsai@mediatek.com>,
        Daniel Palmer <daniel@thingy.jp>,
        =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Cristian Ciocaltea <cristian.ciocaltea@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Paul Cercueil <paul@crapouillou.net>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Paul Burton <paulburton@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Birger Koblitz <mail@birger-koblitz.de>,
        Bert Vermeulen <bert@biot.com>,
        John Crispin <john@phrozen.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Suman Anna <s-anna@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, openbmc@lists.ozlabs.org,
        linux-riscv@lists.infradead.org, linux-oxnas@groups.io
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 00/18] dt-bindings: irqchip: include generic schema
Date:   Thu, 17 Mar 2022 12:55:24 +0100
Message-Id: <20220317115542.450032-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The DTS patches can be picked up independently.

Best regards,
Krzysztof

Krzysztof Kozlowski (18):
  ARM: dts: nspire: use lower case hex addresses in node unit addresses
  ARM: dts: ox820: align interrupt controller node name with dtschema
  ARM: dts: socfpga: align interrupt controller node name with dtschema
  dt-bindings: irqchip: actions,owl-sirq: include generic schema
  dt-bindings: irqchip: fsl: include generic schema
  dt-bindings: irqchip: ingenic: include generic schema
  dt-bindings: irqchip: intel,ixp4xx: include generic schema
  dt-bindings: irqchip: kontron,sl28cpld: include generic schema
  dt-bindings: irqchip: loongson: include generic schema
  dt-bindings: irqchip: microchip,eic: include generic schema
  dt-bindings: irqchip: mrvl,intc: include generic schema
  dt-bindings: irqchip: mstar,mst-intc: include generic schema
  dt-bindings: irqchip: mti,gic: include generic schema
  dt-bindings: irqchip: nuvoton,wpcm450-aic: include generic schema
  dt-bindings: irqchip: realtek,rtl-intc: include generic schema
  dt-bindings: irqchip: renesas: include generic schema
  dt-bindings: irqchip: sifive: include generic schema
  dt-bindings: irqchip: ti: include generic schema

 .../actions,owl-sirq.yaml                     |  5 +-
 .../interrupt-controller/fsl,intmux.yaml      |  5 +-
 .../interrupt-controller/fsl,irqsteer.yaml    |  5 +-
 .../interrupt-controller/ingenic,intc.yaml    |  5 +-
 .../intel,ixp4xx-interrupt.yaml               |  5 +-
 .../kontron,sl28cpld-intc.yaml                |  5 +-
 .../interrupt-controller/loongson,htvec.yaml  |  5 +-
 .../loongson,pch-msi.yaml                     |  5 +-
 .../loongson,pch-pic.yaml                     |  5 +-
 .../interrupt-controller/microchip,eic.yaml   |  5 +-
 .../interrupt-controller/mrvl,intc.yaml       |  3 +-
 .../interrupt-controller/mstar,mst-intc.yaml  |  5 +-
 .../interrupt-controller/mti,gic.yaml         |  5 +-
 .../nuvoton,wpcm450-aic.yaml                  |  7 ++-
 .../realtek,rtl-intc.yaml                     |  5 +-
 .../renesas,intc-irqpin.yaml                  | 28 +++++----
 .../interrupt-controller/renesas,irqc.yaml    |  5 +-
 .../sifive,plic-1.0.0.yaml                    |  5 +-
 .../interrupt-controller/ti,pruss-intc.yaml   |  5 +-
 .../interrupt-controller/ti,sci-inta.yaml     |  1 +
 .../interrupt-controller/ti,sci-intr.yaml     |  3 +-
 arch/arm/boot/dts/nspire-classic.dtsi         | 10 ++--
 arch/arm/boot/dts/nspire-cx.dts               |  4 +-
 arch/arm/boot/dts/nspire.dtsi                 | 60 +++++++++----------
 arch/arm/boot/dts/ox820.dtsi                  |  2 +-
 arch/arm/boot/dts/socfpga.dtsi                |  2 +-
 arch/arm/boot/dts/socfpga_arria10.dtsi        |  2 +-
 27 files changed, 129 insertions(+), 73 deletions(-)

-- 
2.32.0

