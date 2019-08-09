Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 23FD588626
	for <lists+devicetree@lfdr.de>; Sat, 10 Aug 2019 00:39:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728188AbfHIWj0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Aug 2019 18:39:26 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:39047 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726804AbfHIWj0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Aug 2019 18:39:26 -0400
Received: by mail-pf1-f194.google.com with SMTP id f17so42779531pfn.6
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2019 15:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=R8IVqh7wNpqQDfIMMC12abfOlWhh3Xl6VzDVWeyjpqU=;
        b=koHCpbhas47m+8kubE8D34Xr+WHGo4wP8w8VF91CC3jXukweA2wnDrgcCudp6FO4Au
         ++SgN3LzVEBJLekmB2wCZN3rKB2qoPxFD6cNXexR7hyMO8CJheGlcqshx6VgbQWTPlQP
         RCB0kgSU397FUL8ELhq9uWiMNghiaUx1kG8m9GKtdtxU0lqL38CC5hPofaLjXwRPvRMq
         97R4iHo8o9xR4i+YStWSdOOzuLid6XJAoJQMxVsvfNvayZluDAwAhg2zb1CGcYYAGxEd
         MO7M5rlDnn/qmIOI7CkelajgZ9JklTuNCnnDsl05oIuP1xOGDf/c6w+NAYkIe9KKfMm3
         fJgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=R8IVqh7wNpqQDfIMMC12abfOlWhh3Xl6VzDVWeyjpqU=;
        b=Q4t04/f+7D2JMmxuzBGXySaV85rbGMTJNafU3ZQUlbR3DyYOb1qairRFZBWDDAopNV
         TOYp1imPTaH5C6wQVEJmzyr0/MyMwsSFHCDxJoCqFvVegMIsL1O/K4dnfnkxlVNO5YuE
         o9LgqpFbARnYOVNza8GCVQ2KX3vk4WPY+BMs2I3iOotcGk5scuaIieby76ROMv1S0qb3
         8w79U4WcUN6+qvhDotkIFPM0lSssmM1p6DYffDHaAVFFTGGXfvkPOxjAmp31u4e2WW2t
         wAZgbF3Dh/m2sBrElEWUB/03O4UT28IXSdaMl0VQ95LBZFKq+E1Y1xBX2ERPYHir+Yhp
         O/Qg==
X-Gm-Message-State: APjAAAVlPtuj4q4GS8uqXpPno+d10xBdtp4+9VCDB9SCRdKEOfNEPEqp
        U5BUe0d0ckRCHcyJs2coQUg5gQ==
X-Google-Smtp-Source: APXvYqzABUyKC0jSvgE7WOPJUqmUvpdDD6GCn2QJTRwTDXEgpqNw+hfWHxGIIm/8tVEh0rnWuRjffQ==
X-Received: by 2002:a62:ae01:: with SMTP id q1mr23332658pff.219.1565390365097;
        Fri, 09 Aug 2019 15:39:25 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:b873:707a:e893:cdb3])
        by smtp.gmail.com with ESMTPSA id l31sm143779758pgm.63.2019.08.09.15.39.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 09 Aug 2019 15:39:24 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: amlogic: fix x96-max/sei510 section in amlogic.yaml
In-Reply-To: <CAL_JsqJ=dUX-bPa06KxJowf_3GM2-mPwm4U1KyTXyH0thA1pvg@mail.gmail.com>
References: <20190806075520.14652-1-narmstrong@baylibre.com> <CAL_JsqJ=dUX-bPa06KxJowf_3GM2-mPwm4U1KyTXyH0thA1pvg@mail.gmail.com>
Date:   Fri, 09 Aug 2019 15:39:23 -0700
Message-ID: <7ho90y2cbo.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rob Herring <robh+dt@kernel.org> writes:

> On Tue, Aug 6, 2019 at 1:55 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> From: Christian Hewitt <christianshewitt@gmail.com>
>>
>> Move amediatech,x96-max and seirobotics,sei510 to the S905D2 section and
>> update the S905D2 description to S905D2/X2/Y2.
>>
>> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  Documentation/devicetree/bindings/arm/amlogic.yaml | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> Acked-by: Rob Herring <robh@kernel.org>

Queued for v5.4,

Thanks,

Kevin
