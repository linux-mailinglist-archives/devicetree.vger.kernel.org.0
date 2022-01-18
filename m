Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 057EF492352
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 10:55:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233536AbiARJzJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 04:55:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234579AbiARJzI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jan 2022 04:55:08 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A783C061574
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 01:55:08 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id z22so76975450edd.12
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 01:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Mceqks5nzf+eeOlYMRRw9uStF9uGFlchw0VEVd71PNE=;
        b=gPYLtv4I3fkdCGWvfnnq5fZwtxkXwUSfcWEIelAqAAoqlMyHtS5+lMkxf4CFTrDKO2
         EEi1eSnV+84JN549IbLO7idLHZ3C3WRiQX4orsnch2n8XVYgGfg0PlY/jXEXVb+W6x3t
         Kl/TGleX6RXP9oV69e3gejA2FUp0UcV2m1dFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Mceqks5nzf+eeOlYMRRw9uStF9uGFlchw0VEVd71PNE=;
        b=eJpg7/ZdJ4YDglxYC+AHxn58xX7XNuLqBpc1gLc63/EXAfCsNMiIWBnaL9K209sSAt
         o3YgajgSnLCWnqGBouN2jJ6h+9WUvv5C3RlLF0sLYod0E3fStYhprl/h5kN49r2QBEOd
         qP4nmQ6Xqw4pepDP0Ly6IGAfK1JS0NLDRDq2imwlpwTqfpxBQM9dkiikUIYrA8Y+0J2c
         9arQd0eKKVJ10T9JOKbF4kfftAT7lr7cdbW6gj3GbUp46MzhW0VbmNw7qGhp9MItSz11
         T8wLZzzHyzJjHG6V1kzEUlhyFzAbOqkU1qQVxxv/XIRnBFbgtd19Yy7O1X+v8fM9bqi8
         1MZg==
X-Gm-Message-State: AOAM5331c7m04H+TIQIZbvbaRZemAxGGWcFt0K1LrIxdbUv9JuberHV+
        Jw45KiETKXwm8A2RO/J0z4Nh7A==
X-Google-Smtp-Source: ABdhPJzj8gexQMhBbeU9RNli6B1Vexv4bSMZZ3vsSVZ884D8NY7eN6Rp1vUyRj0kGUSh+affuud+jA==
X-Received: by 2002:a05:6402:2712:: with SMTP id y18mr10734301edd.26.1642499706803;
        Tue, 18 Jan 2022 01:55:06 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-52-8-210.retail.telecomitalia.it. [82.52.8.210])
        by smtp.gmail.com with ESMTPSA id w3sm5173520eji.134.2022.01.18.01.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jan 2022 01:55:06 -0800 (PST)
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
Subject: [PATCH 0/4] Fix and improve gpmi nand on mx28
Date:   Tue, 18 Jan 2022 10:54:30 +0100
Message-Id: <20220118095434.35081-1-dario.binacchi@amarulasolutions.com>
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

The whole series has been tested and reviewed by Sascha Hauer <s.hauer@pengutronix.de>,
so I removed the RFC prefix and re-submitted it as a regular patch
set by adding the 'Tested-by' and 'Review-by' tags to every single patch.

[1] https://lore.kernel.org/r/20210702065350.209646-5-ebiggers@kernel.org


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

