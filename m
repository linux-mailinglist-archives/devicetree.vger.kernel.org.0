Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47DAE560968
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 20:44:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230323AbiF2Sot (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 14:44:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230410AbiF2Sor (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 14:44:47 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45DDB275D0
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:44:44 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id i25so18272800wrc.13
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lSAtLBVYvrx4+26h7+GvQLFIbOLj8yUyLWcfE4t8YDc=;
        b=Gg05/t+/FXPkRenwx1qHvhlOMODtFpKL/no0hINP8JMW14scbGTJqbUefdhtwratgU
         grEGM8eU4lWFIiPESGiueYpts7cjDlJRLBIzM5ZsXVuH9FzkMr9tHsBgVVqjWBN1GlvK
         8Q8loTffgUn8dEzgkBiOh2xMyV0VFHVAZAtsSavWDwGncJhky3H7ImOtJQlzgOOWAqUY
         iJQrWXeLhD8IqbgRQGGdxV35uefbG0o1zSbrLcVIYjgZlRqMq28pTN5szQsAw/tFRiJo
         YAy9bH1NwbpaHtrgHoUWaU2YAC7ZpC+O10b5BEj7lUVsyLa3x39mZw6dh7g0gC0fT41X
         T7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lSAtLBVYvrx4+26h7+GvQLFIbOLj8yUyLWcfE4t8YDc=;
        b=vp+kVoircTSgT2oAj+TiaoPOKZcr3VigYF7E4iFyIIUo7jISiVuC58le15okAQKyDc
         Ms5KpnbNx3uKPc5TwVB9jNWiYY0J22CUfuPORWnF7hpRTl1tw3DI5rS4a5uJyuLvsSDv
         V/LGVst6UfLWMQEiy9dq8XlimR/12bJzfg0KwlKlEZy/s/DI6AOUPwxwLl7SAub6FAl+
         A2W/yPnckB5pn0PXfHCKanNVCIOB9/SNErVIHHzbqbV7nhqYhh7s39qODVyPm/39EMwI
         /4gx20KAH9N4tv7xO4DnUwDiANkSjsPe4gZiM1NlcQy+h+LNV8CMb79bPCPlvihf/PH/
         N1Kg==
X-Gm-Message-State: AJIora8estNAcq2+c9VANa7QCiHwaEqU8OQBKQTISrdH6clAqMVgigPw
        76jlAUTct3d0WRd01f5q3uLEWA==
X-Google-Smtp-Source: AGRyM1sKo8OaJK8TbEgNGzQ3er/g31kuw/qeXLGUV3MKWqoytAx3LrG09RNZ7rN7G4m3of4rSEmYUA==
X-Received: by 2002:a5d:4e47:0:b0:21a:39fd:5bb5 with SMTP id r7-20020a5d4e47000000b0021a39fd5bb5mr4583796wrt.712.1656528282726;
        Wed, 29 Jun 2022 11:44:42 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id u23-20020a7bcb17000000b0039aef592ca0sm3834371wmj.35.2022.06.29.11.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:44:42 -0700 (PDT)
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
        Jose Abreu <joabreu@synopsys.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-spi@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v3 04/15] spi: dt-bindings: dw-apb-ssi: update spi-{r,t}x-bus-width
Date:   Wed, 29 Jun 2022 19:43:33 +0100
Message-Id: <20220629184343.3438856-5-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629184343.3438856-1-mail@conchuod.ie>
References: <20220629184343.3438856-1-mail@conchuod.ie>
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

