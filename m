Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7BC0144C2A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 21:33:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727895AbfFMTds (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 15:33:48 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:35876 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726370AbfFMTds (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 15:33:48 -0400
Received: by mail-pg1-f196.google.com with SMTP id f21so92252pgi.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 12:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=do2ZI6AB84f51HhCgs64o/OwEByfbyhqfdO3MCEI11w=;
        b=uKaZA9Zxh7dZs0jS87LP/3uLU+Xx4ZfnKYpIumrpHzc+bsYNKjAsjwm4dlWaYMbD7m
         22QjRog6LAoPdR2/G1bQojmdqmL4Ntx9Jz/So2VnLCauxnDP6oA2oTkF7we+4p5fvcQy
         L0ON+ARGO7XZkiS8Pea48mu09SaNhyc4seHQmMiy+mnMxifwi9tYmShnOy5Sh09gfHD2
         Edp/RI1qtnwPJ9vZy5skTF9m7Dx953HC5jThN3FXUXTfmQBXXQtMOhciWDqUygwJ47kG
         2jkywOogcNcI+F+lVU1S2RSHBfR8H4GzBGvhWiJHfjKZdX0ERpswZ9sqhboY1N1i+tZJ
         A+rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=do2ZI6AB84f51HhCgs64o/OwEByfbyhqfdO3MCEI11w=;
        b=Ekfe10X4/fiaZ6nttkbMb/5yWgrgPuWgnLL5v8y29ktJ6HwkucDzbtRLO8X4HxiqeB
         7AqyElwHqFbyd52ny/aNaZIAO6B0yQgT3BfmDLuaxMnn0h9NWb9Q+QmioZkl24PcjESt
         BTXRGYuNROiD5WZA8FuswVm8Ex04NiiwzUTeGAWt+U+LkcZJTh9mBsNEDdm5cZ5pZzEW
         ptAb2uUCJQTLeEYnh4Cgmzq4e5zr1hmhyu/a+EO9xsLtMQX2FYuQIMJ974P7NctxdHoO
         qzdUP4uLRsmUYuCury23gQ1aaQ236AmTVClZSKDZuDwy8v0uCZxt+Cj3pBf9pXDLbw0z
         l6Dw==
X-Gm-Message-State: APjAAAUa3Lo083tILa/sOBl8DAG/ZVjQ4BbAUOTibUhGT4G87j83WRMR
        /m4fZnmzZzIvpl/2Oz6coC6d8w==
X-Google-Smtp-Source: APXvYqxQMYR4H3vojZQSKEgSWAnX0V+23fNF0VDvBBd/zGvF3dlCJJBIKHc8Mt23k45dhtm2gAwWwg==
X-Received: by 2002:a63:2d0:: with SMTP id 199mr31768286pgc.188.1560454427686;
        Thu, 13 Jun 2019 12:33:47 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.googlemail.com with ESMTPSA id 135sm469175pfb.137.2019.06.13.12.33.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Jun 2019 12:33:47 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: sei510: add sound card
In-Reply-To: <20190524140318.17608-1-jbrunet@baylibre.com>
References: <20190524140318.17608-1-jbrunet@baylibre.com>
Date:   Thu, 13 Jun 2019 12:33:46 -0700
Message-ID: <7hh88t46w5.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> This patchset adds the sound card of sei510 board.
>
> Note #1:
> The patchset (build) depends on the tohdmitx ASoC patch [0] for the dt
> bindings of the tohdmitx glue. It also (run) depends on the mpll clock
> series [1] to get a correct clock sources.

Queuing this for v5.3, but it's pending a stable tag/branch from ASoC
maintainers.  If that doesn't work out, I'll queue it up after v5.3-rc1.

Thanks,

Kevin
