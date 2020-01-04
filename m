Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A2FAE130483
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2020 22:10:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726167AbgADVKN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Jan 2020 16:10:13 -0500
Received: from mail-io1-f67.google.com ([209.85.166.67]:36156 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726368AbgADVKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Jan 2020 16:10:13 -0500
Received: by mail-io1-f67.google.com with SMTP id d15so1295204iog.3
        for <devicetree@vger.kernel.org>; Sat, 04 Jan 2020 13:10:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cJWxvFKjFmedV29LeJwhs6R1fNWpIXjZCncfQO681ro=;
        b=M23nw/8GZsgUw42BggOVlGKynPPlQTvoL82KaBhFxxhOcbwrIa2GpYiPIlHzIskX3q
         4XHBHQFFS0p+hE1/GWJUhDPnuMu9PTxcxIozQDyZGAKZh5eKhFTiQNaqJEFkHs3bTaUS
         XEN1VhcA75p+16/T8jdR8ZFGAP5Pe1N7oiOilAm1l+DHGI0kJz2Y9RJoSceMqDbodiO4
         lRCeQt2ckbo8woYCxQ9IDaohyk5dgIpzo6gtLvlWYq2kxI2VJjO9knyGrNL28pQQ1dRn
         ZvIw0I8TkdaAY8QnM9AZIYL0iRc1vg+d9Jx1ptcQ6oG6x+fDYixxgzUJR0hKbH2Kjsno
         MLBw==
X-Gm-Message-State: APjAAAWe5KKrv0Y5aLLOdzHI2qfVlJca8d8lzZkDuhNwDfdLYMh3/VZ4
        OY202Jz479GpDBrXHIrqoFP0yqw=
X-Google-Smtp-Source: APXvYqyjCMVn26GzgIJZuio/B5thsPoptHTbukJyLDzDwNPrQMpKvmofLBrDmeCChh2wz441W0RDSA==
X-Received: by 2002:a6b:b98b:: with SMTP id j133mr62540614iof.44.1578172211407;
        Sat, 04 Jan 2020 13:10:11 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id m24sm16006889ioc.37.2020.01.04.13.10.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2020 13:10:10 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219b7
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Sat, 04 Jan 2020 14:10:09 -0700
Date:   Sat, 4 Jan 2020 14:10:09 -0700
From:   Rob Herring <robh@kernel.org>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     linux-kernel@vger.kernel.org, Jim Quinlan <jim2101024@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <bcm-kernel-feedback-list@broadcom.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: reset: Document BCM7216 RESCAL reset
 controller
Message-ID: <20200104211009.GA18324@bogus>
References: <20200103190429.1847-1-f.fainelli@gmail.com>
 <20200103190429.1847-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200103190429.1847-2-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri,  3 Jan 2020 11:04:28 -0800, Florian Fainelli wrote:
> From: Jim Quinlan <jim2101024@gmail.com>
> 
> BCM7216 has a special purpose RESCAL reset controller for its SATA and
> PCIe0/1 instances. This is a simple reset controller with #reset-cells
> set to 0.
> 
> Signed-off-by: Jim Quinlan <jim2101024@gmail.com>
> [florian: Convert to YAML binding]
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../reset/brcm,bcm7216-pcie-sata-rescal.yaml  | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
