Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29A2132AB63
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:31:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1446150AbhCBU1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:27:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1578808AbhCBP1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 10:27:19 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADB2AC0611C0
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 07:22:13 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id q14so24408860ljp.4
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 07:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=f7QSrAX2oqY7QLjr4MxaIMFXX49EKilktcV2ECsEf50=;
        b=cAq5Pz+8cNmAYm8ExEJ9vm+wSdHVgbjmay62d3tVTEqElC5eYgW2ldc3Gnk1x+fI/G
         6GE+3goeGPkCEoXaLkGgz0MeJAfwzvSlC3K1+ne8sGjj/tS+KOZkuW1dksS6Q+0Vdld0
         T2hMc7/1ANQIcr+avbf47sElOB5vcaHlu6XZFKvg6dSCMXsdbop34ABaKfUkdrs20tz+
         IFR4GDsXNd9vq+8kUhiSrYOTYPSUp1bRo7JNEkd9Es+gqF2ZBgYlOqeffj4Kbu6/S9M4
         pvwKsywYu7a/Xpr867+K70RoANlkA6ZHm/iA5DLFYfFRLECHLk02AtoJvo2MWbiLf2Iy
         3rVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=f7QSrAX2oqY7QLjr4MxaIMFXX49EKilktcV2ECsEf50=;
        b=Wm6Joet3xToKIkFTkz9ecXWpivv7/lBYLQ7HcfjXJhzxG+D5OYuXJ5Z3HBdwUgOvbL
         3PeLW+8z2sz/Jz1C8HNS8B8l//Rcb2kmBwYxNg3STd8NLAg0yMABNCU4jPqbF1BMTNqW
         rDO93PnJBcr6SnXjx6NByVUNdPZZRwk95IZXh1G+0efd6wx/bxB+hGnkOyKe0y1EjBAT
         rzGHjC3YDue/zMr1H9xZVR5yqUwV+3jUq8AMXUihazHSwNWvStgqM9sBIJ8Z0UWVuZcc
         biRQsKlwxv64qRUkpo4K/37JkLTsfL7p7mv6SEimkWtHAPYoUJASgd1IYFWwrExFkmEM
         Rrbw==
X-Gm-Message-State: AOAM532Y9/IGVDIFkCjxBBxiGYgcyUfpzw6Vosjy7pHZxIJ+A4erOP+e
        sd2lxh7+KYaugzSA6395yeT6xFZeu9iHFJh3YRWp6g==
X-Google-Smtp-Source: ABdhPJx8R82A8WHsc3N/khCrQlVXn1aC5i8ZAMzKuDJ7RHWDwOiw3j2ZB3RZnLmIOBWiwevgGmCVy4o5lfwMV2nrjxc=
X-Received: by 2002:a2e:9041:: with SMTP id n1mr12412389ljg.273.1614698532143;
 Tue, 02 Mar 2021 07:22:12 -0800 (PST)
MIME-Version: 1.0
References: <20210225164216.21124-1-noltari@gmail.com> <20210225164216.21124-4-noltari@gmail.com>
In-Reply-To: <20210225164216.21124-4-noltari@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 16:22:00 +0100
Message-ID: <CACRpkdaL1-Mw85hrJNbKk0rY2txeQ3bYVS9TYpwQ=+R3Wvxpug@mail.gmail.com>
Subject: Re: [PATCH 03/12] Documentation: add BCM6358 pincontroller binding documentation
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 25, 2021 at 5:42 PM =C3=81lvaro Fern=C3=A1ndez Rojas
<noltari@gmail.com> wrote:

> Add binding documentation for the pincontrol core found in BCM6358 SoCs.
>
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>

(...)
> +  interrupts-extended:
> +    description:
> +      One interrupt per each of the 4 GPIO ports supported by the contro=
ller,

4? Below says 6.

> +      sorted by port number ascending order.
> +    minItems: 6
> +    maxItems: 6

As noted in the review I think this interrupt controller is hierarchical
and this is not needed. All that is needed is for the chip to know
its interrupt-parent.

Yours,
Linus Walleij
