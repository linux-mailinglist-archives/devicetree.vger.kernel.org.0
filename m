Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A22276ABA69
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 10:53:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbjCFJxZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 04:53:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230152AbjCFJxU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 04:53:20 -0500
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com [IPv6:2607:f8b0:4864:20::935])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3297E2128C
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 01:53:14 -0800 (PST)
Received: by mail-ua1-x935.google.com with SMTP id f20so6009605uam.3
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 01:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1678096393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k/i3cW6MMJBIByuoEtssmFxaDechJ+3zIimenSLZRiM=;
        b=NS2ts3hpN1YRglL7KLG89JQvZdG+cW7hr3TuMhfaynmojiStIg2CN+qxP4gDnd0Bq3
         jorGZdOa0CsKtgyLSONYS5m3ivrnVjVgUhRfS0HEyPoiLfefO4Ls0Rim0mWqzSIJuml1
         ijA8cxXCr0xrvqVH1VT2eglhia7XB3VDKmAZbYYbPqJahzcgrhztwOF8QQqvXu0vfin9
         sz2L96ZYpQGcteQUiD3TW4KDuNRmzRu5IZQyA34Cr3fbTB0rOTqzxi3c7QFfq/4ORb3h
         2RVT8sSCqobT7bZXuOyLwPfk7YFrbakJ+OCn8KojZKDBpc74UKvEKaIanowA4xKRSBEg
         gaGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678096393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k/i3cW6MMJBIByuoEtssmFxaDechJ+3zIimenSLZRiM=;
        b=MhU7nt4P0ElFECh5F4FQ6ucwuRAul9vGm1JnSz1tcQ/ev6phRuFWAnU5b/QHGrzOnv
         A7jdgPDE2Bf8hkwpVXQwlQ+11vuZy2AF+ACCyW58FJCn9anhysEnc/uXtSVVQo8kLjAY
         +vAqlzUsFSuFlhgdY6Uh9oi1qDA/baFP1SoHuuG1qq8tKwaL0PvklTrIEqzESMuSgpjz
         g3vrgLfHhFZFfCszFSAiA1NaShTvnkYS/hyALAvmKY1XjFBAW8gtXOloDgS6w4n44R9+
         AMo5d8JvjfEUsyrXr917fjqtzZvyOtAtudyunahfWM2d9saPYEUcTA4cdGfcJ3soBu2a
         lesA==
X-Gm-Message-State: AO0yUKUmz78tne7mezZ2JjbMEBk+J85k5V7PPdHd0di1RSpR/82Ww0+l
        tcMqPayPHRKksI9vR624hM+v3b0/c9/DohmiCDrg7g==
X-Google-Smtp-Source: AK7set/7fBg9EQWB5IzC3uIMCPIIVf8xQNyfsnkErID9z0duzV2GaUfOZzTk22xvZxHyseG7IuE46JvgvpbIDYtUMFs=
X-Received: by 2002:a1f:38d6:0:b0:401:a4bf:210d with SMTP id
 f205-20020a1f38d6000000b00401a4bf210dmr6266963vka.1.1678096393022; Mon, 06
 Mar 2023 01:53:13 -0800 (PST)
MIME-Version: 1.0
References: <20230211030646.24549-1-twoerner@gmail.com>
In-Reply-To: <20230211030646.24549-1-twoerner@gmail.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 6 Mar 2023 10:53:02 +0100
Message-ID: <CAMRc=MfE_VR4qt8E48NKWF5yXGQibcabJpAzNYQBbp7EGSQquw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio.txt: expand gpio-line-names recommendations
To:     Trevor Woerner <twoerner@gmail.com>
Cc:     linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Feb 11, 2023 at 4:06=E2=80=AFAM Trevor Woerner <twoerner@gmail.com>=
 wrote:
>
> Provide more guidance to differentiate between recommendations for names =
of
> lines which are hard-wired to on-board devices, versus recommendations fo=
r
> names of lines which are connected to general-purpose pin headers.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---

Applied, thanks!

Bart
