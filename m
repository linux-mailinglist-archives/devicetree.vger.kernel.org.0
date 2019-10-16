Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 71C8DD8B32
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 10:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391644AbfJPIkT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 04:40:19 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:46036 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389897AbfJPIkR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 04:40:17 -0400
Received: by mail-oi1-f195.google.com with SMTP id o205so19310966oib.12
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 01:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=r6Gil0nV1oJlSHhPc8F9mMAK15KjeTWA4dUOWUcVhrM=;
        b=do2vvA8WtatqVlG+eQenz0+AlOmiqZ7N7XRO1ruvISfeyW8O0r3Q7REKkjXdfnHs4Q
         /s0Qolk+yNepA2krhz/dBjXydRi9kLc1KIC7vu+rrHHuobAgmYxczG908pbUqNM15czH
         sBvecNnzmtcd6QuncFCOB+0laahrSg+6I59tqxU/WYYb7iPZpWxo01KJiSRAOZ4cOvV/
         uC4c2zXRMjD4rgE04+kP++GbodfIWLSulU6eoZqb/fSaeSMg5g+zUpqiZ08OUfb6oiF7
         4WjPtEN3rJhdA9JD39bMx/j/rVvmbCmy+pGa+ekO2hojfn2UiHrI09abVYMuLSDnpwwm
         tk2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=r6Gil0nV1oJlSHhPc8F9mMAK15KjeTWA4dUOWUcVhrM=;
        b=KFxcCAIpJ7G5u8zrnIoE5EJjKF6lkZUTNr56XAHWFflCgY+ye/cRODCJlfQ8Wr5UmL
         R4IYm3+uooC59ljVlBwCcfKAVkI1A2RNbrGSZKDSiBxAXP9w+71Mb4HazG9UB7pwnujB
         5UlY+WeRs4TG6b/97kU9DotFrbuvajrNUv8uvXlySZSquRxFzxSDp6fJFChb66Fu65V8
         6vqGfu4yE5o7wz198dXuScYOf7VvHRtrL1EmNkBMKIEAproMHJd5WqAKBwSBlyx/i1Y6
         aFMorkjw1Kdr+u/q3Yn7rXltrkesmvhAT82d+WSRPKAG10s18aHk6kukZzxA8PmH10s3
         c3XA==
X-Gm-Message-State: APjAAAUnKuHlyDNNPHG7ZcRg+mH6prK0miZWZkjmY11wLLbv6SQjTIdJ
        RQyz+NT8/7oejKNogfgD/OErcmIjuH7iDiRdOTUsQQ==
X-Google-Smtp-Source: APXvYqxdnjfmifOIHa0R3ggacAc4Q+59Qoeu943dwI/Wb8XKTPXGrysFVnRpa+YhtyCQ44DEc7y6+uzy8n9QT/jf+Pc=
X-Received: by 2002:aca:4584:: with SMTP id s126mr2443772oia.21.1571215217337;
 Wed, 16 Oct 2019 01:40:17 -0700 (PDT)
MIME-Version: 1.0
References: <20191016075110.8240-1-bibby.hsieh@mediatek.com> <20191016075110.8240-2-bibby.hsieh@mediatek.com>
In-Reply-To: <20191016075110.8240-2-bibby.hsieh@mediatek.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Wed, 16 Oct 2019 10:40:06 +0200
Message-ID: <CAMpxmJWiSaXiPeDFOZvx5krp31wJmMuRM4iV-O6fHqBN_nQz7g@mail.gmail.com>
Subject: Re: [PATCH v1] dt-binding: eeprom: at24: add supply properties
To:     Bibby Hsieh <bibby.hsieh@mediatek.com>
Cc:     linux-i2c <linux-i2c@vger.kernel.org>,
        Tomasz Figa <tfiga@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

=C5=9Br., 16 pa=C5=BA 2019 o 09:51 Bibby Hsieh <bibby.hsieh@mediatek.com> n=
apisa=C5=82(a):
>
> In some platforms, they disable the power-supply of eeprom
> and i2c due to power consumption reduction.
>
> This patch add two supply properties: power-supply, i2c-supply.
>
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  Documentation/devicetree/bindings/eeprom/at24.txt | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.txt b/Document=
ation/devicetree/bindings/eeprom/at24.txt
> index 22aead844d0f..71a534577bcf 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.txt
> +++ b/Documentation/devicetree/bindings/eeprom/at24.txt
> @@ -78,6 +78,10 @@ Optional properties:
>
>    - num-addresses: total number of i2c slave addresses this device takes
>
> +  - power-supply: phandle of the regulator that provides the supply volt=
age.

The pin is called vcc in the datasheet, I think it would be better to
reflect that here.

Bart

> +
> +  - i2c-supply: phandle to the regulator that provides power to i2c.
> +
>  Example:
>
>  eeprom@52 {
> --
> 2.18.0
>
