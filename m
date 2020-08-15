Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F5292454B8
	for <lists+devicetree@lfdr.de>; Sun, 16 Aug 2020 00:40:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729442AbgHOWkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Aug 2020 18:40:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728691AbgHOWkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Aug 2020 18:40:42 -0400
X-Greylist: delayed 1043 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 15 Aug 2020 12:52:13 PDT
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a01:238:4321:8900:456f:ecd6:43e:202c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D7A3C0045A9
        for <devicetree@vger.kernel.org>; Sat, 15 Aug 2020 12:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
        Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=NZz5P8BM3tHNzmWyW/tiN3l65bAUBW4lt4bzCJ66z68=; b=b8UR4KGgg/hxBQPpx9/tqMcMl2
        tqYA8knKIqEx6tl2x/aEG057H+uEVufRQSbUUps3O/6wc8f/rWa1k3G1Zl1/3opJ8xtdwe7hANGUJ
        VTvU7k14EF49TnPMSVmNs3gJ4oonTIxX24r6xWrKc4vPB7PNeIq31HWHgpPTNdp/OFEI=;
Received: from p5dcc3368.dip0.t-ipconnect.de ([93.204.51.104] helo=aktux)
        by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <andreas@kemnade.info>)
        id 1k71wl-0000Fp-4t; Sat, 15 Aug 2020 21:34:31 +0200
Received: from andi by aktux with local (Exim 4.92)
        (envelope-from <andreas@kemnade.info>)
        id 1k71wk-0005dC-LK; Sat, 15 Aug 2020 21:34:30 +0200
From:   Andreas Kemnade <andreas@kemnade.info>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        andreas@kemnade.info, Anson.Huang@nxp.com,
        marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
        michael@walle.cc, rjones@gateworks.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, j.neuschaefer@gmx.net,
        letux-kernel@openphoenux.org
Subject: [PATCH 0/2] ARM: dts: add Tolino Shine 2 HD
Date:   Sat, 15 Aug 2020 21:33:34 +0200
Message-Id: <20200815193336.21598-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Score: -1.0 (-)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a device tree for the Tolino Shine 2 HD Ebook reader.

It is equipped with an i.MX6SL SoC. Except for backlight (via an EC) and
the EPD, drivers are available and therefore things are defined in the
dts.

Andreas Kemnade (2):
  dt-bindings: arm: fsl: add compatible string for Tolino Shine 2 HD
  ARM: dts: imx: add devicetree for Tolino Shine 2 HD

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx6sl-tolino-shine2hd.dts  | 582 ++++++++++++++++++
 3 files changed, 584 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6sl-tolino-shine2hd.dts

-- 
2.20.1

