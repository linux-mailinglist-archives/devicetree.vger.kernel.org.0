Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FDA2311184
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 20:52:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231657AbhBESIn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 13:08:43 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:36080 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232917AbhBESGa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 13:06:30 -0500
Received: by mail-oi1-f179.google.com with SMTP id k204so7160429oih.3
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 11:48:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yG4/2XX48TNp08W6kCqLIKcRYozTH8MNqDdsxx8JohE=;
        b=sYCnAhSSBhOznNi0lChAv2r5pJ8GVQpDrBBxaXMc9EG4tPti77mZXpTNWrUclcX3XZ
         SgViv60v+Grf7nFtgzx/b9rJ/IFvMJwPrZfVlD0LSAFrggIY/HhDufmNTk7959v6Rut0
         zK+yuFR7Q/9w2FLl7Wc14CMBJncpy4ZReAXJvni+aw0wycob1N0XnMS8dOhqLd26mt51
         dgKeJnwEYFN6xtkSqkpuvzcEaW4O4GP5zpX9axjk5QwJt3895VbHNdx1GD/+v9/oiu/D
         6MvlwBU32ZTz4ijwIj7OJHUMssaq3EhosRNEOdwixrXvScd3IUN/ZE88LPWQI2Fb37D3
         qj2w==
X-Gm-Message-State: AOAM530yZP5TLWpr23KiwAkDBYy6puljxpSw4T0RjM/Tg86+Ynk3+MO9
        pYjpVS1qYXLRg5ZctL+VMg==
X-Google-Smtp-Source: ABdhPJyq2llrZxGJWZeWVtFt2++exLjxoaXNtYT1m+2J3VDc2a1XlypE7QvdVzN1nj8Yz2U0KAAYGg==
X-Received: by 2002:aca:3bd6:: with SMTP id i205mr4143845oia.82.1612554492378;
        Fri, 05 Feb 2021 11:48:12 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p12sm86690oon.12.2021.02.05.11.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Feb 2021 11:48:11 -0800 (PST)
Received: (nullmailer pid 3599153 invoked by uid 1000);
        Fri, 05 Feb 2021 19:48:10 -0000
Date:   Fri, 5 Feb 2021 13:48:10 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, Sean Anderson <seanga2@gmail.com>,
        Anup Patel <anup.patel@wdc.com>,
        Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v16 05/16] dt-bindings: update sifive clint compatible
 string
Message-ID: <20210205194810.GA3599114@robh.at.kernel.org>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
 <20210205065827.577285-6-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210205065827.577285-6-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 05 Feb 2021 15:58:16 +0900, Damien Le Moal wrote:
> Add the "canaan,k210-clint" compatible string to the Sifive clint
> bindings to indicate the use of the "sifive,clint0" IP block in the
> Canaan Kendryte K210 SoC. The description of the compatible string
> property is also updated to reflect this addition.
> 
> Cc: Anup Patel <anup.patel@wdc.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  .../devicetree/bindings/timer/sifive,clint.yaml      | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
