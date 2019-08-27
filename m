Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 989F39F175
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 19:24:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727064AbfH0RYF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 13:24:05 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:45485 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727057AbfH0RYE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 13:24:04 -0400
Received: by mail-ot1-f65.google.com with SMTP id m24so19417056otp.12
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 10:24:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WMXI2zhD1KFlN9OAyogD6LvupdHaX6/K2aSqEPCRbkE=;
        b=eCsEIGgHgRnb2s0snfBV5SbYAtOhDjzjjsdAMru/T5x1PwcPMbPVSBv56m87cnvHTe
         wqgq3D+BEqTnAWKhH12doSJmlB8jpVqYN6tgy9OKFqmFZFHOfNj7Yk6z+y+HwwVP0pgz
         EFufKgszAZPJT/YlUrqArqpvaTNCcNvyzXYsYGTjgjM9N7f5LOEL5lgwQQvjbnmM2zsb
         BT6gtyiyW54tzllxS+ZvnUGrZ/rJignGHo2hnGlNOV1CC8AC4RkvqeH34fApbix6bNND
         WR205FU+9wWT1vmHTPzPV6iyJmwulVZI2i8Dgem2m6xWq4gx/pOyCAKcZCLb2Jzj9oSK
         MTSw==
X-Gm-Message-State: APjAAAWFMFHaZTJzDxO6USG7CzKQvOJacEaLQ/8jBA03IjeeOE0uZrAA
        HiAxJFaEdLfNs1gLsK/ieg==
X-Google-Smtp-Source: APXvYqz86xrWWnsZ0fBoWtAC+b/fcuKNLF8AQU/1noZz1PY1N8KVc5HYvwFIPqCt/I1QPoBRZzwnhw==
X-Received: by 2002:a9d:6c18:: with SMTP id f24mr19917121otq.344.1566926643880;
        Tue, 27 Aug 2019 10:24:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id f21sm5468023otq.7.2019.08.27.10.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2019 10:24:03 -0700 (PDT)
Date:   Tue, 27 Aug 2019 12:24:02 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>, tglx@linutronix.de,
        jason@lakedaemon.net, maz@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: irq: Convert Allwinner NMI
 Controller to a schema
Message-ID: <20190827172402.GA13986@bogus>
References: <20190821082138.11049-1-mripard@kernel.org>
 <20190821082138.11049-2-mripard@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190821082138.11049-2-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Aug 2019 10:21:38 +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The Allwinner SoCs have an interrupt controller called NMI supported in
> Linux, with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> ---
> 
> Changes from v1:
>   - Remove the custom select and rely on the deprecated property instead
> ---
>  .../allwinner,sun7i-a20-sc-nmi.yaml           | 70 +++++++++++++++++++
>  .../allwinner,sunxi-nmi.txt                   | 29 --------
>  2 files changed, 70 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
> 

Applied, thanks.

Rob
