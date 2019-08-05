Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 82386816CB
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 12:18:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727230AbfHEKSU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 06:18:20 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:38257 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726454AbfHEKSU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 06:18:20 -0400
Received: by mail-lj1-f196.google.com with SMTP id r9so78823499ljg.5
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 03:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+OidWRK0NxQrN09q+H0Lz4wCrhTqBVNanJIQIVy/gII=;
        b=lg9VOKzw2db4frYUxtdqEfbgWkOvq9p9FMJSWhGilAgUkM1A/cuExt3oECmeK5QKT6
         t5Uh1vcuMjWQDCEH2XWwYYrGgnCaHakuBuPZr7IZ74XtRBQZ4mTkhnafC8TgX/okuR+l
         ERsy1o8RzDxio5fauDNDhsZ3/Hs5I7gbIqZtIl8P3LOKWCPB7LonUWnBG487BvJqoIEv
         Wtphcmcr/28nxzQPeSvW1GzZogMY4wfQNOdqOLIb5SA6T1UvLt29Guy+svKOhPj0y/j/
         kT+jMS7sypmnQsa64XAOBnEmpKpk0FcEROskM39/RUXBRHfCnWVd7Ys0NGGZZecRgpcF
         N7hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+OidWRK0NxQrN09q+H0Lz4wCrhTqBVNanJIQIVy/gII=;
        b=UTK1FoCLD72qmS9/OYDehTxFrx2PwYAnR0KyGFkz9CcH6WUl9toNyvCumfrRCl1Dnt
         ehpmseHKY4OwC8hgDWgQUQXUhDBfuGS3PdbCi5xcXnNqCMqrRZvvxOMfIIx9Zmsykvc+
         +Uya+Zw5zs1Z4X0ekIrY6AJ1jYGA36BFOGE34EOqAYaLbAP1hPGC3FDQlTF6vvq/OGaz
         84I1R9jTpNF1Es6UIlwTfD7BTSOVQ5+vZPjpiscbxBGHjDZzTvAK0MnzGA0E3iHD52ho
         Wzq6Qb5ggyuW1963bUn+sMmL/3cCgS0rzd+NVinFt07uDPUBl5ak11I5zyLZ6raz7pSB
         h0EQ==
X-Gm-Message-State: APjAAAWBtvLiSCpwSwv6I4NOTqO47xXwsyNyOcpAqQrNgmP4r033Wcmv
        Cqs4YhWVckwAzoKmT9hIyJFnMAnS5ela4zasExyfJQ==
X-Google-Smtp-Source: APXvYqx/47plwVQoKfOxPFRbz9uFPNTC89i2gTxTm/2vOWF4WlpGegp3L3NCwltCpv/ud4yUTO+QjSZAiKhvzrIe6xY=
X-Received: by 2002:a2e:8756:: with SMTP id q22mr79254317ljj.108.1565000298784;
 Mon, 05 Aug 2019 03:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190725145040.42182-1-kevin.brodsky@arm.com> <042d5c3d-96fe-5466-3869-a0a3a08b964d@arm.com>
In-Reply-To: <042d5c3d-96fe-5466-3869-a0a3a08b964d@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 5 Aug 2019 12:18:06 +0200
Message-ID: <CACRpkdbPhxW2-vDhPDz-KpD-AxPJL+Px_ZH8cWVVbCiYpJh3PA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: fast models: Increase clcd's max-memory-bandwidth
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Kevin Brodsky <kevin.brodsky@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Pawel Moll <pawel.moll@arm.com>,
        Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 25, 2019 at 5:15 PM Robin Murphy <robin.murphy@arm.com> wrote:

> Given that the property is optional anyway, would it hurt to just remove
> it? After trying to dig up any relevant internal email history, it's
> still far from clear how and why it got here in the first place.

Isn't it just my sloppy copy-paste when fixing up the device trees
for the DRM transition? I agree it should just be removed.

Yours,
Linus Walleij
