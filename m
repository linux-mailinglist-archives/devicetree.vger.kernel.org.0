Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AAA2460C62
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 02:44:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239259AbhK2Brl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Nov 2021 20:47:41 -0500
Received: from mail-oi1-f174.google.com ([209.85.167.174]:35616 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231851AbhK2Bpg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Nov 2021 20:45:36 -0500
Received: by mail-oi1-f174.google.com with SMTP id m6so31629327oim.2
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 17:42:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NLMqwF0EmPDQ3Y48I2ePNN2tNTC1F/SFNEaaZNweyAo=;
        b=iA2AgoG0COxsbNWNpZ0l45q1eukWZCIfLXCbUSfn2kwnNAvgKl5xldV9VNxWUjSeuP
         TMLwEreDuDD0ibqFUBVeV0SjRZviLbm2YX4nZr4xMdSsCgP/vgRiM8fPLFouAFWqmmeM
         kTEEl+iF8gjY4HSuhcesLPNWYl9SFTD52LsGMFHQARoMJyn4LSTDmlHQwO0D5/g4AaB+
         RrfANdR2/qf0Dc6YzSHxTUMbdycxQyFfGVLDGRtkywsUxAa0G+41hBSRsFw8XN6N9zjI
         cE1nJqr5MmyFU1zW0MFin+Q+o12VC1ZlE5m1KZa/wWO1XAz1uJSV+71QrZSM0gVGE+Vb
         0OfQ==
X-Gm-Message-State: AOAM532xHFnFixGXNQ2SL4E44SJIM9UmXkPMHGILvEra/miQIIR6ExHP
        Mg2YDjT3j+p8VGOls3GN8t3YXUNedg==
X-Google-Smtp-Source: ABdhPJxoueZ6SMNTWyT3yXIxQbuLdMWBIsmFK0edLtMHsqqeekQQLEK9t3RSyvnxFl/CX4U0dLkCDw==
X-Received: by 2002:a05:6808:23d6:: with SMTP id bq22mr38370728oib.121.1638150139166;
        Sun, 28 Nov 2021 17:42:19 -0800 (PST)
Received: from robh.at.kernel.org ([172.58.99.229])
        by smtp.gmail.com with ESMTPSA id b22sm2674651oib.41.2021.11.28.17.42.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Nov 2021 17:42:18 -0800 (PST)
Received: (nullmailer pid 2994044 invoked by uid 1000);
        Mon, 29 Nov 2021 01:42:16 -0000
Date:   Sun, 28 Nov 2021 19:42:16 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        linux-stm32@st-md-mailman.stormreply.com,
        Matteo Lisi <matteo.lisi@engicam.com>,
        devicetree@vger.kernel.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        linux-amarula@amarulasolutions.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: stm32: Add Engicam i.Core
 STM32MP1 C.TOUCH 2.0 10.1" OF
Message-ID: <YaQv+IOPpZZ3bKJy@robh.at.kernel.org>
References: <20211112053856.18412-1-jagan@amarulasolutions.com>
 <20211112053856.18412-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211112053856.18412-2-jagan@amarulasolutions.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 12 Nov 2021 11:08:55 +0530, Jagan Teki wrote:
> i.Core STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.
> 
> C.TOUCH 2.0 is a general purpose carrier board with capacitive
> touch interface support.
> 
> 10.1" OF is a capacitive touch 10.1" Open Frame panel solutions.
> 
> i.Core STM32MP1 needs to mount on top of C.TOUCH 2.0 carrier with
> pluged 10.1" OF for creating complete i.Core STM32MP1 C.TOUCH 2.0
> 10.1" Open Frame board.
> 
> Add bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - Fix line-length warning
> 
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
