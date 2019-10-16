Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5AD49D97B9
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 18:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406439AbfJPQnz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 12:43:55 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:38374 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406391AbfJPQnz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 12:43:55 -0400
Received: by mail-pg1-f196.google.com with SMTP id w3so7701010pgt.5
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 09:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=8zOXZspx/ff3Ozrug4tze/962ZrSUCYsoKHNkx0Z9Gk=;
        b=WSEnOnOcJXVEpXJumHL2VQXVBlhI9HQacG1QdM+77Aj8bQ5NPvpZhTdZDPY9Ek7EWp
         flv5GylfYkqyQH7SekWQHG+EJj7RF0TZ+e74t1KER1iTkzuS2zxNjWEj5/AsiGjjnghV
         qY5DtlA+sMcldJnGMHXjNNH2C8Oh2jrX2HwIWZvffOqssL4iCnpwZlvUCjMNk0zneCja
         oOcDWMmbUE4d1+aNC9WbovW3sMGiT0Cqo44sPrSwL+wAiX2LDoy1BhKWPQO8j4CNVTEL
         JEEWykgSymemea1O2KhYUd1ROH1aomJIsxQ95c/gGaSvYtwGaddkE2m1uAtQ5SuYMSmo
         xtWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=8zOXZspx/ff3Ozrug4tze/962ZrSUCYsoKHNkx0Z9Gk=;
        b=lBddlKHY/39cqcC7vntnuijcDSqNZbN+2swQhq2zJvvkNjHrEuoqwUgFan2B5tccKh
         JfJQVZ8SwofuIq7oMTrzgOzd1PS9S+8VLItj4ZzAZ+X+j38D0hBHCaFyki8OrFO/rsdM
         KbLklbYfvXk00slFCB3o+WgYPgCMmtjtQFQ0wYKvQcSiwsGMyQqlbj5WPZRp+/+E+nk1
         FdimyRYM80N1z/9d29qP1aLoePmaHWv/DTtXJgFh72UhMk0To6mRzYhGub5BTI4th+91
         t7uk7EdyFleE+OOHjHy/kAZYEGWuU5d97ITv2IRg73AGerKzHnauGOXz0oKLhH2qbnY4
         RCWA==
X-Gm-Message-State: APjAAAWzN1perxN1X9Ojk971QcFXqZMujc98jQnepiFxF186sXqBdXlh
        bbxN224PkBlQHuI/HB32cZbAMA==
X-Google-Smtp-Source: APXvYqxjPUoV//tePpS0gP9myPSBYo/ftLbM3UV+aV7H1zkRU9RAhAkUXS/U8RU5wMHB2AlbyXtKMg==
X-Received: by 2002:a62:5ec6:: with SMTP id s189mr46373405pfb.30.1571244234130;
        Wed, 16 Oct 2019 09:43:54 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id n66sm40776772pfn.90.2019.10.16.09.43.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Oct 2019 09:43:53 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: sm1: add audio support
In-Reply-To: <7h7e54hdif.fsf@baylibre.com>
References: <20191009082708.6337-1-jbrunet@baylibre.com> <7h7e54hdif.fsf@baylibre.com>
Date:   Wed, 16 Oct 2019 09:43:52 -0700
Message-ID: <7ho8ygfxo7.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kevin Hilman <khilman@baylibre.com> writes:

> Jerome Brunet <jbrunet@baylibre.com> writes:
>
>> This patchset adds audio support on the sm1 SoC family and the
>> sei610 platform
>
> Queued for v5.5.
>
>> Kevin, The patchset depends on:
>>  - The ARB binding merged by Philipp [0]
>>  - The audio clock controller bindings I just applied. A tag is
>>    available for you here [1]
>
> I've pulled both of those into v5.5/dt64 so that branch is buildable
> standlone.
>
> Thanks for details on the dependencies.

Just noticed that all of these had "meson" in the subject instead of
"amlogic".  Fixed up when applying.

Thanks,

Kevin
