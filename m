Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E9AB2853B1
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 23:12:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727530AbgJFVMI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 17:12:08 -0400
Received: from mail-oo1-f65.google.com ([209.85.161.65]:33401 "EHLO
        mail-oo1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727333AbgJFVMH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 17:12:07 -0400
Received: by mail-oo1-f65.google.com with SMTP id g8so79380oov.0
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 14:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=dQz2w/oqVzKcHyuh+ZeMxHmpGO7G+Lk3gkxxr4xTAS4=;
        b=s5pgGw3znqmgufrAYCCOx7LdwOe/wP26y+da7SHIAnlsRBUMvSYu7XHDsmj3IwFSFt
         IMzTzZ6dkk5nKW4UvKIwWKhUpv7D+v6WRM/QoyEdEsQf6V0VrLazw3Im57WnOExrhles
         dFFVAvEKephtbQd/oxYcyzWeYDoNNY7QcsEdAM/+IFw/QNy+dK8D9ujNGMRdcA/VzL1t
         NFDGDpCXIKiJvPHy1nQLoF7Kk4rXjC5UwUlxIHdR4XCwSfXnLEhJdLn/TyvGFJE2tgDH
         rzNEwhWT2Pe3A/4s7d91NAI9hBwCSLSrZ0AwiIsiIFwJR8q5bKoOCSmAqb96lvQz0sth
         S/BA==
X-Gm-Message-State: AOAM533Ir0wFiLutupP/mNDQAtsMu3UFYqzL2ptUw2akYCWwjllnpwYO
        l+Hy4zsHyfT7qAI/E8d6gw==
X-Google-Smtp-Source: ABdhPJwJj0ZKI7KnyFEQUrs4fvn7fzD7QM9w0qLknfx7BtxCDdM9kpQYgbNFODIT9ujYIkkK/Gybmg==
X-Received: by 2002:a4a:ad05:: with SMTP id r5mr14988oon.37.1602018726258;
        Tue, 06 Oct 2020 14:12:06 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u68sm1702483otb.9.2020.10.06.14.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 14:12:05 -0700 (PDT)
Received: (nullmailer pid 2849601 invoked by uid 1000);
        Tue, 06 Oct 2020 21:12:04 -0000
Date:   Tue, 6 Oct 2020 16:12:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Fabio Estevam <festevam@gmail.com>,
        Abel Vesa <abel.vesa@nxp.com>, devicetree@vger.kernel.org,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 1/5] Documentation: bindings: clk: Add bindings for
 i.MX8MM BLK_CTL
Message-ID: <20201006211204.GA2849566@bogus>
References: <20201003224555.163780-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201003224555.163780-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 04 Oct 2020 00:45:51 +0200, Marek Vasut wrote:
> Add the i.MX8MM BLK_CTL compatible string to the list.
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
>  Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
