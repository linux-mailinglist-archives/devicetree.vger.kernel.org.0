Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D53244F6886
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:59:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239825AbiDFSAT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 14:00:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239829AbiDFSAJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 14:00:09 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A20D2247C01
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 09:10:49 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id n6-20020a17090a670600b001caa71a9c4aso3202131pjj.1
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 09:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=95RDoGyZtbEcoHnBFQepKxpMoAUWFwyWGwDHuUzcbMY=;
        b=zTEdfItkEUK2LGYDh68HRGrbmaItaQKULw+9lTwbEZaNWQ05CQRkXWASt2A7Qmhj8K
         YGMn50PZLtb7ypgA3b1nPiDm0qf0Mv3ndZBmL7rAsU/WuANTcI6C8A08/xkYCuGhWLKS
         PItQG6iDdRcofzI+yRZ3GcCEqpnnkET4k4bzz5g+2T2owMotAIBXShuBP2qJnHIyhZWp
         JCjqJ0UKzYCWKcRzlgzg3hI2Hp+zS69zcd8L4LMVuD4I9iJvsWoN1cLmAFk4OA5SGfrd
         SRU58ASegW/3oxsQ7FfT09ANtu+UI8wvdVAghhGIgJdowFKp0DMI+a9BBAlS1Qy3vrlF
         7gIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=95RDoGyZtbEcoHnBFQepKxpMoAUWFwyWGwDHuUzcbMY=;
        b=7R05WTmucrDlOiPO7RRX8hl0nnpXirsEKEW/79q2go0Ghb34KRJbMRQ0EAfl8sXt2r
         fcm3hU9BcayEKoz5W1jHfQm6uFq2CctNFagWeiBuQMG3IO3UtjMDW1G1jyqpBIyz6grJ
         UoEDA1LTW2CkUclnbjHZcMeZUmww///5y4K83mzx5IpJihFeYN1bdHeFEVilq7LSl8E/
         J9VCGK392D+H0ZDpMSUpW7hGLCPMRDQAVxGDN+1cKtKT13U13iIRpPDNxyp1nRubb0Ri
         AZSFDXo/iOtJ/NJRI97B6JISUaCmN9nscHDyVSbS1aLgyJkuVT4Xo+al+R6R60CnL7wn
         OMnw==
X-Gm-Message-State: AOAM531Vmqe0YxlKBchZ39iBVsg5lrjtG+tV8C82kDBBS+ger6zyEx3t
        T9ecoHnZDntXT9JBlLwBpGqmbUbEsQnsJOyt9PuihA==
X-Google-Smtp-Source: ABdhPJzlZiYbA1h7PZOpTXhFDSXJLbry3YFGlV7/j3Lx1oTWVTvgRcbYK3zPbBRS+2NsM3aFsrF3c9D6iK8fVBDPttI=
X-Received: by 2002:a17:903:206:b0:153:ebab:a52f with SMTP id
 r6-20020a170903020600b00153ebaba52fmr9290143plh.118.1649261449125; Wed, 06
 Apr 2022 09:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
In-Reply-To: <20220406160123.1272911-1-l.stach@pengutronix.de>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Wed, 6 Apr 2022 09:10:38 -0700
Message-ID: <CAJ+vNU3pxSiAX5_fmLy9ztUZ4-dvm5GHdUnucWZwWcQ539dT4w@mail.gmail.com>
Subject: Re: [PATCH v0 00/10] i.MX8MP HDMI support
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        DRI mailing list <dri-devel@lists.freedesktop.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 6, 2022 at 9:01 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi all,
>
> this adds support for the HDMI output pipeline on the i.MX8MP.
> It currently depends on the i.MX8MP HDMI power domain series [1]
> and support for the new LCDIF [2] in the i.MX8MP. I guess the
> implementation presented here also still has some warts that
> require fixing and the individual patches most likely need to go
> through different maintainer trees, so I don't expect this series
> to be applied right away.
>
> However this complete series should allow people to test it more
> easily and provide feedback on the implementation with the full
> picture available.
>
> Compared to downstream this implementation actually allows to
> power down the separate HDMI PHY power domain when the display
> is inactive or no HDMI cable is connected.
>
> Regards,
> Lucas
>
> [1] https://lore.kernel.org/all/20220406153402.1265474-1-l.stach@pengutronix.de/
> [2] https://lore.kernel.org/all/20220322142853.125880-1-marex@denx.de/
>
> Lucas Stach (10):
>   drm/bridge: dw-hdmi: add low-active PHY reset
>   dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
>   drm/imx: add bridge wrapper driver for i.MX8MP DWC HDMI
>   dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
>   drm/imx: add driver for HDMI TX Parallel Video Interface
>   dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
>   phy: freescale: add Samsung HDMI PHY
>   arm64: dts: imx8mp: add HDMI irqsteer
>   arm64: dts: imx8mp: add HDMI display pipeline
>   arm64: dts: imx8mp-evk: enable HDMI
>
>  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      |   83 ++
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml |   72 ++
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |   19 +
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |   93 ++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |    7 +
>  drivers/gpu/drm/imx/Kconfig                   |    1 +
>  drivers/gpu/drm/imx/Makefile                  |    2 +
>  drivers/gpu/drm/imx/bridge/Kconfig            |   18 +
>  drivers/gpu/drm/imx/bridge/Makefile           |    4 +
>  drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c     |  209 +++
>  drivers/gpu/drm/imx/bridge/imx-hdmi.c         |  128 ++
>  drivers/phy/freescale/Kconfig                 |    7 +
>  drivers/phy/freescale/Makefile                |    1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1145 +++++++++++++++++
>  include/drm/bridge/dw_hdmi.h                  |    1 +
>  16 files changed, 1852 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
>  create mode 100644 drivers/gpu/drm/imx/bridge/Kconfig
>  create mode 100644 drivers/gpu/drm/imx/bridge/Makefile
>  create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c
>  create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi.c
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
>
> --
> 2.30.2
>

Lucas,

Thanks for consolidating this - It's been difficult to try to merge
these for testing.

I still have not been able to apply these to origin/master or
imx/master - what are you basing off of here?

Best Regards,

Tim
I
