Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CC68D88385
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2019 21:55:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726219AbfHITz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Aug 2019 15:55:28 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:33209 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726137AbfHITz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Aug 2019 15:55:27 -0400
Received: by mail-ot1-f67.google.com with SMTP id q20so136966339otl.0
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2019 12:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f5RgM5PeUcKR496STO6AkWGhAtd5KnNhCs3hLEyVgLQ=;
        b=rjZGNhdd53P41uJeFy3L2aPLCgR6nvP9AnIBelUUQRi55U2lWW6Xgm1msUkSq6KmrM
         TIadEb+dQfS0abbyV8Qec3FB+S8dJpxcVosOMAkKXgUO7Ke4VPogM8mO5XNNEd3wyLoc
         7eok6qlXt++ohA0BtGignLByuihuqYPGgO48DOvafX01tQr3h9Rlrs07oYSjjEviq89y
         +5MA9Ym7HnBdec4ZdTwhWmi9sResZd/J+17sqhHN5ejPv9J0AU/eu8CW/LwWhzC+aDm0
         axod406VA2x7QEKiWJ1hi3oGKqtHfvY8lsv5TR3ByYgSsxNEWeGEqnhET9S1qrovVPzd
         rUqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f5RgM5PeUcKR496STO6AkWGhAtd5KnNhCs3hLEyVgLQ=;
        b=q4lP63VNQo8EHjg/JAVp2Qzw0jYpXK0x7+m+L0sWGwChnm+3j2O7+gSNzDbSOg6dTX
         lAaW4K/zJEUE11H5MrBgn+Z0H6Cz4sBWiINBhKXbv5YMoPXtKiuPEuyjqBELJXpX9NC6
         ZeP3XAv06zNObSOBhEWxUSIjTlfJpQoXCkikSIO0tcrZb38uxHF01osu7TSdcyiE8wRL
         MqZGGx56irh2Vz6mEf5AKyLKyd8dVF71aboLck4R+T4HWnwFz91ss01pp9AF8acULI8b
         8e33hsQzbvOiZGO5rvEwQqTkR9Eoaui9TFpVziCb2kKcRzECfg3/9JoYlwTH8q6upG57
         tHwg==
X-Gm-Message-State: APjAAAU72S3kK0d0v/uzY2tDXyRuxkovtwHYW637R8TUTAraSpuE+dCa
        XZaegSH282HnKmSzrhzdK5K9tAt8hwrzY5qQw0/Q5A==
X-Google-Smtp-Source: APXvYqz2iUAE9lCz16hjXHExEjubfeLPLLx1yZx3utlS02+GZFq4P0Z52FDXChVD4BmHWDdSnjhIg33whcusluo+pCI=
X-Received: by 2002:aca:5c55:: with SMTP id q82mr7646834oib.15.1565380526824;
 Fri, 09 Aug 2019 12:55:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190808085139.21438-1-narmstrong@baylibre.com>
 <20190808085139.21438-8-narmstrong@baylibre.com> <CAFBinCBnVdTxWgqmnrPo-5uZ5gxy7p68w0PUa=_42fYxhVrDXQ@mail.gmail.com>
 <2e6ade0e-175c-e77c-e767-28f4bbfbe575@baylibre.com>
In-Reply-To: <2e6ade0e-175c-e77c-e767-28f4bbfbe575@baylibre.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Fri, 9 Aug 2019 21:55:16 +0200
Message-ID: <CAFBinCC7UGG014D6xt97SZ-WjR=rTLvag7F+DXG6byxaOEFHJg@mail.gmail.com>
Subject: Re: [PATCH 7/9] dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert
 to yaml
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>, kishon@ti.com,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 9, 2019 at 9:00 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 08/08/2019 21:50, Martin Blumenstingl wrote:
> > On Thu, Aug 8, 2019 at 10:54 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>
> >> Now that we have the DT validation in place, let's convert the device tree
> >> bindings for the Amlogic G12A USB3 + PCIE Combo PHY over to a YAML schemas.
> >>
> >> While the original phy bindings specifies phy-supply as required,
> >> the examples and implementations makes it optional, thus phy-supply
> >> is not present in the properties and required lists.
> > nit-pick: the original bindings didn't mention the phy-supply property at all
> > I'm not sure if you have to re-send it, maybe this can be fixed up
> > while applying?
>
> It didn't, but the phy.txt made it mandatory, but was optional in all examples
> and implementation, thus rob asked me to precise it in the commit log.
sorry, I missed that
my Reviewed-by still stands - thanks for pointing it out (again)
