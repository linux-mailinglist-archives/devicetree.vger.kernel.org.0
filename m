Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C269932333C
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 22:27:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231496AbhBWV1Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 16:27:16 -0500
Received: from mail-oo1-f48.google.com ([209.85.161.48]:32772 "EHLO
        mail-oo1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230386AbhBWV1O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 16:27:14 -0500
Received: by mail-oo1-f48.google.com with SMTP id k1so6774oop.0
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 13:26:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8pXExpS9PvOExikZJ7Q8HiXBJ2GFTC1MELs41wkXBlc=;
        b=bk5ZcZKnqf3VNfZGyp9hsgXN7i1VXCnoxuh/0YRy9qp3BYI1ed5pNILZ8z0xMbugcr
         Y4EiUg3FiszIlamNV5vhJypNMSiZiKObBKyp0AmC3+iQlYyuzk3SOPkIrl4aK4gJ2a/L
         jsEXZljcwKIE5IzEHF2JWAE1jlnvLxjpYVVcsCuCiHegK998yC9NEPybwKSPqDHYYiCP
         N3awOMh743IY4/q4Ndmb5XUHSQUFS21/0KgUswOj7NExt6i93pNyIROOR0WZrpvdGcUN
         BcyMeEd0vAqvgDpqrlWTExekNZX2RHZj7auxhjya383/5UqHFf/et/hjp5bseuz3AQxe
         9NpQ==
X-Gm-Message-State: AOAM531QYoKx4d8UL7j+Vqf/RYsQqURcGI03qxgNqF0/YcpxpF6P/aiW
        OYGXA9WFMluigMpAKhN6nw==
X-Google-Smtp-Source: ABdhPJwDR5QPmHRbGAy3npTvwQW4Y5hdZx6wI3WSDhcm/cvPDJ7i1uoJ8C7ns1vhm95FkqiajyKVRw==
X-Received: by 2002:a4a:e9e3:: with SMTP id w3mr16258859ooc.39.1614115592896;
        Tue, 23 Feb 2021 13:26:32 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v20sm3130341oie.2.2021.02.23.13.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Feb 2021 13:26:25 -0800 (PST)
Received: (nullmailer pid 89789 invoked by uid 1000);
        Tue, 23 Feb 2021 21:26:24 -0000
Date:   Tue, 23 Feb 2021 15:26:24 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: bcm2711-hdmi: Fix broken schema
Message-ID: <20210223212624.GA89721@robh.at.kernel.org>
References: <20210218152837.1080819-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210218152837.1080819-1-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 18 Feb 2021 16:28:37 +0100, Maxime Ripard wrote:
> For some reason, unevaluatedProperties doesn't work and
> additionalProperties is required. Fix it by switching to
> additionalProperties.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/display/brcm,bcm2711-hdmi.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!
