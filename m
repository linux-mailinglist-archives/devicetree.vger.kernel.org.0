Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CA0937935F
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 18:07:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230356AbhEJQIi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 12:08:38 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:46951 "EHLO
        mail-oi1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230271AbhEJQI0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 12:08:26 -0400
Received: by mail-oi1-f172.google.com with SMTP id x15so2486131oic.13
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 09:07:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=YJa+re1zrG8AmimHQ1M3LBVLAdSCyEWbmT/Y40S8ixs=;
        b=NJSu0VMI2qLh+7R/JaBZM+Hssdc5WKBNUFaEoOlJB5iUhR42ikbJmkXUbjZRuS04Xt
         Zs3QUDAsxX3UOgDDJlMGkU1cn4qxv+IHxbM4QI7a/7TRf2y30l97l1/7Qf9FxqCBC/Ca
         1nV/exKsoCxLp5W8f63rK61Xfp/Qxop9CNPvoXegphC0VPEyU0F0AUwTR1G+Kqtv8ryD
         38uhCbgZdcOgvaXcDCqbX6I5NqTZsIuGLafK2TTZ/WRBwnejDSMG2bCLVQFlrk8/gyfa
         ilIs6mEmzvkxEXjVz7L4hxfrE8g3ItRk7NLZQ62FgRm2RLFmnyG+HYuFVLleqbWUCpay
         siqw==
X-Gm-Message-State: AOAM531sRmo9Wsmez8+sjZTLkxrKb0GcpUN9hcBO+TAgOphC4tRo/beN
        Rx+AOR/Jyh3qy5ip6/R92/zayPrVXQ==
X-Google-Smtp-Source: ABdhPJw3GdhW3CJwkOh0G82kLH5Y4x5zwLzeTwsZ8eLGat8VeWcePUHlDxMLMXB8vaRJPRM8CI73gw==
X-Received: by 2002:aca:f413:: with SMTP id s19mr8318467oih.127.1620662840425;
        Mon, 10 May 2021 09:07:20 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v22sm739599oic.37.2021.05.10.09.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 09:07:18 -0700 (PDT)
Received: (nullmailer pid 209979 invoked by uid 1000);
        Mon, 10 May 2021 16:07:17 -0000
Date:   Mon, 10 May 2021 11:07:17 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <dev@lynxeye.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: dts: imx8mq: add support for MNT Reform2
Message-ID: <20210510160717.GA208325@robh.at.kernel.org>
References: <20210508121650.105864-1-dev@lynxeye.de>
 <20210508121650.105864-3-dev@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210508121650.105864-3-dev@lynxeye.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 08, 2021 at 02:16:50PM +0200, Lucas Stach wrote:
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
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8mq-mnt-reform2.dts | 164 ++++++++++++++++++
>  3 files changed, 166 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts

checkpatch complains about some indentation.
