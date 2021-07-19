Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E194C3CD652
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 16:10:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240743AbhGSN3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 09:29:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240733AbhGSN3m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 09:29:42 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D75DC061574
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 06:35:09 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id i5so30426113lfe.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 07:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2FTzlNaMCD3AmNUJH2yEEkaHs7MO07UhN4O/oRsXVWs=;
        b=yHFlJAhv+eSL/vMjKL3izWbfVWVlBmv87iAQi3iuBreHMZ9zK5RnKEFh6CpS41tzKg
         MM5oQXKJ0EWMNgEdD1vMLmvuk0TO0u7bdUpktXw35DPmsYBMHBSbgn3Xs0huM7hx+aqZ
         QHJ4DHOfvJK8FhfEZoEIeWyVPgrq6nUS0IIz2lJwiZJhWAg/hcPWKMHj7KiPKYrm+fLR
         n0fqw75Dbr4SZ/SkGc9VouvTRUKqA5Qp02R1Cb7TvVFgWCR45913+7+8i6tXB8H/3Pbc
         Wk7uJpN8W4/jAMYFX/1D9cZzIST0Xs4tagdWkZkeo1iCy2r3/I+BRSWAIa64BoHZhVxN
         15iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2FTzlNaMCD3AmNUJH2yEEkaHs7MO07UhN4O/oRsXVWs=;
        b=BjReAKvux4LjzZnGgBXVvY3gyBihN+Tqmo0LDwG8ifx42Sy46fa0uv4iFTl4cONVfY
         eV4cITTsUljfNgqsk0g78Ims6SYYhYL/izCcUq3UfBUaSlcRbOd7YFaoNxS5JYcKO2ka
         aGFYcRn+O+q924TleZ74kt2/pWiNKjh7jLc7DDZFEFabWJWAfb7B2k6K1fI8w1lKnYsH
         bxTTu3bBzsIAbqr3vWYZ8J9eIpmMKTPQydHpfq1PpCDhF7ECxMtgSNilNA1bmvzl1Teu
         4ylmVjDsV9X97GbXQU9rDe9QVwlupHFQDDvi8/4Nvfb/6KNucpaTpM1m/HJTATk98xoy
         Bxng==
X-Gm-Message-State: AOAM531G4EuNHs6FrsBvv0e2ccWXV0BGf4n5rzTgAFBGJBxBTB3PEGsj
        dhOn1/ezzSOmnlVY+8dbpNdVk5GApM/X1IqlTjhteg==
X-Google-Smtp-Source: ABdhPJzepYP9oohkYUdsSQFJjb4jKgiFpd4uuzvy3TycH5AjFXTH1qmUDZclYE/7by7kzG/JBd9sdPjHyIKFG/z/kRY=
X-Received: by 2002:ac2:5e71:: with SMTP id a17mr17828519lfr.465.1626703820337;
 Mon, 19 Jul 2021 07:10:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210717001638.1292554-1-linus.walleij@linaro.org> <1626702448.416596.1811199.nullmailer@robh.at.kernel.org>
In-Reply-To: <1626702448.416596.1811199.nullmailer@robh.at.kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 19 Jul 2021 16:10:09 +0200
Message-ID: <CACRpkdaR+E6xkHYgZ5m8ibWPOxuGWMOFWiUCaO4S_BZZb58PFQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] bus: ixp4xx: Add DT bindings for the IXP4xx expansion bus
To:     Rob Herring <robh@kernel.org>
Cc:     Imre Kaloz <kaloz@openwrt.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Marc Zyngier <maz@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Krzysztof Halasa <khalasa@piap.pl>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 19, 2021 at 3:47 PM Rob Herring <robh@kernel.org> wrote:

> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.example.dt.yaml: serial@1,0: compatible: 'oneOf' conditional failed, one must be fixed:
>         ['exar,xr16l2551', 'ns8250'] is too long
>         Additional items are not allowed ('ns8250' was unexpected)
>         ['exar,xr16l2551', 'ns8250'] is too short

This is because the patch adding these compatibles was sent separately
so it can be merged into the tty subsystem.

So pretty much false alarm, but the bot can't know everything.

Yours,
Linus Walleij
