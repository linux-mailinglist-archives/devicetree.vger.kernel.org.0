Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D175A3F5DFF
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 14:29:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236953AbhHXMa1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 08:30:27 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:44563 "EHLO
        mail-ot1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230132AbhHXMa0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 08:30:26 -0400
Received: by mail-ot1-f41.google.com with SMTP id g66-20020a9d12c8000000b0051aeba607f1so36995145otg.11
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 05:29:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=wCddbBkBFsbpc3gLzGC+afVI1xhhkM3RxpwaNW7mQMQ=;
        b=RrzpUJ1UTJ3H86LxcJYkWQWqjeD9Vs3lToXxUVIg+ifzO9gwzqo19xrfHBCk9hba4d
         9Nn9EDGLVyip0Zdtn65ATZH9Bi8whpmpEWxAQOtRrW92EKpIlU/qX58fxB6VnB0BN8Lx
         KATTW71TOzu+bPpdCo3lVWHJCwFJNUH6tHkioWF8pGteN6bTIfAD+m4kWS9Z9BzvFaNW
         stOgtx314erG3ty0aQm6EXsnQpQWCvYw+X5rfvPqMRUQg1Y80XtmRi3cBunmcKlGs9wG
         pqouYPeedEvggPEogm6gIwCxvzXnFu3LnrIQrSbRDnu3xr31QOZUIgdEc/3UDujnAAY8
         1nsg==
X-Gm-Message-State: AOAM5336P3ALOyt8jwokmCzWciiXvpOwk+dQyggUAAcsKLH6VJfoIgCr
        Vb3m+CdBqjSg0VoULxR16A==
X-Google-Smtp-Source: ABdhPJwyL2/AOUZUc091A0XC9ihGhEYxxo6IDHFdYPz6/N3UNb8LYue1N6moEAb+PoXZ9uK0U/oNlg==
X-Received: by 2002:a54:4791:: with SMTP id o17mr2641977oic.133.1629808182653;
        Tue, 24 Aug 2021 05:29:42 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id s24sm1487318oic.34.2021.08.24.05.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 05:29:42 -0700 (PDT)
Received: (nullmailer pid 61433 invoked by uid 1000);
        Tue, 24 Aug 2021 12:29:41 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     broonie@kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <1629791656-13698-2-git-send-email-sugar.zhang@rock-chips.com>
References: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com> <1629791656-13698-2-git-send-email-sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v1 7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings to yaml
Date:   Tue, 24 Aug 2021 07:29:41 -0500
Message-Id: <1629808181.201442.61430.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 24 Aug 2021 15:54:16 +0800, Sugar Zhang wrote:
> This patch converts pdm bindings to yaml.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
>  .../devicetree/bindings/sound/rockchip,pdm.txt     |  64 ------------
>  .../devicetree/bindings/sound/rockchip,pdm.yaml    | 114 +++++++++++++++++++++
>  2 files changed, 114 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/rockchip,pdm.example.dt.yaml: example-0: pdm@ff040000:reg:0: [0, 4278452224, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/rockchip,pdm.example.dt.yaml: pdm@ff040000: 'oneOf' conditional failed, one must be fixed:
	'interrupts' is a required property
	'interrupts-extended' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1520109

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

