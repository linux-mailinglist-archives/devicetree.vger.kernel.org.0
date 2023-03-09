Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CBFF6B263C
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 15:06:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231214AbjCIOG2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 09:06:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231600AbjCIOGF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 09:06:05 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 584AA9CBF6
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 06:03:46 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id i6so1983931ybu.8
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 06:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678370625;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rfLw2hJ09K7juhM7ToFdGQXgPnTRU+N2reGUNJs1fMk=;
        b=te5CmTZZaAREe6I9IbC5fP+cua4HnFYEfZjzKQLmEgXgfZVYTDH4bb328fgwm8hJdZ
         ASiGe0w+uRx9ZgsYg7fklWrSM2QC+cEPqkokwrRPDzH8CD+54vu1vE/BxGH64Vred9Nr
         Fvuky2dufM0aJY16tRiaVtupHqsK2ALSzEUOcecjwHCtjxKNTQ+6GMCxEIdpz/jV+iwz
         XEQsfxoWv/URUbKerklvhBjOWH35qUazvHwD2dqHQHY0GZmIoqBgNuDdvcoWBgY4d30U
         KHBq50GVm54ah6w0eLg0PCz14auugvv9pJzszHof3kyE8tjlCIRcr0xSfM6Lz7tw/kHq
         xVPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678370625;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rfLw2hJ09K7juhM7ToFdGQXgPnTRU+N2reGUNJs1fMk=;
        b=36rluIhr5rXjjhusHfqwAkuRyLeewg3q4S/KuMGMZyBASCTWa9B1ymeF6EsypTAi+u
         kfhcj5ldeweLkx/rkmf847xaKCgKcpuaqFF+YLDwjRH7JWNUQiipWwidPmnSqWluJ89J
         HZ4v9Qw/CnPi0mp6g6tLQWevNvgRqrIOaWBOs2M8/hUraF21PNwNOqAlblt1gb/JY75K
         bQmk1evGDUTMbN5HLanLUPGJs7RkZwKqqR+zsYuS/2pUBh6ja2RMSm9XYyI65ElSyOjg
         j8hPyC3Gy5PPF6YTVG2//SfM9AsMuVJl/LGYdPeNTAn6ofJoxgdZakIgWdkvbaxiOLg0
         gNPQ==
X-Gm-Message-State: AO0yUKUE0VEEs0YKGPxtvx36xFJ4uhvQhLhx/ackRunt0cLccdu4DSiK
        veHvvhEHHWK+PKptedoQvg/xILDdtu8/N8KSVF4QcQ==
X-Google-Smtp-Source: AK7set/V9g47LXb/8bVVYX4aEcUjsLMStk6C108ueaS9M+e5hKMWh6BL/B8P3j74SyJtKGeS1gB7pU0gGTbjZfKvQFQ=
X-Received: by 2002:a25:8c84:0:b0:b23:4649:7ef3 with SMTP id
 m4-20020a258c84000000b00b2346497ef3mr707871ybl.4.1678370624827; Thu, 09 Mar
 2023 06:03:44 -0800 (PST)
MIME-Version: 1.0
References: <20230308084309.396192-1-nm@ti.com>
In-Reply-To: <20230308084309.396192-1-nm@ti.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 9 Mar 2023 15:03:33 +0100
Message-ID: <CACRpkdbBWeFupRin=JuMCGDWkzbsR18N+4ZEbQOPJq=p3w0yLw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: k3: Introduce debounce select mux macros
To:     Nishanth Menon <nm@ti.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Tero Kristo <kristo@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 8, 2023 at 9:43 AM Nishanth Menon <nm@ti.com> wrote:

> Introduce the debounce select mux macros to allow folks to setup
> debounce configuration for pins. Each configuration selected maps
> to a specific timing register as documented in appropriate Technical
> Reference Manual (example:[1]).
>
> [1] AM625x TRM (section 6.1.2.2): https://www.ti.com/lit/pdf/spruiv7
> Signed-off-by: Nishanth Menon <nm@ti.com>

Patch applied.

Consider doing what Krzysztof recommends: move thes <dt-bindings/*.h>
down to the arch where you're using it and have them as .dtsi files instead
or something.

Yours,
Linus Walleij
