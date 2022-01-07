Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00409487F5E
	for <lists+devicetree@lfdr.de>; Sat,  8 Jan 2022 00:29:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231460AbiAGX32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 18:29:28 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:43884 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231433AbiAGX32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jan 2022 18:29:28 -0500
Received: by mail-oi1-f180.google.com with SMTP id u21so10318377oie.10
        for <devicetree@vger.kernel.org>; Fri, 07 Jan 2022 15:29:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MhuXnBELf9gxvh8+94YVJnoUtsf4wlumsFgwrflcwhU=;
        b=a4QdfA8AaWenixf6Ld5T4OReMsSviapHboggjuNhrAHxlWy/Yi1MqcfB+dESSWcc9S
         2sH2lDLhCB0VRubJq3ksoP4nzA7NbCCNJ/TTwjpJgdrnT0N7FbAwv7ZCO7qSFJXzJU7n
         lOX1gqATyCS7nqTPHWpU4eTtMOWZZaIli1sQWhzNPRGVhcwuy8Tf+tHPqKfudab0tOsz
         RJPDFbBHOODxrwHRKbDp5thzNnkwue06/83wWUY0Qe2QIu1PoWu6Ede8MdWOdgxHohQc
         oUYFEGOEs1Wbo4pSG/kuHVvyMdkGkpC8SGMQtoTzeS2gBoUiJZSHlyliLe9/6PPoXnpw
         Th6A==
X-Gm-Message-State: AOAM532c3a+XDEIVSIIxUW1uZr/zv844L1t3HkwslpT0ECX0d0eEmFru
        p0aRIg/+rFabxScNkIuiRw==
X-Google-Smtp-Source: ABdhPJyt9wacK8RYSomDKVztMgATeitQU4L/1edol1c7MMrOeM0f+WrTb4tRXBtIl5BwNN2GjUFwjg==
X-Received: by 2002:a05:6808:1647:: with SMTP id az7mr11982498oib.179.1641598167436;
        Fri, 07 Jan 2022 15:29:27 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id w13sm24518oic.24.2022.01.07.15.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jan 2022 15:29:26 -0800 (PST)
Received: (nullmailer pid 4138309 invoked by uid 1000);
        Fri, 07 Jan 2022 23:29:26 -0000
Date:   Fri, 7 Jan 2022 17:29:26 -0600
From:   Rob Herring <robh@kernel.org>
To:     Baruch Siach <baruch@tkos.co.il>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 1/2] of: base: Fix phandle argument length mismatch
 error message
Message-ID: <YdjM1pbMGLk2IPmu@robh.at.kernel.org>
References: <96519ac55be90a63fa44afe01480c30d08535465.1640881913.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96519ac55be90a63fa44afe01480c30d08535465.1640881913.git.baruch@tkos.co.il>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Dec 2021 18:31:52 +0200, Baruch Siach wrote:
> The cell_count field of of_phandle_iterator is the number of cells we
> expect in the phandle arguments list when cells_name is missing. The
> error message should show the number of cells we actually see.
> 
> Fixes: af3be70a321 ("of: Improve of_phandle_iterator_next() error message")
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
> v2:
> 
>   Use correct length modifier for ptrdiff_t
> ---
>  drivers/of/base.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!
