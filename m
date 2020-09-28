Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15F3A27B295
	for <lists+devicetree@lfdr.de>; Mon, 28 Sep 2020 18:52:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726393AbgI1QwJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 12:52:09 -0400
Received: from mail.kernel.org ([198.145.29.99]:57064 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726424AbgI1QwJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 28 Sep 2020 12:52:09 -0400
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 72E0E2074B
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 16:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1601311928;
        bh=iaeh5C1jpcA/4oeGLPGz7tqH/29htMu1en0wR+Kku2o=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=vl9TVqZKJ3tKKzLR6fxlEyhALjyh2haqAHl2tkH2wDpOwDOTy0sTUtUhRX8wij9Ys
         QkTPXed10tuBYrMVdlu7L5gdh3qhIdbE6XWSzkeLZNTsSdbxMhKAJBP/OBtPR93pnW
         eqo/Ace+8kA161PA9CuBGC0eO7YqdpJbhQ3dY+w4=
Received: by mail-oi1-f180.google.com with SMTP id v20so2073595oiv.3
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 09:52:08 -0700 (PDT)
X-Gm-Message-State: AOAM533PItSLlNC2y9HmnONIhlUctuSrIFdm/gVUCsOJPnDMgTmOZXw7
        bGUASDzhTv8LZMdbrMmIp1TU5vbLoO8V6Ao6Gg==
X-Google-Smtp-Source: ABdhPJz+oT0gRYFG5i37cxnAHZ/w4g5RumGEku/iXGekmBubASiKX5GOPidSbslmDGtCLS6TaPn3JbPq++yzMp6XSqE=
X-Received: by 2002:aca:7543:: with SMTP id q64mr1487166oic.147.1601311927776;
 Mon, 28 Sep 2020 09:52:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200914162231.2535-1-lokeshvutla@ti.com> <20200914162231.2535-3-lokeshvutla@ti.com>
In-Reply-To: <20200914162231.2535-3-lokeshvutla@ti.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 28 Sep 2020 11:51:56 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLxC=EVqZZNdNYcUXd-X_8r8SkFA1P=GTrk3XW_j+dMKQ@mail.gmail.com>
Message-ID: <CAL_JsqLxC=EVqZZNdNYcUXd-X_8r8SkFA1P=GTrk3XW_j+dMKQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: arm: ti: Convert K3 board/soc
 bindings to DT schema
To:     Lokesh Vutla <lokeshvutla@ti.com>, Suman Anna <s-anna@ti.com>
Cc:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 14, 2020 at 11:22 AM Lokesh Vutla <lokeshvutla@ti.com> wrote:
>
> Convert TI K3 Board/SoC bindings to DT schema format.
>
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  .../devicetree/bindings/arm/ti/k3.txt         | 26 ----------------
>  .../devicetree/bindings/arm/ti/k3.yaml        | 31 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 32 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/ti/k3.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/ti/k3.yaml

This causes warnings in ti,omap-hwspinlock.yaml which also landed for 5.10:

/builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.example.dt.yaml:
/: compatible: ['ti,am654'] is not valid under any of the given
schemas (Possible causes of the failure):
/builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.example.dt.yaml:
/: compatible: ['ti,am654'] is too short
/builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.example.dt.yaml:
/: compatible:0: 'ti,am654' is not one of ['ti,am654-evm']
/builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.example.dt.yaml:
/: compatible:0: 'ti,j721e' was expected
/builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.example.dt.yaml:
/: compatible:0: 'ti,j7200' was expected

From schema: /builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/arm/ti/k3.yaml

Please fix. I'd suggest just removing part of the example. It's not relevant.

Rob
