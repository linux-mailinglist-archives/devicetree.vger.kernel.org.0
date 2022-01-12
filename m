Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A81348C5D0
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 15:19:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241879AbiALOTl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 09:19:41 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:51978 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241666AbiALOTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 09:19:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1641997179;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=GfMIH8Picadi8RXZWF72k5bxKD+JqAXJTe9VtWcz54A=;
        b=VY5Fl4I6utxNaQpv4iqzUxAlqVbGKnFsjRVf+8pfEycYBbApGC+nF8Bg2U4lfwuN476g9l
        bcR4H3B+PTpNgiZJR92UFihLb0NvOD3ph4Cy3pxBRsb/Uuec9gjN8tPx+G8DEDpQ8ElEnl
        QdAw8UWpo/q535QOqU7GgwCgtDQYWtg=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-221-xQtEXaD3OtOd-aocSyMASQ-1; Wed, 12 Jan 2022 09:19:37 -0500
X-MC-Unique: xQtEXaD3OtOd-aocSyMASQ-1
Received: by mail-qv1-f72.google.com with SMTP id ib7-20020a0562141c8700b0040812bc4425so2549097qvb.16
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 06:19:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GfMIH8Picadi8RXZWF72k5bxKD+JqAXJTe9VtWcz54A=;
        b=bp8QhuxsqEoEiwEss1WONxAWt5O+fmV3qyqmoSn/7LydOl1abplMtoB+Xxw9m4j1fO
         7NYxeXGd/gIyu9hWbh1iD8wa/WfF2KOxqWi2SX4x8zqxBFuUb47i+YxbP3UuivbtipUR
         kD4iQYOQ6bSm7DbOtPJ0zIbZ1klnys79i62O/v5hXadgqptxny7ORFJf3gyvger0E/mS
         N2rIaHaBMKpW2jsCqIyMNrtURFtfO1MFXXh0CnugMswaA30ChbrPl1GuQF6hXzx8UFtg
         VJfJ4npMT8S22HbKmGm+IOP48NlY47s9fmG50pBA+Ht+lHwU1rB68oVCU6F7FbGFqQM8
         cBkg==
X-Gm-Message-State: AOAM532p72dTwIlldV8Q6UjGSOvy47OTOtatu8gtJ+IFNHDnk8x82kqP
        gU+ZqKJUdqrFdo8GYy6/kqQfXWncsscrf5q4q/kw6dNOhLm3hXhdbd3NA5BDNA4UPZ3LvBW0KjW
        bI6EIvIk6/xHu0PRcCqlorA==
X-Received: by 2002:ac8:7f8d:: with SMTP id z13mr7666759qtj.351.1641997177139;
        Wed, 12 Jan 2022 06:19:37 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzjFxdoD0QrQx5DpD7pU9x1/Oyy/Nup6Z2PvrjWO0HaoIAuoWlLvV5MpPTYJEEdSMQKI2VVcg==
X-Received: by 2002:ac8:7f8d:: with SMTP id z13mr7666741qtj.351.1641997176928;
        Wed, 12 Jan 2022 06:19:36 -0800 (PST)
Received: from localhost (net-93-146-37-237.cust.vodafonedsl.it. [93.146.37.237])
        by smtp.gmail.com with ESMTPSA id t9sm4462265qtw.48.2022.01.12.06.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 06:19:36 -0800 (PST)
Date:   Wed, 12 Jan 2022 15:19:33 +0100
From:   Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To:     robh@kernel.org
Cc:     nbd@nbd.name, linux-wireless@vger.kernel.org,
        ryder.lee@mediatek.com, evelyn.tsai@mediatek.com,
        owen.peng@mediatek.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/6] introduce background radar support for mt7915 driver
Message-ID: <Yd7jdaKTrTFDU36g@lore-desk>
References: <cover.1641996493.git.lorenzo@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="0ykbNUhxaDqGJ7Cu"
Content-Disposition: inline
In-Reply-To: <cover.1641996493.git.lorenzo@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--0ykbNUhxaDqGJ7Cu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Introduce radar/CAC background detection support for mt7915 driver
> Background radar/CAC detection allows to avoid the CAC downtime
> switching on a different channel during CAC detection on the selected
> radar channel.

@Rob: I forgot to add devicetree ML in cc. Do I need to repost?

Regards,
Lorenzo

>=20
> Lorenzo Bianconi (6):
>   mt76: mt7915: introduce mt7915_set_radar_background routine
>   mt76: mt7915: enable radar trigger on rdd2
>   mt76: mt7915: introduce rdd_monitor debugfs node
>   mt76: mt7915: report radar pattern if detected by rdd2
>   mt76: mt7915: enable radar background detection
>   dt-bindings:net:wireless:mediatek,mt76: add disable-radar-offchan
>=20
>  .../bindings/net/wireless/mediatek,mt76.yaml  |   9 ++
>  .../wireless/mediatek/mt76/mt76_connac_mcu.h  |   1 +
>  .../wireless/mediatek/mt76/mt7915/debugfs.c   |  55 +++++++++-
>  .../net/wireless/mediatek/mt76/mt7915/init.c  |  10 ++
>  .../net/wireless/mediatek/mt76/mt7915/main.c  |  50 +++++++++
>  .../net/wireless/mediatek/mt76/mt7915/mcu.c   | 100 +++++++++++++++++-
>  .../net/wireless/mediatek/mt76/mt7915/mcu.h   |  23 ++++
>  .../wireless/mediatek/mt76/mt7915/mt7915.h    |   7 ++
>  8 files changed, 253 insertions(+), 2 deletions(-)
>=20
> --=20
> 2.34.1
>=20

--0ykbNUhxaDqGJ7Cu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCYd7jdQAKCRA6cBh0uS2t
rM62AQDhDIo5diCYIgmmy9ShCe0wcJcDvIqK9/1+TCyi/4UbbwEAxMnkHqbcLog4
A+6150t7SdBsjWm3KZeaqFPo/0rynwA=
=HV3V
-----END PGP SIGNATURE-----

--0ykbNUhxaDqGJ7Cu--

