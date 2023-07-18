Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA2C975757D
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 09:39:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbjGRHj4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 03:39:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231759AbjGRHjy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 03:39:54 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65A75171C
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 00:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689665979; x=1721201979;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=UJsIi3D4zDu0VjcUmmlsHRVnmLwOFqmIT/kb3xsdkMc=;
  b=DgoeP6kWdf2SVyiyelbBpxp97X6AK3ruzXsOnOVP94SkuCODKiWeIMCF
   iOo50vSVq8eaeMCD7VTpzE7PvmtW5a63x0fqA7Y7QrG+Xz5MIxmHBtw2p
   QZkRQNuCLGjfxwONdwIYBpuUkdv1SKLreY4KK7Y5I6lWyaAo5RInfPsDf
   Zm8cmm9Ev8GiOss3P7009kMgOObejnpzDW6GPkbS0KhNdDFR9/N9tqf5L
   u6Efs/nBq8nuljFXKOf5aqWBXA1S+mWC9WLyljsyzPvgv47iAgQhEyb3W
   gxzU+ntR4E/K+d6EbPUBrvRQzimYT9DHc1FOcxEO1vZHhUa1QZUzhxPAB
   A==;
X-IronPort-AV: E=Sophos;i="6.01,213,1684792800"; 
   d="scan'208";a="31978588"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Jul 2023 09:39:37 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DA074280078;
        Tue, 18 Jul 2023 09:39:36 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     neil.armstrong@linaro.org, conor+dt@kernel.org, rfoss@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jonas@kwiboo.se,
        shawnguo@kernel.org, s.hauer@pengutronix.de,
        jernej.skrabec@gmail.com, robh+dt@kernel.org,
        Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com,
        kernel@pengutronix.de, linux-imx@nxp.com,
        Liu Ying <victor.liu@nxp.com>
Subject: Re: [PATCH 0/9] drm/bridge: imx: Add i.MX93 MIPI DSI support
Date:   Tue, 18 Jul 2023 09:39:36 +0200
Message-ID: <3750806.kQq0lBPeGt@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230717061831.1826878-1-victor.liu@nxp.com>
References: <20230717061831.1826878-1-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am Montag, 17. Juli 2023, 08:18:22 CEST schrieb Liu Ying:
> Hi,
>=20
> This series aims to add MIPI DSI support for Freescale i.MX93 SoC.
>=20
> There is a Synopsys DesignWare MIPI DSI host controller and a Synopsys
> Designware MIPI DPHY embedded in i.MX93.  Some configurations and
> extensions to them are controlled by i.MX93 media blk-ctrl.
>=20
> Add a DRM bridge for i.MX93 MIPI DSI by using existing DW MIPI DSI
> bridge helpers and implementing i.MX93 MIPI DSI specific extensions.
>=20
> Note that since this series touches the dw-mipi-dsi driver, tests are
> needed to be done for meson, rockchip and stm.
>=20
> Patch 1 ~ 7 do preparation work for adding i.MX93 MIPI DSI DRM bridge
> driver.
>=20
> Patch 8 adds DT-binding documentation for i.MX93 MIPI DSI.
>=20
> Patch 9 adds i.MX93 MIPI DSI DRM bridge.
>=20
> Liu Ying (9):
>   drm/bridge: synopsys: dw-mipi-dsi: Add dw_mipi_dsi_get_bridge() helper
>   drm/bridge: synopsys: dw-mipi-dsi: Add input bus format negotiation
>     support
>   drm/bridge: synopsys: dw-mipi-dsi: Force input bus flags
>   drm/bridge: synopsys: dw-mipi-dsi: Add mode fixup support
>   drm/bridge: synopsys: dw-mipi-dsi: Use pixel clock rate to calculate
>     lbcc
>   drm/bridge: synopsys: dw-mipi-dsi: Set minimum lane byte clock cycles
>     for HSA and HBP
>   drm/bridge: synopsys: dw-mipi-dsi: Disable HSTX and LPRX timeout check
>   dt-bindings: display: bridge: Document Freescale i.MX93 MIPI DSI
>   drm/bridge: imx: Add i.MX93 MIPI DSI support
>=20
>  .../display/bridge/fsl,imx93-mipi-dsi.yaml    | 115 +++
>  drivers/gpu/drm/bridge/imx/Kconfig            |  10 +
>  drivers/gpu/drm/bridge/imx/Makefile           |   1 +
>  drivers/gpu/drm/bridge/imx/imx93-mipi-dsi.c   | 934 ++++++++++++++++++
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c |  91 +-
>  include/drm/bridge/dw_mipi_dsi.h              |  16 +
>  6 files changed, 1163 insertions(+), 4 deletions(-)
>  create mode 100644
> Documentation/devicetree/bindings/display/bridge/fsl,imx93-mipi-dsi.yaml
> create mode 100644 drivers/gpu/drm/bridge/imx/imx93-mipi-dsi.c

Thanks for posting this patch series. I was trying to use this driver on ou=
r=20
TQMa93xxLA platform where the DSI signals are connected to a TC9595 (driver=
=20
tc358767) DSI-to-DP bridge.
Unfortunately this bridge requires the DSI signals to be in LP-11 upon rese=
t=20
and while in idle, otherwise not even DP AUX channel is functional.
Apparently DSI is currently not in LP-11. But reading the RM I have no idea=
=20
how to configure the DSI host to achieve that. Do you have additional=20
information which might help me here?
Also could you provide your DT configuration?

Thanks and best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


