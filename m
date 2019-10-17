Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AD449DB27B
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 18:35:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392363AbfJQQfn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 12:35:43 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:41428 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732537AbfJQQfn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 12:35:43 -0400
Received: by mail-pf1-f194.google.com with SMTP id q7so1986503pfh.8
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 09:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=n6iC9aFIm7u0dU/zNM/QcsEIHkk1HFiJjgCYQoT2Mo4=;
        b=rLw/zBLGb832jZnhC2XQDPu8GmL2TDqIyAqgKiHS1bkVHYZkpv31ojFkQe9yoiJosu
         OATsID2jjJR5fxB+f27xypsvogvi6NjOdJuEY7WyxCWVO7QiPmERQP2+3LNeZNHKeyYy
         U22+IPML7CXzC6MXwg06aYBKwbQvWV1aigUizyhhQR+EVGzHw+1AhnxJoW8lCCKcuziZ
         eCRAX7bq4dZl7sJRffrCj8kB0V6/MnbvHkNqZ1ZUfVoC4MD5M4rHy2E4APOoapoH4CAg
         2xNy2mueNekGx0CHPQDYJUVPgXpm0OnuDNHVMnK6kDtFcEwWHo03utLEe0wjkTK/Sp3/
         oztg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=n6iC9aFIm7u0dU/zNM/QcsEIHkk1HFiJjgCYQoT2Mo4=;
        b=K3DJlV1dSdiVl0KViXHLRNjfAXTioiNG5LmUSIPGifLPSR+bGIGj/CO/+SNiGMtUQ2
         aa25viDHnnZg06++YTKzukr77IOI4TRoV3Gf3LGactaaK9Ikd6dzEknGnEfeSmkGQiGh
         Ard6sbGf02sH3M+FT4UV897OtM0XNdPeoG9BwxHl1B8Xceptajaao0ia/WkycU56WVBp
         Q7OrB2N3ViNr2qE+/JHeZYxzil5p+AHm/dtjDsnxqnzfhnRxwS76qcyZ9V5ZwMkUWJ8N
         3tLqd5vOJk/p5VvPDlHyuwRkuhAlgCs5cwQQ6wVYu806J8GEeNwtcIOBzu9EOs5i7r24
         vDzg==
X-Gm-Message-State: APjAAAV4osOjnF1aKQnoYnrUjGk0ZHdU9Q4M7frHW5QqOrxcrgUKdAkw
        z/aGVI0II/J40ITSXsDd7Jd1ag==
X-Google-Smtp-Source: APXvYqx8QHZBP4DAVpyoFFyUNQRbXJjtCE3kG8SFGsa5w0UJekNJKz/9aCD9K0RXSuH2lXuA6W7rnQ==
X-Received: by 2002:a63:82:: with SMTP id 124mr5391099pga.112.1571330142686;
        Thu, 17 Oct 2019 09:35:42 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:d8f2:392e:5b44:157d])
        by smtp.gmail.com with ESMTPSA id j10sm3548870pfn.128.2019.10.17.09.35.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 17 Oct 2019 09:35:41 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Guillaume La Roque <glaroque@baylibre.com>,
        amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v7 4/7] arm64: dts: meson: g12: Add minimal thermal zone
In-Reply-To: <7hsgnsfxpx.fsf@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com> <20191004090114.30694-5-glaroque@baylibre.com> <7hsgnsfxpx.fsf@baylibre.com>
Date:   Thu, 17 Oct 2019 09:35:41 -0700
Message-ID: <7ho8yfba8y.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kevin Hilman <khilman@baylibre.com> writes:

> Guillaume La Roque <glaroque@baylibre.com> writes:
>
>> Add minimal thermal zone for two temperature sensor
>> One is located close to the DDR and the other one is
>> located close to the PLLs (between the CPU and GPU)
>
> nit: subject should be "arm64: dts: amlogic" (not meson).
>
> I fixed it up when applying,

I got it backwards, this one was right, the other ones with "amlogic"
should be "meson". I (re)fixed it in my 'v5.5/dt64' branch.

Kevin
