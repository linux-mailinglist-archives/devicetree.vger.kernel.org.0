Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B820355DEBF
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:29:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240496AbiF0Tl3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 15:41:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240469AbiF0TlZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 15:41:25 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8CE015A3A
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 12:41:23 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id q9so14485458wrd.8
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 12:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rPDKSpav5hSShjOawRd8sA//kdWQiIl6x3DL8tBafaU=;
        b=C1x747pHFCl5BIqO2tKVzQODSEqSKX0M+cQ0VD6TIiatD4/0B898wZwGc+vBUmCQ0Z
         ADkKctZpaFeqts/DgO6pXu3oW1ot2vW9NotfT4U4Xa+zwfZDDxaHFDiYVvm2R9CNqtBj
         E06Rcknh3CHYad9cflRuFOXZX1vmY5B3c3ybS+4vwbu/3Wp9I852RvQRqqNz4cuKOOgI
         n6ASQz3H09UYndOSN0Sl15ncyePaPZCwy8CrQeWv2hWUXslPkctHVLpfaWL3RtoOlIom
         6s/OUA/vQFDetPTA2Tu0u58R+o5XSwX+2TI4F7Y5afZgDMoZsAgvkVAFJy3S7tg8MlqF
         4qZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rPDKSpav5hSShjOawRd8sA//kdWQiIl6x3DL8tBafaU=;
        b=w2LTMTi2tRIYLfr7tGVng/IM2yQad0VXtimeYuBDbzohAT7oEy2khnfO5IoH2HSell
         xBeeeZCqxzIzvyhU27NFrQLUDesuyO1nGNBcORZMTu3aXJTeFi6jCDoSTVT99kD2PBia
         OmvEs6xu/N/xW3HLsTpKHDlOxp4nE/H/OkNJzQh2G8pGu+Ie1LPim+ZdqY3q+cQ2SB8N
         GHZsCmxx2zSmWx1E2qZQHi1zEWWiuOMxK8gbNcI4M5xjKVfmGUWHj6geMSxca27ogKqG
         IeFBalT/tTbSXx9bzYzhnFTHiOlBci+9mylAsSub+fVOwXwpa5XrxTuj4WMxyOx/kcvN
         BYgA==
X-Gm-Message-State: AJIora8fhfPnY55mOiqDyZMKa4seFMW/A6WPK4yCaS3r5xBZs/ilbaYV
        uO1qwq1f+7NAwa5SbaN27JiR/g==
X-Google-Smtp-Source: AGRyM1tVL2lpq2bKGJHZFM8okKWTC0C0B/ryfKeZtLnMa7gdCDbQ3Nw3Z3guL69dxyfpeL6LZkAb/A==
X-Received: by 2002:a5d:4592:0:b0:21b:8e50:7fb9 with SMTP id p18-20020a5d4592000000b0021b8e507fb9mr13593921wrq.428.1656358882170;
        Mon, 27 Jun 2022 12:41:22 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id e9-20020a5d4e89000000b0021a3a87fda9sm11428047wru.47.2022.06.27.12.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 12:41:21 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
        Vinod Koul <vkoul@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Palmer Dabbelt <palmer@rivosinc.com>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Niklas Cassel <niklas.cassel@wdc.com>,
        Dillon Min <dillon.minfei@gmail.com>,
        Heng Sia <jee.heng.sia@intel.com>,
        Jose Abreu <joabreu@synopsys.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-spi@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v2 04/16] spi: dt-bindings: dw-apb-ssi: update spi-{r,t}x-bus-width
Date:   Mon, 27 Jun 2022 20:39:52 +0100
Message-Id: <20220627194003.2395484-5-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220627194003.2395484-1-mail@conchuod.ie>
References: <20220627194003.2395484-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Most users of dw-apb-ssi use spi-{r,t}x-bus-width of 1, however the
Canaan k210 is wired up for a width of 4.
Quoting Serge:
The modern DW APB SSI controllers of v.4.* and newer also support the
enhanced SPI Modes too (Dual, Quad and Octal). Since the IP-core
version is auto-detected at run-time there is no way to create a
DT-schema correctly constraining the Rx/Tx SPI bus widths.
/endquote

As such, drop the restriction on only supporting a bus width of 1.

Link: https://lore.kernel.org/all/20220620205654.g7fyipwytbww5757@mobilestation/
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
Serge, I dropped your R-b when I swapped to the default
property since it changed the enum.
---
 Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
index e25d44c218f2..0a43d6e0ef91 100644
--- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
+++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
@@ -143,12 +143,6 @@ patternProperties:
         minimum: 0
         maximum: 3
 
-      spi-rx-bus-width:
-        const: 1
-
-      spi-tx-bus-width:
-        const: 1
-
 unevaluatedProperties: false
 
 required:
-- 
2.36.1

