Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 649B84362F2
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 15:30:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230487AbhJUNc2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 09:32:28 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:35723 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230283AbhJUNcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 09:32:25 -0400
Received: by mail-oi1-f179.google.com with SMTP id r6so873871oiw.2
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 06:30:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=WLIwA5FD/KtHnG54OgwxE3AJ2VLgcGG0qXYDGdPIMCU=;
        b=33bs09vRSp/Wp/MN1w4+OPYbVrjcOMyN/zx7oLWab6V8CXmwandiAIHGu+nFL/AfHv
         wTOd5qEPPkC4Zkuud6ekjHIq3T3rhMdr1Jk6sru4X5/eEJWhh8aaUKvmKF3WP7D6Ixoq
         By21TReUcbxFJonCgzBhzy1r+TCkVnsFJizPYXRvdrduP4lE1+90dSCCN41BW2cEdt8G
         dUu0qLY5jVxGL+aB4/bflb2luFvMcRQKcK2gCPIiWRUYlc+2gnOE2idWBYxIDtQ5Vtek
         HkoeJsFUWo5g/+L0zkgwxf7cTWeum6c1jTkdwcUgupxy942XK9GtiZ7HwvDO3dtj/BRQ
         //tg==
X-Gm-Message-State: AOAM531ufchsfJ1cRYMZEE/04p0k/qbj4WO8oWhojKa+id8tL/8zMLrs
        UZVSda4zl6yqRFANf98OzA==
X-Google-Smtp-Source: ABdhPJzWNqQ82LGFFmXVyboYOunuq36yDADhSjRjBxsMz++SfMFiv9RLtb3gzPemE+KZAIIdxJ6VMw==
X-Received: by 2002:a05:6808:f8f:: with SMTP id o15mr1238476oiw.38.1634823008338;
        Thu, 21 Oct 2021 06:30:08 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id 187sm1064082oig.19.2021.10.21.06.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 06:30:07 -0700 (PDT)
Received: (nullmailer pid 353169 invoked by uid 1000);
        Thu, 21 Oct 2021 13:30:05 -0000
From:   Rob Herring <robh@kernel.org>
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
In-Reply-To: <20211021092707.3562523-3-msp@baylibre.com>
References: <20211021092707.3562523-1-msp@baylibre.com> <20211021092707.3562523-3-msp@baylibre.com>
Subject: Re: [PATCH v5 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Date:   Thu, 21 Oct 2021 08:30:05 -0500
Message-Id: <1634823005.099522.353168.nullmailer@robh.at.kernel.org>
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

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dts:20:18: fatal error: dt-bindings/power/mt8195-power.h: No such file or directory
   20 |         #include <dt-bindings/power/mt8195-power.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:385: Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1441: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1544239

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

