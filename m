Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D72638B83A
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 22:19:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235638AbhETUUZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 16:20:25 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:41758 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233159AbhETUUZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 16:20:25 -0400
Received: by mail-oi1-f180.google.com with SMTP id c3so17572103oic.8
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 13:19:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=R7/rd/XXcRprZTdwLFRUnNo6LqNUm7moCuh27q1I0Tc=;
        b=HNbhZLNfmQOwYUlhROL3/6VjR1BIVFsc8q/LxsCrTAuZu7uR5NX+m5hZ0HJBqPrnwC
         ZXQHAPZkFiH/Su1cV1xfp1xwgOq/e01lNR20vijB0BofVQckvIU9xOQZ9XzhDAl75iZ6
         Td5jetaJ/Z3BjSIaiwanTXVpavBNUwXyoD30wfDxeHpUf9gD4X3XvlP0LEA05bIAPpe5
         c4GVnuolUpPVauApUYLiFT9zAuP0DsQ5q9PUisFr3X0gz1qT3t761cNWhkh/4rwT+16O
         Yu13u6YCxJbjwn6TJ3yWzih+k97xX6hJNMZAIrFygaUpXnkLB05A+XCGhf6Pmhg5p9ot
         M6gg==
X-Gm-Message-State: AOAM533wBJKzK6QqLsHT2Z6IwyfSP/PDrO7Jmrgwaexs7KzYvgv1/RYF
        7+zyK1ElmpR9+DsdLddwAaDX0F7fEg==
X-Google-Smtp-Source: ABdhPJzYLwUKxDtzLfBEJX0Ulepy9eb5Z28h4pKcQ1o5pwvwbUEfhYQE/oYWQss3csvk9NctimXhFw==
X-Received: by 2002:aca:db41:: with SMTP id s62mr4366961oig.167.1621541942189;
        Thu, 20 May 2021 13:19:02 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w4sm896729otl.21.2021.05.20.13.19.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 13:19:01 -0700 (PDT)
Received: (nullmailer pid 1882128 invoked by uid 1000);
        Thu, 20 May 2021 20:19:00 -0000
Date:   Thu, 20 May 2021 15:19:00 -0500
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: scu: Convert to json-schema
Message-ID: <20210520201900.GA1882069@robh.at.kernel.org>
References: <c5c36fb952675df4b9c9834d53a21fb58f391e86.1621522979.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c5c36fb952675df4b9c9834d53a21fb58f391e86.1621522979.git.geert+renesas@glider.be>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 May 2021 17:03:40 +0200, Geert Uytterhoeven wrote:
> Convert the ARM Snoop Control Unit (SCU) Device Tree binding
> documentation to json-schema.
> 
> Document required properties.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> I have listed Linus as the maintainer, as he wrote the original
> bindings.  Linus: Please scream if this is inappropriate ;-)
> ---
>  .../devicetree/bindings/arm/arm,scu.yaml      | 46 +++++++++++++++++++
>  Documentation/devicetree/bindings/arm/scu.txt | 28 -----------
>  .../devicetree/bindings/arm/ux500/boards.txt  |  2 +-
>  3 files changed, 47 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,scu.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/scu.txt
> 

Applied, thanks!
