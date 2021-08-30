Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD9A43FB4CE
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 13:49:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236434AbhH3LuI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 07:50:08 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:35425 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236551AbhH3LuH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Aug 2021 07:50:07 -0400
Received: by mail-oi1-f180.google.com with SMTP id r26so19702509oij.2
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 04:49:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=JTWNeOzPya3nNu0WFhWPDsxrKp/zSguxB/tKydwWrag=;
        b=cKtdNQ17HtaluZFKYzuT13HLkgzGYon8n7VhO9FqSAXSDs+XxYmu66emRq4jgeg5fQ
         8IIxK7II2fS5lox7DOe8SGvCWhkxVMZcj84SDJyj8PS1WC137vxH1Cv+RVtoeSgWOOSm
         wTq6o34vF9Oi33HZLyIYXRDKDTD1w8kp3rVKI5aADc9Bh9RlEa0H3EQ7EjqzAkoOktJf
         YzRzxSrzPdZa5t6RIThHN+DdTDT3eX4d5eiPCzw1r2U/VIICstkL8+73191suTKoAs7Z
         Iam719dfQ7GaYaaT2fqxiRd0DvIDa9nxpkReWsTt9sOf+1ilIQqibdAs8JWmuC/hmqai
         9Yjg==
X-Gm-Message-State: AOAM533fVtDjU/zk1QqVxWO1pHmrPex5M5CW9Ggnm2aMIJ4ThSzKznbQ
        kE3WUFo940+t64gtsyk06Q==
X-Google-Smtp-Source: ABdhPJwwEkgsS1GB6OQSTyCZgYSxrcjUoCWW5L8KMurAZMwyuCTgAYQQ+h3D86cTz7mDgrBVz2E8uQ==
X-Received: by 2002:aca:6541:: with SMTP id j1mr14958919oiw.146.1630324153939;
        Mon, 30 Aug 2021 04:49:13 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id 97sm3214312otv.26.2021.08.30.04.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Aug 2021 04:49:13 -0700 (PDT)
Received: (nullmailer pid 1731755 invoked by uid 1000);
        Mon, 30 Aug 2021 11:49:10 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, heiko@sntech.de, broonie@kernel.org
In-Reply-To: <1630285861-28147-2-git-send-email-sugar.zhang@rock-chips.com>
References: <1630285788-28002-1-git-send-email-sugar.zhang@rock-chips.com> <1630285861-28147-2-git-send-email-sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v2 7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings to yaml
Date:   Mon, 30 Aug 2021 06:49:10 -0500
Message-Id: <1630324150.931479.1731754.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 30 Aug 2021 09:11:01 +0800, Sugar Zhang wrote:
> This patch converts pdm bindings to yaml.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2:
> - Fix yamllint errors.
> 
>  .../devicetree/bindings/sound/rockchip,pdm.txt     |  64 ------------
>  .../devicetree/bindings/sound/rockchip,pdm.yaml    | 115 +++++++++++++++++++++
>  2 files changed, 115 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/rockchip,pdm.example.dt.yaml: example-0: pdm@ff040000:reg:0: [0, 4278452224, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1522032

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

