Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E9D1598499
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 21:37:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728044AbfHUTh3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 15:37:29 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:39333 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726903AbfHUTh3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 15:37:29 -0400
Received: by mail-ot1-f65.google.com with SMTP id b1so3186439otp.6
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 12:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qTxTORe3CDU5+wtcsSTA+vrlvuH2y71OcdqPkUNK2CM=;
        b=ThaiRaVIazQp8TRuYLLd8Uf7kjgA0nxvcAbHw8qAb6qT+jKAKxwE85WLPgA9hGnnth
         ODHRDCwDskk8pzZTpxspOGp3Bmr03pj1huTrq1jaqic2OdPT7aTNvgWDDbwRu4XLAhQg
         oxd39TuQbYzrrMtXnlBKgE5S2aCNRqrlacipB6Xym2teuYdrstzIOmsJ7PZxv2lzA7yn
         rlBz3lkJ+u+HBomJ4fVZgvR4FKq8JDIBQSFNYYvs3zXXmLi2dMfyA+BGJJ3WJljMo93I
         wRxJm3S4JOB5LrK5eH3t7VIoSNZ+rw4ZYX/HgwzpQkVR5uHH3Zrr1f3VIsLX4HobqEDd
         pWKw==
X-Gm-Message-State: APjAAAX8aq4Gc9+LWZfh7RbeUbT+wImavWfgIrKqDNiXw/TL3OZJ/+U3
        WlhY7yFjaABM0JktrD/7hg==
X-Google-Smtp-Source: APXvYqxUT+qOGqfMv0e1mea4IU+z4ctDfnpUPFYem3kRN8quYNDUUfknG9YdMP6OHSguJ8Uxm0enuQ==
X-Received: by 2002:a9d:5a11:: with SMTP id v17mr26504937oth.87.1566416247945;
        Wed, 21 Aug 2019 12:37:27 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i22sm8014537oto.80.2019.08.21.12.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 12:37:27 -0700 (PDT)
Date:   Wed, 21 Aug 2019 14:37:26 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        linux-arm-kernel@lists.infradead.org,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>
Subject: Re: [PATCH 16/20] dt-bindings: marvell: Declare the CN913x SoC
 compatibles
Message-ID: <20190821193726.GA32220@bogus>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
 <20190806145500.24109-17-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190806145500.24109-17-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 06, 2019 at 04:54:56PM +0200, Miquel Raynal wrote:
> From: Grzegorz Jaszczyk <jaz@semihalf.com>
> 
> Describe the compatible properties for the new Marvell SoCs:
> * CN9130: 1x AP807-quad + 1x CP115 (1x embedded)
> * CN9131: 1x AP807-quad + 2x CP115 (1x embedded + 1x modular)
> * CN9132: 1x AP807-quad + 3x CP115 (1x embedded + 2x modular)
> 
> CP115 are similar to CP110 in terms of features.
> 
> There are three development boards based on these SoCs:
> * CN9130-DB: comes as a single mother board (with the CP115 bundled)
> * CN9131-DB: same as CN9130-DB with one additional modular CP115
> * CN9132-DB: same as CN9130-DB with two additional modular CP115
> 
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/arm/marvell/armada-7k-8k.txt           | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)

Please convert this to DT schema first.

> 
> diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
> index df98a9c82a8c..8eb34ca4c4f0 100644
> --- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
> +++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
> @@ -1,7 +1,7 @@
>  Marvell Armada 7K/8K Platforms Device Tree Bindings
>  ---------------------------------------------------
>  
> -Boards using a SoC of the Marvell Armada 7K or 8K families must carry
> +Boards using a SoC of the Marvell Armada 7K/8K or CN913x families must carry
>  the following root node property:
>  
>   - compatible, with one of the following values:
> @@ -18,6 +18,17 @@ the following root node property:
>     - "marvell,armada8040", "marvell,armada-ap806-quad", "marvell,armada-ap806"
>        when the SoC being used is the Armada 8040
>  
> +   - "marvell,cn9130", "marvell,armada-ap807-quad", "marvell,armada-ap807"
> +      when the SoC being used is the Armada CN9130 with no external CP.
> +
> +   - "marvell,cn9131", "marvell,cn9130",
> +     "marvell,armada-ap807-quad", "marvell,armada-ap807"
> +      when the SoC being used is the Armada CN9130 with one external CP.
> +
> +   - "marvell,cn9132", "marvell,cn9131", "marvell,cn9130",
> +     "marvell,armada-ap807-quad", "marvell,armada-ap807"

It's generally not all that useful to have all these compatibles.

> +      when the SoC being used is the Armada CN9130 with two external CPs.

Is the number of external CPs not discoverable somewhere else in the DT?

> +
>  Example:
>  
>  compatible = "marvell,armada7040-db", "marvell,armada7040",
> -- 
> 2.20.1
> 
