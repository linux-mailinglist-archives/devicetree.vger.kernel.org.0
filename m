Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24F613DAE4D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jul 2021 23:25:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233516AbhG2VZV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jul 2021 17:25:21 -0400
Received: from mail-il1-f179.google.com ([209.85.166.179]:39552 "EHLO
        mail-il1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230342AbhG2VZU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jul 2021 17:25:20 -0400
Received: by mail-il1-f179.google.com with SMTP id r1so7312467iln.6
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 14:25:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eOSyJP5DFWE6G+MDpccn6qzqHMoZVXhoAZJARr6NYUk=;
        b=o4Bf6HkY+HuBNDnEmpmxAILk8rxJGfpBBFPk8qdC6AKUTIJ1W6hWiMu9W0RgbXw6LC
         ZW4030psuqfWiWg89XA8Ch2J82TsJuj76xQew7Bm8P4L7RJPqb5k2yr761jirBTf4olD
         8Lp1RFKfz7XTE3n/t72Zs2Zxlp5AxaGUzpAM7D7buk+v1kYfBz7aHAZNqgmLvUO1h4rm
         nb3ZoQdJCYUJj/Cf5llWN/8umRgA9kn8mSnYiROr58lxFm+ZpP2lfFh9vbyJulh8zgMr
         Lp8B/NwjO9YyMaGtfY0ye9O5oaNuoQlF87x3mQwKBNhilShF5grluJHWNofrR7vWMbGx
         y/sA==
X-Gm-Message-State: AOAM533fCkdoO97zAA+EerteVZQoOu/20txOXVEs5ywh9NlNFOA3FQ6C
        hd5SzXjC3vvh57xxaE3Szw==
X-Google-Smtp-Source: ABdhPJxv/0OFFY2ZEIacSqlE1O55PPia1OE8lPP1O5xyDLjiNnZK21XjESjb7Jhk3xpxnldZIfYwIQ==
X-Received: by 2002:a92:db4b:: with SMTP id w11mr5293585ilq.297.1627593915788;
        Thu, 29 Jul 2021 14:25:15 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id q10sm3180275ion.3.2021.07.29.14.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 14:25:15 -0700 (PDT)
Received: (nullmailer pid 918885 invoked by uid 1000);
        Thu, 29 Jul 2021 21:25:13 -0000
Date:   Thu, 29 Jul 2021 15:25:13 -0600
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Corentin Labbe <clabbe@baylibre.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: Convert Gemini boards to YAML
Message-ID: <YQMcuZH/hDkvCSD/@robh.at.kernel.org>
References: <20210723152356.1874088-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210723152356.1874088-1-linus.walleij@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 23 Jul 2021 17:23:56 +0200, Linus Walleij wrote:
> This removes the old plaintext Gemini binding and replace it
> with a YAML schema, adding some new boards in the process.
> While we are at it, add the missing vendors to the vendor
> prefix file.
> 
> Drop the overly deliberate description of subnodes and the big
> example from the old document. Keep the elaborate description.
> 
> I noticed that "wiliboard" is not a real vendor, the vendor
> is named "wiligear" so deprecated this and replaced with the
> proper vendor.
> 
> Cc: Corentin Labbe <clabbe@baylibre.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> Rob: maybe it's best that you apply this directly to the bindings
> tree so the vendors file is kept in check.
> ---
>  .../devicetree/bindings/arm/gemini.txt        | 108 ------------------
>  .../devicetree/bindings/arm/gemini.yaml       |  95 +++++++++++++++
>  .../devicetree/bindings/vendor-prefixes.yaml  |  10 ++
>  3 files changed, 105 insertions(+), 108 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/gemini.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/gemini.yaml
> 

Applied, thanks!
