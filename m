Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 450F7286321
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 18:04:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729043AbgJGQEV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 12:04:21 -0400
Received: from mail-oo1-f68.google.com ([209.85.161.68]:38324 "EHLO
        mail-oo1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729034AbgJGQEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 12:04:16 -0400
Received: by mail-oo1-f68.google.com with SMTP id y127so744591ooa.5
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 09:04:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NuJ526l5DeXHLFEPrhp+croF2bztrHXf8CNYvdP2Pmw=;
        b=f7kkGSIhGu7igQywT5vVIEPDeIzWeA361Y+6IGGfPrQ8uOEnEQM6E5GaPgg6kbMGh5
         r/uwj/aMkZhFeHdxjn3r7XUNNvXFZpFQIJuz50JOjttOul3ffZf0REYI1a00FUiW8TbW
         f02GmTbX2+pVNkw8x63I5jI9SgZJpJVyC+GKWniiPmabbO9GZN2kxKbLdos6KZDi79qo
         pJGutiT3WZo6J9ucEyJujekaTdHteIFsOvPh9TTLt8ipoHjGVzM5TcKa5kIYLuQwrt5T
         zFhAI9bPDqqrK7dYgr0DPQ5yAptPZTfdtAekbI1pOLh/xy95ICoy4Wwy/LgMTCGs79AD
         kjwA==
X-Gm-Message-State: AOAM5309FWCxT1MBquSefePXlSlSnQk4VNwLOL6Xp4ZD9XuQGvJ4lm3q
        Zr2VBvUAAXoRt492wz9kK0oRUH219NTW
X-Google-Smtp-Source: ABdhPJwplgT0ytOKmq8DCx6NHf25SlNDatvxXxoVGxZ7dh1CgUcqQzVqw2UOZwaDlNMyHexmBLba0Q==
X-Received: by 2002:a4a:d485:: with SMTP id o5mr2543220oos.60.1602086655186;
        Wed, 07 Oct 2020 09:04:15 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m22sm1793080otf.52.2020.10.07.09.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2020 09:04:14 -0700 (PDT)
Received: (nullmailer pid 303085 invoked by uid 1000);
        Wed, 07 Oct 2020 16:04:14 -0000
Date:   Wed, 7 Oct 2020 11:04:14 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marlon Rac Cambasis <marlonrc08@gmail.com>
Cc:     trivial@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] Docs: Fixing spelling errors in
 Documentation/devicetree/bindings/
Message-ID: <20201007160414.GA303023@bogus>
References: <20201006222956.GA2970299@bogus>
 <20201007071705.GA11381@marlonpc-debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201007071705.GA11381@marlonpc-debian>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 07 Oct 2020 18:17:05 +1100, Marlon Rac Cambasis wrote:
> Revised patch fixing six spelling errors within
> Documentation/devicetree/bindings/. "specfied" replaced with "specified"
> in all three files modified. "atleast" seperated into "at least" three
> times in samsung-pinctrl.txt. This should remove any confusion that a
> reader might have.
> 
> Signed-off-by: Marlon Rac Cambasis <marlonrc08@gmail.com>
> ---
>  .../devicetree/bindings/pinctrl/samsung-pinctrl.txt         | 6 +++---
>  .../devicetree/bindings/reset/nuvoton,npcm-reset.txt        | 2 +-
>  Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt   | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 

Applied, thanks!
