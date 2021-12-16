Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31EF04776A4
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 17:05:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238795AbhLPQFv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 11:05:51 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5073 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238792AbhLPQFv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Dec 2021 11:05:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639670751; x=1671206751;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=i3efUfflphk5o9Z5yhAk9+ExzhxAJPDr9BAjBhm1/QU=;
  b=qwQ3sQc/UBN8YRxcLKfwkXd7AzVXqRp1LmsJSq8I4J6Suk+xzrZrhv31
   lxlg8MM7koLPABpOO2xuRgkMEQQZYMB+noqkEToMvbmyiSveAE95YH3wb
   njIRSK5J0y4fLVN/tjDCH0e8C8VPn0KOSiqMxjzuvh5B2Zz5pCv/SExub
   UeqooOQSZuqU3gbyEqwO48BQ3oi24qZMT/emkfNDsJVDzyHY4A0MaPVMr
   XZbFKUnAoOPbFwNCSpfF+9IgrXi+JOCf+tmd1EBwAegtMMf6dlqxMRGP3
   7xlLhI1fmxmJN00G2iuo0fTh3ejAdg4EgIpPRMJyY/M9m03BJgATmvqmO
   A==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; 
   d="scan'208";a="21103117"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Dec 2021 17:05:49 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Dec 2021 17:05:49 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 16 Dec 2021 17:05:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639670749; x=1671206749;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=i3efUfflphk5o9Z5yhAk9+ExzhxAJPDr9BAjBhm1/QU=;
  b=iWf2uZ6W1U8JKTCli4JjxZNSXUBcVA97jWSgGjsJE02z8o0nLfzdomIG
   st56UePCUfFwB85z+qF55VRvroilZ6lx3Lxcs49ACBh4uuMvJMvLzwFy7
   RDmFS4l4au5tBUL6PZD/PTGNj/xU456CdYrOrFQgePa5/1R7fr6Lb1ARW
   K04o7EOgXV36bGmVSJ7Nzx2T6HPbafAIZbyy00vFjjgtWHA8Yg8aiA9Rs
   lHXkRltulgXKb1oWyJW7WM3MJoVEqTxKfwM+2Sk1kKnaNVyGGo5WUJfCN
   XS7A1N40MkwGcLR2VzRIskrYTTH5LLs4KgiGOjH43cdNO0zh8cqorwX5j
   w==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; 
   d="scan'208";a="21103116"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Dec 2021 17:05:49 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9A284280065;
        Thu, 16 Dec 2021 17:05:49 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] i.MX8MP: more USB3 glue layer feature support
Date:   Thu, 16 Dec 2021 17:05:38 +0100
Message-Id: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
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

Thanks for any feedback and best regards,
Alexander

Alexander Stein (3):
  dt-bindings: phy: imx8mq-usb-phy: Add imx8mp specific flags
  phy: fsl-imx8mq-usb: Add support for setting fsl specific flags
  arm64: dts: imx8mp: Add memory for USB3 glue layer to usb3_phy nodes

 .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 52 +++++++++++++++-
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  6 +-
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c    | 61 +++++++++++++++++++
 3 files changed, 116 insertions(+), 3 deletions(-)

-- 
2.25.1

