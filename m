Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DBC48DB207
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 18:11:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2440445AbfJQQLw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 12:11:52 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:33890 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405983AbfJQQLu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 12:11:50 -0400
Received: by mail-pl1-f196.google.com with SMTP id k7so1362595pll.1
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 09:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=wqUCKXUJo8X5AAnTpFmKsNohxpW+m6dhYvogWfd9F4U=;
        b=vLPVBc0jLKrHi5fVflv9YxU/hVeu/thLp/A8Y8zkskX6Ye5Dy5BmCgU3KC62KpH5UH
         51cd+d34DJAoNncm6/3zAa9GnGflQHLPvRvBm3tMsYg5p7bBWqWsyg+oDbz8kfaC1uJ0
         JYm8MiUvFwitfQfmeZmHcysj4jHd7g9nj9kDP66XDTCZybnLhlVKdSPQuuS6xmLmevIz
         dcphuhkju0GyADHd3MBg0wPM1M3B89A1FF+glmpcimwLNMBCm1CWAqk6+5IcSY63yzN2
         M7+f8NEN+zuoAvlR/dJRptbELXTr3PAx+hA2K9iHhVtMouQnQGdPTynkkPJ2r1DqKw5c
         vMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=wqUCKXUJo8X5AAnTpFmKsNohxpW+m6dhYvogWfd9F4U=;
        b=lzlCfWNlG6Coanhj8VuUqZajGyRWDfXBhEF80j5xupHxRhLitdxmKUyZ9fXJUSrjLW
         Ocli/4MHQMaGJXEwJCBFs2oRD2MNpvfF+kTMKKxzgJ6UXrFL0kPzaYgxRdcqM1FZbL1n
         Yer20653yK54Q+NFRWTeN+CEfc/71n292cYHtI6ZnX6dhZqGWmZBaqljAvJaWPtE8jr0
         ejtrUoFOmaiuG1OyaUhdx4EHqGrA7eYO2Sr/MbBRJf5+K/LdrnrzB4hatPamjgMvscvz
         3Zo3vobIyGCxcASfFHtQ/dtg1VLaJ/11hc/l4fxc7s7hhLKT7dP8/9FvzC7nS5dddR4w
         LZDw==
X-Gm-Message-State: APjAAAXRssog8MLnW554pIPKHU9eZlM8HF9/Nt70aNxpsX0/doCRI8i5
        qQ7PufuG2ahf68LLEEQRikwpTw==
X-Google-Smtp-Source: APXvYqw6QWneFJB+QPd5Fr8J5Si4FPeSBOTzKJY8p7VwP6wPLB9npxHWIpL+GLPUVWu+FaDir8cNQg==
X-Received: by 2002:a17:902:9a84:: with SMTP id w4mr4790832plp.186.1571328709262;
        Thu, 17 Oct 2019 09:11:49 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:d8f2:392e:5b44:157d])
        by smtp.gmail.com with ESMTPSA id e3sm2578093pjs.15.2019.10.17.09.11.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 17 Oct 2019 09:11:48 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: sm1: add audio support
In-Reply-To: <7ho8ygfxo7.fsf@baylibre.com>
References: <20191009082708.6337-1-jbrunet@baylibre.com> <7h7e54hdif.fsf@baylibre.com> <7ho8ygfxo7.fsf@baylibre.com>
Date:   Thu, 17 Oct 2019 09:11:48 -0700
Message-ID: <7hsgnrbbcr.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kevin Hilman <khilman@baylibre.com> writes:

> Kevin Hilman <khilman@baylibre.com> writes:
>
>> Jerome Brunet <jbrunet@baylibre.com> writes:
>>
>>> This patchset adds audio support on the sm1 SoC family and the
>>> sei610 platform
>>
>> Queued for v5.5.
>>
>>> Kevin, The patchset depends on:
>>>  - The ARB binding merged by Philipp [0]
>>>  - The audio clock controller bindings I just applied. A tag is
>>>    available for you here [1]
>>
>> I've pulled both of those into v5.5/dt64 so that branch is buildable
>> standlone.
>>
>> Thanks for details on the dependencies.
>
> Just noticed that all of these had "meson" in the subject instead of
> "amlogic".  Fixed up when applying.

Ignore me, "meson" in the original is correct.

Kevin
