Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE39A428E1D
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 15:36:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237056AbhJKNi3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 09:38:29 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:34653 "EHLO
        mail-oi1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237007AbhJKNi1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 09:38:27 -0400
Received: by mail-oi1-f170.google.com with SMTP id z11so24704954oih.1
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 06:36:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=85xipXNv8mvBeKPmm2emtS9A+cn3fK5eUSpsvYA0F0s=;
        b=I1cEIB9vNldTPjg/94VFQaymsgUhOL02Tk2uqOsJIBfKl6SeUfRSFInSi9JSVDN5T2
         1oDNzTY4OhVD2ZMeioE48MGr8RwpyVG09dEj1ppVmBpO5cbiFCPVr+LKYY+rtaaNXeDZ
         mbPrcK5lT29bX2xlDhxlv5wCNrrJqmkpXj27Ty2/xFW58pxoyKWMHGp2uZ3g2lEK+2ky
         nMLQyZPTvjPe9YPmm17UvRGIXwjq89LPZRgrNiil54a2UXG65fPAZGBvSCLjxPT/9EvR
         lez+DOk4Tm7BaEll7OyQ3GW/cEEn892p4kPuCcMm4IS3EE6YYgHFxaTZGuE1NLZ44+Xd
         goIw==
X-Gm-Message-State: AOAM532DeC4DBiMnnvoCvtXi7TuaPXYmrOnnrV4IHt07mKsTTRnHnEGw
        kgvlplHhmtyvv5MT/OYLzg==
X-Google-Smtp-Source: ABdhPJyE7+/tzL7Uvj2g+kEPhUHNPa6mHB8C7Nw2hpoRd1TRl83LypTzSOtSMZPZ0Czq8QnqNVUDBg==
X-Received: by 2002:a05:6808:1984:: with SMTP id bj4mr4202420oib.30.1633959386217;
        Mon, 11 Oct 2021 06:36:26 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id v22sm1171004oot.43.2021.10.11.06.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 06:36:25 -0700 (PDT)
Received: (nullmailer pid 504946 invoked by uid 1000);
        Mon, 11 Oct 2021 13:36:18 -0000
From:   Rob Herring <robh@kernel.org>
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        linux-mediatek@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
In-Reply-To: <20211011094624.3416029-3-msp@baylibre.com>
References: <20211011094624.3416029-1-msp@baylibre.com> <20211011094624.3416029-3-msp@baylibre.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Date:   Mon, 11 Oct 2021 08:36:18 -0500
Message-Id: <1633959378.253312.504945.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Oct 2021 11:46:19 +0200, Markus Schneider-Pargmann wrote:
> This controller is present on several mediatek hardware. Currently
> mt8195 and mt8395 have this controller without a functional difference,
> so only one compatible field is added.
> 
> The controller can have two forms, as a normal display port and as an
> embedded display port.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
>  .../display/mediatek/mediatek,dp.yaml         | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
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

See https://patchwork.ozlabs.org/patch/1539195

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

