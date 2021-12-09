Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30E7C46F773
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 00:30:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234399AbhLIXeB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 18:34:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233035AbhLIXeB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 18:34:01 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEB4CC061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 15:30:26 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id x43-20020a056830246b00b00570d09d34ebso7952082otr.2
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 15:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FepkuaMI2E0UPC3u5jnuq0Z4zznACFIsmRE29I20zT4=;
        b=vA+YadHRzPiZ920qQWf6itnhO6cSlzRKGuvpku8VZtT0Uqiz+NwyEt4u1SNE8hc5Gd
         3fiOKtPTqIImMKKkKPlIFip3/X4egE1tGJeZoJ67NcKvNMeeSGF9du3e7p3Xec16v58R
         s2GL9rbaQTK18Xzy4IVsoqNNwxN5vshCpTT5Lzp+BeL3lnsJLo6YB7rExN13MZsG7/CQ
         W4UVAda0tc0DjmKQcJTcVVKRGspWmgL9hLwh9q6vO1pvXvtV8GI8SA3rhzN1P9Rw5zZY
         31eU62nQV2RnUvTT6cH3UjtGs9kB497qC1Q6CJw0PMTTCUfLj4RYtCGSkn33rxBGS3I1
         l3OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FepkuaMI2E0UPC3u5jnuq0Z4zznACFIsmRE29I20zT4=;
        b=Z4wFTJd2uDkSLNAJCwEPAT9NbhB1vxw2SQQWJscROOtQEjHxrBEQPrOQgE+c0g4EHN
         /zpN13DVpTN5QnB1y2nCPlxD/z2ZA0nLq7vmIteso6ukcdM0xgid7Vung3U/zXaJ/AXM
         oKYyPcwbOSTFtIAHWO77TE9IoP0GlLkcklVdYISrcKqb3T1+gWHekXOtt1gqZ24JStNT
         Rz1sT0uCcFTbtjhJAtsyicqn8FKnKceLRXh4FLxKBnOidtmKVzbSagDP/nQIuM52FHux
         ALAvzPY5+/OMk81E0SOIP8fSyO5jfHwGRiLWAWzvZyP5Qypb6GNSAjeIMdgur8j5dtCE
         cQfg==
X-Gm-Message-State: AOAM531G2kGk4e/AGcSp/2RHZP6PHWYJOi543Qa9JXdVchzCGcNsazZH
        w15qN+F0Mtwzgnk3khH2PV6pq8kX/vd7q+VQ3nyhzOBM43m8IQ==
X-Google-Smtp-Source: ABdhPJzSklHE2PEylrgMnWrf65WLYMvroWGO2JaHYj9wv9SCkHxG+y59KeRCyqzJbEZxRSlsELsaDB97OqqkhPeFuuI=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr8513360otg.179.1639092625198;
 Thu, 09 Dec 2021 15:30:25 -0800 (PST)
MIME-Version: 1.0
References: <1638850665-9474-1-git-send-email-wellslutw@gmail.com> <1638850665-9474-2-git-send-email-wellslutw@gmail.com>
In-Reply-To: <1638850665-9474-2-git-send-email-wellslutw@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Dec 2021 00:30:13 +0100
Message-ID: <CACRpkdaBV81OCwHuFCObwv_t55B9ANHaF5jEc=oorZdjpey0Ug@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: pinctrl: Add dt-bindings for Sunplus SP7021
To:     Wells Lu <wellslutw@gmail.com>
Cc:     linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, wells.lu@sunplus.com,
        dvorkin@tibbo.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 7, 2021 at 5:17 AM Wells Lu <wellslutw@gmail.com> wrote:

> Add dt-bindings header files and documentation for Sunplus SP7021 SoC.
>
> Signed-off-by: Wells Lu <wellslutw@gmail.com>

> +patternProperties:
> +  '-pins$':
> +    if:
> +      type: object
> +    then:
> +      description: |
> +        A pinctrl node should contain at least one subnodes representing the
> +        pins or function-pins group available on the machine. Each subnode
> +        will list the pins it needs, and how they should be configured.
> +
> +        Pinctrl node's client devices use subnodes for desired pin
> +        configuration. Client device subnodes use below standard properties.

I don't understand this if type object stuff here, Rob, help...

> +      properties:
> +        pins:
> +          description: |
> +            Define pins which are used by pinctrl node's client device.
(...)
> +          $ref: /schemas/types.yaml#/definitions/uint32-array

Why can this not $ref the standard binings in
Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml

See for example
Documentation/devicetree/bindings/pinctrl/actions,s500-pinctrl.yaml
for a nice example of how to use this.

Yours,
Linus Walleij
