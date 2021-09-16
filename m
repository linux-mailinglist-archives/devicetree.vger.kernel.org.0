Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5097640EBA9
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 22:23:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238970AbhIPUYr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 16:24:47 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:36534 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238937AbhIPUYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 16:24:45 -0400
Received: by mail-ot1-f54.google.com with SMTP id n2-20020a9d6f02000000b0054455dae485so4645564otq.3
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 13:23:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PfdYnYvLItkPGxefoqLTslcgJiPl4jGR+4OwaxURvbU=;
        b=IUSWHvmmWrL+lP9nX2nMCbBj9sG57DENnoBfnfDwU/hAanreungBsP79fXmz1aXdP3
         4tv12g9WeQGicITx26jW+izbE9WywlECli/mUJDgNriE5WO6a9mN4K6vsLWiA69RnbNp
         zitiYYi+MR5ID4CinDyTUb3wImA43FA8zASr7nk0tDwylncfe3OwTUOJ3U+/UAgCkeOR
         OGZ9GdmLBGTaSxhlr3dSmB77HxvIIjXXy2v9ULvaYwVzL+U9l/qGQ9HBeAsCeK2nWEoA
         8U9VjrIzsf6eyQSaHqVpnobdGZHJdxjViV/zqQnpPQPNLkBtF1nks3LGv7lVrxG3EjTh
         QluQ==
X-Gm-Message-State: AOAM532KpJwXVYhD0ek/c7TS5WVpQTaXbm231YjU9yUqWrQOerSWuJas
        E0p+IvprwjZ4G+8TH7+/FCisPWpBVg==
X-Google-Smtp-Source: ABdhPJzfp+x70pgMtcfLjF6wtNtV4+DOUyPWcoAPiN668gFu0ki665BUJtfz1dIC0pE/209WdwbCtg==
X-Received: by 2002:a05:6830:10c8:: with SMTP id z8mr6228353oto.175.1631823804388;
        Thu, 16 Sep 2021 13:23:24 -0700 (PDT)
Received: from robh.at.kernel.org (107-211-252-53.lightspeed.cicril.sbcglobal.net. [107.211.252.53])
        by smtp.gmail.com with ESMTPSA id y11sm922925oof.32.2021.09.16.13.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 13:23:23 -0700 (PDT)
Received: (nullmailer pid 1437360 invoked by uid 1000);
        Thu, 16 Sep 2021 20:23:21 -0000
Date:   Thu, 16 Sep 2021 15:23:21 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        patchwork-lst@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>,
        Adam Ford <aford173@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v4 08/18] dt-bindings: soc: add binding for i.MX8MM VPU
 blk-ctrl
Message-ID: <YUOnua8nbv84Y/gL@robh.at.kernel.org>
References: <20210910202640.980366-1-l.stach@pengutronix.de>
 <20210910202640.980366-9-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210910202640.980366-9-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Sep 2021 22:26:30 +0200, Lucas Stach wrote:
> This adds the DT binding for the i.MX8MM VPU blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml      | 76 +++++++++++++++++++
>  1 file changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
