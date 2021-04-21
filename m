Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96864366B3F
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 14:52:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240046AbhDUMwk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 08:52:40 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:35374 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240011AbhDUMwc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 08:52:32 -0400
Received: by mail-oi1-f180.google.com with SMTP id e25so12331631oii.2
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 05:51:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=K1VN0E2afsXuIRa/0LuPNToiHvD7gJG5kP9WS3acX7M=;
        b=GVDX0637fD+bbGrvMRbDIn+TONL+Dk+TBiI19i2TttYV6P0dq9JoIZ30lOvC8twnM8
         CILP0l4+hp6uCJJbIvm7ZaQw+CPp7qWJa8QodaWQGzt6X/65PvompSobqaYwKbK9Wkm7
         YSSRB9opW4goFY33tlaFxkMJYGm+ZWFI3nH6QE6NcS5YtfObafUiVI8vaZieji/iYRN3
         upD68wddlUesSwXqWMJ9AkK19jOM2jm8v3ygD3yZmud4C879/y5w9QdxZISuJbyJ0Ywe
         d/tnvB/U3vAD9uQgEdSLevLje6uBqLN3eKruvMG94adr7L9q1gRrc9sWIGMlUxJJO9jG
         T1CQ==
X-Gm-Message-State: AOAM530XpH99vWJQ6OVXhWz6zz1pNUsNPcRUZtNNf8vL7u2XhY+kz63n
        Ve2Lgj9JqG+HfAjzZk5Dpw==
X-Google-Smtp-Source: ABdhPJzBQLaeAdphPS+lRTeJpyFlvyfn8teAf6BdWXlXZzgiwjh0PpzFEFV066OXCxVYfGg6dPnRug==
X-Received: by 2002:aca:cf09:: with SMTP id f9mr6712741oig.95.1619009518555;
        Wed, 21 Apr 2021 05:51:58 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u4sm433608ool.25.2021.04.21.05.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 05:51:56 -0700 (PDT)
Received: (nullmailer pid 967208 invoked by uid 1000);
        Wed, 21 Apr 2021 12:51:48 -0000
From:   Rob Herring <robh@kernel.org>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>
In-Reply-To: <20210420230402.8807-1-khilman@baylibre.com>
References: <20210420230402.8807-1-khilman@baylibre.com>
Subject: Re: [PATCH] arm64: dts: amlogic: misc DT schema fixups
Date:   Wed, 21 Apr 2021 07:51:48 -0500
Message-Id: <1619009508.502472.967207.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Apr 2021 16:04:02 -0700, Kevin Hilman wrote:
> Take a pass at cleaning up a bunch of warnings
> from 'make dtbs_check' that have crept in.
> 
> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
> ---
>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml  |  5 +++++
>  .../bindings/media/amlogic,axg-ge2d.yaml           |  1 +
>  Documentation/devicetree/bindings/media/rc.yaml    |  4 ++++
>  .../devicetree/bindings/sound/amlogic,t9015.yaml   |  1 +
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi          |  4 ++--
>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi  | 14 +++++++-------
>  .../arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts |  2 +-
>  .../boot/dts/amlogic/meson-g12b-gtking-pro.dts     |  4 ++--
>  arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts  |  2 +-
>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dtsi     |  4 ++--
>  .../arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts |  2 +-
>  .../dts/amlogic/meson-gxl-s905d-mecool-kii-pro.dts |  2 +-
>  .../boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts |  8 ++++----
>  .../boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts |  2 +-
>  .../boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts   |  2 +-
>  .../boot/dts/amlogic/meson-gxm-wetek-core2.dts     |  2 +-
>  arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi |  4 ++--
>  .../arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts |  2 +-
>  18 files changed, 38 insertions(+), 27 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.example.dt.yaml: ge2d@ff940000: 'reset-names' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/amlogic,t9015.example.dt.yaml: audio-controller@32000: 'reset-names' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml

See https://patchwork.ozlabs.org/patch/1468511

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

