Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0013AD5012
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2019 15:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726839AbfJLN1Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Oct 2019 09:27:25 -0400
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:30951 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729278AbfJLN1Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 12 Oct 2019 09:27:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1570886844;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=5mSmPn95dTxbtFsZXKmT9oca57QOpbVGLKuCe650iKI=;
        b=O1bS4YCctQjJyHjrcqpTI3bSd2RnBxRV3yFiJQ0JsEhBZ9ECOd32DhnGgsAQbwL4hkplHg
        cqWcJpW90UGMbfpwL4do+naKelsujcAkuuDlzFTxO4kDB3KYSm47/8kug5eKlQfR/FFQcn
        SlZISCLc4YaV80uqetIrRLeWyn1tj4g=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-RCsbToD5MDqIDCt93AvmLA-1; Sat, 12 Oct 2019 09:27:20 -0400
Received: by mail-io1-f69.google.com with SMTP id y2so18794046ioj.11
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2019 06:27:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IvVdxBfFUUUiOCeYZkI7sUgaHb9GpTpgfIXV0H/TVvU=;
        b=VU9epjqza2DSbAQtb3vV6fUKwuQYDTUgvwRfJMCKB8Exydilktq+joqCfHdx28maT6
         Bl+6v7g8HojjZ8Rs4gRDvCH3+dgqwOrYRqFkSASnaKP1sd0AiUa016PDo9GEOcZHyoO1
         6D45Ec9j2Vwb18xUpUyHc62vxsfsbuARjhGMy0gBpGRlfyy5cb2aIAPzf9gXbllO0Pws
         6yW58jq27vAdKCrBkcRes5R0dB+ycRqPic5dvUBm1BwW1MrX8WYRwu1RS7VNpnq6xDbL
         zXDrmom5JaygKelfSfjkCqWH0jbkVHIUKeHKraFhjj1EGrzO5R+AIsT70pPZ83H0nS6l
         Oy1g==
X-Gm-Message-State: APjAAAXxFjxQLOanB+AwgwfKxv2GTPrdkFQ8WksOPLyLMLCFa68TlNzO
        OfUUlW9WjDtEQk4t4go35dAy3NaYXnoemyg9c6WLiJKcJI2Bl4Jh6aD4HBsBoKi4kagug2PZpmK
        BML7paZTyU8ZKBnMuP0oq4S19Qp7r6hfnTFxTcQ==
X-Received: by 2002:a6b:7945:: with SMTP id j5mr22021431iop.12.1570886839579;
        Sat, 12 Oct 2019 06:27:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzgpgrEeqnvKdFHhkx7Vc1+XTMTSh0dg1Nsb5SMO7ICwsdL5kf9s522ME74bjGBWvo/qJbvoJmzmcivV5UWb18=
X-Received: by 2002:a6b:7945:: with SMTP id j5mr22021392iop.12.1570886839188;
 Sat, 12 Oct 2019 06:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570441034.git.lorenzo@kernel.org> <20191012134023.1b0238ce@archlinux>
In-Reply-To: <20191012134023.1b0238ce@archlinux>
From:   Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Date:   Sat, 12 Oct 2019 15:27:08 +0200
Message-ID: <CAJ0CqmVt5+QMYZoFAOr9pnQDHwvEfu=asPxWP25jTqh7pXM7jg@mail.gmail.com>
Subject: Re: [PATCH 0/2] add support to STM LSM6DS0 6-axis Mems sensor
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Lorenzo Bianconi <lorenzo@kernel.org>, linux-iio@vger.kernel.org,
        martin@geanix.com, devicetree@vger.kernel.org
X-MC-Unique: RCsbToD5MDqIDCt93AvmLA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

>
> On Mon,  7 Oct 2019 11:43:36 +0200
> Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> > Add support to STM LSM6DS0 6-axis sensor. Just compiled, but LSM6DS0 re=
lies on
> > the same register map used by LSM9DS1
> I'm feeling paranoid. Is this definitely different form the
> LSM6DSO which is already supported?
>
> If so ST loose for stupid part naming.

Yes, it is very different..AFAIK LSM6DSO is last IMU sensor from ST
while LSM6DS0 is very old (it has the same register map used in
LSM9DS1 imu).

Regards,
Lorenzo

>
> Jonathan
>
> >
> > Lorenzo Bianconi (2):
> >   iio: imu: st_lsm6dsx: add support to LSM6DS0
> >   dt-bindings: iio: imu: st_lsm6dsx: add lsm6ds0 device bindings
> >
> >  Documentation/devicetree/bindings/iio/imu/st_lsm6dsx.txt | 1 +
> >  drivers/iio/imu/st_lsm6dsx/Kconfig                       | 2 +-
> >  drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h                  | 2 ++
> >  drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c             | 5 ++++-
> >  drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i2c.c              | 5 +++++
> >  drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_spi.c              | 5 +++++
> >  6 files changed, 18 insertions(+), 2 deletions(-)
> >
>

