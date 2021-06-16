Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8105C3AA7AA
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 01:45:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234765AbhFPXr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 19:47:59 -0400
Received: from mail-il1-f178.google.com ([209.85.166.178]:46620 "EHLO
        mail-il1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231389AbhFPXr5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 19:47:57 -0400
Received: by mail-il1-f178.google.com with SMTP id i12so3787324ila.13
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 16:45:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WV3fdv9T91HkQwn2eHfkzoQCho9KhuvM9AfLMH8Tm2s=;
        b=NSevCP5X5LmzQwZZZ1q1XQ6EuUXsjVYkMJBVIjxu9FRttQFSy6AKf2K+M/h+Ady0MT
         qmXrV0AqkWhCmmZt+caiqfDiFTldLU/H8Yqos1L9VJVM2eqC8rqNbVk66LSes/+7qBKz
         ++a5XJgcJeFG9ojY/+dubGzmuoA866sd7XimQV/eombtcy07z2R0wWgGw1DPW0AJ6zlU
         WR3/eZpA+A1t+8xNzcZQ1uP3ZFUJAWCSap02cuinqebqfw3oc2UZ1geu38H6FX2PAhHW
         zFQyp3xop68XnuUMXCRf1aJTe9P1pBz0w1t7wGxUr0+FrGhKKkcMDkM43bOprHvPZtbr
         SRRw==
X-Gm-Message-State: AOAM530GDKbADm3BrPo7j6/s+/31327FpaED99ML/Y2mLzyo8J/nvrXx
        zVeFcdZUoZwqEuyFHQf2sw==
X-Google-Smtp-Source: ABdhPJzItseA4CqeV1jETNaQqucE1h0APnyQ1BvCk9ROkOQUmNQ7IVwJ2xYmFjMD7AEMrJD3Y1cPEg==
X-Received: by 2002:a92:c7cf:: with SMTP id g15mr1469381ilk.28.1623887150259;
        Wed, 16 Jun 2021 16:45:50 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id m13sm1951338ila.80.2021.06.16.16.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 16:45:49 -0700 (PDT)
Received: (nullmailer pid 308564 invoked by uid 1000);
        Wed, 16 Jun 2021 23:45:45 -0000
Date:   Wed, 16 Jun 2021 17:45:45 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, aisheng.dong@nxp.com,
        shawnguo@kernel.org, linus.walleij@linaro.org,
        s.hauer@pengutronix.de, sboyd@kernel.org, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 07/11] dt-bindings: watchdog: imx7ulp-wdt: Add imx8ulp
 compatible string
Message-ID: <20210616234545.GA308517@robh.at.kernel.org>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
 <20210607083921.2668568-8-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607083921.2668568-8-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Jun 2021 16:39:17 +0800, Jacky Bai wrote:
> For i.MX8ULP, it uses two compatible strings, so Add the compatible
> string for i.MX8ULP.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  .../devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml      | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
