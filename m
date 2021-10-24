Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D968438982
	for <lists+devicetree@lfdr.de>; Sun, 24 Oct 2021 16:27:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231485AbhJXO3w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Oct 2021 10:29:52 -0400
Received: from mail-oi1-f169.google.com ([209.85.167.169]:44607 "EHLO
        mail-oi1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230355AbhJXO3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Oct 2021 10:29:50 -0400
Received: by mail-oi1-f169.google.com with SMTP id y207so11905484oia.11
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 07:27:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=bac1EHQkBLbZ51/7v+VmRY1SXZprPbhYfUmFnr47AYA=;
        b=BjeRtblNm9Aa3dp5FpjsBT4nVlsPRsZCMsba0Gukm+V4KQkKjwFR54ZrnHb4WqQqGi
         36NsKa/RIyDzuGMW6Hv7LiXYlt70NsiLnQ5MLPO0JFBIuDctNOfOfOUx/jGHL+SSl+ud
         jMqukGwzdLMucTw8MBON3Rt1EkSkXd1Bh27nnWG01/YX6ES1chAQ2thkg95csndkhlrP
         2ljjvBiAZvcRTEKW4v655RPt7svYgu+L0res/7wnamSOtbqngCDNmo5NPjtIDIBPI/uM
         vZ8y/pQKP0z3XUgkm5hYqeZpvKSz2sqdiQhxGwCztmFPUIGvhWkwFKbshFdAfA8273U4
         meBg==
X-Gm-Message-State: AOAM533FUW/y1kM41KXhJr8tv/PdIAcShctPJS4uG5ukJbBzy1r+3DDU
        mx1GotXjngDOG+b5YWwfbQ==
X-Google-Smtp-Source: ABdhPJxYwzxyZCJKOPBY4JfmuFSFDzmeL5qYzRCwPxWHNonbQ5oo5VIUj+rpOFZQ7OPfF3t4+vLmKw==
X-Received: by 2002:a05:6808:d49:: with SMTP id w9mr8037183oik.61.1635085649754;
        Sun, 24 Oct 2021 07:27:29 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id l10sm2919143otj.9.2021.10.24.07.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Oct 2021 07:27:29 -0700 (PDT)
Received: (nullmailer pid 2015036 invoked by uid 1000);
        Sun, 24 Oct 2021 14:27:27 -0000
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@mailbox.org>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>
In-Reply-To: <20211023214856.30097-1-alexander.stein@mailbox.org>
References: <20211023214856.30097-1-alexander.stein@mailbox.org>
Subject: Re: [PATCH 1/4] dt-bindings: sound: amlogic: t9015: Add missing AVDD-supply property
Date:   Sun, 24 Oct 2021 09:27:27 -0500
Message-Id: <1635085647.937250.2015034.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 23 Oct 2021 23:48:53 +0200, Alexander Stein wrote:
> Fixes the schema check warning "audio-controller@32000: 'AVDD-supply'
> do not match any of the regexes: 'pinctrl-[0-9]+'"
> 
> Fixes: 5c36abcd2621 ("ASoC: meson: add t9015 internal codec binding documentation")
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> I am aware that adding required properties to bindings is frowned upon. But in
> this case it seems acceptable for the following reasons:
> * AVDD-supply was used from the very first driver commit
> * All DT (g12 and gxl) using t9015 controller provide AVDD-supply
>   already
> But I'm ok to not add it to required properties as well. The driver uses
> it nevertheless though.
> 
>  Documentation/devicetree/bindings/sound/amlogic,t9015.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/amlogic,t9015.example.dt.yaml: audio-controller@32000: 'AVDD-supply' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1545246

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

