Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E7326C1DA8
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 18:21:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231905AbjCTRVZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 13:21:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233332AbjCTRU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 13:20:57 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B4103345A
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 10:16:52 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id o40-20020a05600c512800b003eddedc47aeso2567436wms.3
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 10:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679332590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ciOmJ8lUq444j7rDWT4tZ7vaysYFPy1lLMlFYtJcqeU=;
        b=Wj6DFJV5bgY1B1s0AC8CpnmL/Chzw5urw8WvMx8m3wgXUNUCzrja4X7RXKenSvKv0l
         X+aefOjRXrGEr3x1UgOwkxIk/jaFbKyB0tjBLKAKFH9quNoyaqx5nOSwucH53fG980nZ
         bOrN9LhymAA8lkjNhL6oUw1MY4RGGsGWXnoxxEnL9I3/+cNxWY5xXmP1cTcqibiBnr3M
         FSq7PuyL5/AZE7YoQpN88PtqvcWAvHkQgTaUzQr9lZ+S7iKn0BaamJsa2/wtG6d5YUzE
         6KvNWK6znDl6KOOZwUBZeLijhZjIAwZ9cObTlvixPt+gT59JKNWw6tKP5k97Sjs241rH
         gcHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679332590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ciOmJ8lUq444j7rDWT4tZ7vaysYFPy1lLMlFYtJcqeU=;
        b=wuuEzlnq04+qWicPxkfEdFyupbmeRgaesvazqnszrftM1OHC9b0YEfEOOUyB0ISbvd
         AeIlUiQ7bwhSWnZAzJPTXbkji6R9yAUY0lbIWEFr2qXlwqvyEvt6bcYxxo2gEQ9xGE9r
         fBwgY6moKOJmcu70349/IT9ChxF2JEkhPipBc6ggooI4NOgJfKgjGIvJcRbDrlTvWhOR
         tRbmYqwNmQ3grylQfASZoF8sjTn/ToAvK8Q1Y7k5yvot7DCjPZ8M42FOD6OwiwLuOrBv
         OEE1wJvNUtgF2mDQmvdUkEkP8D0E2AwSndSF2LfO+BKEY5vPDtm1bd4jN1QjuycSHxHZ
         o55w==
X-Gm-Message-State: AO0yUKWr/ayGNDSlXjUv8DzCfIefZM8b3YGcUyHWrfBc+IGzMHjQErt+
        CZ3eBPjMMY4oq2xw0MwgHew=
X-Google-Smtp-Source: AK7set/Lwe4k4z2yQrfaST/GdpK1kDGFBWheWR7e4nD+NYss/JKF5uDs5aFhla2w0vdhMTw/+3SuTw==
X-Received: by 2002:a1c:7311:0:b0:3ea:d611:f8 with SMTP id d17-20020a1c7311000000b003ead61100f8mr222568wmb.38.1679332590270;
        Mon, 20 Mar 2023 10:16:30 -0700 (PDT)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation (net-188-217-57-73.cust.vodafonedsl.it. [188.217.57.73])
        by smtp.gmail.com with ESMTPSA id r10-20020adfce8a000000b002cefcac0c62sm9452559wrn.9.2023.03.20.10.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 10:16:29 -0700 (PDT)
Date:   Mon, 20 Mar 2023 18:16:27 +0100
From:   Tommaso Merciai <tomm.merciai@gmail.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Sandor Yu <Sandor.yu@nxp.com>,
        Robert Foss <robert.foss@linaro.org>,
        patchwork-lst@pengutronix.de,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-phy@lists.infradead.org, Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v0.5 0/9] i.MX8MP HDMI support
Message-ID: <ZBiU6wvZR+vfLEYO@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220506181034.2001548-1-l.stach@pengutronix.de>
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Lucas,

On Fri, May 06, 2022 at 08:10:25PM +0200, Lucas Stach wrote:
> Hi all,
> 
> second round of the i.MX8MP HDMI work. Still not split up into proper
> parts for merging through the various trees this needs to go into, but
> should make it easy for people to test.
> 
> I've worked in the feedback I got from the last round, including fixing
> the system hang that could happen when the drivers were built as modules.
> 
> Series is based on linux-next/master, as there are some prerequisite
> patches in both the drm and imx tree already. The last patch from [1]
> and the patches from [2] need to be applied. Please note that this series
> expects the sync polarity from the LCDIF to be set according to the
> comments I made in [2]. Please test and provide feedback.
> 
> Regards,
> Lucas

I tested your series on Linux 6.2.0-rc8
Tested-by: Tommaso Merciai <tomm.merciai@gmail.com>

Thanks for your work!

Regards,
Tommaso

> 
> [1] https://lore.kernel.org/all/20220406153402.1265474-1-l.stach@pengutronix.de/
> [2] https://lore.kernel.org/all/20220322142853.125880-1-marex@denx.de/
> 
> Lucas Stach (9):
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
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml |   73 ++
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |   19 +
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |   94 ++
>  drivers/gpu/drm/imx/Kconfig                   |    1 +
>  drivers/gpu/drm/imx/Makefile                  |    2 +
>  drivers/gpu/drm/imx/bridge/Kconfig            |   18 +
>  drivers/gpu/drm/imx/bridge/Makefile           |    4 +
>  drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c     |  201 +++
>  drivers/gpu/drm/imx/bridge/imx-hdmi.c         |  141 +++
>  drivers/phy/freescale/Kconfig                 |    6 +
>  drivers/phy/freescale/Makefile                |    1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1078 +++++++++++++++++
>  14 files changed, 1783 insertions(+)
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
> 
