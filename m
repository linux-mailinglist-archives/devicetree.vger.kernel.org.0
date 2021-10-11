Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACBBE428E1C
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 15:36:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236965AbhJKNiX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 09:38:23 -0400
Received: from mail-oi1-f169.google.com ([209.85.167.169]:43864 "EHLO
        mail-oi1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237007AbhJKNiW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 09:38:22 -0400
Received: by mail-oi1-f169.google.com with SMTP id o4so24643512oia.10
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 06:36:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=ldY18yibfHG91zMBxbkh+bf7In/Vug5vRBddbeB/9N4=;
        b=rGltQW0dktaahtUJz1e5lNj25AKonDGLczbToVZPCZuL/EN5XWxq6a/TEa0vZYig92
         IqZ9Xt0UwB/IMxqFxqDCShg54acFNCh3RUgnRmaZk0wKqn0L69hVv/zpeniwOpLeEA2a
         9d3sJAtpVXIqJpMVSK/yf0VHrXasP9m79F8iViU9Qf+Z/INh1RcYuOizJpYQJE0TKeZM
         8Qo9hv9pbjPrtXezPlOuJ2kgqp2ZAnzZZoOf8BdGyey/10gclsOyhpGVmU/xJZhaS37Y
         Dt8A5v7GpY1H6i6AQKztrvZxEXubKxizJCCIIMi7h+Kkn8QqVSWCuAoFHKZM6a1ixz/T
         il/A==
X-Gm-Message-State: AOAM533xn1reRnJ0N0HpuIqRtmwoMeiknjR52Sua84jlZRut7yCvrT4j
        9C4RzfAT+WzYHJZIg+gfxQ==
X-Google-Smtp-Source: ABdhPJypokMi51gPcPyqsapesi1YWppZ4/PMLz4g89NLeFCSU2UGP0rJm3mD3Jks3tuGrdqzRkcIAA==
X-Received: by 2002:aca:c60e:: with SMTP id w14mr17766103oif.156.1633959382154;
        Mon, 11 Oct 2021 06:36:22 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q2sm1522486ooe.12.2021.10.11.06.36.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 06:36:21 -0700 (PDT)
Received: (nullmailer pid 504944 invoked by uid 1000);
        Mon, 11 Oct 2021 13:36:18 -0000
From:   Rob Herring <robh@kernel.org>
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Vinod Koul <vkoul@kernel.org>
In-Reply-To: <20211011094624.3416029-2-msp@baylibre.com>
References: <20211011094624.3416029-1-msp@baylibre.com> <20211011094624.3416029-2-msp@baylibre.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: mediatek,dpintf: Add DP_INTF binding
Date:   Mon, 11 Oct 2021 08:36:18 -0500
Message-Id: <1633959378.242329.504943.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Oct 2021 11:46:18 +0200, Markus Schneider-Pargmann wrote:
> DP_INTF is a similar functional block to mediatek,dpi but is different
> in that it serves the DisplayPort controller on mediatek SoCs and uses
> different clocks. Therefore this patch creates a new binding file for
> this functional block.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
> 
> Notes:
>     Changes v3 -> v4:
>     - Fixed clock names in the example as the clock patch series is merged into
>       next now
>     - Add missing ports decleration to the example
> 
>     Changes v1 -> v2:
>     - Move the devicetree binding from mediatek,dpi into its own binding file.
> 
>  .../display/mediatek/mediatek,dpintf.yaml     | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.example.dts:21:18: fatal error: dt-bindings/clock/mt8195-clk.h: No such file or directory
   21 |         #include <dt-bindings/clock/mt8195-clk.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:385: Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1441: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1539196

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

