Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E4F9649F6F
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 14:08:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231854AbiLLNIm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 08:08:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232119AbiLLNIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 08:08:34 -0500
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A071095AE
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 05:08:32 -0800 (PST)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-3e45d25de97so144546267b3.6
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 05:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VYeWDmjLYcTiLYEYpGdYdeFk+Wlp6dc41MHgDxnHonk=;
        b=TMVnu4oDVAjwQo2ueybgeBTQaW39HyuM4S/0xkCBZNA9zk/cHROmDWJst9hspswZag
         QIwXlM0Yb78xudSshA318tgegOZCJLSc27ebupa2J5AFwpmot+icGHKgtGxovMn/ud4M
         AfLEhbOFco/5T0b6RgquRBFzr3wy5ixwKbGvJk8bC7DojUBbqXgkGPDrU2tasLXQcOLR
         ntdJkvDsOu1ji7+DFQJoxM4AGllFHdU2jvFmjsV81QkmecaUJaF5sD6KMK+2sOtX+U4L
         jPueMFT39+2NxCIqboB1xTBwWKHALQlHFwPp3LgZ+L6aTOth7pXuPyKOxQuTXrSk5dpB
         DoBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VYeWDmjLYcTiLYEYpGdYdeFk+Wlp6dc41MHgDxnHonk=;
        b=Qb1EIOO/JfrM1BnhUwaUUaypn6DJhFoKM8eQmS8pcbs9fXtmgqXqXfyb7WzFxDiDRk
         cg3RoHOuqHRcsmmYoei5Ili+sukQYgJlrVWDLoSuwHzxOwZogMKQwb50TXDZm4cpO0zQ
         TFk5S1WFqxadUZ8rwPhqHVatvLAiKkbrWl3VjMNhuR5WQC+ctyf/GPkyuuWRSMltjUj2
         UCu4yRcxU0+rU9RAs6rn1XeNK2KTepFdUoRsrQ9FM8OV48Nf5OBz6t1+s+/LgNsqLsW/
         mpIHRSl+IzIEHR7aNVJggAc9R5k45gYAayk9228cFjtj4nAK/Wf0nbkn2pmgXNGAfkme
         2Xog==
X-Gm-Message-State: ANoB5pm8AHIIG3a79b1bMGof1mKvoviG1GtcKdEZan/FU7DT5huuMo/c
        YA0oj358NGO2nxo6zF+Uy9DExUJ68OsAJEjBrhO8Fg==
X-Google-Smtp-Source: AA0mqf4El+CPKJ9CeoLZ+zzTZHIdrpCgYQdXK9NNf5joMEkI0DVQUMGXqvULtsXeAUtOOc4xLFizwJUzwRHGh3pnOLg=
X-Received: by 2002:a0d:ebc3:0:b0:3d7:b4:9879 with SMTP id u186-20020a0debc3000000b003d700b49879mr38387562ywe.370.1670850511805;
 Mon, 12 Dec 2022 05:08:31 -0800 (PST)
MIME-Version: 1.0
References: <20221028064141.2171405-1-clabbe@baylibre.com> <Y5clqogvKUjk+KN9@Red>
In-Reply-To: <Y5clqogvKUjk+KN9@Red>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 12 Dec 2022 14:08:20 +0100
Message-ID: <CACRpkdYF5Y-qVTzojHNiZtT4PndeUzPOT26NY-WWc49+vBbyyw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: leds: common: add disk write/read and usb-host/usb-gadget
To:     Corentin LABBE <clabbe@baylibre.com>
Cc:     pavel@ucw.cz, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 12, 2022 at 1:59 PM Corentin LABBE <clabbe@baylibre.com> wrote:
> Le Fri, Oct 28, 2022 at 06:41:40AM +0000, Corentin Labbe a =C3=A9crit :
> > The triggers enum misses 3 cases used by gemini DT.
> > usb-host was added via commit 0cfbd328d60f ("usb: Add LED triggers for =
USB activity")
> > so we add also as valid trigger usb-gadget which was added along in thi=
s
> > commit.
> >
> > disk-read/disk-write were added by commit d1ed7c558612 ("leds: Extends =
disk trigger for reads and writes")
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > Acked-by: Rob Herring <robh@kernel.org>
> >
>
> Hello Pavel Machek and Lee Jones
>
> The two patch are reviewed, could you take them to your tree ?

If the subsystem maintainers are too busy to respond, maybe you can propose
it for merging through the SoC tree? It's a common last way out.

Yours,
Linus Walleij
