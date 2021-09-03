Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAA164004E6
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 20:31:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236537AbhICSc6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 14:32:58 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:43724 "EHLO
        mail-ot1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235865AbhICSc6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 14:32:58 -0400
Received: by mail-ot1-f41.google.com with SMTP id x10-20020a056830408a00b004f26cead745so112001ott.10
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 11:31:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ugNRiYvpM3x4KIHxvO4xruJNMre5tOIxPNx+6YHichU=;
        b=Dx+cMVTfjVKpliuteOw/djwXXfjjpvOBiU0cAH7WpSobW//ckaomCPyWFsDsBoiQ8K
         iopd6cv2eF+997Bb0a4trw3FTg7CbEXGnZoXSKE96LW6D/J9nOwNG3ofCCSZonXSwZhV
         v7AGscdWBoCQf9OB06PPi7mJ1x4bsSg23QsykliheoMbVMb9kRAiRGKflq67LYRK3Lvz
         fm3mE/EIFGLEhbsMiVmhORFqJ2QDnX3lqZzEOrePjYxmMPAl5QTNW40fr8mJUxWF+q7l
         fAbHXcdAKWqY9YsTscbUL1ggrOKK2pDXM0jEIs2OW05cGlCSmG4flkRrjd83sP9VYA9q
         9Yvg==
X-Gm-Message-State: AOAM531uMv54Xmw3B5dGsGtPcL8hLPRIrEfX2XBleLCxG2Uxv6ZSYLGd
        UmehRGSGUqkKRoIDEad/+A==
X-Google-Smtp-Source: ABdhPJxiLBgdn/zP04HUB1R1+uFgw/HZ6rd2wJCTAIKvz2eTx5de55RgucOE77IIZUtJ2xdRk2rP2g==
X-Received: by 2002:a05:6830:4c1:: with SMTP id s1mr324387otd.221.1630693917528;
        Fri, 03 Sep 2021 11:31:57 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id y7sm1125047oov.36.2021.09.03.11.31.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 11:31:56 -0700 (PDT)
Received: (nullmailer pid 3242483 invoked by uid 1000);
        Fri, 03 Sep 2021 18:31:55 -0000
Date:   Fri, 3 Sep 2021 13:31:55 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     dri-devel@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        linux-sunxi@googlegroups.com, Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH v2 17/52] dt-bindings: display: aa121td01: Fix
 data-mapping
Message-ID: <YTJqGwg6WhCUW9L2@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-18-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-18-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:17 +0200, Maxime Ripard wrote:
> The Mitsubishi AA121TD01 Device Tree Binding was requiring a
> data-mapping property value which was set to another value in the
> existing Device Trees. Fix this.
> 
> Cc: dri-devel@lists.freedesktop.org
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/panel/mitsubishi,aa121td01.yaml          | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
