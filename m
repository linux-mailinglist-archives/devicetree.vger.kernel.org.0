Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AA0746A6AA
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 21:15:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349443AbhLFUSz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 15:18:55 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:33369 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349451AbhLFUSz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 15:18:55 -0500
Received: by mail-ot1-f47.google.com with SMTP id 35-20020a9d08a6000000b00579cd5e605eso15231489otf.0
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 12:15:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9febHPQhAYCtbWoC1Hc4Ge4OJvu7DELRRElg0sDow2c=;
        b=cHAvb/jbSyquTC5pYNYKQhH4cqfV0enYx0oA+45avSh2YiOetrziV5rAB+JXH+dA1G
         ZYnlNfmeVHAqzKH1n4bGAAk5S3NUlkNyl2NheSsYHvLRlHtF9IPvHVxFXtmSTvVZKRps
         x7W09wiUg7uCt0TDTuUT/fAfeJOGtPowpZO3JJr8JMRSFDLRWK+H2vkajAz9PFpC7M7B
         tL6AEu2H0Tzk3aV1F2wT8tFWuiN7CeRUSlo9QsXSIrKQen88f/Q0flVjc/dF/Ex3v9ur
         vXFSfyaamVBOCVqgVlazRjFlM2SRYLxu1NK4qZ26y07b/wWdWHdl7cEbAjRhiUZpOp8b
         yrMg==
X-Gm-Message-State: AOAM532/9I5SJYoioZTpyeH5MMI4T1SFYKpRHTMqA7StRJm3/Iv8xJRM
        j0M6fElUi0eAB/YPscuzoA==
X-Google-Smtp-Source: ABdhPJzNZMSXBfpuHe7viwBBAbTf1U9ylh4VxglHLOaSw78OCn/G7jLo7jmw+QIv4AZc+sejVeW+Vw==
X-Received: by 2002:a9d:f4a:: with SMTP id 68mr32127650ott.327.1638821725769;
        Mon, 06 Dec 2021 12:15:25 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id z8sm2258321oot.7.2021.12.06.12.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 12:15:25 -0800 (PST)
Received: (nullmailer pid 2511155 invoked by uid 1000);
        Mon, 06 Dec 2021 20:15:24 -0000
Date:   Mon, 6 Dec 2021 14:15:24 -0600
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Jakub Kicinski <kuba@kernel.org>, devicetree@vger.kernel.org,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        "David S . Miller" <davem@davemloft.net>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: net: Reintroduce PHY no lane swap
 binding
Message-ID: <Ya5vXCi6g1RVne8c@robh.at.kernel.org>
References: <20211130082756.713919-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211130082756.713919-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 30 Nov 2021 09:27:56 +0100, Alexander Stein wrote:
> This binding was already documented in phy.txt, commit 252ae5330daa
> ("Documentation: devicetree: Add PHY no lane swap binding"), but got
> accidently removed during YAML conversion in commit d8704342c109
> ("dt-bindings: net: Add a YAML schemas for the generic PHY options").
> 
> Note: 'enet-phy-lane-no-swap' and the absence of 'enet-phy-lane-swap' are
> not identical, as the former one disable this feature, while the latter
> one doesn't change anything.
> 
> Fixes: d8704342c109 ("dt-bindings: net: Add a YAML schemas for the generic PHY options")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  Documentation/devicetree/bindings/net/ethernet-phy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Applied, thanks!
