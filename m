Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C2832A6D83
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 20:06:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727098AbgKDTGY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 14:06:24 -0500
Received: from mail-oo1-f65.google.com ([209.85.161.65]:35301 "EHLO
        mail-oo1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729946AbgKDTGX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 14:06:23 -0500
Received: by mail-oo1-f65.google.com with SMTP id n16so5348634ooj.2
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 11:06:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=R2gb5md+lT/qT0Qy1C0A7wiZJjH97JR0T8nu7AkZKBw=;
        b=PEY60KioLjUpVrJd8OIHKklx0UHrYzYtTScqoEAH4Df3fgJZM3ni3XvuJUYY2SFr+z
         eAHLTxMjjurOZnx82CuTVJonoNF+L1OlD8m3A7oRvdq+97migeV6HBcj7ZH+8VDtuoCm
         JZfBMEheJtGKSPT7Ek3bZPYJT2Wi+T3l4a7ZXKuVq3v5/fefMU1vhgs20AVvzyQ+E2MM
         nyhuOurfCfvkIvCJzpABqazDzKgAQFwvyxL7dVwAlWZyk4M5KVVnKQ7F04sV3VQ52TEV
         xqy2gzv4jE4ExWRzW5sdCxIIBDyr0jeRbNJ2+Z8wY4kePnruF7oJtGGvXPVe9fIGDsXG
         4lDQ==
X-Gm-Message-State: AOAM532MzkeeK0A7McTctrLmzf4+Yvju43Xk1JhlEv9hcgLRFwC/fe4M
        C1gvXldeQ1Q5YZOJ8vJt2MsYc8GWfw==
X-Google-Smtp-Source: ABdhPJydRU/q7sjyN4LVnglPCUmlTYexpnq5r2D2zpd/4tsUOp7VPoj8Q9kerD3r6P9or2zPZ5/t9g==
X-Received: by 2002:a4a:b209:: with SMTP id d9mr19637528ooo.70.1604516782442;
        Wed, 04 Nov 2020 11:06:22 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 92sm683274otv.29.2020.11.04.11.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 11:06:21 -0800 (PST)
Received: (nullmailer pid 3960229 invoked by uid 1000);
        Wed, 04 Nov 2020 19:06:21 -0000
Date:   Wed, 4 Nov 2020 13:06:21 -0600
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        linux-arm-kernel@lists.infradead.org,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: mcde: Convert to YAML schema
Message-ID: <20201104190621.GB3959462@bogus>
References: <20201104133709.1373147-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201104133709.1373147-1-linus.walleij@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 04 Nov 2020 14:37:09 +0100, Linus Walleij wrote:
> This moves the MCDE bindings over to using the YAML schema
> to describe the ST-Ericsson MCDE display controller,
> making use of the generic DSI controller schema.
> 
> We also add the "port" node, we will use this when adding
> LCD panels using the direct parallel interface DPI instead
> of DSI.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../devicetree/bindings/display/ste,mcde.txt  | 104 -----------
>  .../devicetree/bindings/display/ste,mcde.yaml | 167 ++++++++++++++++++
>  2 files changed, 167 insertions(+), 104 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/ste,mcde.txt
>  create mode 100644 Documentation/devicetree/bindings/display/ste,mcde.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/ste,mcde.yaml: 'additionalProperties' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/ste,mcde.yaml: ignoring, error in schema: 
warning: no schema found in file: ./Documentation/devicetree/bindings/display/ste,mcde.yaml


See https://patchwork.ozlabs.org/patch/1393940

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

