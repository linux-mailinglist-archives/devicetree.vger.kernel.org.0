Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A6A7400758
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 23:15:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234568AbhICVQH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 17:16:07 -0400
Received: from mail-oo1-f50.google.com ([209.85.161.50]:43000 "EHLO
        mail-oo1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232927AbhICVQH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 17:16:07 -0400
Received: by mail-oo1-f50.google.com with SMTP id e206-20020a4a55d7000000b00291379cb2baso75685oob.9
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 14:15:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=y7560HvHmbKiKMHohtmya1Kp5KqBPXLa2/KXrD6Z0gc=;
        b=Tup+gLfTUVH/ugZEl7a/AaXfY/JRfSpOw+iktd7LpaM5siejkLBTAaEych6wUWBAMV
         +WDmQpy7kRvvSxT6kjMjdhPFWm+CUy1X8nfKmZwxFMzoVnNypPjRDfCydpadEl3EOSYO
         XwJP0xmToojHNwIP0qK6GAozVSz9OvWtlzGGG7UoKw7ffKktdauIFOBmLVeM3acR8gwM
         KZtnrEpDnQbFT0bgmS1s9DkNDnnmMDnk9PmwXBO7k7/jZluQkZnIm/c9F7pnIORe/+DR
         MbqUFhMovJY+2xyN9ayu0cigJKyFuc70GbrxYUGuSxLYuMC1t9T7pHJLpgY2n70lwNsS
         Hb0A==
X-Gm-Message-State: AOAM531ivLfvDcalCkaVQfNpc5keHKjqFaBaLREES1GyQpv45KjpyxxO
        Y7WJUZWqmn7AUMkm277nWg==
X-Google-Smtp-Source: ABdhPJz2CMyjZBMzdqIJqtl3K91FDKCdi/0f+1kZLvxJcFetH06pO9Dhv9JJa2U6k67ccqbwyqqwSg==
X-Received: by 2002:a4a:ba86:: with SMTP id d6mr4596305oop.61.1630703706464;
        Fri, 03 Sep 2021 14:15:06 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id g23sm106844otl.23.2021.09.03.14.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 14:15:05 -0700 (PDT)
Received: (nullmailer pid 3473434 invoked by uid 1000);
        Fri, 03 Sep 2021 21:15:05 -0000
Date:   Fri, 3 Sep 2021 16:15:05 -0500
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH dt-schema 1/2] schemas: chosen: Generalize
 linux,elfcorehdr and linux,usable-memory-range
Message-ID: <YTKQWRgV2vx8KkIh@robh.at.kernel.org>
References: <20210901151310.2484003-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901151310.2484003-1-geert+renesas@glider.be>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 17:13:09 +0200, Geert Uytterhoeven wrote:
> The properties "linux,elfcorehdr" and "linux,usable-memory-range" are no
> longer limited to arm64.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  schemas/chosen.yaml | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 

Applied both, thanks!
