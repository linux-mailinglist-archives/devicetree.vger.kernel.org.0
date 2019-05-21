Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A5788249C4
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 10:08:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726201AbfEUIIF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 04:08:05 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:46209 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726138AbfEUIIF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 04:08:05 -0400
Received: by mail-wr1-f68.google.com with SMTP id r7so17378910wrr.13
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 01:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=06+DCEbyMY34D3BOjzKRvN7V1nIU5XaEGS8h9soAWyg=;
        b=jSm5ZYDHwpEZV6Lzr77c04c2MsvRIb8GM2tdOjIu3a2j2Kuvh1LWiDWnldvzLDlnBj
         HPNkQsMMobx1yQDQdatXHtT/9sX8GU5yKkLkVHTt0+p3194e/HDjg1nkNJ7XKxTEGBga
         EcdX0Gfgcbm7mFDeTcViHTODqK/m48MVMH4N3DoATpMRcUxtLdFW1jVevWos//50lGmt
         0K2J4UrYGQVYEM9PI67EJdGFvRMoJKYo7J4Ki8Pz132sHFpC62odL2CfXsm2CARdgey7
         WOCYjTdhVfor+T3w+k4roiYmD3KjwBpH4OaDtikgsMElU8vUvadU2JYcpC3mlr3miOh4
         +NTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=06+DCEbyMY34D3BOjzKRvN7V1nIU5XaEGS8h9soAWyg=;
        b=Ld6QsuBJF7jyvyidHFzSSq/h9PtwUl3mZ0xk44mRjDhjP7vWuC6FihwrEcxXd951i1
         V3CaroMOsGjKkvjc0pLcKx9vy/+P6pMf1AR83ArtNlL1N0dDRo53iB1ghaWDYnjJiEJX
         Ke8CQaYPPadsm2RwG6K3onjdPdFkJjf4jSlKnAGUknINWZFP59Ni+5I5iOdi76a1z0M9
         1b5ZL6XPCr81oRv4PwjCDEGMDrPaiG887esEDX8EV26l2CagtnB/VthQQTqBdb3z/tja
         lFIwhybjjstglaZqhIw28jWw2yEJ8VcuSvsAUgA8W0yQr9mYj1blKGfN/mYJXaSf4B+p
         8m3Q==
X-Gm-Message-State: APjAAAU+Mz+hL7M4g2D9b7uImTSZUriMtv9Bn1pR6+XqbXlAk+6erIQc
        9IF9Hyv4iW6Lmq3WVejjxOmxsdsFZHU/CLsluiCdDA==
X-Google-Smtp-Source: APXvYqy1XwQ/YD98w6cEQSPMGYKJYFFqtxnEz9VURWZ8UkMaYFj8x70GVpHFVifwBScAIxHO6A61uC4G2dXRZMxc1kg=
X-Received: by 2002:adf:dd51:: with SMTP id u17mr44688507wrm.150.1558426084074;
 Tue, 21 May 2019 01:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190520194353.24445-1-martin.blumenstingl@googlemail.com> <20190520194353.24445-3-martin.blumenstingl@googlemail.com>
In-Reply-To: <20190520194353.24445-3-martin.blumenstingl@googlemail.com>
From:   Maxime Jourdan <mjourdan@baylibre.com>
Date:   Tue, 21 May 2019 10:07:53 +0200
Message-ID: <CAMO6naw0Fe9g4pTODFs8TfcWBWO8jdf2EOB2ZAhyebqmfMWg9w@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] soc: amlogic: canvas: add support for Meson8,
 Meson8b and Meson8m2
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 20, 2019 at 9:44 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Maxime Jourdan <mjourdan@baylibre.com>
