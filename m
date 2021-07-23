Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1ED963D428B
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 00:02:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232359AbhGWVVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 17:21:30 -0400
Received: from mail-io1-f46.google.com ([209.85.166.46]:43763 "EHLO
        mail-io1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231724AbhGWVVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 17:21:30 -0400
Received: by mail-io1-f46.google.com with SMTP id 185so4228857iou.10
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 15:02:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IZsQv3b2rBg1Kwv8iDiFXw9MGkmVhh43V3cEy0HgYvQ=;
        b=CrDybRrkqUjazLiDMrirc72UUNtsvMv9++n9jSshZlVkxzVjr5wn1oUYJglFpNcxIK
         QvZoerf5hcm8bsI2fxRR/qCnyiz5aEqAhySe7zm52kxUJUfXG9IplMrcZo4ES1fGeu8I
         xUbAmlxUivkxLxOBc3W77DEpc66h+wi7g9EuVMO3gmwvi4a4jrfGMmVNuoOJBm8nZc9K
         hUQ502zYZKn+0lbSHm7QBDsFsEJ0Uiu/5doTAzEWTsVElxekI1yCEvABWFVE/cwEsybv
         bc34M8gNK94rFzEAifwGVGB7cA0WcSCrvbsYmx4nUT0vyCzJ8gxwgy91CC6dBG6mgI39
         TRpA==
X-Gm-Message-State: AOAM53390TQCeZjcLU8rB21eRsDjUE6C4Lv2q46fY9UHx6WSKiIIq+xU
        G8IYGofdDZKGl3vrSJ0jdg==
X-Google-Smtp-Source: ABdhPJytAlppZADNq3kgiUn2OrOlSNcPtwnFhpJH9uAZBaLvylao5kVb/7nEfEuhY+PHCWrqt3spQA==
X-Received: by 2002:a5d:8b51:: with SMTP id c17mr1506586iot.119.1627077723363;
        Fri, 23 Jul 2021 15:02:03 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id z18sm16603934ilp.68.2021.07.23.15.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 15:02:02 -0700 (PDT)
Received: (nullmailer pid 2672591 invoked by uid 1000);
        Fri, 23 Jul 2021 22:02:00 -0000
Date:   Fri, 23 Jul 2021 16:02:00 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com,
        linux-arm-kernel@lists.infradead.org,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 32/54] dt-bindings: sunxi: Add Allwinner A80 PRCM Binding
Message-ID: <20210723220200.GA2672536@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-33-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-33-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:04:02 +0200, Maxime Ripard wrote:
> Even though we've used the A80 PRCM driver for some time and a number of
> boards using it already, we never had a binding for it. Let's add it
> based on what the driver expects and the boards are providing.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../arm/sunxi/allwinner,sun9i-a80-prcm.yaml   | 33 +++++++++++++++++++
>  1 file changed, 33 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,sun9i-a80-prcm.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
