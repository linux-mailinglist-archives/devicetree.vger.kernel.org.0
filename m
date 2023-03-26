Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5D0F6C96A5
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 18:07:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232685AbjCZQH3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 12:07:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232674AbjCZQH2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 12:07:28 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDB85422A
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 09:07:26 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id eh3so26208418edb.11
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 09:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1679846845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dIi+oN72WZEPUIzF4SXi/G/Glt6kbpRtp0rjNVLhNxU=;
        b=rYC+DXaM8jK8m+4KNtMsT/0cBAqMBwjPK7uRdODmDe+FpYpXt0WHXiiX9AF38CuVV4
         02Z0j2OfhQGgTKc+humC8K22N/iyMQrjCtAvFt9sWcSQ2w6sECg192pN2gdc6/J8qIOy
         xiF7hiwyMolfZwM9rGos/DV5nbG64/s9M2zSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679846845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dIi+oN72WZEPUIzF4SXi/G/Glt6kbpRtp0rjNVLhNxU=;
        b=NIj3wPrwHP81/U8ohYK7drwBWWfia0mxo3bliQwnorKu6Qj/pzDp2gVH9u0ahKm6Ck
         DSvgxGBtjyFyEglEKcGa7u4+IlFT8ihPJVdkp/ER6I70VnGn4HutlrWzJoK2jTe9GkSq
         0COQhs4E5lOghwthLDRypW/U5h0xU9OZy6yAKDwz/Bn9Rez4OxM5vAzxbO1PRWdzVKi3
         umzBpmgnmiVjRGgtZtuomZ8dR72bhN5J9ox/Eo9SPFItQ7XZ1y2wuRaOuMd54XrcGClO
         r8Kr9CLwNh/CUXuncY85w16U1mdLvxaYp/TiKp2N71xg/CPuSO8hlbuQqNlWX3HbZGDR
         CRJg==
X-Gm-Message-State: AAQBX9d2vv205hJ0ualoKeMAt7bXqPlzzzwCLkVS3FrGeOOZq+xZO7mP
        K8eJ8/dZUFLXS/XOwsifsupTPuRxTqY98ldePXA33w==
X-Google-Smtp-Source: AKy350aSHCmM5L0AkEbNo7ZMCzsEjdop5DldR1H6TrcAFOLh2mVLvg3OquHgLQZFz71CzdYZwPS0LbUPocYBiudtQeU=
X-Received: by 2002:a50:d517:0:b0:4fb:7e7a:ebf1 with SMTP id
 u23-20020a50d517000000b004fb7e7aebf1mr4267496edi.6.1679846845304; Sun, 26 Mar
 2023 09:07:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230315211040.2455855-1-dario.binacchi@amarulasolutions.com>
 <CABGWkvpHHLNzZHDMzWveoHtApmR3czVvoCOnuWBZt-UoLVU-6g@mail.gmail.com> <20230324155632.24chi5ndo23awhhp@pengutronix.de>
In-Reply-To: <20230324155632.24chi5ndo23awhhp@pengutronix.de>
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date:   Sun, 26 Mar 2023 18:07:14 +0200
Message-ID: <CABGWkvpsza=b8GAFkyL2VMMHqkHyY4VLQ=8aky5G8vWTeAR49g@mail.gmail.com>
Subject: Re: [RESEND PATCH v7 0/5] can: bxcan: add support for ST bxCAN controller
To:     Marc Kleine-Budde <mkl@pengutronix.de>
Cc:     linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        michael@amarulasolutions.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-can@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marc,

On Fri, Mar 24, 2023 at 4:56=E2=80=AFPM Marc Kleine-Budde <mkl@pengutronix.=
de> wrote:
>
> On 21.03.2023 12:25:15, Dario Binacchi wrote:
> > A gentle ping to remind you of this series.
> > I have no idea why it hasn't deserved any response for quite some
> > time.
> > Is there anything I am still missing?
>
> I wonder if we want to do a s/master/primary/ in the DT bindings and
> driver?

The ST reference manual (RM0386) explicitly uses the master and slave words
in the bxcan chapter. I would stay consistent with it. But I have no proble=
m
changing it to primary. I just sent v8 with the changes you suggested
for shared irq
and clock enable/disable, but if you prefer to use primary I will send
the v9 version
with that change.
Please let me know your opinion.

Thanks and regards,
Dario

>
> regards,
> Marc
>
> --
> Pengutronix e.K.                 | Marc Kleine-Budde           |
> Embedded Linux                   | https://www.pengutronix.de  |
> Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129  |
> Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com
