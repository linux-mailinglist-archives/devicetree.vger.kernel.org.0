Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 16E04BD27E
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2019 21:18:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730406AbfIXTSY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Sep 2019 15:18:24 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:43213 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730309AbfIXTSX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Sep 2019 15:18:23 -0400
Received: by mail-pg1-f193.google.com with SMTP id v27so1816722pgk.10
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2019 12:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=a7+izJYYosgd7zHjanZYValds7ow3BOFmZCRlJjVnPA=;
        b=iN0dsE6qKEf18ktGqXha+auVSqp1K9xsRtMPakuGHFG5GXMgMn/FjaEvv30rbYUkvc
         KkvVYNIU1IoK1teGbHrMvl62L/bi5bZRkDyCGCT9Tq4N40wmOmir9d15H85r75snX3ZQ
         6ZoK8xU1dvXNRxgB5Wc9prpKH4IMjmwHXXdp226FIHRAHWhlZX2mGv+eypuYusoBhyoP
         +fWKmlso70BGBmLOaR5glrwv+xAWjHOHGQq9zREpORZRVIwGAo7L/AhoB/0gG8mfE9Sl
         rvIikkb0lAcHo+OGd0mgDOgVXdlAW77/eRG0CjgO7Ius8pMvuM60aupsVZ1rEgPI57oL
         LIJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=a7+izJYYosgd7zHjanZYValds7ow3BOFmZCRlJjVnPA=;
        b=suvxsDVJIoM2F8o/Q45y01UCUjFYsE6PeEbL9aIJjcM3ZLKBUfG0dj2aAFGPDoSAz3
         +IgOZZn9ri+2CMa4gUJuQwu8O/diEHPhRdXA+sLm3sLtQe3EyuSNI9c96g6k96IvxNtk
         lajukP4AlfFHK18/pu0CqrcEm9fYarF7YnlNaSO9uKH6ARcibAYOg5Y4702hAKMa7JJY
         yX37JfqPZNiCKjZI4Ppy5tIgouruD4IgtbvftCV2NxshLttza+swm+xutDuRa9DPRxUv
         CaWjPZ241LeZLTPG1fJVhyWBFdU1YDdtFDyrqTwJAw89kaq0zQfLuMXn0ZdwaGMf75ap
         acHA==
X-Gm-Message-State: APjAAAXKPeT7GV/ZZvtDI08TL8pWDjBa6UenEFfOSzqbuJGRC2kYDBG0
        nDTQ0Eq6YJctyJjTC7XumLBThg==
X-Google-Smtp-Source: APXvYqwUtX0FY4xf/0UwDn+yg9UjZNFwrHooHBidGhmXaRY+URNGLcdC2hpL39Xw/wCmWCAaTsx6Tg==
X-Received: by 2002:a62:1cf:: with SMTP id 198mr5251106pfb.31.1569352703005;
        Tue, 24 Sep 2019 12:18:23 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id v43sm4926886pjb.1.2019.09.24.12.18.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Sep 2019 12:18:22 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Oleg Ivanov <balbes-150@yandex.ru>,
        Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH v5 0/3] arm64: meson-g12b: Add support for the Ugoos AM6
In-Reply-To: <1569248036-6729-1-git-send-email-christianshewitt@gmail.com>
References: <1569248036-6729-1-git-send-email-christianshewitt@gmail.com>
Date:   Tue, 24 Sep 2019 12:18:21 -0700
Message-ID: <7hpnjp5wqq.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> This patchset adds support for the Ugoos AM6, an Android STB based on
> the Amlogic W400 reference design with the S922X chipset.
>
> v2: correction of minor nits
>
> v3: address regulator and GPIO corrections from Neil Armstrong (using
> schematic excerpts from Ugoos) and related v2 comments from Martin
> Blumenstingle. Add acks on patches 1/2 from Rob Herring.
>
> v4: address nits from Martin except for the vcc_3v3 node as it's not
> known how to handle the vcc_3v3 regulator managed by ATF firmware, so
> it remains untouched/undeclared like other g12a/g12b/sm1 boards.
>
> v5: corrected some tabs v spaces issues introduced in v4.

Queued for v5.5,

Thanks,

Kevin
