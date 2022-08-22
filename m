Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 437BF59BA24
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 09:22:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231374AbiHVHWA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 03:22:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231278AbiHVHV6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 03:21:58 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B1D329C8A
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 00:21:57 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id z20so12614008edb.9
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 00:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=K9GqH8J2Rtwg9al68hkNDhdyAqH2iZ0okDuLSh58pgQ=;
        b=lcomsdQYETH++8/O8lDI76zbdmo8u73NvmYlTumg800wRLlB85LnH8xGZR3hpnq2ng
         YM2W5trM6h53BduUHjBwQU5/ATLm3SpfWgCKzjNs6OSd0XUlv/Kd3ywDUtBkITmkN68p
         Ec1JBUOsQpTNRVcdVnbVT04cmjsQKxHMk09ymwk+FCwhX7Y7ZEdVEBiRWVcgPpRLtkai
         HuqgsCXZYusUEMAe51bTP7zo7Z6RjFOgZ4v7iij8PEn5jrov1ZG5fH2voQNQWozsJuPw
         UohDEWX/Iga/EJHAw6mBbg3Lqixv/zy8AlYNtBgEDSkqVC1a5dQ/yfrbVyi1gM64LVRz
         PFJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=K9GqH8J2Rtwg9al68hkNDhdyAqH2iZ0okDuLSh58pgQ=;
        b=KoRsuZEPa3iS63O6X/ctRGYGwneuPYf/l88q0jVmp/eSYj0KBQsJDdKpsNG9MpjkSq
         B/TNf6gFhYBSdrnFlekjOWPMxBgSP9fmKlgdIsqZUBt8EudQVx9Up4YY2mn5HGEMNci+
         KZ7jTsC0EeLwSuKfQQ8Z318cdAEWG6KvQyDU1YMrQ+jtfOXpsrwZs3eNr2hP7H/uhhEW
         COiElFFzd2peHfo/Mvkiu05F+NkyfYWJccnOJ5ovR9Jdix1UaI3pA/lafdTZmHZ2yBox
         ac6xzTNDqFTcuISATT1sRVxAjrxHctctpy/eIvhS8GkmEV4pQioHZCl+TAKDEdDEnrd4
         N3fA==
X-Gm-Message-State: ACgBeo37KMwzBVYaihrNoRjHhKjroEND8J6+PpOvR/yA4efLlNqzoBXd
        8KVzwfiYW/1yoyD/UWcX6psTc+v0jgv47yX2vOEK3w==
X-Google-Smtp-Source: AA6agR5/dTruYi9JrVkQ29gedLbwsDM/e6eJkPzc08FKA8BZSy+t8ph/0TIYsU90d5dOm1Ah5JSQ4Eb2qgytDr4Pfk0=
X-Received: by 2002:aa7:c84f:0:b0:446:2bfb:5a63 with SMTP id
 g15-20020aa7c84f000000b004462bfb5a63mr12780779edt.172.1661152915747; Mon, 22
 Aug 2022 00:21:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220728091712.13395-1-m.zatovic1@gmail.com> <20220728091712.13395-2-m.zatovic1@gmail.com>
In-Reply-To: <20220728091712.13395-2-m.zatovic1@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 22 Aug 2022 09:21:44 +0200
Message-ID: <CACRpkdZKAzsdhyky1bEax3Jra0+MLYbu+LNWuk2KGAfEkBvBLQ@mail.gmail.com>
Subject: Re: [PATCH RFC v1 2/2] devicetree: bindings: bus: add Wiegand driver documentation
To:     =?UTF-8?B?TWFydGluIFphxaVvdmnEjQ==?= <m.zatovic1@gmail.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        mani@kernel.org, hemantk@codeaurora.org, elder@linaro.org,
        f.fainelli@gmail.com, Michael.Srba@seznam.cz,
        jeffrey.l.hugo@gmail.com, gregkh@linuxfoundation.org,
        bjorn.andersson@linaro.org, saravanak@google.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 28, 2022 at 11:17 AM Martin Za=C5=A5ovi=C4=8D <m.zatovic1@gmail=
.com> wrote:

> Wiegand write-only driver requires definitions of two GPIO lines
> in the devicetree. This adds the documentation of their
> definitions.

On top of the other comments:

> +  Both data lines are initially pulled up.

That makes it sound like they are both open drain, right? Just like I2C.

> +  wiegand-data-hi-gpios:
> +  wiegand-data-lo-gpios:

So these should be tagged with (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)
See the I2C bindings in
Documentation/devicetree/bindings/i2c/i2c-gpio.yaml

> +        wiegand-data-hi-gpios =3D <&gpio2 1 GPIO_ACTIVE_HIGH>;
> +        wiegand-data-lo-gpios =3D <&gpio2 2 GPIO_ACTIVE_HIGH>;

 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN) on both then!

Yours,
Linus Walleij
