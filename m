Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A144A36BAEE
	for <lists+devicetree@lfdr.de>; Mon, 26 Apr 2021 23:04:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233964AbhDZVF1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Apr 2021 17:05:27 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:46696 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233483AbhDZVF1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Apr 2021 17:05:27 -0400
Received: by mail-ot1-f47.google.com with SMTP id d3-20020a9d29030000b029027e8019067fso51546042otb.13
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 14:04:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=qwFX6PZglgQ0KERJ7+7V76/7nTNXXxP05BRGy8x2Ftk=;
        b=OLj/50UjHJVwkvLsW4LNcKK7mZ7F9DViuiCwRqzd1sxth1f4UcCBl2mQkYWtaP+28F
         XD+xZs7dGJOK6z0z7VbjJto/RAl8tR4tEaidyKIR83biJC7fJFvYRGS3gHNxt0BvRY/I
         YA0Gwg0QnOallQVjLHfMj8maGytDjJMYqZ5iQsq/vJbdBWgLww4yNkTCikK6Qfj/Nby/
         qcJXSWj0A1UESfIf8Q8iyLRjV8Tw9Bjfol6MROoVCQoE6fdN4JRs0oWICw91MPVzW9UL
         jWHx70U3S1EAdgYow+eb9RFF4jQIystN8WgNc/O7QiC0OkbrbxHQgiA028pk2u+OC5sT
         c/Eg==
X-Gm-Message-State: AOAM53042FmphWhtUTpxeN/FXiZkQ5swfG8pG2imtgswwF1PategsF8g
        EHXUr0YbN7dMHZ16KBmSng==
X-Google-Smtp-Source: ABdhPJxld8IXK7jlyHTM3WiANmAMnbbgFNwqGCa68a/ZWPSGGWCvuYn/Hk8JtBW77Rc/ofOD4n/LJQ==
X-Received: by 2002:a9d:628f:: with SMTP id x15mr16589440otk.186.1619471085322;
        Mon, 26 Apr 2021 14:04:45 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id r12sm1100730otq.28.2021.04.26.14.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 14:04:44 -0700 (PDT)
Received: (nullmailer pid 4086055 invoked by uid 1000);
        Mon, 26 Apr 2021 21:04:43 -0000
From:   Rob Herring <robh@kernel.org>
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Kever Yang <kever.yang@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        kernel@collabora.com
In-Reply-To: <20210424191946.69978-2-ezequiel@collabora.com>
References: <20210424191946.69978-1-ezequiel@collabora.com> <20210424191946.69978-2-ezequiel@collabora.com>
Subject: Re: [PATCH 2/2] dt-bindings: timer: convert rockchip,rk-timer.txt to YAML
Date:   Mon, 26 Apr 2021 16:04:43 -0500
Message-Id: <1619471083.436726.4086054.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 24 Apr 2021 16:19:46 -0300, Ezequiel Garcia wrote:
> Convert Rockchip Timer dt-bindings to YAML.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
>  .../bindings/timer/rockchip,rk-timer.yaml     | 67 +++++++++++++++++++
>  2 files changed, 67 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml:19:13: [warning] wrong indentation: expected 14 but found 12 (indentation)

dtschema/dtc warnings/errors:

See https://patchwork.ozlabs.org/patch/1469995

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

