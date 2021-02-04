Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B52063100EC
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 00:46:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230389AbhBDXnf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 18:43:35 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:33917 "EHLO
        mail-oi1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231135AbhBDXnF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 18:43:05 -0500
Received: by mail-oi1-f178.google.com with SMTP id h192so5653353oib.1
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 15:41:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=P+UVruVxRwRdGuY3fZzSjXi65ZX86fMQHRBXMxtTKI8=;
        b=atduxtnIdHkQs7fd4bE8an8t1f2F1VS/M1qtux51WskEMBalhkSC8HX54lzEJF9ikF
         aYWccrkJEc7stU4IAZ7bKAy6m5Zokd7kPyItcUy0Od5WilLkkgLo0j6Qam9dhVjnXwvq
         vrUOyzBmHnA2beUYilyN/ieZtiTK3Gkq/clwHKcq9Mif/DQPaGq7WgBDaRmbrrzvDayv
         uy6qLUzfibC8XbTdCJdnsH1w4n2EeIsWIy1yJGSm4TLef7v5NJv2sEhjNhqYQR07eVjg
         QPIw2LiGaWaqOqjr1U9htkTuIPjZZX2mNr2iPx7kUxyZBaCFVYHFbNo3d5mo2ko7ociq
         ITIg==
X-Gm-Message-State: AOAM532xuZqJMpi3oIGg8dAp+seBPJMONLgBXySIR4Bk7TLp289WFNcG
        t03D9wu1HCRlsWLWecFxLg==
X-Google-Smtp-Source: ABdhPJxqFAoURtqEGWe8nWFaB/UCBtORvaLJtDvfepOj0vxBH0uXl7qkDHy/m0hqmz1nwHXEEWP4LQ==
X-Received: by 2002:a54:478c:: with SMTP id o12mr1318315oic.28.1612482089445;
        Thu, 04 Feb 2021 15:41:29 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w9sm1474028oos.0.2021.02.04.15.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 15:41:28 -0800 (PST)
Received: (nullmailer pid 1338992 invoked by uid 1000);
        Thu, 04 Feb 2021 23:41:27 -0000
Date:   Thu, 4 Feb 2021 17:41:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Add Apple as vendor
Message-ID: <20210204234127.GA1334819@robh.at.kernel.org>
References: <20210203123547.318876-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210203123547.318876-1-linus.walleij@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 03, 2021 at 01:35:47PM +0100, Linus Walleij wrote:
> As noted in discussion, this prefix is already in use.
> 
> Link: https://lore.kernel.org/linux-arm-kernel/CAL_Jsq+znLsyQOw59xqYgoYo9eJrn1R1Tj--aRvPHOD_jv0fxA@mail.gmail.com/

If I wasn't clear, I'm happy to take AAPL which is already in use (by 
the kernel and for decades).

There's a patch for that now already.

> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 076d4b26261b..450596d2a108 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -101,6 +101,8 @@ patternProperties:
>      description: Anvo-Systems Dresden GmbH
>    "^apm,.*":
>      description: Applied Micro Circuits Corporation (APM)
> +  "^apple,.*":
> +    description: Apple Inc.
>    "^aptina,.*":
>      description: Aptina Imaging
>    "^arasan,.*":
> -- 
> 2.29.2
> 
