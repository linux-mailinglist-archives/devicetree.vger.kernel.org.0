Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86790393735
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 22:33:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235818AbhE0UfG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 16:35:06 -0400
Received: from mail-ot1-f49.google.com ([209.85.210.49]:40683 "EHLO
        mail-ot1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235819AbhE0UfE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 16:35:04 -0400
Received: by mail-ot1-f49.google.com with SMTP id 80-20020a9d08560000b0290333e9d2b247so1447669oty.7
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 13:33:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=neTM7k0BTcCRqNpLEncEiA8vBVxatHM1/pWJWEun4K4=;
        b=NryaBnjej/mXU22lCnzDyz3xj5sgwaTh7aJzXIPkRJ+KYARLnaE/EGB3GSickBsU9J
         PAEXRHyc4P1FwzQLCv8YbJcoxk22xLeGZyWo2iYYGpSJpxr4earYeRi0xJVNN0GDRWV/
         8b/2/zAZQPbYMxjyj8V8w+9FOVDqbsega+NPLLHjXvECGL1HBleSbMe37DOB9YLzuhEw
         7Nsr1+TQzdoOyZuK6JXPizbfC2ZrqNI6V8xIOPqWcGRtemos83gXKuXroB0FvR0lJpjX
         mDnkKn1OOfmvC2yxh684yOiFf5AqfYyTJzFyo60J7H71cB//JRgjmeDdSgdM1AOQQc/7
         i5vw==
X-Gm-Message-State: AOAM5336KGQk9+ci1LteP6RTtfiRgbWVcupYmBTcgHTUnHTkG281eyTq
        4yz3ifcgw+adtPIHXDsNvA==
X-Google-Smtp-Source: ABdhPJyzvsvKu5axANduODYLrdJqsZZVFn8s3e5fGfoh1h8RnB95y+CJ8MP236uMdNYTABB/IkXifA==
X-Received: by 2002:a05:6830:1f52:: with SMTP id u18mr4148044oth.298.1622147610162;
        Thu, 27 May 2021 13:33:30 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x5sm683678otg.76.2021.05.27.13.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 13:33:29 -0700 (PDT)
Received: (nullmailer pid 1366788 invoked by uid 1000);
        Thu, 27 May 2021 20:33:27 -0000
Date:   Thu, 27 May 2021 15:33:27 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH 7/8] dt-bindings: firmware: amlogic,scpi: Convert to json
 schema
Message-ID: <20210527203327.GA1356362@robh.at.kernel.org>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
 <20210526182807.548118-8-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210526182807.548118-8-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 26, 2021 at 07:28:06PM +0100, Sudeep Holla wrote:
> Convert/merge the existing text format SCPI binding additions for
> amlogic,scpi into the common arm,scpi json scheme.
> 
> Couple of things to note:
> "amlogic,meson-gxbb-scpi" is always used with "arm,scpi-pre-1.0"
>  hence no need for separate "arm,scpi-pre-1.0" standalone entry and
> "amlogic,meson-gxbb-scpi-sensors" is used always with "arm,scpi-sensors"
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/amlogic,scpi.txt      | 15 ---------------
>  .../devicetree/bindings/firmware/arm,scpi.yaml    |  4 ++++
>  2 files changed, 4 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/amlogic,scpi.txt
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic,scpi.txt b/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
> deleted file mode 100644
> index ebfe302fb747..000000000000
> --- a/Documentation/devicetree/bindings/arm/amlogic,scpi.txt
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -System Control and Power Interface (SCPI) Message Protocol
> -(in addition to the standard binding in [0])
> -----------------------------------------------------------
> -Required properties
> -
> -- compatible : should be "amlogic,meson-gxbb-scpi"
> -
> -Sensor bindings for the sensors based on SCPI Message Protocol
> ---------------------------------------------------------------
> -SCPI provides an API to access the various sensors on the SoC.
> -
> -Required properties:
> -- compatible : should be "amlogic,meson-gxbb-scpi-sensors".
> -
> -[0] Documentation/devicetree/bindings/arm/arm,scpi.txt
> diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> index 9c115e9c1536..d1179a4ea4e9 100644
> --- a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> +++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> @@ -34,6 +34,7 @@ description: |
>            to SCPI v1.0
>          items:
>            - const: arm,scpi-pre-1.0
> +          - const: amlogic,meson-gxbb-scpi

This says that compatible should be: "arm,scpi-pre-1.0", "amlogic,meson-gxbb-scpi"

The order would be wrong and you lost supporting 'arm,scpi-pre-1.0' by 
itself. You want an enum here if it is either one or another items list 
if it is 2 entries.

Rob
