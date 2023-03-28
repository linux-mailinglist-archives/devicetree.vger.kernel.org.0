Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5F66CBC52
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 12:16:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230468AbjC1KPa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 06:15:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjC1KP3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 06:15:29 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 187E89F
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:15:22 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id g19so1968752lfr.9
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679998520;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=234Hi7RPwwGJcBwZrz6n+zvvJYe2QAil9tHn/ZofszU=;
        b=eActs3ao0gU+Y4i4jKrSlbPjUHxvkxacebVr41wTlJCloZvD8fTW80If1lmwD/a+IH
         baJIiDgIzH5G7eB1uBgaFZyN5Kw05e1hGGrMuFcXkLRhYdHej5FTZwPvriqwFcPbDxnj
         zg2PXRfusffhq1QGralqwzuXYjtR/KP4yZK5p7HL4wo+v7bgf4MGRdSoYySYMCt3Y/qo
         Bm8OtW6Pv3YG5P93oYBPBEPON1EC9sZbLMvXrCNADWXdVA3UXGME/UTzfqd2hNdLiWxB
         aS6P+2skdmaDM6hGOuhHMktD49ki4Y50fMu5J/4/o5wCJhMG/cKkZ9p5+2bQXQzx9wZN
         9yjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679998520;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=234Hi7RPwwGJcBwZrz6n+zvvJYe2QAil9tHn/ZofszU=;
        b=5cyeTZEYzP9lzB0LCefWJA8Pv1xhGID/s6PsvjB4utDrmFWZK5RgKCC2On9+DHdfVP
         8QzFB0fKghMj8E60NHWEcjCzlcwVsO3uZInu1GqRCS54BH/BynJirBI9Muw6TU04x+ih
         /C1iLRkb/cxw+U4czeRpV62RLRycAuDKSOOzDaZHle2W/xRlPc5MkxPV7DewdeYQ2TYz
         AgOAbSyAuQ0phsghUuAoorn7B85EA8bmM/WQxoAAAtqgqI8/6vXhpW83IMagbsvnFEHx
         8Z9KN2gqSJyZmLekSucnMgEFUgk+4jsa3C72OEsFJVMEpywHHc5i62fGQnArsngF4eUP
         cCNg==
X-Gm-Message-State: AAQBX9foRQGDGnT2E+HSPOLusDfSdLfRzdswpjIzm5wSgCb3jh4DY95a
        aCN6CT12B0+YTKPRmaxdKM570w==
X-Google-Smtp-Source: AKy350bBqxAHsxe1eFJxcFf6vv3BAg51K7HxcgRPi38gAEhuTO0PZ2NpGz/Y+Lu5tPxWOyOpxIET8A==
X-Received: by 2002:a19:7512:0:b0:4eb:c85:60eb with SMTP id y18-20020a197512000000b004eb0c8560ebmr2513274lfe.36.1679998520295;
        Tue, 28 Mar 2023 03:15:20 -0700 (PDT)
Received: from ta1.c.googlers.com.com (61.215.228.35.bc.googleusercontent.com. [35.228.215.61])
        by smtp.gmail.com with ESMTPSA id o25-20020ac24959000000b004e84d64ab51sm5061405lfi.58.2023.03.28.03.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 03:15:19 -0700 (PDT)
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
To:     nicolas.ferre@microchip.com, claudiu.beznea@microchip.com
Cc:     alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        tudor.ambarus@linaro.org
Subject: [PATCH v3 0/4] ARM: dts: at91: Set sst26vf064b SPI NOR flash at its maxumum frequency
Date:   Tue, 28 Mar 2023 10:15:13 +0000
Message-Id: <20230328101517.1595738-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes in v3: Update S-o-b tag to match author's email.
Changes in v2: update value of spi-cs-setup-ns as it was changed to u32
since the first proposal.
v1 at: https://lore.kernel.org/linux-mtd/20221117105249.115649-1-tudor.ambarus@microchip.com/

---
SPI NOR flashes have specific cs-setup time requirements without which
they can't work at frequencies close to their maximum supported frequency,
as they miss the first bits of the instruction command. Unrecognized
commands are ignored, thus the flash will be unresponsive. Introduce the
spi-cs-setup-ns property to allow spi devices to specify their cs setup
time.


Tudor Ambarus (4):
  ARM: dts: at91-sama5d27_wlsom1: Set sst26vf064b SPI NOR flash at its
    maximum frequency
  ARM: dts: at91-sama5d27_som1: Set sst26vf064b SPI NOR flash at its
    maximum frequency
  ARM: dts: at91: sama5d2_icp: Set sst26vf064b SPI NOR flash at its
    maximum frequency
  ARM: dts: at91: sam9x60ek: Set sst26vf064b SPI NOR flash at its
    maximum frequency

 arch/arm/boot/dts/at91-sam9x60ek.dts        | 3 ++-
 arch/arm/boot/dts/at91-sama5d27_som1.dtsi   | 3 ++-
 arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi | 3 ++-
 arch/arm/boot/dts/at91-sama5d2_icp.dts      | 3 ++-
 4 files changed, 8 insertions(+), 4 deletions(-)

-- 
2.40.0.348.gf938b09366-goog

