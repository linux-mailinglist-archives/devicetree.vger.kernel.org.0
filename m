Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A0B44707E5
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 19:52:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730430AbfGVRw1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 13:52:27 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:35907 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727021AbfGVRw1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 13:52:27 -0400
Received: by mail-io1-f66.google.com with SMTP id o9so75940471iom.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 10:52:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cA+zVaQ6viNNjn5xSPMVzFdoWxdqyNVcvHNcRVwNmsA=;
        b=ZW7VvpHgHNw+74zxKCS0phKzAIehk/MGgM84uQJEWZKMPYVhY48hz8InTVhRAgKAU9
         RK4GYUS65n+hdsE87/sgSmKBQnozogPSvGAnRcFWpZY395L7RAYayJpenpj6EqbMjKx2
         OMuNziheT7tOkcySSUvb+ke8phumVJGCWxSeg5plH+8/K6gBJjdIur1vMTTYrhDhxi6y
         I3BoL1VOSuVBKGegDUFCMQM4Q/gN9RZ6kwl4aV8kjzMXjJb+8uBm+Zg6B1DRQjuA4cP2
         AwtERIdtC8f7bZXr2aAAuGTTqidJTd+XkrgRYAl150zP5oxWdso6DgZ2sKAMs5RMLHqj
         yMnA==
X-Gm-Message-State: APjAAAU6fv+p/LUjSyfQJwomC99HhMQ4tKvQc+tL23ioPhPr0ESBumV1
        7lTIEPDSX8Nj7g9HkmIVuw==
X-Google-Smtp-Source: APXvYqx9gF6qMvoMUPkC54EXe6V87cgv3SgKF9Y6tDCMBu5hgbQxlxQpS+avy5PJLLAEZ0UqVEvsHg==
X-Received: by 2002:a02:69d1:: with SMTP id e200mr19169849jac.138.1563817946697;
        Mon, 22 Jul 2019 10:52:26 -0700 (PDT)
Received: from localhost ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id y18sm40525187iob.64.2019.07.22.10.52.26
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 10:52:26 -0700 (PDT)
Date:   Mon, 22 Jul 2019 11:52:25 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Russell King <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org,
        Grzegorz Jaszczyk <jaz@semihalf.com>
Subject: Re: [PATCH v2 14/19] dt-bindings: pci: add PHY properties to Armada
 7K/8K controller bindings
Message-ID: <20190722175225.GA13801@bogus>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190627122505.25774-2-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 27, 2019 at 02:25:00PM +0200, Miquel Raynal wrote:
> Armada CP110 PCIe controller can have a PHY (for configuring SERDES
> lanes). Describe these two properties in the bindings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/pci/pci-armada8k.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/pci-armada8k.txt b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> index 9e3fc15e1af8..a373a80524db 100644
> --- a/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> +++ b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> @@ -17,6 +17,10 @@ Required properties:
>     name must be "core" for the first clock and "reg" for the second
>     one
>  
> +Optional properties:
> +- phys: phandle to the PHY node (generic PHY bindings).
> +- phy-names: names of the PHYs.

How many? If only 1, you don't really need phy-names.

> +
>  Example:
>  
>  	pcie@f2600000 {
> -- 
> 2.19.1
> 
