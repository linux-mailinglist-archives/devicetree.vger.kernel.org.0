Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 758AC58D051
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 00:51:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237145AbiHHWv1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 18:51:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233125AbiHHWvY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 18:51:24 -0400
X-Greylist: delayed 502 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 08 Aug 2022 15:51:22 PDT
Received: from hutie.ust.cz (unknown [IPv6:2a03:3b40:fe:f0::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3A77B1F9
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 15:51:22 -0700 (PDT)
From:   =?UTF-8?q?Martin=20Povi=C5=A1er?= <povik+lin@cutebit.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cutebit.org; s=mail;
        t=1659998575; bh=vjy29MfdWk4pjl+jCL2RUCMpSKsefiHnDonIy4ZlDc4=;
        h=From:To:Cc:Subject:Date;
        b=RO6aXwxvIpL7I8JWWGKeuh6Uwmh0daPxXAgOQYy+dXsUyTL7Q5k/X5Tl6CxD64QiM
         ft/aRd9SeyW7X51J0DvvNljvX8YmA6/nQgq3IrmpNWubDYGiV3PLNQk/KbUsiUVPsH
         z+p4J67ohnjRgtbQMY9PQyO+sEfcoWU/BzTsnC2I=
To:     =?UTF-8?q?Martin=20Povi=C5=A1er?= <povik+lin@cutebit.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     asahi@lists.linux.dev, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] ASoC platform driver for Apple MCA
Date:   Tue,  9 Aug 2022 00:41:50 +0200
Message-Id: <20220808224153.3634-1-povik+lin@cutebit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_FAIL,SPF_HELO_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

for review I am posting another version of the ASoC platform driver to be
used on Apple M1/M2 platforms (some previous version was attached to the
macaudio RFC v2 [0]).

Martin

Changes since [0]:
 - addition of locking (extra commit)
 - transition to set_bclk_ratio (instead of getting the bclk ratio from set_sysclk)
 - using shared reset control and documenting the reset in binding
 - formatting, comments, and a minor fix to hw driving

[0] https://lore.kernel.org/asahi/20220606191910.16580-1-povik+lin@cutebit.org/

Martin Povišer (3):
  dt-bindings: sound: Add Apple MCA I2S transceiver
  ASoC: apple: mca: Start new platform driver
  ASoC: apple: mca: Add locks on foreign cluster access

 .../devicetree/bindings/sound/apple,mca.yaml  |  109 ++
 MAINTAINERS                                   |    8 +
 sound/soc/Kconfig                             |    1 +
 sound/soc/Makefile                            |    1 +
 sound/soc/apple/Kconfig                       |    9 +
 sound/soc/apple/Makefile                      |    3 +
 sound/soc/apple/mca.c                         | 1173 +++++++++++++++++
 7 files changed, 1304 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/apple,mca.yaml
 create mode 100644 sound/soc/apple/Kconfig
 create mode 100644 sound/soc/apple/Makefile
 create mode 100644 sound/soc/apple/mca.c

-- 
2.33.0

