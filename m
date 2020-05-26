Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C66C41BEA09
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2020 23:36:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726858AbgD2Vg0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Apr 2020 17:36:26 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:41279 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726554AbgD2VgZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Apr 2020 17:36:25 -0400
Received: by mail-oi1-f194.google.com with SMTP id 19so3231496oiy.8
        for <devicetree@vger.kernel.org>; Wed, 29 Apr 2020 14:36:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OeAhLLVksUW5/hckjGBTuqnB90/z5Gzog71jRuY3aSM=;
        b=KleDKHl5XCm70iuHkwv/ueAjYeSJwEAV3i8cIDEtNh5mN0eh6/g+C3JsvM4Uqos1wv
         gULJ+L8DxqniaqlEuBYl8SNBmEJY/aOcArhDoRay2bT1xKH5GvnYrSQ2IZZQVOc7PNKg
         3ccgu0/Ya5kgsmYUMvLLqZKMTUtDhOHB72KqbDEBYFcx7t9f3LnhxUQ94rLG0GT/+FW5
         9CEy2ioUi4zXUS0bJ3K3BQ0+mBDQ9dcOK088O+VX0B8FoTW4ULqLHYyjox6ptTjHPLJ8
         V1MJVbTl8/GJo+bMUDxRt584xnCJMxbdvNkTB+QqO14KeHgKBk4hQpDd6ltZlF5jLVQx
         Obag==
X-Gm-Message-State: AGi0PubsoyMmjvvjZ5A6/9Lmk/t4gUumKk/kRulwn9n6ictffcl6INId
        RAI71Gmk29CvwlOPkY/MPssm5+0=
X-Google-Smtp-Source: APiQypIHLcP4uyi6iBBQnRex1vtx/0RRUYf5g8oaCu2AISmGpvY3rzNZu/dOpNArZjbBHTIgH3Vtmg==
X-Received: by 2002:aca:2807:: with SMTP id 7mr239980oix.15.1588196185150;
        Wed, 29 Apr 2020 14:36:25 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z13sm685565oth.10.2020.04.29.14.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2020 14:36:24 -0700 (PDT)
Received: (nullmailer pid 8147 invoked by uid 1000);
        Wed, 29 Apr 2020 21:36:23 -0000
Date:   Wed, 29 Apr 2020 16:36:23 -0500
From:   Rob Herring <robh@kernel.org>
To:     Michael Tretter <m.tretter@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rohit Visavalia <rohit.visavalia@xilinx.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Dhaval Shah <dshah@xilinx.com>, kernel@pengutronix.de,
        Michael Tretter <m.tretter@pengutronix.de>
Subject: Re: [PATCH v3 2/6] ARM: dts: define indexes for output clocks
Message-ID: <20200429213623.GA8109@bogus>
References: <20200417070526.7178-1-m.tretter@pengutronix.de>
 <20200417070526.7178-3-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200417070526.7178-3-m.tretter@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Apr 2020 09:05:22 +0200, Michael Tretter wrote:
> The VCU System-Level Control provides 4 clocks. Defined indexes for
> these clocks.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> Changelog:
> 
> v2 -> v3:
> - none
> 
> v1 -> v2:
> - none
> ---
>  include/dt-bindings/clock/xlnx-vcu.h | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 include/dt-bindings/clock/xlnx-vcu.h
> 

Acked-by: Rob Herring <robh@kernel.org>
