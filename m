Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5DBC51F7A8
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 11:12:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237558AbiEIJNS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 05:13:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237813AbiEIIsU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 04:48:20 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9893E134E4E
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 01:44:25 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nnz06-0004q6-4v; Mon, 09 May 2022 10:44:18 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v12 0/3] drm/rockchip: RK356x VOP2 support last fixups
Date:   Mon, 09 May 2022 10:44:17 +0200
Message-ID: <5819111.lOV4Wx5bFT@diego>
In-Reply-To: <20220509083738.1246866-1-s.hauer@pengutronix.de>
References: <20220509083738.1246866-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha,

Am Montag, 9. Mai 2022, 10:37:35 CEST schrieb Sascha Hauer:
> This is not the full series, if you want that, look for v11.
> 
> This series merely has a last-minute change: The VOP2 driver used
> platform_get_resource_byname() to get its registers, but the reg-names
> property hasn't been documented in the binding. This series adds the
> missing documentation and along the way renames the generic "regs"
> name to "vop" and "gamma_lut" to "gamma-lut".

we need a fixup-series though. Both the original binding + vop2 driver
already made it into drm-misc [0]. As this is a shared tree, this can't be
changed anymore ;-) .

(Just ignore that the vop2-header moved to the driver-patch, I'll
fix that up when applying to not cause conflicts)


Heiko

[0] https://cgit.freedesktop.org/drm/drm-misc/commit/?id=604be85547ce4d61b89292d2f9a78c721b778c16
    https://cgit.freedesktop.org/drm/drm-misc/commit/?id=74015e2650bad641a02100cdf0ac23a96c1a2553


> Andy Yan (1):
>   drm: rockchip: Add VOP2 driver
> 
> Sascha Hauer (2):
>   arm64: dts: rockchip: rk356x: Add VOP2 nodes
>   dt-bindings: display: rockchip: Add binding for VOP2
> 
>  .../display/rockchip/rockchip-vop2.yaml       |  146 +
>  arch/arm64/boot/dts/rockchip/rk3566.dtsi      |    4 +
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi      |    4 +
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   51 +
>  drivers/gpu/drm/rockchip/Kconfig              |    6 +
>  drivers/gpu/drm/rockchip/Makefile             |    1 +
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    1 +
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    6 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |    2 +
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   15 +
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 2706 +++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  477 +++
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  |  281 ++
>  include/dt-bindings/soc/rockchip,vop2.h       |   14 +
>  14 files changed, 3713 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
>  create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>  create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
>  create mode 100644 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>  create mode 100644 include/dt-bindings/soc/rockchip,vop2.h
> 
> 




