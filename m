Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC0793D4273
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 23:52:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231902AbhGWVLv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 17:11:51 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:45905 "EHLO
        mail-io1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231839AbhGWVLu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 17:11:50 -0400
Received: by mail-io1-f43.google.com with SMTP id l126so4183729ioa.12
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 14:52:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UO41X40WQO9H5grNCLnYM3agECHGEhl3gNrQpIhpUYI=;
        b=LXaio974aPrEl5KdbVW2aC0xXqlSKXRPnVHzgPsp6k2J4KaKnnRUZD2iZ9E5D0zmg9
         /CBtmXh4C8SJNPivkXxsice/3SW08Hgm4+tQD7/mTfubYtBgpbMW5cJyq/zRx57qEBXz
         FFXUrpWxb9gWwW9NzgnqBvSKaCHY8GiGH2pZETRFrGFOklUmf2zbIUR5TnHsaADsQnJ4
         wT/B8niUcEzTx7tB13YHYr1ymxfWJEI2jCctOFKyEupDxt2hUkeuTWNNm5cZfP5SRsqR
         XBi9Ml5o4Df4/pY8mrvEuFX84aLDK66shkqxi3S8X8Gc+Z3CX6X/kY3ebKcz3iDveiS4
         PQjQ==
X-Gm-Message-State: AOAM532GC99sRXvmMSE0UJdHFTZ3HpD51zWsXYWP1yU/a2PVp/1XswIz
        pPVUdq6r/YAcW08cwhS9xA==
X-Google-Smtp-Source: ABdhPJxmlNhOeXcJa6zB7Q/l5RVQew0DY3JMnmRM1aeREZ/K5+B6rC8hKcHJklUyzxS7SSYxk0zlyQ==
X-Received: by 2002:a5d:914a:: with SMTP id y10mr5619437ioq.140.1627077142771;
        Fri, 23 Jul 2021 14:52:22 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id u15sm19612203ion.34.2021.07.23.14.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 14:52:22 -0700 (PDT)
Received: (nullmailer pid 2656735 invoked by uid 1000);
        Fri, 23 Jul 2021 21:52:20 -0000
Date:   Fri, 23 Jul 2021 15:52:20 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-sunxi@googlegroups.com
Subject: Re: [PATCH 21/54] dt-bindings: interconnect: sunxi: Add R40 MBUS
 compatible
Message-ID: <20210723215220.GA2656706@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-22-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-22-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:03:51 +0200, Maxime Ripard wrote:
> The R40 MBUS compatible was introduced recently but it was never
> documented.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml  | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
