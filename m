Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D384C5AF30B
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:48:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbiIFRsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:48:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229580AbiIFRse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:48:34 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E00F7844F2
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:48:29 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-127a3a39131so9214825fac.13
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=V+Mmbr5yPt+hzlxY76gjjX8n/7WZsL2sfwWOuEEeXvE=;
        b=QqhEVMt8kblJwysbyUcRBMnek45NF0eS6ZcED+xizTm/mIQ4SMEdit2M7Wm9C6ek0q
         LM1rMLUak2/pOfeVfHYsEGe68lV++x9DJL6IUQLKoVflrokh+91pnBXt5s1Gbi8sjdvJ
         +NCwvh+mfWPIOiR4XlhhTRxduBER5LYDLsoYzqfj+FPTQt2T4o9M6DAqyDCKPOaZe8z3
         E41w2F+iySUatH36XEBYA004nEmRUumvQqRvaMQyWdytpcO4iHxNeCqQohWZN8JT9YqR
         qgo30y8D0nvNd0YkezKUmHLDjkD10TcMjNp1Rjw1IvZleYn7cShcN5dTOqL+jPi8kvOI
         QGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=V+Mmbr5yPt+hzlxY76gjjX8n/7WZsL2sfwWOuEEeXvE=;
        b=YZYIhhRUZi/BRJaX8UyCzxv2BoR+45FqW504+31+uvltOWe1JrxFX8f0fVTTrssBbA
         KhjhCP3NqEo1bg536P0A3eEXtTcpCUURrdmNVfvkd7GOEmbGpWd2U7zqTXZLzL9Yx6X9
         p5uIujY3c4+y7qKTPfb3+zruLViake9wXX2ZxvMgNgc0TQoxiz8lD5k33D1YJMDgpAAW
         26pdBgxTHd0kUu4lcAyfbBiJKhOaOZcz6aMbr3fulArHTLIEgsWA3dEyFJHapsEBnXQd
         gNI4G3pLfjrTYkZJe5VeykUyNbdp0ur7Wv3kwRm34aezNus3D5MV30Ve4NddvWvCflvH
         T9Dg==
X-Gm-Message-State: ACgBeo103cKjyCjgxGTUXjBCPrfVqvYWOjSazu2tr62xc72dfgc7Jo9l
        jGCa0HJSQlFNhcZP2KYEX3k=
X-Google-Smtp-Source: AA6agR6HtjFhOOV4l9cuIu//XrbRVuTn//iCK4t2CYBvn25ACKq2aILTOYUKNNymd0pNMDltxtxwnw==
X-Received: by 2002:a05:6870:89a1:b0:10e:4357:45b3 with SMTP id f33-20020a05687089a100b0010e435745b3mr12123039oaq.127.1662486508233;
        Tue, 06 Sep 2022 10:48:28 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o186-20020aca41c3000000b00344afa2b08bsm5568065oia.26.2022.09.06.10.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:48:27 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, cl@rock-chips.com,
        s.hauer@pengutronix.de, pgwipeout@gmail.com, vkoul@kernel.org,
        kishon@ti.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        heiko@sntech.de, hjc@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 0/5] rockchip-dsi for rk3568
Date:   Tue,  6 Sep 2022 12:48:18 -0500
Message-Id: <20220906174823.28561-1-macroalpha82@gmail.com>
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
current series DOES WORK now, but it requires rolling back clk changes
made for the HDMI driver. If the clock changes are not rolled back, the
image on the screen is shifted about 100 pixels to the right.

Clk changes in question:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/clk/rockchip/clk-rk3568.c?id=ff3187eabb5ce478d15b6ed62eb286756adefac3
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/clk/rockchip/clk-rk3568.c?id=6e69052f01d9131388cfcfaee929120118a267f4

Tested on an Anbernic RG503 and RG353P with clock changes rolled back,
the hardware works correctly on both devices.

Changes since RFCv1:
 - Identified cause of image shift (clock changes).
 - Noted that driver works now.
 - Added devicetree nodes for rk356x.dtsi.

Chris Morgan (5):
  dt-bindings: display: rockchip-dsi: add rk3568 compatible
  dt-bindings: phy-rockchip-inno-dsidphy: add compatible for rk3568
  drm/rockchip: dsi: add rk3568 support
  phy/rockchip: inno-dsidphy: Add support for rk3568
  arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x

 .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  72 +++++++
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  51 ++++-
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
 5 files changed, 281 insertions(+), 48 deletions(-)

-- 
2.25.1

