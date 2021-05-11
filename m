Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A75837EDF8
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 00:54:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1389475AbhELU5n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 16:57:43 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:46961 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1385270AbhELUH5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 16:07:57 -0400
Received: by mail-oi1-f174.google.com with SMTP id x15so9629819oic.13
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 13:06:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8TdAR2mvGf5UGl2kFAkQi49UvtmR/Qj6oOd5Zeam6mw=;
        b=uHv5C1daVtijdZ/rZ8LEqkWaEmezdHDZ7HCyKqwfF+7l3loZTjUocxTTptX8qpAOig
         AakX6GzTMhodMDryCD0kUtQt5HG8V/oDNLb+F56MPBzgPNHrzHzM4N5CsILqLxFB8PIV
         9MTJAy1QytGbO3JFxlT/CMrESIMLGBlbprBSJAXinTE1aHovipA05HbRGC12iNzgey36
         2/IlCwYPh/X7wRfpZMsI/g3nnLT+vhyUCZ6Hv800IafAZ11QnRgMirblol1AOqdCP07T
         yrC212AMNZFZ7hL4Wl0ddYa8l6vSTFqErIjf5dzggMFITcJWTizrusPrwn1Qkw9GPXQ+
         ivJA==
X-Gm-Message-State: AOAM5331SD8i0pXmto8a2L5HCssZYoLecfYAJc+eCVpMTco4CLXph7F8
        k4ZV9lllokdHfBrNJo5WOw==
X-Google-Smtp-Source: ABdhPJw/moeKD6N4LkBlAOfMb83SZmmRSKKMp8fMOwMiavvSmmvUCPpL/C+WrlQfYeoF08zME48KZA==
X-Received: by 2002:a05:6808:a87:: with SMTP id q7mr27514109oij.38.1620850007841;
        Wed, 12 May 2021 13:06:47 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id o6sm193968ote.14.2021.05.12.13.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 13:06:47 -0700 (PDT)
Received: (nullmailer pid 2434949 invoked by uid 1000);
        Tue, 11 May 2021 19:04:36 -0000
Date:   Tue, 11 May 2021 14:04:36 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        "Lukas F . Hartmann" <lukas@mntre.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: imx8mq: add support for MNT Reform2
Message-ID: <20210511190436.GA2434919@robh.at.kernel.org>
References: <20210510185931.104780-1-l.stach@pengutronix.de>
 <20210510185931.104780-3-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210510185931.104780-3-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 May 2021 20:59:31 +0200, Lucas Stach wrote:
> From: Lucas Stach <dev@lynxeye.de>
> 
> This adds a basic devicetree for the MNT Reform2 DIY laptop. Not all
> of the board periperals are enabled yet, as some of them still require
> kernel patches to work properly. The nodes for those peripherals will
> be added as soon as the required patches are upstream.
> 
> The following has been tested to work:
> - UART console
> - SD card
> - eMMC
> - Gigabit Ethernet
> - USB (internal Keyboard, Mouse, external ports)
> - M.2 PCIe port
> 
> Co-developed-by: Lukas F. Hartmann <lukas@mntre.com>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> v2: Fix checkpatch complaints.
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8mq-mnt-reform2.dts | 164 ++++++++++++++++++
>  3 files changed, 166 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
> 

Reviewed-by: Rob Herring <robh@kernel.org>
