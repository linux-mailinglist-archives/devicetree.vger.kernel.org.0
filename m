Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 417EA45D85E
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 11:43:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354674AbhKYKq2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 05:46:28 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:16735 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1354382AbhKYKo1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Nov 2021 05:44:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637836876; x=1669372876;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=pztQnbrwCx68JVTd7OT6gI7AxNaPkGR0G99HUWRYEPI=;
  b=ewD6ve6Kh6KCrLi7qa4jmAJGGok/TIF5koHcXpLkKWku5FaSZmj9PfWF
   YBYElW6Byo+cr11IYBQoaV0Irmz24D9b5V7ESO4h0TRna4z5SQDIePNmV
   Rb53Dpl6peDJoCwB8peEUgCQiKsDUc/rGmwvQ4U/64HrRtc7x+7DxNNUl
   UikjGScghIr/690O9gF30coqvitUj0i4coNeN0oEUrH8PtO7WOLb5kJW8
   qGjXPGaDD3yPHrM1TMUXq7za+FY0PJLnD5mSuc/tDspXD8RdyXSuHyA9b
   OHrYq0NvZt1rgYGBo8huBPbi1b/e9VU2GT1x17R6bid4J/F5CSryE30Nj
   w==;
X-IronPort-AV: E=Sophos;i="5.87,263,1631570400"; 
   d="scan'208";a="20673120"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 25 Nov 2021 11:41:13 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 25 Nov 2021 11:41:13 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 25 Nov 2021 11:41:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637836873; x=1669372873;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=pztQnbrwCx68JVTd7OT6gI7AxNaPkGR0G99HUWRYEPI=;
  b=aueM0Rc5r3YcsTl/XwhBiKLlFXiXp4n8NF1Lhl5yrhb/UvKARA3jU8tO
   LOry3bcNR9Xgp+lQs0eJI7UoHtT1rO7Ssn41jB4o/mosOSkRidNfwvhQW
   TYE19Gz4Aphu213NHChR86TZKovCveQU5Arpxv3p3DYifQD0NAParnFxr
   TEAapXL58Y+jvZEUncDBayURimYQfQUnAy6hPR0r85rENQpbNRnQoix+I
   tL1fLtF5Zp//gQIQXqL7koATvboBMbMgTPK6oZ/hK/s/7iHZO5s9gUJBr
   mjJvcVl8TCn7JpIqJ/PoQWENNu8gT79hO2AnpByqyHQ2V4kP7t71N+I5n
   g==;
X-IronPort-AV: E=Sophos;i="5.87,263,1631570400"; 
   d="scan'208";a="20673119"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Nov 2021 11:41:13 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B612B280065;
        Thu, 25 Nov 2021 11:41:13 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [RFC PATCH 0/2] i.MX8MP: more USB3 glue layer feature support
Date:   Thu, 25 Nov 2021 11:41:02 +0100
Message-Id: <20211125104104.1416523-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset aims to support flags for e.g. over-current active low or port
permanantly attached which are provided in the USB3 glue layer.

There is already a glue layer driver dwc3-imx8mp, but unfortunately this driver
does not use the glue area at all, it only handles wakeup-support which is
done in the HSIO BLK_CTRL area (0x32f10100), accordingly the driver only uses
the hsio clock.

The driver which actually uses the USB3 glue area is phy-fsl-imx8mq-usb. As the
name indicates PHY is configured in the corresponding registers, which are part
of the USB3 glue layer.

This make is it unclear for me which driver should handle the required features
above.
dwc3-imx8mp, the glue layer driver, does not touch the glue area at all,
but the HSIO BLK_CTRL area.
phy-fsl-imx8mq-usb only touches the PHY registers in the glue layer.
Neither does map the USB3 control register from the glue layer.

I would like to get some feedback which approach should be done. The proposed
patchset adds the support to the PHY driver for the simple reason, that phy
clock is already used. Although semantically the glue layer driver makes more
sense.
In either case there is need for additional memory areas (and possibly clocks)
which need to be made optional to support previously released device trees.
I actually don't know what's the best way to add (optional) support for new
memory areas in DT/drivers.

Thanks for any feedback and best regards,
Alexander

Alexander Stein (2):
  phy: fsl-imx8mq-usb: Add support for setting fsl specific flags
  arm64: dts: imx8mp: Add memory for USB3 glue layer to usb3_phy nodes

 arch/arm64/boot/dts/freescale/imx8mp.dtsi  |  6 ++-
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 60 ++++++++++++++++++++++
 2 files changed, 64 insertions(+), 2 deletions(-)

-- 
2.25.1

