Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 477473EBE3C
	for <lists+devicetree@lfdr.de>; Sat, 14 Aug 2021 00:19:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235007AbhHMWSd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 18:18:33 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:36559 "EHLO
        mail-oi1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235079AbhHMWSd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 18:18:33 -0400
Received: by mail-oi1-f176.google.com with SMTP id bd1so10598576oib.3
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 15:18:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=x7nefpw8maPSI8Zl7+e2zhoJgVplr12u49zfIKtmx9Y=;
        b=FuvaBDedJc6+poOhW7ol3OuPAxUNkI02Ji16uA0IHxacHcJT7L+AGasrXVXLb9Wjbs
         RB4QbYCNfYes+3ACmuFEf8sFJpZwrGBHmxDU0Js0WvZjLXVrYqJw6OB4t2bPPabxnF61
         YEcTVpGTcGc+HVd7ZQ+FFpKiinGp2AOt5bx2jgLYuoKjZG0V5KOTf011xXGKRJiA65z+
         JfMwrjZqw3LEHuqs4HkV8ky/C0gVyuwkiU4QV4tCZaSlkVKCq/u8IY4arCoYqC0bOhEB
         EXodjXpJsXEPXRg/aaQpe//m7cs4gdtKTt48mRvsiapg+kix+AdKQH4zsMwo5NMnZ/yq
         SHwQ==
X-Gm-Message-State: AOAM533cUDHeTYv+GBtE972FDGPaaEyRSoseaZkv/oIG6Bs+sJ3y0PpJ
        eOEPJddadqj0TcmFH3FlmQ==
X-Google-Smtp-Source: ABdhPJz2AXPkCYIaZoc9tgkAD6vkOy9k1jrpqGi0kTbpjGvC008qESOI7JBK+xG1IZLyEMkau7vZZw==
X-Received: by 2002:aca:f089:: with SMTP id o131mr3690700oih.37.1628893085510;
        Fri, 13 Aug 2021 15:18:05 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d7sm514610oon.18.2021.08.13.15.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 15:18:04 -0700 (PDT)
Received: (nullmailer pid 4036254 invoked by uid 1000);
        Fri, 13 Aug 2021 22:18:03 -0000
Date:   Fri, 13 Aug 2021 17:18:03 -0500
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-oxnas@groups.io
Subject: Re: [PATCH] ARM: oxnas: Add basic support for Zyxel NSA210
Message-ID: <YRbvmwLGwT/ELuLM@robh.at.kernel.org>
References: <20210809104351.2050187-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210809104351.2050187-1-uwe@kleine-koenig.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 09, 2021 at 12:43:51PM +0200, Uwe Kleine-König wrote:
> This is a one bay NAS originally shipping Linux 2.6.24.4. It features
> 
>  - 128 MiB RAM
>  - 2x eSATA (1x internal, 1x external)
>  - 2x USB 2.0
>  - 4 MiB NOR
>  - battery powered RTC on i2c (PCF8563)
>  - 1x GBit ethernet
> 
> For now only the low-hanging fruits are added to the device tree, eSATA,
> USB, i2c and networking needs more work as there are no drivers
> available.
> 
> Such a machine was offered to me by Richard Fröhning. Thanks!
> 
> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
> ---
>  .../devicetree/bindings/arm/oxnas.txt         |   1 +

Please resurrect this patch[1] before adding this.

Rob

[1] https://lore.kernel.org/linux-devicetree/20181203213223.16986-22-robh@kernel.org/
