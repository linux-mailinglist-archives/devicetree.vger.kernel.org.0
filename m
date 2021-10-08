Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 070EA426B75
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 15:08:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241539AbhJHNKD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 09:10:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230243AbhJHNKB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 09:10:01 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7291CC061570
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 06:08:06 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id j21so21219495lfe.0
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 06:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LZ0YuII6022XmWR2aBHQEp9O8Cr/uOmN35lBiBjTAw8=;
        b=dK/SCa/aTRq38+aKyRi5kh3z9ROGnCnNdz3PgQDSv3X3O+n1oKs5Jo41UMeWAV9mc8
         iPzUj+kl9S3vz42QCyPJr6+m4uXpmb6ucup4mF1r+gWOGXBLKAFKRA5G17GY9v+ZruSg
         LUQobfv4fZS+YtnY2x7QQEo/IWVSPzlRtrCV084kyJKgCGERCS+arRragIVhGWwHL1Wl
         deZ3PVY3KPqJHygEszy1+svbHa7XRyeDjBCsDXM80aqgfhDGpoYVLC22FrEmx9f9Jfjr
         Qq848LfHXuFr6l4Wt4O5YvojGTkCgpvTObjM/deiRP3HgAfA+6+KegPc0yov7XqmdiDD
         yt3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LZ0YuII6022XmWR2aBHQEp9O8Cr/uOmN35lBiBjTAw8=;
        b=HFu3JS5O9iVbXY0KOIo85XIsrmJ8TP/fnEc5h5t3NEAb02qgV+ZzkE3T+eHisFXeZ1
         wdYVIQ+3Sy8hAWIguASUX1m61ZRxZu/OM3p33OPOQ7fVcce57qj4d9Lv/CigBpWaHyLg
         RrNhnfZ9tTVSk1Iya48ESdw3aqsv7CsegE38rYVZLYv/7l0KzXVrMG1guNGUrxuDK+mz
         RJ7dHOiqEMZaGpzN/+Ew3U+3N5KthUajGnVlSbUvFMZbK9IglMUibhHU7GYhm1viLDc/
         OY1EGv8UXI797yiuiG8csAzC2Vmev/aAkBNxD7deM5cOkvGjwV6tTTrUaWJ4pqYfaILd
         vOLA==
X-Gm-Message-State: AOAM533LF3CbruRDsG7Ao+3yqraS5gkxFfwZWED6EcJzHnmN19fzsXHp
        a+fAuIZcfeeMQfaPnxICLanH6fkJRpMqrw2GvyLwRQ==
X-Google-Smtp-Source: ABdhPJx6fOBDOYeFN7nAZx26g7NM5ePjbl3SxlqSp+KL4I60dXzEcNDUaeVHuPI/S3dsvMBTo3Xeaf8EQ47u7op584s=
X-Received: by 2002:a05:651c:1792:: with SMTP id bn18mr3627038ljb.521.1633698483612;
 Fri, 08 Oct 2021 06:08:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210921004627.2786132-1-osk@google.com> <YUzzjYMwNKwMFGSr@robh.at.kernel.org>
 <CABoTLcRpSuUUu-x-S8yTLUJCiN4RERi2kd8XATP_n3ZTRpAWDg@mail.gmail.com> <CAL_JsqJ+hqKfLDzbMpzPks+wJaNuwU6kodqnqWjkOb8aDf92ZQ@mail.gmail.com>
In-Reply-To: <CAL_JsqJ+hqKfLDzbMpzPks+wJaNuwU6kodqnqWjkOb8aDf92ZQ@mail.gmail.com>
From:   Oskar Senft <osk@google.com>
Date:   Fri, 8 Oct 2021 09:07:47 -0400
Message-ID: <CABoTLcTTphA4Kpi-qbpUkX4f_V4NjhDv3_vVk8UNgvWfnKVOYw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: Add nct7802 bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Linux HWMON List <linux-hwmon@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob

> > > > +            temperature-sensors {
> > > > +                ltd {
> > > > +                  status = "disabled";
> > >
> > > Don't show status in examples.
> > Hmm, ok. I found it useful to make clear that a sensor can be
> > disabled, but maybe that's just always the case?
>
> Yeah, this case is a bit special. The node not being present also disables it.
Oh, I didn't realize that a missing node defaults to "disabled". What
I want to achieve is that if a node is not present, we don't configure
it. The reason behind this is that the HW provides a mechanism to
configure itself at power-up from a connected EEPROM. In that case
we'd still want the list the nct7802 in the DTS, but without
configuration. This effectively is the current behavior.

From what I understand from [1] and follow-ups, having the extra
"temperature-sensors" level is actually not what we want here and I
proposed a different solution in [2].

On that background, I'm wondering how we could have compatibility with
the previous behavior, where the individual sensors were not listed,
and just defaulted to whatever the HW came up with, whether that was
power-on defaults or loaded from an EEPROM.

What the code currently does is to check for the presence of
"temperature-sensors" and only attempt to configure any of them if
that top level node exists. This enables backwards-compatibility.
Going forward, I would have done the same for sensor@X and only
explicitly enable / disable the sensor if the node is present. If it's
not present, I'd use the power-on / EEPROM-provided defaults.

Thanks
Oskar.

[1] https://lore.kernel.org/linux-hwmon/20210924114636.GB2694238@roeck-us.net/
[2] https://lore.kernel.org/linux-hwmon/CABoTLcQYHZbsgzXN7XXKQdDn8S-YsuE+ks9WShAEKcBJojEfcQ@mail.gmail.com/
