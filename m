Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92F9176A36C
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 23:55:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbjGaVzP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 17:55:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230266AbjGaVzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 17:55:14 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 282D0118
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 14:55:13 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3671D512;
        Mon, 31 Jul 2023 23:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1690840448;
        bh=lzYP0wYMkgaG6Vnq6Vlygl1CsAL7HINusD6vdXBhXnc=;
        h=From:To:Cc:Subject:Date:From;
        b=CJtkPQzpNqKfNRNjFlxQKMxBaCWUNQGImwvSbS/BHWiC3kNfE5OpWZs7HXOYcLL60
         aZkCdGzK5X0lXJfMgE5oguKgTspv79qU0BvB4PZBjaHjSKQguKY3mgnt46QrCJ+fEJ
         unEMQZc88cQRy1phu42Zh7p1AAfDsI8QuaxfImng=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Cyril Brulebois <kibi@debian.org>,
        Maxime Ripard <mripard@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Umang Jain <umang.jain@ideasonboard.com>
Subject: [PATCH v4 0/2] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a pinctrl-muxed i2c bus
Date:   Tue,  1 Aug 2023 00:55:13 +0300
Message-ID: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series is an attempt to revive support for pinmuxed I2C0 on the
Raspberry Pi BCM2711-based board.

On BCM2711-based boards, the I2C0 controller can be muxed between pins
0+1 or 44+45. The former is exposed through the 40-pins GPIO connector,
and the latter is used for the RTC on the CM4 I/O board, but also routed
to the display and camera connectors on the Raspberry Pi 4B board. The
other BCM2711-based board, the Raspberry Pi 400, does not expose or
connect anything to pins 44+45.

A previous version was posted ([1]) a year and a half ago by Uwe. It
bundled the pinmuxing and RTC in a single patch, with the mux added to
the CM4 I/O board device tree. This version splits this in two, and
moves the pinumxing to the bcm2711-rpi.dtsi to also support the
Raspberry Pi 4B.

The Raspberry Pi downstream kernel has a more complex DT architecture in
order to support different I2C0 pinmuxing for other boards. Two files,
bcm283x-rpi-i2c0mux_0_28.dtsi and bcm283x-rpi-i2c0mux_0_44.dtsi, define
the two I2C0 pinxmuxing options (pins 0+1 and 28+29, or pins 0+1 and
44+45). Each board .dts then includes the appropriate file. I'm hoping
to avoid this additional complexity for now, by addressing the I2C0
pinmuxing for BCM2711-based boards only. If/when support for I2C0
pinmuxing on boards will be needed, we can revisit this topic.

Compared to the Raspberry Pi downstream kernel, the two muxed I2C buses
are labelled i2c0_0 and i2c0_1 instead of i2c0 and i2c_csi_dsi. This
change was made to keep the naming of the I2C controller labels
consistent, avoiding renaming of the I2C0 controller's label from i2c0
to i2c0if.

Dave, are you fine with the differences between this patch series and
the downstream kernel, or do you expect them to cause issues ?

[1] https://lore.kernel.org/linux-arm-kernel/20211231115109.94626-1-uwe@kleine-koenig.org/

Uwe Kleine-König (2):
  ARM: dts: bcm2711-rpi: Add pinctrl-based multiplexing for I2C0
  ARM: dts: bcm2711-rpi-cm4-io: Add RTC on I2C0

 arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts | 16 ++++++++++++
 arch/arm/boot/dts/bcm2711-rpi.dtsi       | 31 ++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

-- 
Regards,

Laurent Pinchart

