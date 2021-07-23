Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BA123D428A
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 00:01:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231954AbhGWVVF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 17:21:05 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:46972 "EHLO
        mail-io1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231724AbhGWVVF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 17:21:05 -0400
Received: by mail-io1-f53.google.com with SMTP id u15so4170089iol.13
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 15:01:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oYAEMdsUd7UNCDfq6NGNT16ScDrJpZUTieXE221oAZk=;
        b=pOf822gjYXyyvgCpIHDLi7oIHOU9aeGmY/hPM5I0AbXhGl6dF9uxhVMD5DGI1Uwn8J
         Ko95yeEu2/94/aInYK2tiKcHWkRJZPdqsSPA0sX7jNIk8kE6w860kqhk0tx1xzCt8qtp
         WfE1ARJtoZ9oI2SJgpf83EonZ/PpKwBI8MCOl+mFdRuP3P7I2Qxektg0pGTP8pkcoqTM
         87W3W7bVox1k2OZ/Q3vZDv1tUD8hnCa8BtOixHKVMaxbhsZycEoqN4IP/3nAWLUlVDHV
         KzHgdp2cua3Y3UwRSdhmxc0pMKiOlNH0QrdzyKtHeumOP9yzryTfT9X8PT6nxAte5UDF
         faiQ==
X-Gm-Message-State: AOAM533gESWisZx0F44wzC7ZqBz+d1JSRPs91BEBmPssu2xj0DhwZP8G
        H5fklH+Ep91GGxJIumuD5Q==
X-Google-Smtp-Source: ABdhPJzOPjKe4L1SzjXgFzUaZxIB53QP62ADbYjD8vEtTtb+dRQ+s6xNUwdbmjgF3ILgi4GiHImTmg==
X-Received: by 2002:a02:7a50:: with SMTP id z16mr5678726jad.139.1627077697998;
        Fri, 23 Jul 2021 15:01:37 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id x2sm11802680iob.45.2021.07.23.15.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 15:01:37 -0700 (PDT)
Received: (nullmailer pid 2671804 invoked by uid 1000);
        Fri, 23 Jul 2021 22:01:35 -0000
Date:   Fri, 23 Jul 2021 16:01:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 31/54] dt-bindings: sunxi: Add CPU Configuration
 Controller Binding
Message-ID: <20210723220135.GA2671773@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-32-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-32-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:04:01 +0200, Maxime Ripard wrote:
> Even though we've used the CPU configuration driver for some time and a
> number of boards using it already, we never had a binding for it. Let's
> add it based on what the driver expects and the boards are providing.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../sunxi/allwinner,sun6i-a31-cpuconfig.yaml  | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,sun6i-a31-cpuconfig.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
