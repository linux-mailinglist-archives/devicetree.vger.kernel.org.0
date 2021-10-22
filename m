Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9E9243808B
	for <lists+devicetree@lfdr.de>; Sat, 23 Oct 2021 01:19:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231440AbhJVXVd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Oct 2021 19:21:33 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:34789 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230086AbhJVXVd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Oct 2021 19:21:33 -0400
Received: by mail-ot1-f43.google.com with SMTP id g62-20020a9d2dc4000000b0054752cfbc59so6246292otb.1
        for <devicetree@vger.kernel.org>; Fri, 22 Oct 2021 16:19:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/k2usNEoGshbBmL0WitRf7k2ydrC5pjOBlb8rwsXyiA=;
        b=b9Acnw1zUAJUQd2KP28PuTPk7G0MALoKKdz22pXeO83pONDZMmFqh9J+NI25UQ9l0L
         FNMxf54lhhQH9b0jstNLfAi7i4OZzERzC3jbZB4rW3+GIVjumhPWJo9CzSoj67CI5you
         EGkla9pb2xQfjzEL42KEIaUoXDFgoXAbLl0gxXCUyZoSZzSnakdYwFPNnNhY2m84FIdE
         QP5rPZ+cNrv5n/+5BEiHP+DceIb2bstdd99234CmrzDKmm2VYZvmTYiJ+NsS1qy4FsLk
         zBPLmLMbKp7L6YeiPJ0Djobv8ut8Hbs335Ohr56Epcz1f3wqLy69+If3JNYLwfsttzec
         kwJA==
X-Gm-Message-State: AOAM5303jhQ+kEkC/UbDHvuYDDm+eb3Q992vNh6i5eBvN2mb++d43Cu7
        GM2XRKd+/7ZiJVJKJeI0FWu7SiO13Q==
X-Google-Smtp-Source: ABdhPJyKjGOiqfYmevfk5jD8qcStva/zOLrdn+2YW5JzaLYiTmEg7mycrFTUR15qr1MLkOFVBbrjdg==
X-Received: by 2002:a9d:2235:: with SMTP id o50mr2178779ota.245.1634944754830;
        Fri, 22 Oct 2021 16:19:14 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id 187sm2056997oig.19.2021.10.22.16.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 16:19:14 -0700 (PDT)
Received: (nullmailer pid 3356287 invoked by uid 1000);
        Fri, 22 Oct 2021 23:19:13 -0000
Date:   Fri, 22 Oct 2021 18:19:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v5 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Message-ID: <YXNG8Qy5jAPdWbHY@robh.at.kernel.org>
References: <20211021092707.3562523-1-msp@baylibre.com>
 <20211021092707.3562523-3-msp@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211021092707.3562523-3-msp@baylibre.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Oct 2021 11:27:02 +0200, Markus Schneider-Pargmann wrote:
> This controller is present on several mediatek hardware. Currently
> mt8195 and mt8395 have this controller without a functional difference,
> so only one compatible field is added.
> 
> The controller can have two forms, as a normal display port and as an
> embedded display port.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
> 
> Notes:
>     Changes v4 -> v5:
>     - Removed "status" in the example
>     - Remove edp_tx compatible.
>     - Rename dp_tx compatible to dp-tx.
> 
>  .../display/mediatek/mediatek,dp.yaml         | 87 +++++++++++++++++++
>  1 file changed, 87 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

But can't be applied without the dependent header (or remove the 
dependency).
