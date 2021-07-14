Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BDDF3C8B7C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 21:16:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbhGNTTL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 15:19:11 -0400
Received: from mail-il1-f171.google.com ([209.85.166.171]:41523 "EHLO
        mail-il1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230185AbhGNTTK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 15:19:10 -0400
Received: by mail-il1-f171.google.com with SMTP id p3so2674708ilg.8
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 12:16:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=k6UdIsR9QWKyvUQsaj8l0q6rq6YbdNXchi5NiYB3pg8=;
        b=t/ZoWAKnd6mjD0lYgMct4T5fJtnOOFKFI7oisS0N/rIYXAO83c0nRFvmIsYFBqFF9y
         /6xToPeqSq3hEZErwRlF65ggzOXiYCLH4ESZSWWGmicsWTHgpsL+Y4+nXGCjMLNNhpG+
         RliSnsyMtDPYMJuSWhpCzC7vig4LqzEftTrRdWXsxRFbYa/s3AmTjEGqPT+x1TnFSNDo
         V7ZlHctOkZHoOa95/wxEN+Ww3i96HVFSYsGuqK0nUaWNycJihj+n4LrxLaKBRDsVNQns
         Xker4AYjm7rpvxIY/RddHsFjgUocd1cNvMYyR2CNmcISRKBe5sNpcZwTDIU1WscAjrYP
         sung==
X-Gm-Message-State: AOAM5319AdZjdAi/2nD8MbtF9oBopO74gDrjYT7pJSfp+L1osso/33pb
        sMrG2qRB8gIl87AdwTAUiQ==
X-Google-Smtp-Source: ABdhPJxCPEFXChA6njG+04k5xO9/acW08GGVhpyGH9iOzo/SAFKCrF/sIwc/iq/VE2DME5e+oE3PfQ==
X-Received: by 2002:a92:b748:: with SMTP id c8mr7764208ilm.302.1626290177918;
        Wed, 14 Jul 2021 12:16:17 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id t11sm1665884ilj.63.2021.07.14.12.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 12:16:16 -0700 (PDT)
Received: (nullmailer pid 2994093 invoked by uid 1000);
        Wed, 14 Jul 2021 19:16:15 -0000
Date:   Wed, 14 Jul 2021 13:16:15 -0600
From:   Rob Herring <robh@kernel.org>
To:     Suman Anna <s-anna@ti.com>
Cc:     Santosh Shilimkar <ssantosh@kernel.org>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-arm-kernel@lists.infradead.org,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 1/2] dt-bindings: soc: ti: pruss: Update bindings for K3
 AM64x SoCs
Message-ID: <20210714191615.GA2994029@robh.at.kernel.org>
References: <20210623165032.31223-1-s-anna@ti.com>
 <20210623165032.31223-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210623165032.31223-2-s-anna@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Jun 2021 11:50:31 -0500, Suman Anna wrote:
> The K3 AM64x SoCs also have the Gigabit Ethernet capable PRU-ICSS IP
> that is present on existing K3 AM65x and J721E SoCs (ICSSG). The IP
> is similar to the ones used on K3 J721E or AM65x SR2.0 SoCs.
> 
> Update the PRUSS bindings for these ICSSG instances.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
