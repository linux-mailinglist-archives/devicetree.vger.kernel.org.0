Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99DDF4C8BD6
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 13:42:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234802AbiCAMmv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 07:42:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234605AbiCAMmu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 07:42:50 -0500
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65FB52983B
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 04:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1646138525;
    s=strato-dkim-0002; d=gerhold.net;
    h=Message-Id:Date:Subject:Cc:To:From:Cc:Date:From:Subject:Sender;
    bh=6ESSSYUXH0g5xxYHZ1NDK6bk0HEPMFivAANN8KZKLTE=;
    b=AYIBRWCl7An1D4P1vV0qv8goHz4YZK9LitlDcycS2x+a6c8HXfypiARhNyC0LzMPK+
    6keDMByZv94HXpbM4OaRGzqVRoLyBSLHlHtymEuQ9G947Qp3jjaGUIyuRq0CUp0zw9xR
    +tdLPO/XyI7Ucne/VErxiG2yBVw//6Dmej5ys3fPBbKcU1+nnCLlXDyCfYCrl9zyxDFx
    nTVQ6o8UoeyFRWBYvJf0SQ5ryZysy1Rn1pF/++MUkmDoBRB/vfzRCbqxEVgNBVPhB4IN
    cOIurxHZ7zO4SszEJzcbyY0w+vqwSn+ld9j77cJC2h3Vv9yoMASJeFnZ/zyLe05e33d7
    ToOA==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQ7UOGqRde+a0fiL2ZP6Q"
X-RZG-CLASS-ID: mo00
Received: from droid..
    by smtp.strato.de (RZmta 47.40.1 AUTH)
    with ESMTPSA id kdc58dy21Cg3a4m
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Tue, 1 Mar 2022 13:42:03 +0100 (CET)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH 0/2] ASoC: codecs: Add Awinic AW8738 audio amplifier driver
Date:   Tue,  1 Mar 2022 13:37:40 +0100
Message-Id: <20220301123742.72146-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds a simple driver and DT schema for the Awinic AW8738 
audio amplifier. It's fairly simple - the main difference to 
simple-amplifier is that there is a "one-wire pulse control" that 
allows configuring the amplifier to one of a few pre-defined modes.

Jonathan Albrieux (1):
  ASoC: codecs: Add Awinic AW8738 audio amplifier driver

Stephan Gerhold (1):
  ASoC: dt-bindings: Add schema for "awinic,aw8738"

 .../bindings/sound/awinic,aw8738.yaml         |  48 ++++++++
 sound/soc/codecs/Kconfig                      |  10 ++
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/aw8738.c                     | 104 ++++++++++++++++++
 4 files changed, 164 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/awinic,aw8738.yaml
 create mode 100644 sound/soc/codecs/aw8738.c

-- 
2.35.1

