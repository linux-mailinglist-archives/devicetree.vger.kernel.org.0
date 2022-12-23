Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E043C65530B
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 18:05:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231361AbiLWREr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 12:04:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbiLWREq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 12:04:46 -0500
Received: from smtp-out-12.comm2000.it (smtp-out-12.comm2000.it [212.97.32.82])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BBB4F036
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 09:04:43 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-12.comm2000.it (Postfix) with ESMTPSA id E4759BA283E;
        Fri, 23 Dec 2022 18:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1671815080;
        bh=NM3F3sd7jOCU0rHoNZ85XBi3gw6ZFcp1SuzgUdM5WCQ=;
        h=From:To:Cc:Subject:Date;
        b=Eaa6mKCB12eMeXXpn5G/VYmqb/KdjgWdzvh7BdZ5wX/8tGgbRLb7+o1dJsSWqgKRl
         vXlP/Jirn9Lbwn1fmv9eRkOBMGJ6CdwoMTgEirluZZ+uFhK9K0OuvRTUtTgD160GOb
         dtxdHBIEdBS0VAxdCml8cGjmqlyluGdMU2e5JOeGFuSMZd8iHmXe+IVkRbvhojMtit
         65muFdbUH+d3n+88j6bYLHh/dMcF9mDEOrM+AFu4OjVJJjKFkk65epKKAYIzowRRdy
         ZhpRO0EhFub1xK8tKQSj1OjTcIsiCxle4tv4pJzCxKIPFCig1pH9C6in8FaR7s6suv
         OqJ7rCEaytE0Q==
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
Subject: [PATCH v1 0/3] ASoC: nau8822: add speaker Bridge Tied Output
Date:   Fri, 23 Dec 2022 18:04:01 +0100
Message-Id: <20221223170404.210603-1-francesco@dolcini.it>
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

Emanuele Ghidoli (3):
  ASoC: dt-bindings: nau8822: convert to the dtschema
  ASoC: dt-bindings: nau8822: add nuvoton,spk-btl property to dtschema
  ASoC: nau8822: add speaker Bridge Tied Output configuration

 .../devicetree/bindings/sound/nau8822.txt     | 16 -------
 .../bindings/sound/nuvoton,nau8822.yaml       | 46 +++++++++++++++++++
 sound/soc/codecs/nau8822.c                    |  9 ++++
 sound/soc/codecs/nau8822.h                    |  9 ++++
 4 files changed, 64 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/nau8822.txt
 create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml

-- 
2.25.1

