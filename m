Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 244363BF186
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 23:47:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230436AbhGGVtk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 17:49:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229717AbhGGVtj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jul 2021 17:49:39 -0400
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A3B5C06175F
        for <devicetree@vger.kernel.org>; Wed,  7 Jul 2021 14:46:59 -0700 (PDT)
Received: by mail-vs1-xe2b.google.com with SMTP id h126so2422911vsc.6
        for <devicetree@vger.kernel.org>; Wed, 07 Jul 2021 14:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OVlLJ+pAPYItXS3tJPJzpRseDWUnf4Vt5BYFXZy5W6s=;
        b=JSd4aZViw9xv9hsjqi6SjRBaCRT/OacAY8LCaxo1GKDShfdUS3AxcntMLgIsKCUU9t
         fSBv7QBvwFVj7zom9sEXO0FsKGU9kFfhx9izhIOftsHvTwEO5UXTmM30dwB4Fc9NLR6r
         Zp9Eo/unOo8bZ2IHiOLsX2KMg63xYCZGqs99eyV8cpoorX9MIkEVVL4GhcXV/q+zpXdZ
         9QF/MJvgJ9PCUdH8jZoYoRbvm6WiwRH4FN6QoPJpvpDHZpxgCoR9dNXs7GEduwU3YCvy
         et4dsthn/5F8JqGjGX6WMvZpWjvndaeJPpREVXWyBAAIzICGXLAc51PapgSmnBlYny6c
         aYWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OVlLJ+pAPYItXS3tJPJzpRseDWUnf4Vt5BYFXZy5W6s=;
        b=UDu01Zxpgyg+QXHCH1rBfrDuc5VWQ8Iv8s8J/8R5cknEvk+6rd6R4xjxuQo+owJ3e1
         QbyUyLr6AMl0j17eqxttacOVJ5hlP7BYRb5MJBsm9CrP9IjCwitNpkk52fp/cLlg35MP
         bZSiDKTgPI58GLaXl9DCEKnYqAWOziYt3Ys0Yh5zBQoFNY5n8aogl+WsApFx+Qwo9ZOK
         0SZBZBAEP827AOHF7lEpVd0V5dhgJCeIS0C3xIA9Eo+Ctifujh0c/8lfE3FqdhujqCfl
         POXmZngw9TxSPSNa2NPNguH/1t+2HWoKQQjg1RXm4bzwN2VFQ49Moeop6OPpeBlziZpw
         QDdQ==
X-Gm-Message-State: AOAM5320Xd79euanWV6XGeU2Xc5wzcI2T9fkASUPAE43aCEol8H/xQmp
        aabG6ebm5hITe/0pllwsJirnf83V5F5jGSU85D1L
X-Google-Smtp-Source: ABdhPJyzpMHO0j8v9TXbeld2eR6G5cyvpMfbAaaw/P9uCLfV6lTDBvDMaedLubxyGaUOzYFA7qKCeDeosakM5C9BReg=
X-Received: by 2002:a67:ba17:: with SMTP id l23mr23711956vsn.24.1625694417381;
 Wed, 07 Jul 2021 14:46:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210707071616.28976-1-matt@traverse.com.au> <20210707071616.28976-3-matt@traverse.com.au>
In-Reply-To: <20210707071616.28976-3-matt@traverse.com.au>
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date:   Thu, 8 Jul 2021 06:46:31 +0900
Message-ID: <CABMQnVL379GkR_s5c91a0LAPMemup_Lq8U+qU9M1-kBWfVqmTw@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: rtc: add Epson RX-8025 and RX-8035
To:     Mathew McBride <matt@traverse.com.au>
Cc:     linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

2021=E5=B9=B47=E6=9C=887=E6=97=A5(=E6=B0=B4) 16:17 Mathew McBride <matt@tra=
verse.com.au>:
>
> These are supported by the rtc-rx8025 module. RX-8025
> also has support in ds1307 due to compatible time registers.
>
> Signed-off-by: Mathew McBride <matt@traverse.com.au>
> ---
>  Documentation/devicetree/bindings/rtc/trivial-rtc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml b/Doc=
umentation/devicetree/bindings/rtc/trivial-rtc.yaml
> index 7548d8714871..13925bb78ec7 100644
> --- a/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
> +++ b/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
> @@ -32,6 +32,9 @@ properties:
>        - dallas,ds3232
>        # I2C-BUS INTERFACE REAL TIME CLOCK MODULE
>        - epson,rx8010
> +      # I2C-BUS INTERFACE REAL TIME CLOCK MODULE
> +      - epson,rx8025
> +      - epson,rx8035

'epson,rx8035' is unnsecessary.
This lists compatible string, so we don't list compatible that doesn't exis=
t.

>        # I2C-BUS INTERFACE REAL TIME CLOCK MODULE with Battery Backed RAM
>        - epson,rx8571
>        # I2C-BUS INTERFACE REAL TIME CLOCK MODULE
> --
> 2.30.1
>

Best regards,
  Nobuhiro


--
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 40AD1FA6
