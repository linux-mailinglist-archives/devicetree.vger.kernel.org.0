Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C3BD40EE7D
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 02:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234800AbhIQAuf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 20:50:35 -0400
Received: from mail-il1-f170.google.com ([209.85.166.170]:46073 "EHLO
        mail-il1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241998AbhIQAue (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 20:50:34 -0400
Received: by mail-il1-f170.google.com with SMTP id b8so8477032ilh.12
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 17:49:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=k7gKpuMaJoydn9f/v4vT+vaFh5PNfinn7hZgJ+Eqzao=;
        b=USQxAsrdI1oZn8EMrn4/AalyAUJTpMQ4jFM/ZLUqug1ccfbMXtFzNvPp9ALvX014WJ
         bed1/ohuwCn7FnXccosg2z8XUrDHW89YBviLC3nrrcUnnfjDPHWMXStPWo9B6x0E8pJW
         XCt2LbI7L6v6a4ZKltXQYuBu+QBmJEvryHZ7SA9kzZWUY1lBow+5J5mezs1RRJ8EFZ6W
         kp31Tf+VY6UGvADEACgW7vES1Toaodv+6ZPiY8UKbwJw8nEhgQ1sssx07UoHcCJB/Q0S
         9gpq0G0V76WLmyu3JkkjpkB8c7AIL7HqDUjObnpNCldE1DfX49yidM41mujUZZ2K4aru
         Mqdg==
X-Gm-Message-State: AOAM532Aegg3Z5Zcn1zfBJugQWZ9Yn3Foi4r56v6NQaKwUXkZVXwP3k3
        3TqOIzk18XB6TdMQ3XmU2Q==
X-Google-Smtp-Source: ABdhPJz1qM7Ulfa/Yv+R3w3hGuKWglaG8AkWYT38GJ1KEQkLdB/7UzdPHunJWNKAVgNkrrVuSCN/2Q==
X-Received: by 2002:a05:6e02:8a7:: with SMTP id a7mr6165839ilt.246.1631839753093;
        Thu, 16 Sep 2021 17:49:13 -0700 (PDT)
Received: from robh.at.kernel.org (96-84-70-89-static.hfc.comcastbusiness.net. [96.84.70.89])
        by smtp.gmail.com with ESMTPSA id r18sm2521300ioa.13.2021.09.16.17.49.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 17:49:12 -0700 (PDT)
Received: (nullmailer pid 1484030 invoked by uid 1000);
        Fri, 17 Sep 2021 00:49:06 -0000
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        zyw@rock-chips.com, zhangqing@rock-chips.com, heiko@sntech.de,
        robh+dt@kernel.org
In-Reply-To: <20210916201947.18237-1-macroalpha82@gmail.com>
References: <20210916201947.18237-1-macroalpha82@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mfd: rk808: Convert bindings to yaml
Date:   Thu, 16 Sep 2021 19:49:06 -0500
Message-Id: <1631839746.891478.1484029.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Sep 2021 15:19:47 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Convert the rk808 bindings into yaml format. Please note that currently
> there are a few errors that appear when performing a make dtbs_check.
> However, after looking at the errors it appears in most cases it occurs
> on device trees which are not following the current rk808.txt document
> today. For example for the rk808 there are multiple errors regarding
> vcc13-supply, vcc14-supply, and vddio-supply; however these supplies
> are not listed in the current driver or cared for in any way.
> 
> For the moment the rk817 is the only MFD that will support a battery.
> I believe the rk818 also supports a batter but I do not have one to
> test or write the code for. When it is supported we can split off
> the battery to its own document. Note that the battery is being added
> in a separate commit series.
> 
> Changes from V1:
> 
>  - Removed generic descriptions.
>  - Added maxItems to clock-output-names. Max items is 2 per the driver.
>  - Added unevaluatedProperties as false to regulators.
>  - Correct i2c node.
>  - Added note about the battery.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
>  .../bindings/mfd/rockchip,rk805.yaml          |  84 ++++
>  .../bindings/mfd/rockchip,rk808.yaml          | 253 ++++++++++
>  .../bindings/mfd/rockchip,rk809.yaml          |  98 ++++
>  .../bindings/mfd/rockchip,rk817.yaml          | 362 ++++++++++++++
>  .../bindings/mfd/rockchip,rk818.yaml          | 106 ++++
>  6 files changed, 903 insertions(+), 465 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk808.example.dt.yaml: pmic@1b: 'vddio-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml

doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt: Documentation/devicetree/bindings/mfd/rk808.txt

See https://patchwork.ozlabs.org/patch/1529027

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

