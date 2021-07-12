Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 904483C64FB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jul 2021 22:28:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236674AbhGLUbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jul 2021 16:31:08 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:37536 "EHLO
        mail-io1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230284AbhGLUbI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jul 2021 16:31:08 -0400
Received: by mail-io1-f45.google.com with SMTP id l18so19334498iow.4
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 13:28:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=fGvC8Rmlq+HbHIPe8BroS93uEk+31V5VzKS9PYAOT20=;
        b=Xfd9QnfV9yHJHlTDT7DOEjSQOmfid2Tj5w+gGbYjSexhD2FBdjPy/zZFap0Y/HoyMA
         Vi1qz353bHyFoHM2PQYLP/WyZ8qxEu/jXjfwGQrNMJ4urDiiS/HkWE6aYYb9yO8nvCW+
         ENUMMnE73NJpjV8iBfDt0X8gVhkXnWeGAUFCbtaMTGHBR3vVX2bHItgtBuwGGnpu3I5r
         LVvwPdBvT/igeWla9oXF3qhI358QU73Xl2So10/5iXhFbk2sEDqXj6o5NjP/8ZM8Prgb
         0HwdOqIH6YqLg7HLtNvtrasSLZS/h1KsCwqw/6lDhmAASwXPw2z7mdAHCJDQDpYC51aH
         mX1A==
X-Gm-Message-State: AOAM5316Evom0O1y5wgu7FUs0kdbCTUQeKcLS52es5w5q4dUmwRQiNIw
        BEmxWs5xFprzBb589+iyyw==
X-Google-Smtp-Source: ABdhPJz2qMCXjyNZLcbWzAj/h0dcj5RqxPvPxt4ihvWtQkgIXY198CeiemIgAYh6E0G48NPKm9cALg==
X-Received: by 2002:a05:6602:3315:: with SMTP id b21mr527199ioz.13.1626121699074;
        Mon, 12 Jul 2021 13:28:19 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id 15sm8688273ilt.66.2021.07.12.13.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jul 2021 13:28:18 -0700 (PDT)
Received: (nullmailer pid 2434430 invoked by uid 1000);
        Mon, 12 Jul 2021 20:28:17 -0000
Date:   Mon, 12 Jul 2021 14:28:17 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH] dt-bindings: mxsfb: Add compatible for i.MX8MN
Message-ID: <20210712202817.GA2434371@robh.at.kernel.org>
References: <20210620225028.189637-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210620225028.189637-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 21 Jun 2021 00:50:28 +0200, Marek Vasut wrote:
> NXP's i.MX8MN has an LCDIF as well.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> ---
>  Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!
