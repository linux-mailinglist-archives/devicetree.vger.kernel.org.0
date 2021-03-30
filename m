Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA2DA34E873
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 15:09:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232152AbhC3NI6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 09:08:58 -0400
Received: from mail-oo1-f52.google.com ([209.85.161.52]:37442 "EHLO
        mail-oo1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232136AbhC3NIq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 09:08:46 -0400
Received: by mail-oo1-f52.google.com with SMTP id c12-20020a4ae24c0000b02901bad05f40e4so3754646oot.4
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 06:08:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=1gfS/FZgsSlTDvonh4zEOwfHDiIijaYYz+3P+d8VVFw=;
        b=o6sFjx8VnXVae28Cc60LAjAGh7fJCvrGpndImmm1gMmi11mqKUKIkCSjITrJwyz7wO
         YJuCyvz1f7wMyRILacoyX5UBxtk6R4B9ZClhxG9kvXEhaX+wtUdixeNOocwkqX/Cg30h
         e1rulEYR/FzTiXtCsbeE9COXyFqU7dwHShBpG7l6UQv0s+u8Wws6ryI0Bnu5Q89QrfCw
         nnq66fF3isNJCQW4YHoMvRlIS4keOEMx9KcYYdoLkbGjeKNKJcs29+dA+hZBIb4yghKH
         fo6lg9seeo4a2OhZYN2pmGeVS5Y4UfnSW05TX6NWxSqacjhJvBcCBJ6CjDgiZ4cIX6Q/
         9gVw==
X-Gm-Message-State: AOAM533LAlnTaKl3puwTVLUicYmJQILHYGW31yUmH88hf5AlB4T3Jk/F
        L+b2/NuMH9hpInkSYskqbET1iizp8A==
X-Google-Smtp-Source: ABdhPJzzvKlEfJNv8JhWPt3b0O+9AbUdIf1MqLuOlBsnaySUti5vvohhqfbs115O/M8S3LPGzvf1qg==
X-Received: by 2002:a4a:eaca:: with SMTP id s10mr11984098ooh.5.1617109725675;
        Tue, 30 Mar 2021 06:08:45 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m14sm5251681otn.69.2021.03.30.06.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 06:08:44 -0700 (PDT)
Received: (nullmailer pid 173730 invoked by uid 1000);
        Tue, 30 Mar 2021 13:08:43 -0000
From:   Rob Herring <robh@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        airlied@linux.ie, daniel@ffwll.ch, devicetree@vger.kernel.org
In-Reply-To: <20210329191414.2191095-2-daniel@zonque.org>
References: <20210329191414.2191095-1-daniel@zonque.org> <20210329191414.2191095-2-daniel@zonque.org>
Subject: Re: [PATCH v7 1/2] dt-bindings: display: add bindings for newhaven, 1.8-128160EF
Date:   Tue, 30 Mar 2021 08:08:43 -0500
Message-Id: <1617109723.693046.173729.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 29 Mar 2021 21:14:13 +0200, Daniel Mack wrote:
> This adds documentation for a new ILI9163 based, SPI connected display.
> 
> Signed-off-by: Daniel Mack <daniel@zonque.org>
> ---
>  .../display/panel/ilitek,ili9163.yaml         | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/display/panel/panel/panel-common.yaml'
xargs: dt-doc-validate: exited with status 255; aborting
make[1]: *** Deleting file 'Documentation/devicetree/bindings/display/panel/ilitek,ili9163.example.dt.yaml'
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/display/panel/panel/panel-common.yaml'
make[1]: *** [scripts/Makefile.lib:377: Documentation/devicetree/bindings/display/panel/ilitek,ili9163.example.dt.yaml] Error 255
make: *** [Makefile:1414: dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1459781

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

