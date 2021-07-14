Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 222893C8B7D
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 21:17:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbhGNTTv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 15:19:51 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:46888 "EHLO
        mail-io1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230185AbhGNTTu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 15:19:50 -0400
Received: by mail-io1-f41.google.com with SMTP id p186so3471744iod.13
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 12:16:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5wDdV9LhVyBRNA3TMQrxpx1/Y5TKktPkFTbniEPr3dk=;
        b=CDexufSmBNt8DNgHkmT9tFRW1raNOZLB+OgiMQRJQhr+xDgF+D1s9y+GtYeFJy1ht7
         xHsVV/qP8uPrCW6LmgzF1XgyYgevZR16vK7SxIiSA3yWvUl6nea0+c4ag3gIOGo1o0Co
         8iTZxhbn3nJrtGwR++AhNZqIM9BM06uZXvIbC2DtYIaWod7l24TW3wtjU3iR2cUNE8+z
         UIH1kX1hzOdVnpKeNn2PWxCzn/JNk8/cc/AG/YsCsdt01vGxSoAf1uN61jjwEzB6I7ui
         s0DqDbXq42+Gk/Wb7yGAP377O6CJHX7Tew7LdbL0jlWNXt3TpenaXoY05azTuWp/MEos
         5/mQ==
X-Gm-Message-State: AOAM530X3s4NBytwqcfFugyiTlk/qi3VOwzi4HKbfmgZ1exh2tZZWS6a
        91m92wEz728rCFEnesP18A==
X-Google-Smtp-Source: ABdhPJzmAN28wR2pS1YotRvUzFDvekH+cUPoPoIWuYwRgiJe0iw8k9q+St71oX1teh6AHEiqi4UzNw==
X-Received: by 2002:a6b:c305:: with SMTP id t5mr8505787iof.202.1626290218660;
        Wed, 14 Jul 2021 12:16:58 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id b9sm1834656ilo.23.2021.07.14.12.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 12:16:58 -0700 (PDT)
Received: (nullmailer pid 2998056 invoked by uid 1000);
        Wed, 14 Jul 2021 19:16:56 -0000
Date:   Wed, 14 Jul 2021 13:16:56 -0600
From:   Rob Herring <robh@kernel.org>
To:     Suman Anna <s-anna@ti.com>
Cc:     Jan Kiszka <jan.kiszka@siemens.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        devicetree@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH] dt-bindings: irqchip: Update pruss-intc binding for K3
 AM64x SoCs
Message-ID: <20210714191656.GA2997956@robh.at.kernel.org>
References: <20210623170630.1430-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210623170630.1430-1-s-anna@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Jun 2021 12:06:30 -0500, Suman Anna wrote:
> The K3 AM64x SoCs also have a ICSSG IP that is similar to existing K3
> AM65x and J721E SoCs. The ICSSG interrupt controller is identical to
> that of the INTC on J721E SoCs, and supports 20 host interrupts and
> 160 input events from various SoC interrupt sources. All the 8 output
> host interrupts are routed to multiple entities though. Update the
> PRUSS interrupt controller binding with this information, though the
> same K3 compatible shall be used for the ICSSG INTC on AM64x SoCs.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  .../bindings/interrupt-controller/ti,pruss-intc.yaml          | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Applied, thanks!
