Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58F12616332
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 13:59:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbiKBM7q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 08:59:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230388AbiKBM7p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 08:59:45 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D0642871C
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 05:59:44 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id 128so16199302pga.1
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 05:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=compal-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y7JeNjduJ11iTjItlrELM3uT2g5gNbw14nHXxfp2BQo=;
        b=KPv16VgSY+zS/r0qBRp9hB7SGa38CEdYWE8qXB+FuB+/CGBU/BGQakBKmqCwFgRkTx
         3d3eGwXk7jed+3ksnRqcUhjjLqTSdLQSwduXMA/1y45BGUR2vHTtJj4Xe8BbKkz51UK9
         ntKVKdYdde655Jj8YsfI38h/1qxED8fTfgRMzxU9J6+dgD9Ev+j46DDfhUgPPzbB/WMJ
         WWx0nDilpyH6UQghabPcUKFVkyn0EmS/kybPV8rLJSoHWFrgabZTaP1GmN3pXG+mxH34
         bwbViDK28GpqXvpo1e08gjfg6nkMVh5eBK6LjaW4IwMH6GWJvwXPS2/hNM3tisMOmngI
         Oyfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y7JeNjduJ11iTjItlrELM3uT2g5gNbw14nHXxfp2BQo=;
        b=MaZ8iC9hyvrA1aGP3zvxeG3PiEI7J5OUURvFT0Tfo3TXY3mdIfJgn8DQ7fipu8YnKB
         /V9NaxeSxqNnto5Cad10jk4Hqpv0kX0ErXi7M3MQKM8Juhj+IXDOctNnu9ylchpsHGpU
         omkMnctc6k4U3AAHs6oO/0QkNj+tPgI6YUMA9p5/OUbVf+ckiHFlv2JWFTXsEZ9SRfuh
         zXttTH9vPOAZVteCm7QEZjPV0HzNJkrNcABgcWLvA7LrOfG0lEls3CCpL8KLxRRldDTZ
         Kvyb92Rqg++PTRbLqU/BSdaj6UsFdDCiJBEGfRJ+ZIcyuqdWVnYLXCoO5y4ekTP5sVvQ
         dYsQ==
X-Gm-Message-State: ACrzQf3KJro86kL+p6u0cOFmdTplSJ9+fcCZ/lRsl/jrmHcpf7Srd+I+
        aCl59KukrO+mHts7aQo2pPrCGg==
X-Google-Smtp-Source: AMsMyM45Yjmw8JpdtXQkZ9vOIRK40sRXZtsKoP2XWwt+qHD2TbV0WaKrxJVHL1PtY7KzniIjkj5zsA==
X-Received: by 2002:a63:93:0:b0:470:9d3:7d48 with SMTP id 141-20020a630093000000b0047009d37d48mr2183665pga.425.1667393983888;
        Wed, 02 Nov 2022 05:59:43 -0700 (PDT)
Received: from localhost.localdomain (118-167-210-180.dynamic-ip.hinet.net. [118.167.210.180])
        by smtp.gmail.com with ESMTPSA id k14-20020a170902d58e00b0017f59ebafe7sm8259345plh.212.2022.11.02.05.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 05:59:43 -0700 (PDT)
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
To:     linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        "chunxu . li" <chunxu.li@mediatek.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Jiaxin Yu <jiaxin.yu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Ajye Huang <ajye_huang@compal.corp-partner.google.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: [PATCH v6 0/2] Modify documentation and machine driver for mt8186_rt1019_rt5682s sound card
Date:   Wed,  2 Nov 2022 20:59:34 +0800
Message-Id: <20221102125936.2176748-1-ajye_huang@compal.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v6:
- dmic codec driver: 
  - Modify "FrontMic" to "Front Mic" and "RearMic" to "Rear Mic"
    to consisit with commit 3cfbf07c6d27 mentioned in description.

v5:
- Documentation: 
  - Add #include <dt-bindings/gpio/gpio.h> in order to use
    GPIO_ACTIVE_HIGH.
  - Remove the change-id in message.

v4:
- Documentation: 
  - Fix the FATAL ERROR: Unable to parse input tree.

v3:
- Documentation: 
  - Add an explain example in description.
  - Add the pinctrl-name and pinctrl id in its example.

v2:
- dmic codec driver: 
  - Remove the unnecessary use of_property_read_bool()

v1:
- Documentation: Add dmic-gpios optional prop for two DMICs case.
- dmic codec driver: 
  - "dmic-gpios" property is used for amixer control to switch
     the dmic signal source between the Front and Rear Dmic.

Thanks for the review!

Ajye Huang (2):
  ASoC: mediatek: dt-bindings: modify machine bindings for two MICs case
  ASoC: mediatek: mt8186-rt5682: Modify machine driver for two DMICs
    case

 .../sound/mt8186-mt6366-rt1019-rt5682s.yaml   |  14 ++-
 .../mt8186/mt8186-mt6366-rt1019-rt5682s.c     | 102 +++++++++++++++++-
 2 files changed, 114 insertions(+), 2 deletions(-)

-- 
2.25.1

