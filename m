Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF99D351806
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 19:48:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235850AbhDARnR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 13:43:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234932AbhDARlU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 13:41:20 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8A4CC031171
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 09:59:50 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id i3so2417345oik.7
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 09:59:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1uvhvKYB6+s+eLS14WwGKcpNntNBuH4ySH8IZ5xM6xo=;
        b=D0Xow3Tg2KRfFZyumPr8RKyyk1akrborGiQ1Tou1JYwLYPTxq0MvbdKxiUs3d4h/7b
         Ic4xJqK6ez0w4qyrSE+nfWgOVfb2B/kNo4jTAosJab2x4lu2cwhVpIf9bUZTNa3+Wbxf
         JBQUp8GXLTtSGa3qRk0KkHNnBHvRaH76+0e4ZBnjmyYuo8IwOCkU8NUyqO8WH8orxcUf
         bAo6iOgtz5RLPS0bsGRA7iWm/XWoHE7+cW1pJlE6LsvjOWqZIwkt+3rvihK2R4zY6j5Y
         pGu00y/Wa2eYY3sv66hJIcLXkFAPzHkLdJTsxaLuII5/2QhjT63vKrc6A6pmxRxUimD0
         Lz2Q==
X-Gm-Message-State: AOAM532DYExznQVhlonBLdAUsNYfiSV/M26lNVjVpDBnIlhm7WGpWbBP
        FLHp2seAS7v/y9mE6av5+g==
X-Google-Smtp-Source: ABdhPJzgl1QCgd25X68fMfTgZnUJZP8F8yZFZGyotJjhAcNyp+Q717RmuzEVIDkMiSmtMHmJBIhw+A==
X-Received: by 2002:a05:6808:904:: with SMTP id w4mr6559959oih.1.1617296389577;
        Thu, 01 Apr 2021 09:59:49 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id e34sm1281396ote.70.2021.04.01.09.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 09:59:48 -0700 (PDT)
Received: (nullmailer pid 608173 invoked by uid 1000);
        Thu, 01 Apr 2021 16:59:47 -0000
Date:   Thu, 1 Apr 2021 11:59:47 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Icenowy Zheng <icenowy@aosc.io>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 3/4] dt-bindings: arm: add compatible strings for
 Forlinx OKA40i-C
Message-ID: <20210401165947.GA608122@robh.at.kernel.org>
References: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
 <20210331155616.793550-4-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210331155616.793550-4-i.uvarov@cognitivepilot.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 31 Mar 2021 18:56:15 +0300, Ivan Uvarov wrote:
> The OKA40i-C is a carrier/development board for the Forlinx FETA40i-C SoM
> based on the Allwinner R40/A40i SoC.
> 
> This patch adds the relevant dt-binding documentation in preparation for
> the next patch, which adds a devicetree for the SoM and board.
> 
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
> 
>  2 files changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
