Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4CE32F6EAF
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 23:56:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730848AbhANWyy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 17:54:54 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:46738 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730915AbhANWyy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 17:54:54 -0500
Received: by mail-oi1-f171.google.com with SMTP id q205so7618938oig.13
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 14:54:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=Kdgl7+Fa7dWGmuWmJbJhRTe7pZgtvLwB3nP1BFK9Eqo=;
        b=nrz6oXBRkJyphmIraphzgNokoiK3eVZOKmSpyqDeitoPJlSYVzciMc7y82xLAgILvr
         bqr5Lx5Ws6q4b9b+lWnKP1F88OWmxFeFjipI5EmAbbJz8Za0oNvsxHYnxvP2KYloMLr3
         /v1WpHV8QgNKVx51JuBTNL42aNesKKxqsltwW3eSbiWc82l5mdFIL1ASc7kSycAIUavP
         tjOIcek+LSXbg9ULp1efAHedWLztRuPj47Q4egXF/5UQIn0BonPCrXKNoenhewCL1O3c
         8ApF8xCPhVTXjOsdOdgTK050iFmzKNWhRg/ajn6pa8SBzYPZ2hav1pErIDYQzA23vQSU
         BspQ==
X-Gm-Message-State: AOAM533+yZezNWmNpgbyKBGTASkHLBfyVqB4GqQtnYdMhss5ajvusG+r
        rd9OfB2mMBQomnYEmoQu4wgUunBMzw==
X-Google-Smtp-Source: ABdhPJxX0hsXcnXhp0j1DKNnifjBSW7maUvWsBr3msRS5zWljWKhIlnx/7lYxnI84yMzgGwtFefTkg==
X-Received: by 2002:aca:4f97:: with SMTP id d145mr3914920oib.123.1610664853033;
        Thu, 14 Jan 2021 14:54:13 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t13sm1322353oih.26.2021.01.14.14.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 14:54:12 -0800 (PST)
Received: (nullmailer pid 3797272 invoked by uid 1000);
        Thu, 14 Jan 2021 22:54:06 -0000
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Nicolas Pitre <nico@fluxnic.net>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        devicetree@vger.kernel.org,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-i3c@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
In-Reply-To: <20210114175558.17097-3-miquel.raynal@bootlin.com>
References: <20210114175558.17097-1-miquel.raynal@bootlin.com> <20210114175558.17097-3-miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 2/6] dt-bindings: i3c: mipi-hci: Include the bus binding
Date:   Thu, 14 Jan 2021 16:54:06 -0600
Message-Id: <1610664846.690698.3797271.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Jan 2021 18:55:54 +0100, Miquel Raynal wrote:
> Fix a tiny mistake: the node title should have been named after the
> description done in the historical i3c.txt file, ie: i3c-master@<address>.
> 
> Cc: Nicolas Pitre <nico@fluxnic.net>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.example.dt.yaml: i3c-master@a0000000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i3c/i3c.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.example.dt.yaml: i3c-master@a0000000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i3c/i3c.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.example.dt.yaml: i3c-master@a0000000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.example.dt.yaml: i3c-master@a0000000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml

See https://patchwork.ozlabs.org/patch/1426584

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

