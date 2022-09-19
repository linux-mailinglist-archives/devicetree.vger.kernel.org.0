Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AD225BD263
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 18:46:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229936AbiISQqW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 12:46:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbiISQqV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 12:46:21 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5603E240BF
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 09:46:20 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1279948d93dso195484fac.10
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 09:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=/ahDqGGSHn1fbR6JYXP2YTpJsA0sQ8WptbQeeX8LyoE=;
        b=bGAa5ry3jbeJzV0CCXNdwALLHeaUite3bB/Fh8UqCc/lh+z/3KqrQwBguYy0/ZzmCm
         d9k0w81Ai6rHKA2ag3DPfG15EFYyEUC+3lveIhCejPPccY1DjTI9hYY4mJP3JfeFRpTD
         EE8Al4X8brCmltxJ4qdhINYzTmjmWUI45LjqoVZPKu5okk2xEPs4KktUNviVeCv1G/vc
         g3bpC278UkGGTbKgCegI7eVTp2N2bBnsbsRToNRn4QUxB+KsfxcrVyPa0spEcaFjzZq9
         3qTK64RpGV0MvBDIRYTkCj6b2vtk6RiGPrxFY3I7YlPqRaXzKoCfJDL/5z8P3YjP6wCe
         yheg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=/ahDqGGSHn1fbR6JYXP2YTpJsA0sQ8WptbQeeX8LyoE=;
        b=Ie460xDCN79yQ51lVrI9gifOO05QtnmaQ/y069juBZHfMYwVhGHOLc9xcoLKT7qRew
         ifCqDHA89Pp16P6m2ptuqZ8O9IELib0Awx9Md6B/sDAZIneI96hG/hBwgqJPkL2U9gwt
         cA3R+6x23DO7bqSzodOpwMn4OdP8Y/dCL5d34POeL2Oa/G9Lc4pSMzWENe2aQcRpRPAr
         n311EhGo6m1yt2WCwQKghRyghFtHLq0/NmoGnUxk+cKvRfRULElbBLf1T+4QNnCw/5/2
         cHVEtnfmQQsCCqTmkV4ZBYIRObT7hgv75XuXcFvwsZ61ub0HrFiHlaHjXnm0h2Mu+sXf
         HgpA==
X-Gm-Message-State: ACgBeo0gILDFAAThjxi+GJOfnIFOMsgqvr7wAb+DU6UvbwnWWqIZ1pGv
        UgX+JHcZho2HFtScX6BJK6k=
X-Google-Smtp-Source: AA6agR6ZJb6i/TMmPB53pvo6fX5TLRPP/OHrDPArq4pYLsDTgXA4JsngOviB7XDpUCP7sWR80nxgJA==
X-Received: by 2002:a05:6870:3392:b0:128:828:5ec4 with SMTP id w18-20020a056870339200b0012808285ec4mr16001302oae.99.1663605978735;
        Mon, 19 Sep 2022 09:46:18 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id t184-20020a4a54c1000000b0044b0465bd07sm12501610ooa.20.2022.09.19.09.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:46:18 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        jbx6244@gmail.com, cl@rock-chips.com, frank-w@public-files.de,
        s.hauer@pengutronix.de, michael.riesch@wolfvision.net,
        pgwipeout@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        vkoul@kernel.org, kishon@ti.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v4 0/3] rockchip-dsi for rk3568
Date:   Mon, 19 Sep 2022 11:46:13 -0500
Message-Id: <20220919164616.12492-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

This series adds support for the dsi and dphy controllers on the
Rockchip RK3568.

Tested on an Anbernic RG503, Anbernic RG353P, and Odroid Go Advance.

Changes since V3:
 - Added labels to bindings in rk356x.dtsi file to make it easier to
   reference in board dts files.

Changes since V2:
 - Removed dsi controller patches, as those have been merged upstream.
 - Removed notes about rolling back clock drivers. If I set the parent
   clock of the VOP port I'm using to VPLL and set the clock rate of
   PLL_VPLL to 500MHz this series works correctly for my panels without
   rolling anything back (per Heiko this is the correct way).
 - Added additional details about refactoring DPHY driver to add
   2.5GHz for rk356x. All other devices still have a max speed of 1GHz.
 - Notified Heiko that the BIT(5) for both PLL_POST_DIV_ENABLE and
   PLL_POST_DIV_ENABLE_MASK is deliberate, because of how the
   phy_update_bits() works.

Changes since RFCv1:
 - Identified cause of image shift (clock changes).
 - Noted that driver works now.
 - Added devicetree nodes for rk356x.dtsi.

Chris Morgan (3):
  dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
  phy/rockchip: inno-dsidphy: Add support for rk3568
  arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to  rk356x

 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  80 +++++++
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
 3 files changed, 239 insertions(+), 46 deletions(-)

-- 
2.25.1

