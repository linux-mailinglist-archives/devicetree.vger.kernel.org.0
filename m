Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0F07490C58
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 17:18:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241001AbiAQQSN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 11:18:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235158AbiAQQSM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 11:18:12 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6BDCC061574
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 08:18:11 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id z22so67787707edd.12
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 08:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4y5Hl3U1xXQXZw23h6/DO7pv/6iLmoZwNHNPhFYyIt8=;
        b=H7Kyile8bVbUB1uHXBaUIRyKZ8c7SBGxw1S9Bq1l7v1qCdkBs3OkvwHPBHe1d9tFni
         P7ZpCPGCpTFPJ3FugYLnQ0uNeH/2X9/xwte20CTIYlILxxuw1ZGakLiHVMgBvDaW/MDa
         hLACj+lIfyO/bcvaSxpTA2shvjDfo1byUl4m8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4y5Hl3U1xXQXZw23h6/DO7pv/6iLmoZwNHNPhFYyIt8=;
        b=5NZkCG9KGgVsFhsUrDrthBe3nN6Kb36bPKu7tqjzoPEo/SVuMTb+M2p217+jLoKdNf
         Wuuk2VzGChiKrq3PUNBGQ2n4QayTTNgX3bNTcbjCjOmZaSl/Lkp/h2C2ytb0fU/F9Vqq
         g4Ncjbbg66y9VzxPa75TczkRXmDwXT9/5xx8YHFKZuB0VCKM8CGOTIvH5mhpNW2fPbu9
         jrqZ7umeTWHLFSrjDBFq91I7DUPI1ZcMmovyQKaO7AttbFa/C2YhLXMUlOeOteX/n2bB
         Rn8fiT2I8mH38VI+cnioIHp2o6DurOkotxVIc2epfYPPLO6eJ3OtnQw3N/M99DiMNtX5
         K92Q==
X-Gm-Message-State: AOAM530Jdj/tvARSmFwBW4VMKFa60LygKa1Uwg0wlZYZO9YiOCuHnBmG
        7TNbqBTw0W5aPge0m2f+80bSWw==
X-Google-Smtp-Source: ABdhPJzoKLf0i17Ak3VzqNyVv9Vm8qt47iUJmDiS73Di84vuVY4d6AuUwx7pgXcp35lk5Ixyzj/Ljw==
X-Received: by 2002:a17:906:1145:: with SMTP id i5mr16996384eja.317.1642436290556;
        Mon, 17 Jan 2022 08:18:10 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-52-8-210.retail.telecomitalia.it. [82.52.8.210])
        by smtp.gmail.com with ESMTPSA id s4sm4147652ejm.146.2022.01.17.08.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jan 2022 08:18:10 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Boris Brezillon <bbrezillon@kernel.org>,
        Fabio Estevam <festevam@gmail.com>, Han Xu <han.xu@nxp.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mtd@lists.infradead.org
Subject: [RFC PATCH v3 0/4] Fix and improve gpmi nand on mx28
Date:   Mon, 17 Jan 2022 17:17:51 +0100
Message-Id: <20220117161755.1863579-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Starting from [1], the series fixes the timings setting of the gpmi
controller for the mx28 architecture, also adding support for fast
edo mode timings. The whole series has been heavily tested with the
mtd kernel test modules, and with repeated write cycles on nand.

[1] https://lore.kernel.org/r/20210702065350.209646-5-ebiggers@kernel.org

Changes in v3:
- Remove the "mtd: rawnand: gpmi: use a table to get EDO mode setup" patch.
- Simplify the validation logic (suggested by Sascha Hauer <sha@pengutronix.de>).

Changes in v2:
- Reparent by device tree instead of code (drivers/clk/mxs/clk-imx28.c).
  Suggested by Stephen Boyd.
- Improve the commit description.
- give examples of frequencies on my setup.
- Fix commit description.
- Add an example to the commit description to better understand the
  problem solved by the patch.
- Split the patch.
- Improve the commit message.
- Move the patch to the end of the series.

Dario Binacchi (4):
  ARM: dts: imx28: reparent gpmi clock to ref_gpmi
  mtd: rawnand: gpmi: fix controller timings setting
  mtd: rawnand: gpmi: validate controller clock rate
  mtd: rawnand: gpmi: support fast edo timings for mx28

 arch/arm/boot/dts/imx28.dtsi               |  2 ++
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 27 ++++++++++++++++++----
 2 files changed, 24 insertions(+), 5 deletions(-)

-- 
2.32.0

