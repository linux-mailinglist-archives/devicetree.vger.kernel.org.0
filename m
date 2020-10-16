Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4CB2290730
	for <lists+devicetree@lfdr.de>; Fri, 16 Oct 2020 16:30:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408830AbgJPOaN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Oct 2020 10:30:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:41140 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2407335AbgJPOaM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 16 Oct 2020 10:30:12 -0400
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E83502084C
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 14:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1602858612;
        bh=9EyxHYqClpX3UwS3zfUTeHuxQsxcwne1NcvcZiES3PU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=cyUjTRUjAyFV3YWb1/7IsGRxLvNqwY4aFkxD1zZ5AG3yOs93F86j21oyxVcbqdEEG
         4xuUj1aRfwhV+vRGl8xz+qALpXrqvzQnTXTbqnT1+3qeEBdzUYDGJ2jaP4kXH1DERp
         PqbyPYVqz1F/24WcdVN4KzB5yMtzTXaFsr8viXx4=
Received: by mail-ot1-f45.google.com with SMTP id 32so2599284otm.3
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 07:30:11 -0700 (PDT)
X-Gm-Message-State: AOAM531wY1U4VAys1u84tdxYK6sApZSzy5+fZZRKDtL19ZXTiYN62RlA
        pYlrS7/ZgBmNYPYoXQVQzUi6NIo8HfqZmB8SDA==
X-Google-Smtp-Source: ABdhPJxaGtPDoYxJFNqM/ELyihD+uZhMXL+3s2By0Z2TUq2FXp3Nb2CiEp5u3IsFAtnaBV8hpEXqOVLMsUbFOw1oTWk=
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr2605283oti.107.1602858611164;
 Fri, 16 Oct 2020 07:30:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200917094024.17215-1-u.kleine-koenig@pengutronix.de>
 <20200919143922.22793-1-u.kleine-koenig@pengutronix.de> <CAK7LNAT5f6RxFjOTOm8RvzZ3N2-48fr5e7wVoiE9hVeMBLSKBA@mail.gmail.com>
In-Reply-To: <CAK7LNAT5f6RxFjOTOm8RvzZ3N2-48fr5e7wVoiE9hVeMBLSKBA@mail.gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 16 Oct 2020 09:30:00 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJDPq-7V-JkeVEQh8J9dUd8uCqp0u5LnP6pYXmpzLRcwg@mail.gmail.com>
Message-ID: <CAL_JsqJDPq-7V-JkeVEQh8J9dUd8uCqp0u5LnP6pYXmpzLRcwg@mail.gmail.com>
Subject: Re: [PATCH] scripts/dtc: only append to HOST_EXTRACFLAGS instead of overwriting
To:     Masahiro Yamada <masahiroy@kernel.org>
Cc:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Frank Rowand <frowand.list@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 16, 2020 at 2:11 AM Masahiro Yamada <masahiroy@kernel.org> wrot=
e:
>
> On Sat, Sep 19, 2020 at 11:39 PM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > When building with
> >
> >         $ HOST_EXTRACFLAGS=3D-g make
>
>
> I do not think this is the intended usage
> of HOST_EXTRACFLAGS.

Okay, but I looked at all the other instances of HOST_EXTRACFLAGS and
they do '+=3D'. Are they all wrong?

Rob
