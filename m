Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E366731139A
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 22:33:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230374AbhBEVdB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 16:33:01 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:36985 "EHLO
        mail-ot1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231261AbhBEVcm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 16:32:42 -0500
Received: by mail-ot1-f50.google.com with SMTP id k25so6184772otb.4
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 13:32:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FXxaKW4VvKFg/azx1hd5YtFoLVSQBmuXnkslcXmlnpM=;
        b=PnPP+i91Aer3tGP6+nQrO8gAO2g67MpJpmfCbjz70QLLenMpzu4nfKXTEqzYck8vb5
         ALSIMtce8nbYuXuNPeZubGSASFI78CVJIPKxSh0uyiuUElKzpLo97zmuXyynAyOW/aEF
         A5P6SAuAvG3polGdX5AWgj6w5t0DviC4p1SFOCwFYdobNde9wzhbgsOxG/RLBLGFfOSB
         WDIf9KLwoiCoz2cIxbSHl7HWxIUs2K41kFk35tnm+bOnxmOrI56v+RQgA/e6QNnY5sPG
         yaYgFMSIAHRQ7N5B9QhPdpmQ4S4qB68HjeT7PvnxX6SxaRSiyJOoW5NomIaTxZk2aJ32
         BYnw==
X-Gm-Message-State: AOAM531FNa/3OMLUhqubS4aNZG5MZvEAovz11A7FmjiG0ZrVp1u6gP3i
        MQMV5jTv5WmHm0jDyusbBylksfpXbQ==
X-Google-Smtp-Source: ABdhPJyLxsCxCQYVcYCoFPBWYTjINWA8T33p9CWzmd/78jVEQ/YdEgr+ItI/3X3pRkIZmpM47dAcoA==
X-Received: by 2002:a05:6830:233a:: with SMTP id q26mr4593782otg.151.1612560721877;
        Fri, 05 Feb 2021 13:32:01 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id s189sm2011082oif.19.2021.02.05.13.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Feb 2021 13:32:00 -0800 (PST)
Received: (nullmailer pid 3783400 invoked by uid 1000);
        Fri, 05 Feb 2021 21:31:59 -0000
Date:   Fri, 5 Feb 2021 15:31:59 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     linux-i3c@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/6] dt-bindings: i3c: mipi-hci: Include the bus
 binding
Message-ID: <20210205213159.GA3783349@robh.at.kernel.org>
References: <20210121101808.14654-1-miquel.raynal@bootlin.com>
 <20210121101808.14654-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210121101808.14654-3-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Jan 2021 11:18:04 +0100, Miquel Raynal wrote:
> Update a little bit the content to match the bus binding, including:
> - the node title should have been named after the description done
>   in the historical i3c.txt file, ie: i3c-master@<address>
> - child nodes should be accepted even though the drivers do not currently
>   support it
> - #address-cells and #size-cells are also mandatory and have specific
>   values
> 
> Cc: Nicolas Pitre <nico@fluxnic.net>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
