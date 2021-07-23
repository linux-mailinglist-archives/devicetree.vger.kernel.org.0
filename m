Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5D983D41A9
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 22:42:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbhGWUCC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 16:02:02 -0400
Received: from mail-il1-f169.google.com ([209.85.166.169]:43834 "EHLO
        mail-il1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbhGWUCC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 16:02:02 -0400
Received: by mail-il1-f169.google.com with SMTP id 10so2695003ill.10
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 13:42:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JT3GG7anTyw8BDT8jvvTGThCHjMwDKp/QaQK0gUZd7c=;
        b=o76cco9Wrf5eN427Qg7wNdDYSItPZOirdrrY0eXATD8IMxqKQQK/9BKmW8voRYoZIn
         mUdn+xeXPkQ7ahOWAyo2v6xvqBvf7/V4oDH5H7FyVV6LKrPtmAaFTUCoCt8qS4gxC1NM
         lokcA3FXhjfhe3cpDi9uNXkD8PDs/QXG4N4JFgFc2gQ+3TIFb3kt0v+AF21jJH2O99tf
         qvCJRvhYp0cvBgWup0RuejY4eFMZfcIj5LU/JczfeRWr40uQ8ldb5q4H250t+RunM5bX
         rc4GHW8oeN+gujzR3sHUBbS98MfVwgAAbgyuqbjkW55SGsXmoYlqcEZDUomXuTnClUC3
         YgcA==
X-Gm-Message-State: AOAM531D/5W9Vbc6CQ39GpRwbgAkYwHk/nHxILXjvCT/RwKCGcrsl4Bk
        Wi+gmnGUuv4ppeBffwtsSw==
X-Google-Smtp-Source: ABdhPJxPEtFhJMGcmLtlznr2WRtr1KXCyz4cAh0mpirGfovfXry5DketPoRCW3sZj+mrCqxDfPAgkQ==
X-Received: by 2002:a05:6e02:1d89:: with SMTP id h9mr4407657ila.46.1627072955438;
        Fri, 23 Jul 2021 13:42:35 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id i5sm17448202ilc.16.2021.07.23.13.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 13:42:34 -0700 (PDT)
Received: (nullmailer pid 2542706 invoked by uid 1000);
        Fri, 23 Jul 2021 20:42:33 -0000
Date:   Fri, 23 Jul 2021 14:42:33 -0600
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 1/2 v2] bus: ixp4xx: Add DT bindings for the IXP4xx
 expansion bus
Message-ID: <20210723204233.GA2541746@robh.at.kernel.org>
References: <20210722084330.1618239-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210722084330.1618239-1-linus.walleij@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 22 Jul 2021 10:43:30 +0200, Linus Walleij wrote:
> This adds device tree bindings for the IXP4xx expansion bus controller.
> 
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - Drop unevaluatedProperties: false from the node match.
>   additionalProperties: true will be the default.
> ---
>  ...intel,ixp4xx-expansion-bus-controller.yaml | 149 ++++++++++++++++++
>  1 file changed, 149 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
> 

AFAICT, there is no patch 2/2. If there is it never made the lists.

Applied, thanks!
