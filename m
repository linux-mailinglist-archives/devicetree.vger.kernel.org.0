Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E133C1271C3
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2019 00:47:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726998AbfLSXrM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Dec 2019 18:47:12 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:41560 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726963AbfLSXrM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Dec 2019 18:47:12 -0500
Received: by mail-ot1-f65.google.com with SMTP id r27so9355202otc.8
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2019 15:47:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Zcnv3gHHJuKh2Cmz3rCYr47I2ejU2zRvjV1FXxWug6Y=;
        b=oNWeDZLr/Ph7uTLmc08xxoZx0bMSsSuCtdNeIeaIxQ3LnEckFvbigBVOKvPDggIrnh
         2pCXgNfEIyQ/EtYJsLHxe+VOGCvhnqX2wsK6KD/M17SRq+Bg5aKM5wR8/dsGlwJPPKlL
         45qnsblpftLKiOGQvCve96NeiYBmwwuNA1JU1PGylTttFUr/16VHwAb6yCX7e0U/1asv
         YiHsjOgs7BgkhREHBSEabQxuFx1UIHkWiwIoJJRHlhCXK160xY7sRXtJXTXuRA+cja7m
         LupE6oiCNIWi7ekG8lx+y3Nz5v0Zh5g7/MZlDPwEjmg0Fq6lXraoqLDsCSS5vJMB7qbH
         qNSg==
X-Gm-Message-State: APjAAAVCwzd/V2kSgZWNzGmaW3VpKTQ3LKeUAQUMRnQiD2kqYa9u8uFR
        Z9YVdjRilW80U09kZIWgpg==
X-Google-Smtp-Source: APXvYqxT11s+igvaaRYXdU0m5rUSQPEA7PDPbe1s0vfatDy3m3p85R9FShINqEQSNREFrNp6nsFjEQ==
X-Received: by 2002:a05:6830:1289:: with SMTP id z9mr11961396otp.317.1576799231523;
        Thu, 19 Dec 2019 15:47:11 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net. [184.205.174.147])
        by smtp.gmail.com with ESMTPSA id e6sm2696345otl.12.2019.12.19.15.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2019 15:47:11 -0800 (PST)
Date:   Thu, 19 Dec 2019 17:47:09 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: Fix the PX30 DSI PHY compatible in
 the example
Message-ID: <20191219234621.GA28252@bogus>
References: <20191213180019.25080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191213180019.25080-1-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Dec 2019 19:00:18 +0100, Miquel Raynal wrote:
> Use the upstream compatible instead of the BSP one in the example
> section of the DT bindings for this IP.
> 
> Fixes: 3200df7fa1d6 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob
