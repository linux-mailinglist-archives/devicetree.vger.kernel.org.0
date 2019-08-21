Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CF925982BF
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 20:29:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728001AbfHUS27 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 14:28:59 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:35696 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727041AbfHUS27 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 14:28:59 -0400
Received: by mail-oi1-f196.google.com with SMTP id a127so2373177oii.2
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 11:28:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IlBQAnr7SqK4vmV2hECCA6HOV9bFnSuAK7Tq5FMjjA8=;
        b=DgkEfI4IexXCU3RA+El1lfgidEM9qM+qO8Apgh16mM7WPG60nPAfqSkpGb2xFWa2Jj
         j2wAkANRngC1DFciStGHoTomZV4/Tzmx3uKhU937FJ8VPkl3aZJmL6lQntkmLM5IHZjZ
         FdIwR6xdG4d2oLDsoAwO9jJixSTVYfKHicM+FFdTxtYLmFr5gRY1iLy2u4w0dN6xdVn9
         Wats9OcDyzqld2lxWfiCOZ2+4qy7Zgz38l6wfNFVM8xvCYDEehcGZTyhAu9g4CW8ekjM
         YkUu0rPHuYefiRHlIp+nvsxBbrsuuGTvQ92n3yWmV0zS5kjsB3wNmTnTgZ9f85qxNR+V
         eXAQ==
X-Gm-Message-State: APjAAAVwvYvDseV2maSuqHCNaWU2ER3XcB3AKbQwUESxLzoz7E6yFSFF
        0OyjaRYaR6vIexSYDYhDTg==
X-Google-Smtp-Source: APXvYqzZ2kL4eV9GHI+LzLFqZpeECnpk4G/fNpQj05SXOgQowMQ4kWdCir2tFQluy3kAlHyAIGe2zw==
X-Received: by 2002:aca:bc06:: with SMTP id m6mr1044042oif.65.1566412138589;
        Wed, 21 Aug 2019 11:28:58 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id c11sm6726816otr.54.2019.08.21.11.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 11:28:58 -0700 (PDT)
Date:   Wed, 21 Aug 2019 13:28:57 -0500
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
Subject: Re: [PATCH v3 14/19] dt-bindings: pci: add PHY properties to Armada
 7K/8K controller bindings
Message-ID: <20190821182857.GA9660@bogus>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <20190731122126.3049-15-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190731122126.3049-15-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 31, 2019 at 02:21:21PM +0200, Miquel Raynal wrote:
> Armada CP110 PCIe controller can have from one to four PHYs for
> configuring SERDES lanes (PCIe x1, PCIe x2 or PCIe x4). Describe the
> phys and phy-names properties in the bindings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/pci/pci-armada8k.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/pci-armada8k.txt b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> index 9e3fc15e1af8..7cf12162aa4e 100644
> --- a/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> +++ b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> @@ -17,6 +17,12 @@ Required properties:
>     name must be "core" for the first clock and "reg" for the second
>     one
>  
> +Optional properties:
> +- phys: phandle(s) to PHY node(s) following the generic PHY bindings.
> +	Either 1, 2 or 4 PHYs might be needed depending on the number of
> +	PCIe lanes.
> +- phy-names: names of the PHYs.

You need to enumerate what the names are. Based on your example in v2, I 
don't think the names are really valuable unless you can skip lanes.

Rob
