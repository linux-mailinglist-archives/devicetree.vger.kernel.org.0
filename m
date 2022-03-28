Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25B2C4E96BB
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 14:35:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237082AbiC1Mgr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 08:36:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232505AbiC1Mgr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 08:36:47 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06F8D6424
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 05:35:07 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id n18so14644921plg.5
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 05:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tmswMDps1ywZiXtPbHvuyFB9pUA9D/JCoJ8KtD2p8NY=;
        b=k6kHxjfSdtLA1q9vGwHChBfYcsiSDvGLz1vO5swrltnQ4KZkh529jbi7dGLJeb0X5x
         57Z12cHKQE03Xb8GmVGYGr6MfszM6Gg8olsZ/WQeQZpOMyObw9LuDL4xyXor6aBVZw8B
         JsWJ+TR+tLu2eDvEKM8TG+W2idwn74Y41BdqdBnCk3tSOgbz3aGpvaZNwIV24HmuFljr
         4ce/pVSc00ZOXZK6mPZldajweqoCZuEhuqBybmTtNXofJNa69gi1J6vzb/PKkEXxreDz
         s4piqLjTQepFlEbC+kiBoRjHmwCBTGWfZ6yvmT0om7Ufn/KgN6AniwdUSYjTL0WGX87X
         ENOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tmswMDps1ywZiXtPbHvuyFB9pUA9D/JCoJ8KtD2p8NY=;
        b=XclU3Mh+xSAdNWGsd804UFFbZ2INMM3Rtnlpgf1PoM+mJPQymRsUahaBp+gfL4xn2g
         xEk360bJyhxK/YiuHe5DGVRkx3wGQOWaVaXd0EYeMhAfGoo2RSIpWYbjY4Q7QQf46I+B
         89v+ZRsPMjrQxGuH8IZ6jb750o3RoZnWPEZQcbeW/5H3fboAb4A05X4fBg4K+m+mByNv
         8uqLNoYY8xs8D2lGO7rnX7srDDML3GCkopxsJeCSsnvyomMmDY/4uvxON8AY9T9wd69x
         FxoM5ZbOz8qbfDGyQDCVOSvQ9dnHtvUW3HqTDvunSIx7/DTAO99O2EOhvXlJvM1a1C/m
         rACQ==
X-Gm-Message-State: AOAM531Cu40GYnqYfJ6u210OiTqIRGEQhtJKdL17irY54O45u9OMBXwP
        H6nF0KxzVb0kzawDN0sr14Rndg==
X-Google-Smtp-Source: ABdhPJyM5z7w60kSuEMNprE4M2nsF1pBug3mz2WMhZUHkwXPJeWQcyYnQCZQjdchcEONqIGYSpgkoQ==
X-Received: by 2002:a17:90a:a018:b0:1c6:5dac:3da with SMTP id q24-20020a17090aa01800b001c65dac03damr29012038pjp.195.1648470906480;
        Mon, 28 Mar 2022 05:35:06 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id h12-20020a056a00170c00b004fab8f3244esm16314597pfc.28.2022.03.28.05.35.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 05:35:06 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     radhey.shyam.pandey@xilinx.com, robert.hancock@calian.com,
        michal.simek@xilinx.com, andrew@lunn.ch
Cc:     davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, linux@armlinux.org.uk, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, robh@kernel.org,
        Andy Chiu <andy.chiu@sifive.com>
Subject: [PATCH v6 net 0/4] Fix broken link on Xilinx's AXI Ethernet in SGMII mode
Date:   Mon, 28 Mar 2022 20:32:34 +0800
Message-Id: <20220328123238.2569322-1-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Ethernet driver use phy-handle to reference the PCS/PMA PHY. This
could be a problem if one wants to configure an external PHY via phylink,
since it use the same phandle to get the PHY. To fix this, introduce a
dedicated pcs-handle to point to the PCS/PMA PHY and deprecate the use
of pointing it with phy-handle. A similar use case of pcs-handle can be
seen on dpaa2 as well.

--- patch v5 ---
 - Re-applying the v4 patch on the net tree.
 - Describes the pcs-handle DT binding at ethernet-controller level.
--- patch v6 ---
 - Remove "preferrably" to clearify usage of pcs_handle.

Andy Chiu (4):
  net: axienet: setup mdio unconditionally
  net: axienet: factor out phy_node in struct axienet_local
  dt-bindings: net: add pcs-handle attribute
  net: axiemac: use a phandle to reference pcs_phy

 .../bindings/net/ethernet-controller.yaml     |  6 ++++
 .../bindings/net/xilinx_axienet.txt           |  8 ++++-
 drivers/net/ethernet/xilinx/xilinx_axienet.h  |  2 --
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 33 ++++++++++---------
 4 files changed, 31 insertions(+), 18 deletions(-)

-- 
2.34.1

