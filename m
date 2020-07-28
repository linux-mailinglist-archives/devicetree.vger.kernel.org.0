Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F16D12313B5
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 22:15:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728643AbgG1UPV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 16:15:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728590AbgG1UPV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 16:15:21 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1552CC0619D4
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 13:15:21 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id h12so1377842pgf.7
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 13:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=tqZMz16pvW2AijIRQi4zUGCh+M0EN/UmSMDkjaIZOyM=;
        b=agnVKpBKvxL7cmQ2YRR6UlkjTqmr2v7BFp5jUSNqFj4eD46vMXV31Db3meKNfH7BJW
         4KVCWX7y8rKr3SrRZGkHZgVIVAZK6p8Q9b1VZpOQchmHZbx/jXxPnjVyyrBwPtm/NODx
         VlOFom+kFTlw0apOLdcp5w/6hiJ9GbyxcJxj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=tqZMz16pvW2AijIRQi4zUGCh+M0EN/UmSMDkjaIZOyM=;
        b=sT1j+fEa6M+rDpu43ZiXFK8TKyvX+WMStZdHFM/aErfCvH4Juqpuq+CIb1SK9cuqD8
         KTx5SncU3eCvS/v7XRdpzf/tVhn81pVlQUFV4XQrKmxapzaoLTn9zrHqwuX9HNrn4tx5
         dzgF9zpByQ8soJA45Mj/+Nf6oAx1qZ61WqXg90vSuxPAGOqAfQv/dEnI0asfBvVclAmo
         qO9wyP3ZIfJDQdRnS6lhDrD4g/C1Y8tn4qK7LhHzqimMpvldo8qi7fCnGKZ1TJZ3Qxoc
         4kHpyBiLqGfkz0qpK28/hCzxOtpDDRugVIfzUg01U3oQD5b3SO7Zkw0n17GeHjG3WjQ3
         U75A==
X-Gm-Message-State: AOAM530IZ4BP1J3Rafpii+pf36bKhcKPMLuu1l7eVchLuEKVXDpcwZhl
        8mZEMVuOCwEUsGNyc3vEOXAQ7miEhf0=
X-Google-Smtp-Source: ABdhPJy1L3+1VlaDSMLSfdVxBXSlBNoRZxKyEwfJn034n/+sp9DsAfEYTBXzXsBl1zfgDMoSjm665Q==
X-Received: by 2002:a63:f1a:: with SMTP id e26mr26558253pgl.80.1595967320319;
        Tue, 28 Jul 2020 13:15:20 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id v78sm9204748pfc.121.2020.07.28.13.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 13:15:19 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAHcu+VaDBj87stJ9JJkuerJkr8=-g68FhUUnKvfpN8uYaMBUhQ@mail.gmail.com>
References: <20200724183954.1.I2e29ae25368ba8a72a9e44121cfbc36ead8ecc6b@changeid> <20200728151258.1222876-1-campello@chromium.org> <20200728091057.3.I2a1314232ace4323af96f9981c1e1a4f31f78049@changeid> <CAHp75VfOhoJrHEnC_Wh2qnOMX0pT1Jx92B0TFQ5=cfZsTSNSOg@mail.gmail.com> <CAHcu+VaDBj87stJ9JJkuerJkr8=-g68FhUUnKvfpN8uYaMBUhQ@mail.gmail.com>
Subject: Re: [PATCH 03/15] iio: sx9310: Fix irq handling
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        linux-iio <linux-iio@vger.kernel.org>
To:     Andy Shevchenko <andy.shevchenko@gmail.com>,
        Daniel Campello <campello@chromium.org>
Date:   Tue, 28 Jul 2020 13:15:17 -0700
Message-ID: <159596731796.1360974.3913058992312532558@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Daniel Campello (2020-07-28 13:07:00)
> On Tue, Jul 28, 2020 at 12:08 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> >
> > On Tue, Jul 28, 2020 at 6:14 PM Daniel Campello <campello@chromium.org>=
 wrote:
> > >
> > > Fixes enable/disable irq handling at various points. The driver needs=
 to
> > > only enable/disable irqs if there is an actual irq handler installed.
> >
> > > -       enable_irq(data->client->irq);
> > > +       if (!ret)
> > > +               enable_irq(data->client->irq);
> > >
> > >         return ret;
> > >  }
> >
> > Can it be a usual pattern?
> >
> >   if (ret)
> >     return ret;
> >   ...
> >   return 0;
>=20
> I think this way is more readable. The alternative would have to be
> something like this:
>=20
> ....
> if (ret)
>   goto out;
> mutex_unlock(&data->mutex);
> enable_irq(data->client->irq);
> return 0;
>=20
> out:
> mutex_unlock(&data->mutex);
> return ret;
>=20

I think the suggestion is

	mutex_unlock(&data->mutex);
	if (ret)
		return ret;

	enable_irq(data->client->irq);

	return 0;
