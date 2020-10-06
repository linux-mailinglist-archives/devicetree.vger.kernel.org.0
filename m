Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 063802853B2
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 23:12:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727301AbgJFVMV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 17:12:21 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:42469 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727270AbgJFVMV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 17:12:21 -0400
Received: by mail-ot1-f65.google.com with SMTP id m13so167429otl.9
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 14:12:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=aYG3AmJULZnA0XYemhke2fPJZeG1mH4wYZrft2qWiOE=;
        b=WsCNDSVM/Bb1PGFtpTmVE045W2mRAUMl8tJ7zO07HN26wdl1F/ApC6Dio7LedABdXi
         gSBoru55Vsb2AmIT24xGr0F/IJt7Oj+XXx0i2cfc6Hft85+207k9rLC1f0vMAX64D48C
         NUgb3JWm42E4bIEK1c9mdpOgPSgjmdXwHTuXSXCx7UosPTp7jxCpIFOhA/YKxeBDYdAK
         21BWtINtI/YMBCadswP4u1Q53XGSwqnquF4xv/FjZCSA2Cl6dnjl9iHnORzZeepCmObD
         6+YcdORHrZOw8HubHmLkOeb52ctGTYYyACtqK+ktmZGCFTAIIe/SfpuCfm/TkfpJi5Ti
         sXKQ==
X-Gm-Message-State: AOAM530uxSSqQeaRwwb6tTAMHMWNmuy5eaikD/gdgzYtDq8gU+DYNLng
        dZ7RroJC5jTPeBEkt2N0Bg==
X-Google-Smtp-Source: ABdhPJzjE4JQg7Hj0i9tiw4rcVde2GxVR+0Zg3xGwleV/CDz9Vl9F2dSXALJwxyFDXvznMpYzSOKuA==
X-Received: by 2002:a9d:929:: with SMTP id 38mr4192060otp.324.1602018740268;
        Tue, 06 Oct 2020 14:12:20 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n13sm11674oic.14.2020.10.06.14.12.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 14:12:19 -0700 (PDT)
Received: (nullmailer pid 2850100 invoked by uid 1000);
        Tue, 06 Oct 2020 21:12:18 -0000
Date:   Tue, 6 Oct 2020 16:12:18 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH 2/5] dt-bindings: clock: imx8mm: Add media blk_ctl clock
 IDs
Message-ID: <20201006211218.GA2850050@bogus>
References: <20201003224555.163780-1-marex@denx.de>
 <20201003224555.163780-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201003224555.163780-2-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 04 Oct 2020 00:45:52 +0200, Marek Vasut wrote:
> These will be used by the imx8mm for blk_ctl driver.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Abel Vesa <abel.vesa@nxp.com>
> Cc: Dong Aisheng <aisheng.dong@nxp.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Guido Günther <agx@sigxcpu.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> ---
>  include/dt-bindings/clock/imx8mm-clock.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
