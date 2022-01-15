Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5878B48F85F
	for <lists+devicetree@lfdr.de>; Sat, 15 Jan 2022 18:23:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233517AbiAORXA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jan 2022 12:23:00 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:36593 "EHLO
        mail-oi1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233327AbiAORWo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jan 2022 12:22:44 -0500
Received: by mail-oi1-f178.google.com with SMTP id r138so17060214oie.3
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 09:22:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=REkuop0CJkdbISl7sJMJiL6LSDlpLTosULc9yknn5L0=;
        b=yEya8V9VwFzgg6OqjKhBR+HYoiEA+Z5mWoFxgtecOgwvydcZtK236NKg3f9I8ia3gW
         QC14nXIibld/G1PuSQRMiLZgb/GkPnNTmqvjUSG+hXpvlo4+uDjp+SFbLysrQBJMww02
         ps0PeOQYZzcYYPVJPpMX4mofQnV0uMx6xBZkLt4njkjP484LHlG9hJihY9qQesnGzVxZ
         w3Q+xH3dXRsviy7X0PdnK4IwnGQmty+3ygVZGQVm3ZzINt0nJJ5EpBBCC5C/nTvaGSKT
         +MHBcNo520rPJABFHXgvviXt8r4z8FtT6LOjSfc9S4Fieypwrv4W0Bkdjq5cxTFoZrHe
         N2pA==
X-Gm-Message-State: AOAM533DUqgn8lMD0SM24pHBNBqTKc4bouvA16ieBFoohp8p9oP+o59J
        +pqaBF3fRuEbA86OF7/wsoq+EMg13g==
X-Google-Smtp-Source: ABdhPJxF1ouoMEauy6JQkLG/vbGAukQX3d7F3unPgWzYjy7IBQu095z+ToPKgAA8gG8N08EvC7uDkw==
X-Received: by 2002:a05:6808:11c5:: with SMTP id p5mr17253604oiv.51.1642267363960;
        Sat, 15 Jan 2022 09:22:43 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id e69sm3266884ote.1.2022.01.15.09.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jan 2022 09:22:43 -0800 (PST)
Received: (nullmailer pid 119896 invoked by uid 1000);
        Sat, 15 Jan 2022 17:22:30 -0000
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@mailbox.org>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-amlogic@lists.infradead.org
In-Reply-To: <20220115093557.30498-2-alexander.stein@mailbox.org>
References: <20220115093557.30498-1-alexander.stein@mailbox.org> <20220115093557.30498-2-alexander.stein@mailbox.org>
Subject: Re: [PATCH 2/2] ASoC: meson: axg-fifo: convert Amlogic FIFO controller to yaml
Date:   Sat, 15 Jan 2022 11:22:30 -0600
Message-Id: <1642267350.954937.119895.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 15 Jan 2022 10:35:57 +0100, Alexander Stein wrote:
> Convert Amlogic FIFO controller documentation to yaml format.
> 
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> Things to note:
> First of, Jerome, sorry for adding you as maintainer, but
> 1) it's mandatory
> 2) your are the (only) author of amlogic,axg-fifo.txt
> 
> Please add your Signed-off-by if that is okay with you.
> 
> License is mandated by checkpath, not my choice.
> 
> I'm not so sure about the compatible check. Essentially it is either
> * 'amlogic,axg-frddr' OR
> * 'amlogic,g12a-frddr' + 'amlogic,axg-frddr'
>   (or 'sm1' instead of 'g12a')
> 
> Same goes for *-toddr. Is this schema correct in that regard? At least I
> got no warnings on existing device trees.
> 
>  .../bindings/sound/amlogic,axg-fifo.txt       | 34 -------
>  .../bindings/sound/amlogic,axg-fifo.yaml      | 97 +++++++++++++++++++
>  2 files changed, 97 insertions(+), 34 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-fifo.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1580333


audio-controller@100: 'reset-names' is a required property
	arch/arm64/boot/dts/amlogic/meson-axg-s400.dt.yaml

audio-controller@140: 'reset-names' is a required property
	arch/arm64/boot/dts/amlogic/meson-axg-s400.dt.yaml

audio-controller@180: 'reset-names' is a required property
	arch/arm64/boot/dts/amlogic/meson-axg-s400.dt.yaml

audio-controller@1c0: 'reset-names' is a required property
	arch/arm64/boot/dts/amlogic/meson-axg-s400.dt.yaml

audio-controller@200: 'reset-names' is a required property
	arch/arm64/boot/dts/amlogic/meson-axg-s400.dt.yaml

audio-controller@240: 'reset-names' is a required property
	arch/arm64/boot/dts/amlogic/meson-axg-s400.dt.yaml

