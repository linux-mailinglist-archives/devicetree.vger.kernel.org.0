Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C82F7146B96
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2020 15:44:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728665AbgAWOoN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jan 2020 09:44:13 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:39794 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728205AbgAWOoN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jan 2020 09:44:13 -0500
Received: by mail-ot1-f65.google.com with SMTP id 77so2937779oty.6
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2020 06:44:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=h4oHzrFYKqp+VGW1bsUiQD/W3J5scTqNZ8AL4zNgxc0=;
        b=NPxpHgnUBFp4hhHy6AxM6kxQmN2WCkn/V7S/pyemq/g2mv0liQYJ/35Y3s+Th8otSL
         uetXCxoxy+cIzOYryH0EeaJJWHLHHZlrumy7utz+EJJr9hQNsaris15jLY13GoxPswBi
         BbtLljGzih2Kq5LxlQqV8qkGfBLInWl0NnHYO7NY0pA5/OUxZsUzX0JrAdJQCbcYp0Yp
         CCHXJJLQSZiaA57OiPC/xnRqnsZxPpfqFlvudYxTB536GYXCG/dd1hqrVrpseum3z5xr
         PQazvCu0V2KXHXJf07YvrUsX1GzjfTFZWbFG32zlxLToQSPytxbhUDwrtOft2vCdEoWZ
         aSqg==
X-Gm-Message-State: APjAAAXlcuwJECOQ2mZRwocXW0CCB0uSBZ/IG76pX4w9mFy0LI/i4Awi
        rZy2kpT8E/R3YjNy3ROwOA==
X-Google-Smtp-Source: APXvYqznkYyQ82Iaq8fFB0N1PdBN29CchqSiaNIZ4ovIW3gdQxYo3Z67i87qruav9akbSEbbJRCETA==
X-Received: by 2002:a05:6830:1d91:: with SMTP id y17mr11150667oti.276.1579790652164;
        Thu, 23 Jan 2020 06:44:12 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p24sm851505oth.28.2020.01.23.06.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 06:44:11 -0800 (PST)
Received: (nullmailer pid 13653 invoked by uid 1000);
        Thu, 23 Jan 2020 14:44:11 -0000
Date:   Thu, 23 Jan 2020 08:44:11 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org, Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/3] dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
Message-ID: <20200123144411.GA13589@bogus>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
 <3022a8d9d60f35db072b39313ec46708a567a9c5.1579696927.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3022a8d9d60f35db072b39313ec46708a567a9c5.1579696927.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 22 Jan 2020 13:44:07 +0100, Maxime Ripard wrote:
> The Allwinner H6 has introduced an IOMMU. Let's add a device tree binding
> for it.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
