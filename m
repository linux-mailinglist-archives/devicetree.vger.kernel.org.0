Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A98C6F4584
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 15:50:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234110AbjEBNu1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 09:50:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234196AbjEBNu1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 09:50:27 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B0E9F7
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 06:50:24 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-54fb6ac1e44so53337667b3.1
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 06:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683035423; x=1685627423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p9wwGGRVvswmyZXFhHdJSjPWUvlpeqwsM3jM4gRG6q0=;
        b=nLSh2OvQ+WpDV+Oy7A4TaeN5emRPUDiiiB36+3eZjeXWZcZDjenrY1zHyj5lHodSFO
         YX/Qy3uemWfjKUT/4ePXdePnmz8poLIgYfua/4KO0bf9tYIQo34K4KObr++i3qM9QX8Y
         ox8mnJs4xE0wakTIsOnkdEDZ0JkEVqRNNNUxwEobtxw6iM6pTvSkZK+DtPttheccSDZJ
         Noe05zyH3wgIf0DviMbOAtspSpjXjb1qcALP/8m34KSQrwXHbsboGTdoHw4BfMn4bNMm
         up3yPnZdijj1jwKJo09mnV98WOgIU8MFRNozix9nwUKR/6Qo0VvaEbgu0QtqhB1Vg5/k
         JiAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683035423; x=1685627423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p9wwGGRVvswmyZXFhHdJSjPWUvlpeqwsM3jM4gRG6q0=;
        b=IcuUxjyQpn931FF1z0XKH3z4NLymLETSVBEgST23XEVG7/pou9XIdw/Ex5xhl/vqbP
         shm85Af6xXywQZX4Oa5rzksrF45IfJxD4S18gaB5P/a6piS7a10f3wAATTqQTDm5s6jv
         B7cvf7md3ZsNk1+3Km+XEALTgSCTkyZhV/SNhOR8RHNC+bAOYsR4fUsUGbe++Z25c8dy
         R1JR+wsFj/3R8LVKIi/JIIJY4yLFDTui414YiWBMAcuGofo84s9uqf0LR7XXiM97fj8T
         C+RCcKhwpKjUUbSMmnRwf/efRQ1R8xb/lAf991Pe0oC1zy96h2GgZOAfeb5j2ri8/I3a
         3udQ==
X-Gm-Message-State: AC+VfDxPpF3vcNW2+dIq+rdznjD4Kkx6bOf64vDuXW7NNK+hW8LFapvA
        6V3zOxZoZASjauCRjuQwJMq7V+o/yAPKtW19EkUllQ==
X-Google-Smtp-Source: ACHHUZ4hSlxcKKV8ZK0eqNesZxqJe1dX0f5p+l/aE2H8bLZgv1myNdMdPgpzZycLqO3vTt5ol+8Ml5VVZ94H48yrCms=
X-Received: by 2002:a81:6d09:0:b0:55a:4828:182a with SMTP id
 i9-20020a816d09000000b0055a4828182amr7480482ywc.36.1683035423468; Tue, 02 May
 2023 06:50:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230501230517.4491-3-okan.sahin@analog.com> <20230502084406.3529645-1-michael@walle.cc>
In-Reply-To: <20230502084406.3529645-1-michael@walle.cc>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 May 2023 15:50:11 +0200
Message-ID: <CACRpkdYYiHXfUwLnJoANoXLjKdoSbY_YkCQ7Shu5S1JkSNHH7w@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: ds4520: Add ADI DS4520 GPIO Expander Support
To:     Michael Walle <michael@walle.cc>
Cc:     okan.sahin@analog.com, brgl@bgdev.pl, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 2, 2023 at 10:44=E2=80=AFAM Michael Walle <michael@walle.cc> wr=
ote:

> I'm not sure about the direction though. Technically speaking there is
> no direction register. I'm not familiar with how open drain output are
> modeled in linux. I'd expect the above is enough. Bartosz/Linus/Andy?

Linux has no special concept of open drain/source, it just sees the
.set(), .set_multiple() callbacks in gpio_chip to set the output value(s).
How that happens physically is an electrical question, Linux just expects
it to happen.

.get_direction() is however partly a software concept here, so you might
need to maintain a state in the driver for this. Linux will emulate open
drain when requested by simply putting the line into input (high-impedance)
mode for a high output, but only actively drive it low, which in most cases
is physically the same as open drain.

I imagine the direction would be unknown at probe() and only go into
a definitive input/output state after .set_direction() is called so some
tri-state enum?

.set_config() can be called with the special parameter
PIN_CONFIG_DRIVE_OPEN_DRAIN if the driver on the line can be
put explicitly into open drain state. If the hardware is permanently like
that, there is not much point in implementing it.

Yours,
Linus Walleij
