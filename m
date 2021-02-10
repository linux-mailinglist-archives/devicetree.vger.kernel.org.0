Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACE8A316BE4
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 17:58:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231897AbhBJQ5s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 11:57:48 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:39125 "EHLO
        mail-ot1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232903AbhBJQ5K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 11:57:10 -0500
Received: by mail-ot1-f50.google.com with SMTP id d7so2413970otq.6
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 08:56:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tdIFZqMCODJxYNVt+c5A3pydLZPUZWk/O1X/86C8MTY=;
        b=rRB4aEZNSUy/y/T/M1CFlt8FWV5aL5sBmGtokQyZ2ntOEzh+P51dYs5ghbLlQ8ryf7
         3SMGo3LTnu5LS/KEu+ZWNJa24esFJpO+wVPxvDKdM/zP3vdJYiioUxN4szZrcNsxiHJq
         1lQbVSFTyfCWdh6wUGMjVq0PQSyZzz/vVWQXfQrV3Ric7NuWe0Y8eBhsZv/lt+aLEckw
         VsLeYGZC7Dy0/HPdaDPPQfoF78O9XhaQDjE+gx65gigWwLPW78ETKo6Ih7HAb/sFMHID
         PoeIZL9jnFwqZTPFzpeXdew6Au7klkQAeWNx95E2hmPKr5+b8DRa0t3zqFtyS20fVc8T
         4XkA==
X-Gm-Message-State: AOAM5308Pm0HCya41rhEKV2Vs2W1J2IjTKLA3vJBu3oUHOuE5onpKOFm
        T/eXDwcBmYUM3zAmPmJneQ==
X-Google-Smtp-Source: ABdhPJzm2BY44BnEkCqISIk9E4Fl8RmqB7xmozSWU7cXDDHKbqZC2oyfDuYZ/RCViSzS8r6VeQTQYw==
X-Received: by 2002:a9d:7694:: with SMTP id j20mr2834324otl.89.1612976189588;
        Wed, 10 Feb 2021 08:56:29 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p184sm563245oib.24.2021.02.10.08.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Feb 2021 08:56:28 -0800 (PST)
Received: (nullmailer pid 2328030 invoked by uid 1000);
        Wed, 10 Feb 2021 16:56:27 -0000
Date:   Wed, 10 Feb 2021 10:56:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     linux-riscv@lists.infradead.org, Anup Patel <anup.patel@wdc.com>,
        Atish Patra <atish.patra@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org, Sean Anderson <seanga2@gmail.com>,
        Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v19 08/17] dt-bindings: fix sifive gpio properties
Message-ID: <20210210165627.GA2327971@robh.at.kernel.org>
References: <20210210050230.131281-1-damien.lemoal@wdc.com>
 <20210210050230.131281-9-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210210050230.131281-9-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 10 Feb 2021 14:02:21 +0900, Damien Le Moal wrote:
> The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
> interrupts property description and maxItems. Also add the standard
> ngpios property to describe the number of GPIOs available on the
> implementation.
> 
> Also add the "canaan,k210-gpiohs" compatible string to indicate the use
> of this gpio controller in the Canaan Kendryte K210 SoC. If this
> compatible string is used, do not define the clocks property as
> required as the K210 SoC does not have a software controllable clock
> for the Sifive gpio IP block.
> 
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  .../devicetree/bindings/gpio/sifive,gpio.yaml | 25 ++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
