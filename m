Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 164AD6B6B13
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 21:27:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230158AbjCLU1d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 16:27:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231298AbjCLU1c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 16:27:32 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 949D333458
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 13:27:28 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id r15so13698181edq.11
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 13:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112; t=1678652847;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NJIG57E9Rub7tDv1mA8UrojVtdumgjAvRGF4XO89JVc=;
        b=Gs91BukGPyFc4POOzKOYtY6lNg4h+RXqTJiKID9Hhmw/RANDEyu8f9roWgrvC2dJES
         wKjRxrw2bhywOZ5bI8zBAe3o0347vbXFqm8HTcYXOf5fgqqN+kg/Ox1gFh+OoNW87lD0
         P6Gvzt5cERu39C5/9wXgEPPecSCUGJEK6rWT3lndngaceD7QXz29rSjRX1YjBViA2yUf
         n8qU0JyX5zPJqJ4o7uZiiXJNRDGMonL9pEjFaYsT0PH/dYdzd5FHRUQh0sTfaCpp4fL9
         xmlLRb0vYXxU6UNbF58O45n32Qc1PiWlP0lfjNQy871UFgZ1yIPO9uaaHTPMWrVmMHE7
         Q8Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678652847;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NJIG57E9Rub7tDv1mA8UrojVtdumgjAvRGF4XO89JVc=;
        b=3P/sOWJrOxfx8tWw+bl5iUfcsxIIugTHZmGeQPL+vlKvm5xS5Xm/pRd+gYUpYWza9b
         nw9MWNlOcksxKJmuFWtxF0+vZFEfxYOM4Sfq+XbEPlZIss3ziKV00uAIL3dqDMFtdhLG
         q/qyPb0ddV4D2DYmq774KyI5oWs6/kl1suoLJPgqXjS+W1/ulnnUfIjUSRC0hsjUZM1/
         yHI4Sr1eeyAdk0K6JEPkUFuGA8qZ+4vDGy5X6ZVkbyqf+mJjsEMukdef4rSQJmZbKOz+
         R8ACW6iHqVIcIw/wIp40gqKa54l7aoTS62wL0tG5U+b4HmIuvW8eRLnMSundmEdPR9B0
         V8/Q==
X-Gm-Message-State: AO0yUKUbaCWETfv84dIbi/F3Od5Pav4HYJ1wS0svvFkf61nafoUogVvy
        wlM3Fd3r4yykNp19eZLaxYYk5z9dP6LPyFV9mAI=
X-Google-Smtp-Source: AK7set9iMuxq4a2jeYOobSyZd5fBhXYFnw414jirJl2YZzV1fFNeR6Rqn7L94/RVeR97qjcd9DgXYrirHMw5YVOdlA4=
X-Received: by 2002:a50:9f29:0:b0:4fa:e897:7467 with SMTP id
 b38-20020a509f29000000b004fae8977467mr1993592edf.6.1678652846952; Sun, 12 Mar
 2023 13:27:26 -0700 (PDT)
MIME-Version: 1.0
References: <fe7f06ed-4e74-529c-3cf5-45d635cefcc8@gmail.com>
In-Reply-To: <fe7f06ed-4e74-529c-3cf5-45d635cefcc8@gmail.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Sun, 12 Mar 2023 21:27:16 +0100
Message-ID: <CAFBinCC0vXrn4Lv2D5xtoBKDo4H7q3zzoyCWm97V7rJF-maeGw@mail.gmail.com>
Subject: Re: [PATCH RESEND] dt-bindings: interrupt-controller: Convert Amlogic
 Meson GPIO interrupt controller binding
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Mar 12, 2023 at 12:18=E2=80=AFAM Heiner Kallweit <hkallweit1@gmail.=
com> wrote:
>
> Convert Amlogic Meson GPIO interrupt controller binding to yaml.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
Two small comments below. With those addressed:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[...]
> +description: |
> +  Meson SoCs contains an interrupt controller which is able to watch the=
 SoC
> +  pads and generate an interrupt on edge or level. The controller is ess=
entially
> +  a 256 pads to 8 GIC interrupt multiplexer, with a filter block to sele=
ct edge
Depending on the SoC it's either a 256 to 8 or 256 to 12 multiplexer.

You got the important part (min and max items for the
amlogic,channel-interrupts property) correct though.
> +  or level and polarity. It does not expose all 256 mux inputs because t=
he
> +  documentation shows that the upper part is not mapped to any pad. The =
actual
> +  number of interrupt exposed depends on the SoC.
s/interrupt/interrupts/
