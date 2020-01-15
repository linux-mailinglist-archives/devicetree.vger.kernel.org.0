Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2252B13B65D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 01:08:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728880AbgAOAIT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 19:08:19 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:45660 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728862AbgAOAIS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 19:08:18 -0500
Received: by mail-ot1-f66.google.com with SMTP id 59so14477840otp.12
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 16:08:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=PEMFQk9O8jxAvzI8sFAtYfnpYGHToC52icRpafkpCkM=;
        b=i3AbcEs8RXx1vZOdFzZ5LbZFPWwN0gobzzoqb5BCLTBRNBdzX1gQlSn3zsa2EOFl5G
         ue2H57llAw/hRhn1F62wJgujApZjpFRsg0XglLPbelc598NkoetGeG0Fs7kruvWfqmAG
         DCW6F0N6Kd8EbWh5dpEDmiFT8dxyAFQ5G5cGO7s66CAPJX81QsVfDrD5f0Iy9DuI1a8X
         28JFHQD5D7GT+0/FiWPfvKk5mM1dXy/IQICgjDFN1/i0aqkem583yPLhT7IzTaFxirwJ
         vN39bN6UjOaePTj1o4r15Ft5q8mJ89ZVt8G66jRdadNxgJ2KaRJAuTbLPBCZ7wDNnwil
         uGRg==
X-Gm-Message-State: APjAAAUy8IyuSP3lP67jiMN8lYvKg8hBGXKCVQPN/KXKH77jw5RaeIO9
        aXe32g2gFOP+xN49baT3TnZLLcU=
X-Google-Smtp-Source: APXvYqx/g4/dPYkLFj30lbzXuvCgChc+gqBwXX2uDypLaKpgSxiQL8JWkTSaN+a+GUU9GVaBkx3i0w==
X-Received: by 2002:a9d:5c8a:: with SMTP id a10mr749162oti.95.1579046897328;
        Tue, 14 Jan 2020 16:08:17 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id h1sm5912282otm.34.2020.01.14.16.08.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 16:08:16 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2209ae
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 18:08:16 -0600
Date:   Tue, 14 Jan 2020 18:08:16 -0600
From:   Rob Herring <robh@kernel.org>
To:     Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
Cc:     devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
Subject: Re: [PATCH v2] dt-bindings: rcar-csi2: Convert bindings to
 json-schema
Message-ID: <20200115000816.GA10876@bogus>
References: <20200108215209.1825544-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200108215209.1825544-1-niklas.soderlund+renesas@ragnatech.se>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Jan 2020 22:52:09 +0100, =?UTF-8?q?Niklas=20S=C3=B6derlund?= wrote:
> Convert Renesas R-Car MIPI CSI-2 receiver bindings documentation to
> json-schema.
> 
> Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> ---
>  .../bindings/media/renesas,csi2.txt           | 107 ----------
>  .../bindings/media/renesas,csi2.yaml          | 198 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 199 insertions(+), 108 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/renesas,csi2.txt
>  create mode 100644 Documentation/devicetree/bindings/media/renesas,csi2.yaml
> 

Applied, thanks.

Rob
