Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F312B487861
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 14:43:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238933AbiAGNnI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 08:43:08 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:33413 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232401AbiAGNnH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 7 Jan 2022 08:43:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1641562987; x=1673098987;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TzlNRoPFKE9uxp+QTQ0H33W6AYljsZGXfziVit12Tno=;
  b=PcRxAwAnMsPMP3Fb2D+MpDXjNqhQlFQ9kg584tAvmmD0mboJU1bqb70A
   r88EIdn32InRkvIRSPlYvhcZ9DAlJA+uLCJgaQInfq8xGiain0b8epjE5
   +2YwGvqram+ZuN2JqgzmvvX4lQbymr0uGLjMt9hG+7A3A/bAWsqu/ubXU
   BDJBZ1CZnPQM/4qCEIvbArWQidfXHbZBu4UFRa81O6sq5IZAH+L9a7ndh
   8M3rXjYVhL/Y19HA6qpivniiF5UiZ3xeBMLKEanJSCOJ4+bLH4Ma+MTc8
   +e0zfRVq+YIMuZcZvUrCSL5ic5BoNxgJ8tnIEdQ+ekCNkif1tIPtv7oy7
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,270,1635199200"; 
   d="scan'208";a="21379011"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 07 Jan 2022 14:43:05 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 07 Jan 2022 14:43:05 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 07 Jan 2022 14:43:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1641562985; x=1673098985;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TzlNRoPFKE9uxp+QTQ0H33W6AYljsZGXfziVit12Tno=;
  b=hAk8zXGPN9hEzsOB4kQCujxGtDlaDe6MOpOHH1osx+Rle1tb7KCpiEnV
   CtttNnqZfEkHe+GbSHte/ZleSs/JXnUDgM+VdURLHJpMSIg/QH3OWSD5k
   WpUcDu6t8kVmYADfBR+OlQfuP6ZWMa5QcF2KgBGhaKMv2VVztQyYxSQaZ
   634QbTYWFlWjX2/U0EI0ti/eFvj0jZu58D79jAUbxtQvuY7HpZiqPm7Xg
   CUeGbXU5uDiQPEqZp+Bk7rC42w0YNdYWOO2iiIBYGA8az1Lc16WqOFzS5
   74llYt0HekJul2OyH/HB1/exwgZPqnaTA9UQJ0oA/b14EpcCeOEwDuUHC
   w==;
X-IronPort-AV: E=Sophos;i="5.88,270,1635199200"; 
   d="scan'208";a="21379010"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Jan 2022 14:43:05 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2F4F6280065;
        Fri,  7 Jan 2022 14:43:05 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     dl-linux-imx <linux-imx@nxp.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>, Jun Li <jun.li@nxp.com>
Subject: Re: (EXT) RE: [PATCH v2 0/3] i.MX8MP: more USB3 glue layer feature support
Date:   Fri, 07 Jan 2022 14:43:02 +0100
Message-ID: <4835974.GXAFRqVoOG@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <VI1PR04MB43337694F243F8D1B1F6DBCE897D9@VI1PR04MB4333.eurprd04.prod.outlook.com>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com> <VI1PR04MB43337694F243F8D1B1F6DBCE897D9@VI1PR04MB4333.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am Mittwoch, 22. Dezember 2021, 04:18:57 CET schrieb Jun Li:
> > -----Original Message-----
> > From: Alexander Stein <alexander.stein@ew.tq-group.com>
> > Sent: Friday, December 17, 2021 12:06 AM
> > To: Kishon Vijay Abraham I <kishon@ti.com>; Vinod Koul <vkoul@kernel.org>;
> > Rob Herring <robh+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Sascha
> > Hauer <s.hauer@pengutronix.de>; Fabio Estevam <festevam@gmail.com>
> > Cc: Alexander Stein <alexander.stein@ew.tq-group.com>; dl-linux-imx
> > <linux-imx@nxp.com>; linux-phy@lists.infradead.org;
> > devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> > Subject: [PATCH v2 0/3] i.MX8MP: more USB3 glue layer feature support
> > 
> > This patchset aims to support flags for e.g. over-current active low or
> > port permanantly attached which are provided in the USB3 glue layer.
> > 
> > There is already a glue layer driver dwc3-imx8mp, but unfortunately this
> > driver does not use the glue area at all, it only handles wakeup-support
> > which is done in the HSIO BLK_CTRL area (0x32f10100), accordingly the
> > driver only uses the hsio clock.
> > 
> > The driver which actually uses the USB3 glue area is phy-fsl-imx8mq-usb.
> > As the name indicates PHY is configured in the corresponding registers,
> > which are part of the USB3 glue layer.
> > 
> > This make is it unclear for me which driver should handle the required
> > features above.
> > dwc3-imx8mp, the glue layer driver, does not touch the glue area at all,
> > but the HSIO BLK_CTRL area.
> > phy-fsl-imx8mq-usb only touches the PHY registers in the glue layer.
> > Neither does map the USB3 control register from the glue layer.
> > 
> > Thanks for any feedback and best regards, Alexander
> 
> Which driver handle what function is decided by the driver *function*,
> not where the actual HW logic is located, iMX8MP do have a "glue" layer
> in SoC HW, some part is for phy config, and some part is for controller,
> so we need put the part of phy config into the phy driver, the changes
> you are adding is for controller so should be put in dwc3-imx8mp.c from
> my point view.

Thanks for that feedback. This makes things clearer to me.
Yes, dwc3-imx8mp.c seems the right place for that. I'll do that.

Best regards,
Alexander



