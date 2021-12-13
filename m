Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0983473475
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 19:57:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242022AbhLMS5G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 13:57:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242038AbhLMS5B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 13:57:01 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9927C061751
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 10:57:00 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id j5-20020a17090a318500b001a6c749e697so13055074pjb.1
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 10:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=SJQo48NUmZkGZt1euitJNnArwB/A5OwQryrDW1DTEUY=;
        b=mR4sP0FAduGkecIn78GO9pfQYM8sqxaO605tT2SSIoABlfHhgJEJtGLj1fKdGDYyha
         JGusEx08UFDd9brckayAl3rjS3zMN9ufR3X1jGkfyUOMa1ukqvCyminJ3i5hRLHHknzf
         Yk3sIFomgNgoq8rQ0hZA405oKbUVgSBZ/FCSZ7stLCH52jESvlh2txxomi8Ik+Gj9ivS
         EsTK8YqAGFxPPDZBpnbNAkz6/60K4ZAXqoQdtAT7Y7dItfzAn5juFFIioZQz/vyisf+n
         IZXjPKX7GOrmcrku+Z7/BwQZfyZwt8IS+BwZZmtcJ2PlvjYa1cnoDIGiGV4j4oXo+ho3
         j9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=SJQo48NUmZkGZt1euitJNnArwB/A5OwQryrDW1DTEUY=;
        b=b+6U4103+xuhtS7QRsVnloqS7iZGIBzidcpvgc3pWc+xXfFodUT2hERoE9riYIuNx1
         xplP0AqYVPm2LxT1VvUkFXq8bn2Bf9HAyB4WWNQZC6Z60+BDuTpdnp0ZwPeCPzWM/q/N
         uVU4jIOjzJXNdRTZW6fzlCZLFQCGsep+dZHa78uCdlEJmfPcxzGMIURlwtLbs0ry2EmZ
         UuR0aDAoSV/6biDct0Lg01xFWRop0qI5GsqxYvhbYg4J3ynyvd3ovca9N/SEtK6rezKw
         7IqRj821tR7pKDino7wQ5tRzmz19l34ISF04BMNadKUPY9vVOI8xzAFF1uM/MjTD57Ds
         fb1A==
X-Gm-Message-State: AOAM531xKIq3aaN54Avn7L8myqiYEoZhMrF/ZxJNvQFScLTi5KdT1MrE
        Sh2pQ+3UJYRIFjAsAwIq+oOYPQ==
X-Google-Smtp-Source: ABdhPJxNnuxdKkqPual8sYPX1MjA5j+lejydfjOREey1YjoX3NWB2OsK6FTTT64wcd8+cJTIvJ6K5A==
X-Received: by 2002:a17:90b:3850:: with SMTP id nl16mr160887pjb.10.1639421820424;
        Mon, 13 Dec 2021 10:57:00 -0800 (PST)
Received: from p14s (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id t191sm5615027pgd.3.2021.12.13.10.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 10:56:59 -0800 (PST)
Date:   Mon, 13 Dec 2021 11:56:57 -0700
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Julien Massot <julien.massot@iot.bzh>
Cc:     bjorn.andersson@linaro.org, robh+dt@kernel.org,
        geert+renesas@glider.be, linux-renesas-soc@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/2] Initial Renesas R-Car remoteproc support
Message-ID: <20211213185657.GB1474575@p14s>
References: <20211207165829.195537-1-julien.massot@iot.bzh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211207165829.195537-1-julien.massot@iot.bzh>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 07, 2021 at 05:58:27PM +0100, Julien Massot wrote:
> Most of the SoCs in the R-Car gen3 SoC series such as
> H3,M3 and E3 have an 'Arm Realtime Core'.
> This Realtime core is an Arm Cortex-R7 clocked at 800MHz.
> This series adds initial support to load a firmware and start
> this remote processor through the remoteproc subsystem.
> 
> This series depends on
> https://patchwork.kernel.org/project/linux-renesas-soc/patch/20211022122101.66998-1-julien.massot@iot.bzh/
> to be able to set the Cortex-R7 boot address.
> 
> One of the way to test this driver is to use the zephyr upstream support
> for h3ulcb board 'blinky' demo is my favorite testing firmware.
> 
> To generate a firmware with the zephyr project.
> 
> follow this starting guide
> https://docs.zephyrproject.org/2.7.0/getting_started/index.html
> 
> Then compile your zephyr demo
> west build -b rcar_h3ulcb_cr7 zephyr/samples/basic/blinky \
>     -DCONFIG_KERNEL_ENTRY=\"_vector_table\" \
>     --build-dir h3-blinky
> 
> Then you can use h3-blinky/zephyr/zephyr.elf as a testing
> firmware.
> 
> Patch 1/2 adds the dt-bindings
> 
> Patch 2/2 is a small driver to cover basic remoteproc
> usage: loading firmware from filesystem, starting and stopping the
> Cortex-r7 processor.
> 
> Julien Massot (2):
>   dt-bindings: remoteproc: Add Renesas R-Car
>   remoteproc: Add Renesas rcar driver
> 
>  .../remoteproc/renesas,rcar-rproc.yaml        |  65 +++++
>  drivers/remoteproc/Kconfig                    |  11 +
>  drivers/remoteproc/Makefile                   |   1 +
>  drivers/remoteproc/rcar_rproc.c               | 223 ++++++++++++++++++

I have applied this set.

Thanks,
Mathieu

>  4 files changed, 300 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/renesas,rcar-rproc.yaml
>  create mode 100644 drivers/remoteproc/rcar_rproc.c
> 
> -- 
> 2.33.1
> 
> 
