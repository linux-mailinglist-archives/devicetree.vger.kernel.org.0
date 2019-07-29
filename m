Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D5B379C7A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 00:34:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729397AbfG2WeO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 18:34:14 -0400
Received: from mail.kernel.org ([198.145.29.99]:36894 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729401AbfG2WeO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Jul 2019 18:34:14 -0400
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 77F0C217D6
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 22:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1564439653;
        bh=UL/gBnx9jYfrVHist4KYUvcwtJIvyBWv6hvZPCsoOW0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=L9aNKM184YGpqCtVjDjY3zQkee2318qVdo3hl9dUXGd/3Wzi5kgwHDUM93BkqSDYX
         dF6kJSc6i6cenx0UFnN3WcahCKUpxg/DkySSa3a4SP4+EIujV1R9Nqe3q5UMyQHJcb
         wCaSI9vpzZxHwMQ5ZWiG2SD9vMnwiDe4E/d7k73c=
Received: by mail-qt1-f174.google.com with SMTP id x22so56199400qtp.12
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 15:34:13 -0700 (PDT)
X-Gm-Message-State: APjAAAXrWevNsdiNLJ7dwP1ZRoVJe0uWyIhhMSdj51J9JG1nCXGiv+sH
        xcko+j/N0WrUxAfmVTmw5AikVGrVL3lSH/D3gQ==
X-Google-Smtp-Source: APXvYqxDddh1YcE9UAN2JJmIBUYbYYMf+ygtncXzM0eKfGj2ABWdU6BIO8Hr98PRgT9kvxxiZxUr7IATx650642VdH8=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr80565581qtc.300.1564439652644;
 Mon, 29 Jul 2019 15:34:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190728210403.2730-1-uwe@kleine-koenig.org> <20190728210403.2730-2-uwe@kleine-koenig.org>
In-Reply-To: <20190728210403.2730-2-uwe@kleine-koenig.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 29 Jul 2019 16:34:00 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+G-kk3_UHC=nAEJFXQ22-gBL0AFUrCXv=CZNy-GXHH3Q@mail.gmail.com>
Message-ID: <CAL_Jsq+G-kk3_UHC=nAEJFXQ22-gBL0AFUrCXv=CZNy-GXHH3Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dts: add vendor prefix "acme" for "Acme Systems srl"
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org,
        info@acmesystems.it
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 28, 2019 at 3:04 PM Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.or=
g> wrote:
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

It's not Apr 1st, so I guess this is a real company and not the coyote's. :=
)

Acked-by: Rob Herring <robh@kernel.org>
