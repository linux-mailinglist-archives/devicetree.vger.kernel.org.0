Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C75DB1FF25A
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2020 14:51:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729926AbgFRMve (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Jun 2020 08:51:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729709AbgFRMvd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Jun 2020 08:51:33 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0701C06174E
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2020 05:51:32 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id l11so5955801wru.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2020 05:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Bj6HAykfSXciPD/Bc+zws1F4Dix7NK9KOE5ziMSlP18=;
        b=s92ydCNNUB8tBaQKFHde4jqHuN6R3JyXh0Nhc/3Txlz3PLg16gHdMvxkf9nm/Way1i
         IE7qKAasmH7/Az0BAzvtq3Wsks+24nV/BS2+NF/XmhKz36t2pBn5d9mDERBAdK2cKVO4
         XmpdPEXNkPDJdAmixppQgrBSPkKlLe/4a6ueUlC4KvoMHcjAfmwrusiaepK/fmjFdQgE
         GpnmI8vOqTLlxolUIEFyLIUWO3+oZVRzviNhDgRC/iDdNmjhJPHNv75+OgZ6sbRYhiWE
         dFCnNVj49d8/VUo6Xi3HoF8nHG33h7EODXuDug7DnsqqOOUTyYCd0beyqtE9SEB+C7sV
         svEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Bj6HAykfSXciPD/Bc+zws1F4Dix7NK9KOE5ziMSlP18=;
        b=NTxuPJz+TFD5tlZa4HwhdY9270P6R3uyQFym3j+Omj5nKcfKGkj9DT6h2YapvG+hNG
         53BxrQWzV/p06ptmvHZaInO6sdoMUgaV5T6cwFEX+10nH/u6sYLr/tW3Jvh13ybasE3L
         PTKEsjH08RBbwKi1t0Hsrc/+3Bi7xST12JSipUdYDLqRvH5PvKyDVcSTzSvaB95Gnxk2
         cJkKB2/dals0Kto0oNpNB+9m2Zex+pl2N5OJCxPdUxmDC6RRnHV7QTW/+hqh+yNOamMJ
         G9ipmcQkM6qqrRdQOCAnOrhJybb8u10e9ofXL1mIBFhMWLYPGVWKoEC664V+YEb19RX0
         d8ww==
X-Gm-Message-State: AOAM532fTSvwKCbg1ZEEFpcfmFc4i3D/Gt6yQRqkldLHbVLpv55xDCuZ
        RzL8PenQxutbBw2hhPGQEFyyPg==
X-Google-Smtp-Source: ABdhPJwC8zsRiXLYSbgOC9p59MOglG+3EnihCVEse/KhZppHDY52tveh0j6s0v6RHp6PmoAniAxHPA==
X-Received: by 2002:adf:9163:: with SMTP id j90mr4376829wrj.65.1592484691632;
        Thu, 18 Jun 2020 05:51:31 -0700 (PDT)
Received: from localhost.localdomain (i59F66838.versanet.de. [89.246.104.56])
        by smtp.gmail.com with ESMTPSA id v27sm3714151wrv.81.2020.06.18.05.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2020 05:51:30 -0700 (PDT)
From:   Drew Fustini <drew@beagleboard.org>
To:     Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
        linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        devicetree@vger.kernel.org,
        =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Jason Kridner <jkridner@beagleboard.org>,
        Robert Nelson <robertcnelson@gmail.com>
Cc:     Drew Fustini <drew@beagleboard.org>
Subject: [PATCH 0/3] pinctrl: single: support #pinctrl-cells = 2
Date:   Thu, 18 Jun 2020 14:50:54 +0200
Message-Id: <20200618125057.41252-1-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently, pinctrl-single only allows #pinctrl-cells = 1.

This series will allow pinctrl-single to also support #pinctrl-cells = 2

If "pinctrl-single,pins" has 3 arguments (offset, conf, mux) then
pcs_parse_one_pinctrl_entry() does an OR operation on to get the
value to store in the register.
    
To take advantage of #pinctrl-cells = 2, the AM33XX_PADCONF macro in
omap.h is modified to keep pin conf and pin mux values separate.

Drew Fustini (3):
  ARM: dts: change AM33XX_PADCONF macro separate conf and mux
  ARM: dts: am33xx-l4: change #pinctrl-cells from 1 to 2
  pinctrl: single: parse #pinctrl-cells = 2

 arch/arm/boot/dts/am33xx-l4.dtsi   |  2 +-
 drivers/pinctrl/pinctrl-single.c   | 11 +++++++++--
 include/dt-bindings/pinctrl/omap.h |  2 +-
 3 files changed, 11 insertions(+), 4 deletions(-)

-- 
2.25.1

