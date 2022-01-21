Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5734496808
	for <lists+devicetree@lfdr.de>; Fri, 21 Jan 2022 23:59:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230064AbiAUW7Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jan 2022 17:59:24 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:37691 "EHLO
        mail-oi1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229926AbiAUW7Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jan 2022 17:59:24 -0500
Received: by mail-oi1-f176.google.com with SMTP id bf5so15711808oib.4
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 14:59:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IgRNDsFieCbEXw6eVIig8iEpMTgr5+U1m6GpMZtdEPE=;
        b=neyizk9eCpTCY1t0z2NcnCH609Dxnv2sGOehs/Eium2n6Qf5CVn6FZX6k0LSy4PYnW
         OTZgJRAjXbD2ZE3BWVPxspxe9UofS5S61yQAsVbFkYwGIVGb+gADv3mJFrVGBd7lFIwL
         locmLLHSTMEJhTaMzLMRFy/kzrC6VBb7GJ1YFmzILIWJxgwbeoVJp7L2pqAItrYJ2A7P
         N5zjiaIxO/ZZe5fRIhCufGiiPtqWGz3RY7cKga5AI/Qf5bKphgBh78KdGwX73Ai2uaGK
         DBzuypyTWdKDAYBDhU86zEoqLOiSAJwWNUjO6vutbtwmQJPQBLdotocMEsHHNOBLHZvG
         ah4w==
X-Gm-Message-State: AOAM530O02fi8mtRqio+oNLEQb5ccN3EwxITsuXca0q6dQXGZjWJtKGU
        JIQXtxdrDC4lB09fUS2ul0rh8in1uA==
X-Google-Smtp-Source: ABdhPJzfPXfdcJPGUv+Bjy3JrI5iwtd+S7b5mm7nzVI/Ow+ol6VlV3vpg0HAqZ03olZG5X6kt1/P7g==
X-Received: by 2002:a05:6808:238c:: with SMTP id bp12mr2407595oib.114.1642805963885;
        Fri, 21 Jan 2022 14:59:23 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q14sm1750007otg.77.2022.01.21.14.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jan 2022 14:59:23 -0800 (PST)
Received: (nullmailer pid 1765422 invoked by uid 1000);
        Fri, 21 Jan 2022 22:59:22 -0000
Date:   Fri, 21 Jan 2022 16:59:22 -0600
From:   Rob Herring <robh@kernel.org>
To:     Stanislav Jakubek <stano.jakubek@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-unisoc@lists.infradead.org
Subject: Re: [PATCH v2] dt-bindings: serial: Convert rda,8810pl-uart to YAML
Message-ID: <Yes6ytLCkhqGjre8@robh.at.kernel.org>
References: <20220109170321.GA12989@standask-GA-A55M-S2HP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220109170321.GA12989@standask-GA-A55M-S2HP>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 09 Jan 2022 18:03:21 +0100, Stanislav Jakubek wrote:
> Convert RDA Micro UART bindings to DT schema format.
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---
> Changes in v2:
>   - Fix indentation in example
> 
>  .../bindings/serial/rda,8810pl-uart.txt       | 17 -------
>  .../bindings/serial/rda,8810pl-uart.yaml      | 46 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 47 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
>  create mode 100644 Documentation/devicetree/bindings/serial/rda,8810pl-uart.yaml
> 

Applied, thanks!
