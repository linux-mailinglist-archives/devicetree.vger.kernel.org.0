Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA09C375C6B
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 22:49:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230306AbhEFUua (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 16:50:30 -0400
Received: from mail-oo1-f48.google.com ([209.85.161.48]:33318 "EHLO
        mail-oo1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230019AbhEFUu1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 16:50:27 -0400
Received: by mail-oo1-f48.google.com with SMTP id j17-20020a4ad6d10000b02901fef5280522so1555514oot.0
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 13:49:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bN2H79oUvlX9XRAnsouOG4QnmCCE8dE16I9NJ8KM56U=;
        b=ebcbhE1XVhlcRVPTwXuLBSZYyEm7EVEeEVsi9x+uO04518XknZiNrctXzpW83liVoT
         keRdXS+MRYSCVyj4dth01/R8RKPnrI5OMDJye0OvkgX4hJOBadgTVIeqXFEm7rfG4VcX
         qTZkPtNxU+o0CCmYSgznykD26t1GN6e8ZOl3D2jDIIxTkeYKVXdUUVMbzclWFD7OjzRh
         N64azctfu/JgVMZsgpy5iERW1TY1D9rKSWglPPJUQp5ercj84QO7LovExIrWthUrHCII
         5WRWXpXKtTQqn30D937UPWu14GkcdSaXrek6la+1cqh5LMXzBN53CVFBgLyvzGvucDAe
         X0ug==
X-Gm-Message-State: AOAM533T4kwJ1aVfC9VbKDEpxHJ92dDSlrcJ6R+M4rwK/1DT39M4ZxNV
        l53rRJwyn5zJWEfleoFOjw==
X-Google-Smtp-Source: ABdhPJy6f203rjAloSpnVlx2tEXyD5pPIkQSYtK+ovPgcVO1H37uTA9UM/50/WX0ybOMRBlMbkh7Lw==
X-Received: by 2002:a4a:4bc2:: with SMTP id q185mr5004255ooa.19.1620334168705;
        Thu, 06 May 2021 13:49:28 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id r132sm618338oih.54.2021.05.06.13.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 13:49:28 -0700 (PDT)
Received: (nullmailer pid 778283 invoked by uid 1000);
        Thu, 06 May 2021 20:49:27 -0000
Date:   Thu, 6 May 2021 15:49:27 -0500
From:   Rob Herring <robh@kernel.org>
To:     daire.mcnamara@microchip.com
Cc:     cyril.jean@microchip.com, devicetree@vger.kernel.org,
        palmer@dabbelt.com, linux-clk@vger.linux.org,
        lewis.hanly@microchip.com, conor.dooley@microchip.com,
        padmarao.begari@microchip.com, robh+dt@kernel.org,
        sboyd@kernel.org, mturquette@baylibre.com,
        david.abdurachmanov@gmail.com
Subject: Re: [PATCH v5 1/2] dt-bindings: clk: microchip: Add Microchip
 PolarFire host binding
Message-ID: <20210506204927.GA778254@robh.at.kernel.org>
References: <20210504123515.916707-1-daire.mcnamara@microchip.com>
 <20210504123515.916707-2-daire.mcnamara@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210504123515.916707-2-daire.mcnamara@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 04 May 2021 13:35:14 +0100, daire.mcnamara@microchip.com wrote:
> From: Daire McNamara <daire.mcnamara@microchip.com>
> 
> Add device tree bindings for the Microchip PolarFire system
> clock controller
> 
> Signed-off-by: Daire McNamara <daire.mcnamara@microchip.com>
> ---
>  .../bindings/clock/microchip,mpfs.yaml        | 67 +++++++++++++++++++
>  .../dt-bindings/clock/microchip,mpfs-clock.h  | 45 +++++++++++++
>  2 files changed, 112 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
>  create mode 100644 include/dt-bindings/clock/microchip,mpfs-clock.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>
