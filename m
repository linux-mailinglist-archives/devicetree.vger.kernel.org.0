Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69A22621087
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 13:26:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233819AbiKHM0n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 07:26:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232367AbiKHM0l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 07:26:41 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0874549B7A
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 04:26:41 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id kt23so38109234ejc.7
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 04:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tyyODRHXtilG30dzd65m7MqoIR0cCDBRC2Fx24RI5us=;
        b=NwqsXVnBhJboZ5eY8Xcr2QcAQU3A73tG4C/C3p5ehSjxJZ4ThJ57K0n0cIX/tv2Ybk
         e/aZXkZsV/52EeZ3Le1b63V7g/eNCwIkd0TE/TLJWWeahFa03vuMnSydXOenjn2O+r26
         2b/+7v45FlbfjgjFEiKAW+5AGPVmIMb+x2naOXmRQRPBYZAOl0H/J1XwncIGM27oUW7h
         hwdUK4R8iXXnUYFHq2CJ0iS+KSgnH7rgwtSsFICV9x+QW4KvtpbstlLVmnp8jZn3Hx9j
         iqUALcQYxf7JGjd41US5zsmlUnqFpgwe4nBqHKXNNqmk2K57ezo4Pl9D8wU9l/HVgEGF
         A9GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tyyODRHXtilG30dzd65m7MqoIR0cCDBRC2Fx24RI5us=;
        b=TuHkQgcMLC1lPfLJidPww2+n3+cS/Dq59vQ8eJYHgmsvIMyM1JbBKnXFK0kuDLOV+2
         Wzn3+l293C8Jpl49PBt5B5McP5pwYPW0ZoijQVzJZTwCTduTFn6795n24imqmTgR1y66
         1WyyQB8vcO8qcCHyHdnzARoUXwx7Q11NZKKW4gSbeDfqHwtJck1LOU5nDHIln1HFRfvf
         BlM/PiJp8jBW494dQpCqWIz45hz0quZKvBoc7+mlO69Z8TKoP4sfOp/XqsG0TCXZewVG
         /xNmHfr1rWzJ9B3hOtRvJ8LnWCw1oGOgjLV7LIjA7+GVQrwgb851d28BrriPZR/qi5Jz
         Rsnw==
X-Gm-Message-State: ANoB5pmK5KrqqhJrYae3fsDQoZmU6SfO+POpA2g53FPq1YD4YlWRHXTJ
        9yzKB2wFNZBzmhS+8Kj7IgklG4BS9wxxdlDZM16xWw==
X-Google-Smtp-Source: AA0mqf7/Kq3Eo4YzTUVxcP/fg8+u1hyvRb5r0lVcTK6pr5Bewd4oHaTol2L4r9Xfdxk26RfW13/NiikTqCw5vcoldf8=
X-Received: by 2002:a17:906:6acc:b0:7ae:658c:ee45 with SMTP id
 q12-20020a1709066acc00b007ae658cee45mr10932109ejs.190.1667910399610; Tue, 08
 Nov 2022 04:26:39 -0800 (PST)
MIME-Version: 1.0
References: <20221028153505.23741-1-y.oudjana@protonmail.com>
In-Reply-To: <20221028153505.23741-1-y.oudjana@protonmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 13:26:28 +0100
Message-ID: <CACRpkdb6FFCtry+93jnXw0f8jeu7yDR7_S2GOKaGYiEGSGc27A@mail.gmail.com>
Subject: Re: [PATCH v4 00/13] MediaTek pinctrl DT binding cleanup and MT6735
 pinctrl support
To:     Yassine Oudjana <yassine.oudjana@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Andy Teng <andy.teng@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Yassine,

On Fri, Oct 28, 2022 at 5:35 PM Yassine Oudjana
<yassine.oudjana@gmail.com> wrote:

> This series adds a driver for the pin controller found on the MediaTek MT6735
> and MT6735M SoCs. The two differ in the last 6 physical pins, which are used
> for MSDC2 on MT6735 but don't exist on MT6735M (since MSDC2 doesn't exist on it
> to begin with). In preparation to document DT bindings for this pin controller,
> the existing documents for MT67xx SoCs are combined into one in order to
> eliminate duplicate property definitions and standardize pin configuration node
> names. Necessary cleanup is done along the way.
>
> Changes since v3:
>  - Improve interrupts description to make clear what sysirq means.
>  - Set drive-strength constraints per variant.
>  - Set maxItems for reg in MT6795.
>  - Add blank lines between conditionals.
>  - Add ref for both pinmux-node.yaml and pincfg-node.yaml.
>  - Make pinctrl subnode-related changes in separate patch.
>  - Fix up some pinctrl subnode property descriptions.
>  - Add interrupts items descriptions to MT6765 and MT6735.

I have applied patches 1-6 so you do not need to resend those.
Keep it going with the rest!

Yours,
Linus Walleij
