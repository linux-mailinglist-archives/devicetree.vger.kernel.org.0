Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FAD94EA57C
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 04:51:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231264AbiC2CxQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 22:53:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230033AbiC2CxQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 22:53:16 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F56D1B3707
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 19:51:34 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id z16so14629600pfh.3
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 19:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=u2HTizkCJuXJ03mQ/U2QTBOmCXttnZ8qvqDtLWSDfbI=;
        b=aW/KmZgmPudQ45/FDIsfnesPJq6KJpZiHzEaktEktsOA9iujonrv39xeKmIo7Q5clE
         JStRgYE68Ahq+i3Ep+bYIH9VDufHoZZYJapD7Vg/0QEg3LaHnA5IYbsi9P+z/qerEJ6o
         XSx5wAiK46qlzH8jJvVO0Qr6nfHRFRYdbr8R6EfvdOTjUjH9CUBZFjeRWYE8YwH9N+c5
         PlQVHBu7Rd+6doY65/rW2MaaWPRJMlEbvbrp6hQpiJfNc7qulq0w4jqEEwUGpsyuYKro
         LVjAkIJUhxMh7mnNm62pIzX6s+KDXb20igIsyTlfK8s522vrKfW01ojueEE5ar/XTxuY
         MZZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=u2HTizkCJuXJ03mQ/U2QTBOmCXttnZ8qvqDtLWSDfbI=;
        b=ZmGk4CKLtC/s48RxEA1c3moTnlr1uJZ1bXknCMeI+9V5b3myPi7nKcFmU2rtlWDldT
         MWOAmm2JMyeObYUPe/9qc1wH/O0mxw7t+VxCYjtiaGbMVpCVNbpRXrakl2zX9/fWMD0W
         PBWtWW3a8/L7dFyn0jCC60AdXfo8j+U8hZylpS0EyGmS+jijgGONA+xJX7g94UI6Dn5w
         03U4+uWf0wSKcNdGhPhvoD/vMdl6PiKR0Bl4KGbteC+EOmSZvNmMXuinyOuTX9Xvgs/i
         DI44TyD8PLq39ePDhPnKpNIOOFymk4Q5mWHQ1hBV3qGgOGvAgNhEQJpNUd4ipSOwcf+j
         Q/3A==
X-Gm-Message-State: AOAM532L5EvZGOiSlEWkxgdm/SHzmn1ixhMOE1aeecD89/mAb09Vt1yY
        5VCWeuu6/osj9AU501+bfppR4UxWm7qtSLXM
X-Google-Smtp-Source: ABdhPJzIlLZjCyUlnIl8RV5iat1BLKtNnFXi9mip9/4Vw79Fsch9eHT0egEOKBxM9RNOxO7Q9dmUBQ==
X-Received: by 2002:a05:6a00:24d2:b0:4fb:1b6d:ee7d with SMTP id d18-20020a056a0024d200b004fb1b6dee7dmr17414606pfv.36.1648522293605;
        Mon, 28 Mar 2022 19:51:33 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id f14-20020a63380e000000b0038253c4d5casm14136053pga.36.2022.03.28.19.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 19:51:33 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     kuba@kernel.org, radhey.shyam.pandey@xilinx.com,
        robert.hancock@calian.com, michal.simek@xilinx.com, andrew@lunn.ch
Cc:     davem@davemloft.net, pabeni@redhat.com, robh+dt@kernel.org,
        linux@armlinux.org.uk, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, robh@kernel.org,
        Andy Chiu <andy.chiu@sifive.com>
Subject: [PATCH v7 net 0/4] Fix broken link on Xilinx's AXI Ethernet in SGMII mode
Date:   Tue, 29 Mar 2022 10:49:17 +0800
Message-Id: <20220329024921.2739338-1-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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
 - Re-apply the v4 patch on the net tree.
 - Describe the pcs-handle DT binding at ethernet-controller level.
--- patch v6 ---
 - Remove "preferrably" to clearify usage of pcs_handle.
--- patch v7 ---
 - Rebase the patch on latest net/master

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

