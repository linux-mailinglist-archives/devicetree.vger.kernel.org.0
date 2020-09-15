Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C0EA26B153
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 00:29:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727766AbgIOW2m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 18:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727634AbgIOQTx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 12:19:53 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EE4FC06178C
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 09:19:32 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id 34so2208694pgo.13
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 09:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JPZAxtgrpswTwwEctIAirCTKHMKMYlH6dKc5JaMDl+Q=;
        b=ugddvVXPv0zV3H78FDJq245N95jL3nKJt24tR7I7m1pkIrlVBV4vo6rsKzl+SG4uOB
         sUk8Gx5Z4uU1etfRE2XF67AXCujQNSl/9CDoH2sjlmTNtG4dlxaay11Dxime1JZJVNxS
         wVt+mOJMw0TWFVnDndw00pySAAC6SecnAkfyk0seXyV9Nv2tTB2biZpL8bSQ3m7SCFWw
         HEWAm0XX0/NqferzgsoepaOrApKxzY14QlR46WlhPuYKUR/D2L/yBvx+8IosL5T9zE8N
         lcXEGMb17S4zhJLVzSsxvUfT3dNAnzZvd6w/RXhA6jWBWbDaQ2VN6P63QtXEhrGwNAE7
         779A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JPZAxtgrpswTwwEctIAirCTKHMKMYlH6dKc5JaMDl+Q=;
        b=kusH3okW2XWQIqu+cwhMXrg+VkJ0aorjgKwF6aB7LtL9A9XOAH9pNHJ4JYn/dIwXNt
         HN00xdNxkSPx1qZalND3RwXCrM2adR2MvW7vVJUdNLpPdMs9+GvmlFHDRCY90+hqYxbR
         Ee+xSSQf39o4ssSN4ywPO+WZpNQFJB3XDfobGIzkqYAUrbZ6cDSRpUcLh3PfvpE7mmKk
         X9Rlco1n4TQyGD9U64PdoefxOpM6DM67lKExRNyvIGAwkx39GVm5OsqGM6aJ8Hm1GIp+
         hYmV1O2w0Kmu2YK4Sri4t+5PXYYTl23JklANQ4V27dd04uH63mFa8buVYeq0fdzCkmt6
         4n+g==
X-Gm-Message-State: AOAM5331lJgYT/vnhEcsNrfM2CIDUXRXrExsExq4mFHSNUMsPrpdKIge
        NAA9MwI8sZu7jOqIa9Q325nU
X-Google-Smtp-Source: ABdhPJzbV8GmPWBPjT5CB2nfBETZ78sMZFl/QXBlTl38thUlR6URZV8Q2RBazWE59akAtZaqWkdN1Q==
X-Received: by 2002:a05:6a00:844:b029:13f:dd99:d1a4 with SMTP id q4-20020a056a000844b029013fdd99d1a4mr10486133pfk.31.1600186771631;
        Tue, 15 Sep 2020 09:19:31 -0700 (PDT)
Received: from linux ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id y203sm13707305pfb.58.2020.09.15.09.19.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 15 Sep 2020 09:19:31 -0700 (PDT)
Date:   Tue, 15 Sep 2020 21:49:25 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     wg@grandegger.com, mkl@pengutronix.de, robh+dt@kernel.org
Cc:     linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dev.kurt@vandijck-laurijssen.be,
        o.rempel@pengutronix.de
Subject: Re: [PATCH 0/6] Add support for MCP25XXFD SPI-CAN Network driver
Message-ID: <20200915161925.GA5660@linux>
References: <20200910133806.25077-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200910133806.25077-1-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Sep 10, 2020 at 07:08:00PM +0530, Manivannan Sadhasivam wrote:
> Hello,
> 
> This series is the continuation of the work done by Marc Kleine-Budde on
> adding support for Microchip MCP25XXFD SPI-CAN driver [1]. I've taken the
> patches from Marc's tree [2] and posted with an additional MAINTAINERS
> patch on top since he seems to be very busy. This series has been tested
> on RB5 board featuring MCP2518FD transceiver.
> 
> Marc: I'd like to co-maintain this driver in upstream hence added myself
> as the co-maintainer. Shout at me if you do not want it! Also I've removed
> the v4x tag since I don't think all the versions are posted to mailing
> list.
> 
> I'll add my review on top of this posting.
> 

Just a quick question: I don't see any activity on this specific driver for
sometime (back in Martin days itself). Is it due to lack of reviewers or
it is due to the patch size (lines of code) so that nobody is interested
in reviewing?

How are we going to move forward?

Thanks,
Mani

> Thanks,
> Mani
> 
> [1] https://www.spinics.net/lists/linux-can/msg03712.html
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.git/log/?h=mcp25xxfd-47
> 
> Kurt Van Dijck (1):
>   can: mcp25xxfd: add listen-only mode
> 
> Manivannan Sadhasivam (1):
>   MAINTAINERS: Add entry for Microchip MCP25XXFD SPI-CAN network driver
> 
> Marc Kleine-Budde (3):
>   can: rx-offload: can_rx_offload_add_manual(): add new initialization
>     function
>   can: mcp25xxfd: add regmap infrastructure
>   can: mcp25xxfd: add driver for Microchip MCP25xxFD SPI CAN
> 
> Oleksij Rempel (1):
>   dt-bindings: can: mcp25xxfd: document device tree bindings
> 
>  .../bindings/net/can/microchip,mcp25xxfd.yaml |   79 +
>  MAINTAINERS                                   |    8 +
>  drivers/net/can/rx-offload.c                  |   11 +
>  drivers/net/can/spi/Kconfig                   |    2 +
>  drivers/net/can/spi/Makefile                  |    1 +
>  drivers/net/can/spi/mcp25xxfd/Kconfig         |   17 +
>  drivers/net/can/spi/mcp25xxfd/Makefile        |    8 +
>  .../net/can/spi/mcp25xxfd/mcp25xxfd-core.c    | 2884 +++++++++++++++++
>  .../net/can/spi/mcp25xxfd/mcp25xxfd-crc16.c   |   89 +
>  .../net/can/spi/mcp25xxfd/mcp25xxfd-regmap.c  |  556 ++++
>  drivers/net/can/spi/mcp25xxfd/mcp25xxfd.h     |  828 +++++
>  include/linux/can/rx-offload.h                |    3 +
>  12 files changed, 4486 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/can/microchip,mcp25xxfd.yaml
>  create mode 100644 drivers/net/can/spi/mcp25xxfd/Kconfig
>  create mode 100644 drivers/net/can/spi/mcp25xxfd/Makefile
>  create mode 100644 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c
>  create mode 100644 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-crc16.c
>  create mode 100644 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-regmap.c
>  create mode 100644 drivers/net/can/spi/mcp25xxfd/mcp25xxfd.h
> 
> -- 
> 2.17.1
> 
