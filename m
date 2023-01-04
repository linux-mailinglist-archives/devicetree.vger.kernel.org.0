Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF7ED65D4E7
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 15:04:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233421AbjADOEz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 09:04:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239508AbjADOEm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 09:04:42 -0500
Received: from smtp-out-08.comm2000.it (smtp-out-08.comm2000.it [212.97.32.78])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CD7C1B1ED
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 06:04:37 -0800 (PST)
Received: from francesco-nb.toradex.int (31-10-206-125.static.upc.ch [31.10.206.125])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-08.comm2000.it (Postfix) with ESMTPSA id B154F4233B5;
        Wed,  4 Jan 2023 15:04:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1672841074;
        bh=rQbyRGIOjye6XpK3VIW9faCnu3RpMayfvgYRrYPUabw=;
        h=From:To:Cc:Subject:Date;
        b=u0BlObqy+vqP7z9a1KVtY+kUuYCsKBinxLvXBDKDAiwDOeny5d898e6PmfyB+ldNx
         tyS+pfm60c3682PGIq2qzaXrQAbC+akwJBp/UR1WSOd0wD1vmU3oLgPMoskm6hlE3z
         LUS+V8q2UWLO6JVHIwbSISOddi3GLf5KhJQG/ZsrUHkyP9xqmEFMW4NVNvyHJihm2u
         MZKClDWVgsgBFo9nEkwxVNSNItwcrDYDzOf0QUjqSC1Xc9KHJrzReAirMCQrvUpy2q
         ZZFOvu72L933TOqdLn2S3Q8rwWWxoW7xhh/bbzhb4jJfwAVKh56PB+mP1d092I1dGh
         ixmNBGxvj9aQw==
From:   Francesco Dolcini <francesco@dolcini.it>
To:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Cc:     Francesco Dolcini <francesco.dolcini@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Benjamin Marty <info@benjaminmarty.ch>, kchsu0@nuvoton.com,
        wtli@nuvoton.com
Subject: [PATCH v2 0/3] ASoC: nau8822: add speaker Bridge Tied Output
Date:   Wed,  4 Jan 2023 15:04:09 +0100
Message-Id: <20230104140412.35575-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add support for BTL (Bridge Tied Load) configuration to NAU8822 audio codec,
since this requires adding a new property to the binding convert it from
txt to yaml first.

v2:
 - added Krzysztof reviewed-by and acked-by
 - removed non-relevant information about SPI not being supported from binding document

Emanuele Ghidoli (3):
  ASoC: dt-bindings: nau8822: convert to the dtschema
  ASoC: dt-bindings: nau8822: add nuvoton,spk-btl property to dtschema
  ASoC: nau8822: add speaker Bridge Tied Output configuration

 .../devicetree/bindings/sound/nau8822.txt     | 16 -------
 .../bindings/sound/nuvoton,nau8822.yaml       | 46 +++++++++++++++++++
 sound/soc/codecs/nau8822.c                    | 10 ++++
 sound/soc/codecs/nau8822.h                    |  9 ++++
 4 files changed, 65 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/nau8822.txt
 create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml

-- 
2.25.1

