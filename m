Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 276AC59123E
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 16:32:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229664AbiHLOcx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 10:32:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbiHLOcw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 10:32:52 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 589E39A996
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 07:32:52 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id cb12-20020a056830618c00b00616b871cef3so673955otb.5
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 07:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=hTos8OHgwFshY7dxk6YkVaVl45UAbrAfHyN2eZ+ZjUc=;
        b=DFtvGARmm+GsyUAA3dGxfVZOL3HaJlJjuzo5fkGeRjK1IBhyqZxNK5MsHPZE5TnCeP
         5pgK0WZF1wEJkfwf5fn1OU4cw+/d/vzFq69g3cJyiD2j1G3TnSoBFzAhQ27pMSxIuhnH
         h0PWCibH5HVdSPe0lVy8LSIebmlgHfrejSDkZ6+s1XM41mUcxzHXEWbK9l/M9Sgf6WiX
         EGNjXA4RTdEbcf9jBrj9SiUBRZXTfnjdl42M/HAvezBVX+soLPsn6XGIfiLI5AkmK+eK
         f3ITY+y53bC0R86QHqgvXVmog0yBpLFSxZ9s9QFTJiI86/m4xpsXlBhOpCb+thM11kju
         iLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=hTos8OHgwFshY7dxk6YkVaVl45UAbrAfHyN2eZ+ZjUc=;
        b=0HN4OBzkfIlCvBnIIvMaf28wUdEKsYF55glZ+Voa76JYdqvCo7SFS7x4g9kr2QDbuG
         5OO4l6dgyYEXfjVgwnF0MNSqJTZIJoARW3xzhQFoIW8gdLlRKp8BpZvTlSMmqqC54lra
         /i1zL469R3YWbhcIYuiu+7SkdVKAA66pQAhIEE9T66iocBwIg1aFebxvmhCq2d2J3Uf9
         Mbj1lz+K731VtfGKymGNb/FpwxZwkX0ixyFfLURLev56QrQIWvLmEb7vc00uwoU2CnRE
         4FFmljlc4Fimn1pdMHFRt/AbWXjnRWfRA9bAvh8tjk8WGR1OzY8rLllcySAgk5BnBh/J
         zFrw==
X-Gm-Message-State: ACgBeo3oq2YK+rcNonEREhYQBtS1/hepyeM/3vJpd9pvo+xSKMggFMEd
        9/RVXLwfy9wDWQEpDbzFDGo=
X-Google-Smtp-Source: AA6agR4gGe3vsOcQQhWRpqOHohyJTInaQR4HayXakB9KjD3urVkHTl1NNhMiBgegZArCRWUv7LE8FQ==
X-Received: by 2002:a05:6830:1699:b0:637:1f6c:f9eb with SMTP id k25-20020a056830169900b006371f6cf9ebmr1555004otr.17.1660314771414;
        Fri, 12 Aug 2022 07:32:51 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id n28-20020a0568080a1c00b003436fa2c23bsm282879oij.7.2022.08.12.07.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 07:32:50 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, vkoul@kernel.org, kishon@ti.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@linux.ie, heiko@sntech.de,
        hjc@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 0/4] rockchip-dsi for rk3568
Date:   Fri, 12 Aug 2022 09:32:43 -0500
Message-Id: <20220812143247.25825-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

This series adds support for the dsi and dphy controllers on the
Rockchip RK3568. I can confirm that for the Rockchip RK3568 this
current series DOES NOT WORK properly yet. The image on the screen
is shifted about 100 pixels to the right and does not appear to be
a timing issue. This behavior was observed on both the Anbernic RG503
and RG353 portable gaming devices with different screens. These changes
were also tested on an RK3326 based device (an Odroid Go Advance) with
no noticeable regressions.

An example of the issue on multiple devices:
https://media.discordapp.net/attachments/973914035890290718/1007407064647221299/IMG_1999.jpg
https://media.discordapp.net/attachments/995430498677571604/1003754966932008960/AB25898E-73EC-40A9-BD47-3FB970DDFB31.jpg


Given the fact that the DSI controller is identical on the PX30 and
RK3568 aside from different grf registers I am assuming the PHY is
likely where the bugs are currently. I'm posting this as an RFC in the
hopes that someone more knowledgeable than I can help identify the
problem.

Chris Morgan (4):
  dt-bindings: display: rockchip-dsi: add rk3568 compatible
  dt-bindings: phy: phy-rockchip-inno-dsidphy: add compatible for rk3568
  drm/rockchip: dsi: add rk3568 support
  phy/rockchip: inno-dsidphy: Add support for rk3568

 .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  51 ++++-
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
 4 files changed, 209 insertions(+), 48 deletions(-)

-- 
2.25.1

