Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 451754D64BD
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 16:37:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349201AbiCKPiR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 10:38:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234420AbiCKPh5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 10:37:57 -0500
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [IPv6:2001:4b98:dc4:8::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 771301C65CC
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 07:36:48 -0800 (PST)
Received: (Authenticated sender: gregory.clement@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 0CACB24000B;
        Fri, 11 Mar 2022 15:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1647013006;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=v2/a2Ua5LS/T0VW0KbkI+yhhZYoBmIq25SPjoj974z0=;
        b=hRW9b6JIG4bW/spMu2bX36vXyEStx0VI/40fQuTzj7OE2DLO389IlWJUXen1dIlrzbdeAB
        V0DhLwOKHi8byS5jiftPQIoD8ULMDa1Kl7yEig/6Jm7/VHb+UlcALQ1RjLhaPuVgJsiq0t
        b9grn4jTjSptoyAI78cuBse+ukXmzqCiTy4ZmUxN6aOo2cnTXnBIPueQBB3TqdwAQCHyKS
        befWBATfXV7fLorenxZ7zRkwsIqMqYM+IaKIAYoIqUyA8bQTJQZzqx7h/uZftpb9jLwzTY
        y8T8ZHrB8fX9oWklbf8aehRmKfZwz7lRXCMvXGXtDUUTZwpUVoF9FKDyQKg9AA==
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH 0/2] ARM: Add support for VAR-SOM-MX6
Date:   Fri, 11 Mar 2022 16:36:12 +0100
Message-Id: <20220311153614.2191584-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

this small series of 2 patch adds support for the VAR-SOM-MX6 module
from Variscite and its carrier board the MX6 Custom board.

It is inspired from the device tree provided by Variscite in their own
kernel. Especially the part about pin muxing was used as is. Most of
the other part are however adapted do be more mainline style as it was
done for the DART platform.

The DMIC part need an extra patch to work. This patch has already been
submitted:
https://patchwork.kernel.org/project/alsa-devel/patch/20220311100627.2181756-1-gregory.clement@bootlin.com/

Thanks,

Gregory

PS: I know that we are close to the merge window, so obviously I don't
expect that this series to be applied during the next merge window.

Gregory CLEMENT (2):
  ARM: dts: imx6qdl: Add Variscite VAR-SOM-MX6 SoM support
  ARM: dts: imx6q: Add Variscite MX6 Custom board support

 arch/arm/boot/dts/Makefile                    |   1 +
 .../arm/boot/dts/imx6q-var-mx6customboard.dts | 241 ++++++++
 arch/arm/boot/dts/imx6qdl-var-som.dtsi        | 543 ++++++++++++++++++
 3 files changed, 785 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6q-var-mx6customboard.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-var-som.dtsi

-- 
2.34.1

