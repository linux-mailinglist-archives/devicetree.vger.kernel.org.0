Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44D14398EDF
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 17:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231321AbhFBPni (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 11:43:38 -0400
Received: from mail-oo1-f50.google.com ([209.85.161.50]:38663 "EHLO
        mail-oo1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbhFBPnh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 11:43:37 -0400
Received: by mail-oo1-f50.google.com with SMTP id o66-20020a4a44450000b029020d44dea886so646680ooa.5
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 08:41:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ED0B0xiUNXBAij9IhGNE50nTSCH6addhay+ITPepSis=;
        b=d+RpvE1rB1x/v1mAh5ZtlHoVUmBlH9VR41hWq8dANzc/I87DYARZG069PKfGkOnqfj
         RrWPjFwjSj+SZinEJRJGEsp9QUXE3bmZ0+4s764I8YikWKwD12Txbrsq4ZwUWjFP3QTt
         CVN2EEEHu2LUxfKHGHDffPxPMUcXmYRlQ3dM+GXw2IEv5plGUuU7KxHNGQrEmjQwpsgO
         hAhZRaVyEJtUzXyPf6aCncVqTDJXlUH3hQtM59Id2wx1s35yxrdChpXkFP5/KJJy/rm1
         wmfNaFQtr282cbHuBA6R5BUgZ8/bE6CcknJj5Sek2pfXUu1zJ37P9t76i79XvK1daIpJ
         BwcQ==
X-Gm-Message-State: AOAM531JiWgMwS0yQQToG6uQCceFZeXcsqn82DxtMP9x7JZXTyDqdArz
        rP/aXGlAZQClXNWA2V9p1A==
X-Google-Smtp-Source: ABdhPJwAds100NAtjC7omeC22M0GcUjCy1wRoDqOa61447lLJyduTJXXQ2Yd8Gd6wB8LdCS8oo1HHw==
X-Received: by 2002:a4a:a3c3:: with SMTP id t3mr24895234ool.50.1622648502298;
        Wed, 02 Jun 2021 08:41:42 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id g26sm37899ooe.15.2021.06.02.08.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 08:41:40 -0700 (PDT)
Received: (nullmailer pid 3423562 invoked by uid 1000);
        Wed, 02 Jun 2021 15:41:39 -0000
Date:   Wed, 2 Jun 2021 10:41:39 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/8] dt-bindings: firmware: arm,scpi: Move
 arm,scp-shmem to json schema
Message-ID: <20210602154139.GA3423422@robh.at.kernel.org>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
 <20210601224904.917990-2-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210601224904.917990-2-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Jun 2021 23:48:57 +0100, Sudeep Holla wrote:
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

Applied, thanks!
