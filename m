Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D746132AB68
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:31:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1446168AbhCBU1s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:27:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384619AbhCBPas (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 10:30:48 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F4FDC061A2E
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 07:26:54 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id u4so31908438lfs.0
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 07:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=lKOd7lGgGrHmATr0+0UaNky3x0tGppa2MdNuvIW8ElA=;
        b=HNrtCMhwPE9Kw/FD7w9G/hskU6YoEVoZtWbaXpjhXFm/4eSVMVIt+L/YRWzLI1/eF2
         gYiIixhgC2vkqX3j2xPj/rVIt1hYO05EplYWuneZ5j3HcNhpga7IuiRN0unnezMqbLHw
         Y1ywBZgi0ekVQ0pmMStZmJHD+LXlkbwJlPSPHtxabK8E2xB9jpIw5OIhIuPYiy71V1Lx
         gnbsv97Kz/69JxKEB6jeC4q+o7kpANylaFkfNl0xFu9eMbffBBM1pewqJz+tIg2sDi3x
         NzojMitxWBvDUF/sMOxiyK7NsXdJCX7KE+MmxfyZUj+KMSoUsGzBR95ooO1+XWg6P8qn
         iGcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=lKOd7lGgGrHmATr0+0UaNky3x0tGppa2MdNuvIW8ElA=;
        b=JYpZCr1IWKzLEmWhkdLYVaW/sNi/yy6WLvYEydRrh/J7QfM3qXM0cxIyNs/FEHitYl
         nYSB5UiqOPGsOTPIPMEZDMtxn+fF4qfQ2QSq+7xsYaKw3BgrK+2TKWqCSfvbGCNFhRYj
         /4TDV2hHrAD7T+Pa/D7mm0EPjzadG8FpwCTYq/mP6O9zJw5iK1nIluUvosIwihGdoobS
         UFUdpOjtHxgXSnwkNsBsGIFtFB9QXEvkXcxcFfFV4QSucyXTO0SPsd6HyaGRh34gTekc
         U3BjLSbduVsvKkksW1ktnRMXszTilcZIv/xdbh4Ctx5oqkVq5ulsn1oWjMFw9fj2NHXy
         yD9A==
X-Gm-Message-State: AOAM533ToYuzk30olAK3Ft5NpiYPcfJG7a9Wj4ozULm4fS4wokUoWwBM
        qxmSbeMlg1MjYhPtYJJ8aXAafur13qJMqGzJlL5LPw==
X-Google-Smtp-Source: ABdhPJyJgQEy2dG0Ksn8AZA1W9tAXNsszgVd2akn8Uudko9q0nYjsVu0MGWepXGIfWaFUpY+NonIw3kG2E4M3r9KuYU=
X-Received: by 2002:a19:4c08:: with SMTP id z8mr12044324lfa.157.1614698813043;
 Tue, 02 Mar 2021 07:26:53 -0800 (PST)
MIME-Version: 1.0
References: <20210225164216.21124-1-noltari@gmail.com> <20210225164216.21124-6-noltari@gmail.com>
In-Reply-To: <20210225164216.21124-6-noltari@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 16:26:42 +0100
Message-ID: <CACRpkdZ8KD-LMwQ2BvYgmY5Wwk0rtMzormejxDNJje9GTZe1yA@mail.gmail.com>
Subject: Re: [PATCH 05/12] Documentation: add BCM6362 pincontroller binding documentation
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

> Add binding documentation for the pincontrol core found in BCM6362 SoCs.
>
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>

(...)
> +  interrupts-extended:
> +    description:
> +      One interrupt per each of the 4 GPIO ports supported by the contro=
ller,
> +      sorted by port number ascending order.
> +    minItems: 4
> +    maxItems: 4

Same comment here. This is hierarchical.

Yours,
Linus Walleij
