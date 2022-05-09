Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7555D51FD13
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 14:41:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234687AbiEIMnk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 08:43:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234668AbiEIMna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 08:43:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B89E717064A
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 05:39:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5EEEC61381
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 12:39:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAC3CC385B1
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 12:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652099975;
        bh=4pdDyj8Uqf5h+ygGMeScyGvtGBs9H4jkPVf/M61pCYM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=cqvUKiMQjxCZS/RxUTgvqZAfSkQT3onY3tgvVl1VYd7ZuR/M623sLsvfKJF4L0r2w
         1Y3wLrZXlIvHgcLm89dIWEa5EgKZkQRI0uCtm62z33VqhExo63cvtmYx4J9FCyagy2
         b/EhLUraRiS0J78/cl6FBEjUhCMUk/zFyHVzQjlojwH2nZ0wwBdPVvFBquh8ZLAxCL
         LuIUD+vrMIOYYcKmtH34BcTYsH/rzkG0Pxh2z5kT7/b14rH6f6o1DrGQ8gFWL46PTl
         FW94l4jtyToNU4SellYAi0b0rbhKCPQWQIq+7eyeKvUWoFoWxupte3zKoh6g58zFwE
         MoNko3t7AhA6g==
Received: by mail-pj1-f44.google.com with SMTP id c1-20020a17090a558100b001dca2694f23so12548875pji.3
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 05:39:35 -0700 (PDT)
X-Gm-Message-State: AOAM530yUfkYvntNG1ifH5SWF8Cnzbsd4dU/5FaqhCns+tLos2eU9pif
        k2Rgls0VXCfko2Vlz8wzV+PIqXwLU6w1Bb33NQ==
X-Google-Smtp-Source: ABdhPJzY+52lvreCxSE+SV84bW6k+vIzb2/XSRbA+WI7GTnSSGhm9iaPNLWydUDWgGa891uawG+Ab4DUOaPU1TwxvoI=
X-Received: by 2002:a17:902:7884:b0:15e:e6a8:346 with SMTP id
 q4-20020a170902788400b0015ee6a80346mr16208838pll.151.1652099975350; Mon, 09
 May 2022 05:39:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220406153402.1265474-1-l.stach@pengutronix.de> <20220406153402.1265474-4-l.stach@pengutronix.de>
In-Reply-To: <20220406153402.1265474-4-l.stach@pengutronix.de>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 9 May 2022 07:39:22 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJBxWhJpEp6f2kenjX=eOq6MPXTY1w-Jp8zpF7RwQAT1w@mail.gmail.com>
Message-ID: <CAL_JsqJBxWhJpEp6f2kenjX=eOq6MPXTY1w-Jp8zpF7RwQAT1w@mail.gmail.com>
Subject: Re: [PATCH v4 03/11] dt-bindings: soc: Add i.MX8MP media block
 control DT bindings
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 6, 2022 at 10:34 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> From: Paul Elder <paul.elder@ideasonboard.com>
>
> The i.MX8MP Media Block Control (MEDIA BLK_CTRL) is a top-level
> peripheral providing access to the NoC and ensuring proper power
> sequencing of the peripherals within the MEDIAMIX domain. Add DT
> bindings for it.
>
> There is already a driver for block controls of other SoCs in the i.MX8M
> family, so these bindings will expand upon that.
>
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Marek Vasut <marex@denx.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 104 ++++++++++++++++++
>  include/dt-bindings/power/imx8mp-power.h      |  10 ++
>  2 files changed, 114 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml

This is now failing in linux-next:

/builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb:
blk-ctl@32ec0000: power-domain-names:7: 'isp' was expected
 From schema: /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml

Rob
