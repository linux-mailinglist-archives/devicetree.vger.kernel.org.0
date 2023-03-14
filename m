Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA92A6B9EC2
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 19:39:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230394AbjCNSjY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 14:39:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229785AbjCNSjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 14:39:21 -0400
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7E885D473
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:38:58 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id r1so4025535ybu.5
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678819136;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ZLbfZBYJZUalG8Pgf9iKIORQNcy/iQ3EEtk7oKgNY4=;
        b=AT/Q/rB5PVeomfEIkk/+OV2wnH3YqSeVb3WOEi0rw7ukXBj0SBGHe6uAe5VYzj2SU+
         3BWEqPqfIqxanSVAtg5m5razhsWZ+dcWxQSD11/EWcDjYuIoEWDDKZRiErAvjWimU238
         c8kodLl0PSgnNuuRPLffExQ+7Cqz9stPh9dgl7Y76XZnqrlWCrln5KI30fMliF9awLk+
         09M921G3iQEhSimdLAKhKIX3yybkTF6vMeas+48eU4GUcMRBYASIvvmZ6BbOasuIG4+W
         RYmeXmfCGuvTDba0I7KkYheMTiX+I1EhhRRnXePFZaTWGOGgEG1K0NMsfq13UFWQX0+J
         Pl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678819136;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ZLbfZBYJZUalG8Pgf9iKIORQNcy/iQ3EEtk7oKgNY4=;
        b=7nWXIBHRbZGdScJ9nynPfhaXnkvZ0RZr/+3SNlCf64K6lhPaKAQ0p7jaBZzjO8vqn/
         mrLnDJwaeIu/yetfaq31NCspGRZbEDUEBA1avWYu9QTaC6HX6rWY8f60gS3oNBfjGGz2
         4ZceEtbgmNxnDptTJSMXOLmXhZJnjkXOuh7USFzqlsaOkE/iMQLxI83mA27wTKcORHuq
         kPsDMo4V7MAsbZI25O6uX5qKtWGjlrk+rLGICoifjo0QT98y2dT+yzW5nJavaQFIxQow
         G0k9JiTRT6FKKWHmt032cOzvItauV3BhfHHm54u7jUjzVG2cVInC3q5qKk7ukMuOYCWH
         zbcA==
X-Gm-Message-State: AO0yUKWzcrOyHz1K626SSz7H2YIQZHtP1QEK/uMV4fruGNbqZCdQCfhX
        hSaqxh2mNLjFvX6o19bZNoAWExPO4jJZNiP/CuWupAsfxyZ4t/OF91A=
X-Google-Smtp-Source: AK7set8kQPrZplopErS2t9RwUdCE/2it+aAmOqAC3R5RL0RgJ//Q+q7Zgz6co/2RK4AOYFMEy2dIpArJTNRjeVcL7ec=
X-Received: by 2002:a5b:1cb:0:b0:a6b:bc64:a0af with SMTP id
 f11-20020a5b01cb000000b00a6bbc64a0afmr24178550ybp.4.1678819136760; Tue, 14
 Mar 2023 11:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <20230314092311.8924-1-jim.t90615@gmail.com> <20230314092311.8924-2-jim.t90615@gmail.com>
In-Reply-To: <20230314092311.8924-2-jim.t90615@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 14 Mar 2023 19:38:45 +0100
Message-ID: <CACRpkda5OHxVajMWaw8cxso_Wjnbex+Lx09Xrbr68-b7C3JVZg@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] gpio: nuvoton: Add Nuvoton NPCM sgpio driver
To:     Jim Liu <jim.t90615@gmail.com>
Cc:     JJLIU0@nuvoton.com, KWLIU@nuvoton.com, brgl@bgdev.pl,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jim,

thanks for your patch!

On Tue, Mar 14, 2023 at 10:23=E2=80=AFAM Jim Liu <jim.t90615@gmail.com> wro=
te:

> Add Nuvoton BMC NPCM7xx/NPCM8xx sgpio driver support.
>
> Signed-off-by: Jim Liu <jim.t90615@gmail.com>

(...)
> +config GPIO_NPCM_SGPIO
> +       bool "Nuvoton SGPIO support"
> +       depends on (ARCH_NPCM || COMPILE_TEST) && OF_GPIO
> +       select GPIO_GENERIC

You don't seem to use GPIO_GENERIC?

> +       gpio->intc.name =3D dev_name(&pdev->dev);
> +       gpio->intc.irq_ack =3D npcm_sgpio_irq_ack;
> +       gpio->intc.irq_mask =3D npcm_sgpio_irq_mask;
> +       gpio->intc.irq_unmask =3D npcm_sgpio_irq_unmask;
> +       gpio->intc.irq_set_type =3D npcm_sgpio_set_type;
> +
> +       irq =3D &gpio->chip.irq;
> +       irq->chip =3D &gpio->intc;

Please rewrite this dynamic irq_chip to an immutable irq_chip,
several examples of how this is done is in the kernel, for example:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/d=
rivers/gpio/gpio-ftgpio010.c?id=3Dab637d48363d7b8ee67ae089808a8bc6051d53c4

Yours,
Linus Walleij
