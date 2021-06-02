Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3269398EE2
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 17:42:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231286AbhFBPn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 11:43:58 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:41672 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbhFBPn6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 11:43:58 -0400
Received: by mail-ot1-f54.google.com with SMTP id 36-20020a9d0ba70000b02902e0a0a8fe36so2800656oth.8
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 08:42:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MN86RwDZ/UdX5E6sj1sOVJ75/O8SsU75FSLoRimJz7k=;
        b=m6PIa6vX3BIixbT22PLkdCzX1NgtNviCDthxEaLqMFSGLN5vpPTObFrs3DmwKRiYlq
         4t1oY79YMVi8Aa/xuUxjWTJzJUnn7SiPbzF9cN8zTrlOWQYqQ6pu8xXf5J06FCW5c/lM
         8jzYsVRAM9zB23mVge2qKgDpDZZqbKF+GZg47CdUhShAMlmq0zwku3xdFSaqKRgfxAco
         BBlSeMfwPIImEifkNCb0fiH2D5vSOJ/w+x1eshHamCu5n/mpHBEjfFjeEWVtNZ04MK1O
         XUp3yr4HJwwD8Fc5kFgPPqU19Yy7xzYz6xy3doY9fFC+2juo22rClt3RwY5HWAp6ykab
         3C7Q==
X-Gm-Message-State: AOAM530IpgLgBV1Oth94za9aJ815/wp+cJS9fxs4WSrmAXV94n16++C+
        CAYXLf9HcHsfqTMzokOcSQ==
X-Google-Smtp-Source: ABdhPJxtowJ4t8mblSi9DoF2qmIx/gsPPgKpJIHLoXGNHQkjC7tRQ7tijLmP6f2ecs9M21YO63JM+A==
X-Received: by 2002:a9d:7d13:: with SMTP id v19mr26151103otn.111.1622648534767;
        Wed, 02 Jun 2021 08:42:14 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d67sm40785oia.56.2021.06.02.08.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 08:42:14 -0700 (PDT)
Received: (nullmailer pid 3424923 invoked by uid 1000);
        Wed, 02 Jun 2021 15:42:13 -0000
Date:   Wed, 2 Jun 2021 10:42:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Cristian Marussi <cristian.marussi@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/8] dt-bindings: firmware: juno,scpi: Move to
 sram.yaml json schema
Message-ID: <20210602154213.GA3424894@robh.at.kernel.org>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
 <20210601224904.917990-4-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210601224904.917990-4-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Jun 2021 23:48:59 +0100, Sudeep Holla wrote:
> Commit a90b15e0ad72 ("Documentation: bindings: decouple juno specific
> details from generic binding") moved the juno specific bindings into
> separate file. Though there was no need for juno specific binding, it
> has been used unfortunately for whatever stupid reason I added it for.
> 
> Let us move the same to the generic sram.yaml schema and remove the
> old text format binding.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/juno,scpi.txt     | 26 -------------------
>  .../devicetree/bindings/sram/sram.yaml        |  2 ++
>  2 files changed, 2 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/juno,scpi.txt
> 

Applied, thanks!
