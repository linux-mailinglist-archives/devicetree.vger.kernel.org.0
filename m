Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 61AE0418D1
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 01:21:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392046AbfFKXVg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 19:21:36 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:39471 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390115AbfFKXVg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 19:21:36 -0400
Received: by mail-pf1-f193.google.com with SMTP id j2so8392999pfe.6
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 16:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=6R5z8ssQN4qiGOh66dhDcOUdNqdVqqfHxJdMHqWe+6I=;
        b=UjB91fpfYVxjokEfklWaFtD6ieDpdjzJUDy2doUa03GNp+vrleOmMXp+3L0bglIZl4
         QfrTlKqAdgOa5u7GEqHAkY9gmpQ54qirFCrJxZWOgzvMbYy22//uWOtY+fnejFcy+Pgi
         wpqqoezOaW50ME7qgQhMeFk4SZ9XV4cj57rBGRy0aPoUjK27dKpiaBbUKmcpgBGsqms7
         oL9S/ldKM4kXj0n2a7K201mjCpdNItVSQP/41iYU4GTTjUNkTXU3VNz+oaKZNE9FUdmK
         w8B7B5Oxb7YfbEq6roMJ1EeFl9ufp8uFWJ8t8Dg158x9a/DFLOIjJ51iSOWbUGVj8kT/
         2Y/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=6R5z8ssQN4qiGOh66dhDcOUdNqdVqqfHxJdMHqWe+6I=;
        b=LV2cO2rQKl+WGv+YKZ62rqCiLBba6egd1gI1HpwKIMNvTBdF4RCPYVu27hlSy4rZ6j
         fqmo5ymSR/LEZSkXbXHPgiMcimn1A7mCnDVQhd3WcCImzF0r/0N68y3tacJnnP07uso8
         NEBbrbROIjNQszAE+kPyqbuJrm7Jc7N/Pl82eBO9JyAJQTpSWBF4TdE7mLq9T2psTDh5
         CpvvKY4G+Iu0230BonZEZadjUb+WHPGnNU9MU/xTbD4cavkttsanEqC52qagOwW80MOO
         d5ytl9P1Ygbpb+ddRQiuxwHMgdHQJOGiaVORtwVWWoy58C4Ij+s7rE0uvogcAN21L5I0
         6itA==
X-Gm-Message-State: APjAAAULjgs34+Zr3Rfr5poWM4G2liEoyQ1fyEr8HA63cFrtj8VAIFza
        0BcJwLhbmdl0uqjSzPso5FnMxQ==
X-Google-Smtp-Source: APXvYqwJJDMRep94gko5n4JSC8Vapq9gZn4ceppzlT2Q9WhxcgWkcdYxSrkQpzkU6piKWsKdi83mFQ==
X-Received: by 2002:a17:90a:9b88:: with SMTP id g8mr3482693pjp.100.1560295295171;
        Tue, 11 Jun 2019 16:21:35 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.googlemail.com with ESMTPSA id 30sm1795537pjk.17.2019.06.11.16.21.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 11 Jun 2019 16:21:34 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: g12a: sort sdio nodes correctly
In-Reply-To: <CAFBinCC4g1WVFyTgQrDUcYs13HDYp7Ggn=eSQ+X=LnpEoGg--w@mail.gmail.com>
References: <20190610124931.17422-1-jbrunet@baylibre.com> <CAFBinCC4g1WVFyTgQrDUcYs13HDYp7Ggn=eSQ+X=LnpEoGg--w@mail.gmail.com>
Date:   Tue, 11 Jun 2019 16:21:34 -0700
Message-ID: <7hblz34sjl.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Hi Jerome,
>
> On Mon, Jun 10, 2019 at 2:49 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>>
>> Fix sdio node order in the soc device tree
> good catch, thank you for fixing this!
>
>> Fixes: a1737347250e ("arm64: dts: meson: g12a: add SDIO controller")
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued for v5.3,

Kevin
