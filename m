Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08D6C40AE8A
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 15:04:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232804AbhINNGJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 09:06:09 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:37597 "EHLO
        mail-ot1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233340AbhINNEi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 09:04:38 -0400
Received: by mail-ot1-f50.google.com with SMTP id i3-20020a056830210300b0051af5666070so18287202otc.4
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 06:03:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=Pk8zZoiVs5GhCcDVjL5q1Yy6EnpN4Rc7X2p/zks6FFE=;
        b=U1a1taLGoZCBY+e7HPB0OpZ/6VHCik72Qwtup1NOT6PsT1XSzN4HYm0GF2vafMy8e6
         JwiXnqXf1nHHM0mdKpL3izSpJ7/5/CSrBNzBeGngJGPSK9NvAmBSpmPi3ZIbYnhrgEpt
         s6TiSiWcJaWc3EigBkF9OMl9txrozC/HoW3VUiTHO4WGBlvZXjWi1ZuAWE/zo3ZESHUr
         EFjgfqyPd8txXv9aOQO7NXUS5m2moFzWeBXTnNeEgzQd3oSWApCKNbylM0eZ44wgsyvT
         UhkZzRT0bgy4f7c8gLg3Fet3QY2Tya+/dUAbkWmqlP4yvs6Te3ORkCdnjj2Zdf411iIz
         LJ1g==
X-Gm-Message-State: AOAM533sB8q87ykcuJhHd+dmxqsf0cao+B21rDbtuRpnOSpyBtmbhFtY
        AWwZHVonzoYUhmS1MtGwS1961NUjBA==
X-Google-Smtp-Source: ABdhPJxj4YGFwyTkKruktE3IxyMYlAAtjid+DcwTtzHegIJqvlBcEZixiGAx+ZJhiSnrYOeQI2TVBw==
X-Received: by 2002:a9d:7258:: with SMTP id a24mr14972621otk.190.1631624600949;
        Tue, 14 Sep 2021 06:03:20 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id w23sm2463246oih.4.2021.09.14.06.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 06:03:18 -0700 (PDT)
Received: (nullmailer pid 3002731 invoked by uid 1000);
        Tue, 14 Sep 2021 13:03:14 -0000
From:   Rob Herring <robh@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        alsa-devel@alsa-project.org, broonie@kernel.org
In-Reply-To: <20210914091204.2204278-1-tzungbi@google.com>
References: <20210914091204.2204278-1-tzungbi@google.com>
Subject: Re: [PATCH v3] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe document
Date:   Tue, 14 Sep 2021 08:03:14 -0500
Message-Id: <1631624594.154331.3002730.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Sep 2021 17:12:04 +0800, Tzung-Bi Shih wrote:
> The document was merged as commit 1afc60e00de3 ("dt-bindings:
> mediatek: mt8192: add audio afe document").
> 
> However, [1] revealed that the commit 1afc60e00de3 breaks
> dt_binding_check due to dt-bindings/clock/mt8192-clk.h doesn't
> exist.
> 
> As a temporary fix, commit 7d94ca3c8acd ("ASoC: mt8192: revert
> add audio afe document") reverted commit 1afc60e00de3.
> 
> dt-bindings/clock/mt8192-clk.h is in mainline per commit
> f35f1a23e0e1 ("clk: mediatek: Add dt-bindings of MT8192 clocks").
> Re-adds the document back.
> 
> [1]: https://mailman.alsa-project.org/pipermail/alsa-devel/2020-November/176873.html
> 
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> ---
> Changes from v2 (https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189058.html):
> - Simplify the commit message.
> 
> Changes from v1 (https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189048.html):
> - Add more context to the commit message.
> 
>  .../bindings/sound/mt8192-afe-pcm.yaml        | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml:10:4: [warning] wrong indentation: expected 2 but found 3 (indentation)
./Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml:15:7: [warning] wrong indentation: expected 4 but found 6 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1527802

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

