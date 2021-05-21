Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A5C238BC0C
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 03:55:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237898AbhEUB5B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 21:57:01 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:33495 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237897AbhEUB5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 21:57:00 -0400
Received: by mail-oi1-f174.google.com with SMTP id b25so18340908oic.0
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 18:55:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eE3s3QqZdkbvKfx1bKaiPOzYVck9Xy7IUvgPpJ2b1IE=;
        b=UhYLK5X4v6V3jdeQ5nW4rbHuSJrCA3J0gw4wOBqHN1H8PqfOQhEncfe0BMDF13a/SF
         TnoyNb5yaxdSFBT/8cVA6fSkVEDR6+qvn5394VFjlgddzfPCEK5+Y5g9/CAdICvs8+mr
         YIUgd0zOhwXgkBJdpI51Rjw/sPx9Bi2IJADie9vx+c7jzsHuZZX5c+5JWznNWvLPZZJK
         jLmjEZdTBhcz4FSZt8OErtIMJP+uRQ7I3LqDXo7hDOZvtsYPhzjv5NhYfWtUpF0B2FV7
         5xAE7SNSnv/6vsdy0H/uUydnSz/kjzWyB5CSEU5V1KbYDvRK81+eq7XRLH0WlTtxq3ai
         d72Q==
X-Gm-Message-State: AOAM530FBUw3brovpO0E/Fg9mTGk5X3E7HLZ+BrLtbSLrDqvWnn119Gr
        2jlg5USBfeHco5zu2YxXpg==
X-Google-Smtp-Source: ABdhPJyNZfhFR5v7zIS49YqC4T/tmkoHiYxPx1ZbhTAlxhnLxZJBYEZUHzecjTPWui0a3sNgPBgWMg==
X-Received: by 2002:aca:d616:: with SMTP id n22mr326045oig.76.1621562137201;
        Thu, 20 May 2021 18:55:37 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n17sm919683oij.57.2021.05.20.18.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:55:36 -0700 (PDT)
Received: (nullmailer pid 2490216 invoked by uid 1000);
        Fri, 21 May 2021 01:55:35 -0000
Date:   Thu, 20 May 2021 20:55:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Helmut Grohne <helmut.grohne@intenta.de>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>
Subject: Re: [PATCH v20 08/19] dt-binding: memory: pl353-smc: Fix the reg
 property in the example
Message-ID: <20210521015535.GA2483864@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-9-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519182636.1110080-9-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 19, 2021 at 08:26:25PM +0200, Miquel Raynal wrote:
> The reg property should describe the entire accessible zone, not only
> the one the driver wants to access. With this in mind, the example
> should map two regions instead of one to be entirely accurate.

No, not really. The address space is already covered by 'ranges'. Unless 
you need the range in the arm,pl353-smc-r2p1 driver.

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/memory-controllers/pl353-smc.txt       | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> index 1335b94291ad..9d220d4cb39d 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> @@ -27,7 +27,8 @@ Example:
>  		compatible = "arm,pl353-smc-r2p1", "arm,primecell";
>  		clock-names = "memclk", "apb_pclk";
>  		clocks = <&clkc 11>, <&clkc 44>;
> -		reg = <0xe000e000 0x1000>;
> +		reg = <0xe000e000 0x0001000>,
> +		      <0xe1000000 0x5000000>;
>  		#address-cells = <2>;
>  		#size-cells = <1>;
>  		ranges = <0x0 0x0 0xe1000000 0x1000000 /* Nand CS region */
> -- 
> 2.27.0
> 
