Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16D67393724
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 22:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235263AbhE0U1d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 16:27:33 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:41956 "EHLO
        mail-oi1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235696AbhE0U1b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 16:27:31 -0400
Received: by mail-oi1-f176.google.com with SMTP id c3so2021481oic.8
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 13:25:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=d80yU/ahixz8PlwCHjjGT73dCXWqG9MsiBJDbg1V8UM=;
        b=qmMX+uEpqZGr2b4qOEITQ2Jj05MzJoXq8Jjb6nJcGa05gBWc6Mj2q+swt9Hi0tclMu
         KNI/eGHEs8SWWmrf8Ql2gwbTF4fx5oPBT0bxhHdsfYfS0dkXrVevcDrz/mqNyGM+kzUf
         pICEU2LYMlSi2rolAuLaLVzY86q4ry3F5aOQ89jSphKKsNiOn2DKQI+QGIrslv0GYfo6
         3DLuMF0simF7VEvqMfQDUwCcjcmszKbhv1dzlVaaj2hSO8NjDT3Cg0d42nnBwwqMch1g
         xN/E+obR3KV9K3Rn3gCCU8egTpcp/mCjiN6Jua5pyMxlaDHEm+3qeXeuXPTu5ciLj/F1
         lbJg==
X-Gm-Message-State: AOAM533JTj7Sfwb4CeieAmw2gELjmjLxzbR76ws44vMbDhPpyxrXOvYM
        83kkD4qeG1pWU8GHz6R96A==
X-Google-Smtp-Source: ABdhPJzcHmM36bqnc111XjTTPeU8u0gD1R5gEnCCEUVspTHdoRK0OMh8gHMlgLDC0/ohrawc17E8dg==
X-Received: by 2002:a05:6808:128a:: with SMTP id a10mr6776116oiw.161.1622147156437;
        Thu, 27 May 2021 13:25:56 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u201sm699720oia.10.2021.05.27.13.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 13:25:55 -0700 (PDT)
Received: (nullmailer pid 1355340 invoked by uid 1000);
        Thu, 27 May 2021 20:25:54 -0000
Date:   Thu, 27 May 2021 15:25:54 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH 1/8] dt-bindings: firmware: arm,scpi: Move arm,scpi-shmem
 to json schema
Message-ID: <20210527202554.GA1351447@robh.at.kernel.org>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
 <20210526182807.548118-2-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210526182807.548118-2-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 26, 2021 at 07:28:00PM +0100, Sudeep Holla wrote:
> Move the SRAM and shared memory binding for SCPI into the existing
> Generic on-chip SRAM. We just need to update the compatible list and
> there-by remove the whole old text format binding for the same.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,scpi.txt          | 15 ---------------
>  Documentation/devicetree/bindings/sram/sram.yaml  |  1 +
>  2 files changed, 1 insertion(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,scpi.txt b/Documentation/devicetree/bindings/arm/arm,scpi.txt
> index bcd6c3ec471e..bcb8b3d61e68 100644
> --- a/Documentation/devicetree/bindings/arm/arm,scpi.txt
> +++ b/Documentation/devicetree/bindings/arm/arm,scpi.txt
> @@ -56,21 +56,6 @@ Sub-nodes
>  	node. It can be non linear and hence provide the mapping of identifiers
>  	into the clock-output-names array.
>  
> -SRAM and Shared Memory for SCPI
> --------------------------------
> -
> -A small area of SRAM is reserved for SCPI communication between application
> -processors and SCP.
> -
> -The properties should follow the generic mmio-sram description found in [3]
> -
> -Each sub-node represents the reserved area for SCPI.
> -
> -Required sub-node properties:
> -- reg : The base offset and size of the reserved area with the SRAM
> -- compatible : should be "arm,scp-shmem" for Non-secure SRAM based

> +            - arm,scpi-shmem

Which is correct? There's not a single other occurrance in the kernel 
tree of either.

Rob
