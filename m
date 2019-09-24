Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 61FF9BD1F6
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2019 20:45:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2395237AbfIXSp1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Sep 2019 14:45:27 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:38447 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390679AbfIXSp1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Sep 2019 14:45:27 -0400
Received: by mail-pl1-f194.google.com with SMTP id w10so1355852plq.5
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2019 11:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=EhFo8UD0M1x0cqdtAG5xFb+zL2qssucxdSYFDxh8zmY=;
        b=1xmupXIpVn16oiY9jr4zGhx5kz6TQXlcr02odVa8JOgVGMf+tMfTXrZ11PMZaoReLb
         hYj6iOStBNUisW3nFV9mUodYMnQ+78/leA9+rQJOlRfYbseYdFyo0IcTlWvQBjVqHHDv
         +JKCWfmz6kfbILpCdZJRzMhrHeW67Bc1sr3+ScJPF0b5xWb+Rtyz2zWNRR10/AiRL7rM
         UntXuibc/NespIx781IhGF+5Pu16gqIMwG4HKJ1qWCSk5T4jZFN6acjrnUboQ9bPyYBt
         LSCV4cPBKm62JaDU2CpZfMv9WxjrhN5OAdlwUCbNAf7bgInncd727/Kx8+nYtrt/pish
         u5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=EhFo8UD0M1x0cqdtAG5xFb+zL2qssucxdSYFDxh8zmY=;
        b=iwzgEZbEWRKDwSsf2dszkb/AZS03nYRNyF6q0FXO8DlVp2VE8REIK1tHIdugV1VvRj
         hZV91uRgItJem8aIXx89//WY2zyAXY52fKk0ySvsXyFoPyRC+UmVSmCVfCbruG/F51gw
         isWBE0wLOhxCTg7Hvw8OEJsi3mzAhb3m02pPW7aMOuqePjsutThx3i/XBCRbD97bhSyL
         i3nnNGvUISNIQwyoz9Sa47iX9IXfjTmP+lw234MFw53MimbpqPrm8fM7bbDVIgjTyK7h
         KwR5b+W1hgwF4LT7b0lzP4G4cXyOISgtpAXLKaVlwWC4uAJBrn92tCQlQMFake+1YFaZ
         wWcg==
X-Gm-Message-State: APjAAAVnLfiHf7d9nRrFU/X8gXyvDwCHA8A9gtDq+9N1rBq9PlJaT3VW
        FtBJuv6K3QGnwheu6nRdp6ugFA==
X-Google-Smtp-Source: APXvYqw2FWysuvyL9JZR1RFnGjKKxyCsFkomx+Lhz60Ys2dpdPvtdduTewdJCStCGhHY/76y4e2YRg==
X-Received: by 2002:a17:902:7282:: with SMTP id d2mr4582684pll.140.1569350725045;
        Tue, 24 Sep 2019 11:45:25 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id j128sm4824791pfg.51.2019.09.24.11.45.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Sep 2019 11:45:24 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Carlo Caione <ccaione@baylibre.com>,
        srinivas.kandagatla@linaro.org, narmstrong@baylibre.com,
        robh+dt@kernel.org, tglx@linutronix.de, jbrunet@baylibre.com,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: Re: [PATCH v2 0/4] Rework secure-monitor driver
In-Reply-To: <20190731082339.20163-1-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com>
Date:   Tue, 24 Sep 2019 11:45:23 -0700
Message-ID: <7hd0fp7cu4.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Carlo Caione <ccaione@baylibre.com> writes:

> The secure-monitor driver is currently in really bad shape, not my 
> proudest piece of code (thanks Jerome for pointing that out ;). I tried 
> to rework it a bit to make it a bit more tolerable.
>
> I needed to change a bit the APIs and consequently adapt the only user 
> we have, that is the nvmem/efuses driver. To not break bisectability I 
> added one single commit to change both the drivers.
>
> The remaining commits are cosmetic and DTS/docs fixes.
>
> Changelog:
> - Changed patches order to not break bisect
> - Removed non-functional changes (PATCH 1/5) of the nvmem driver
> - Fix gxbb/gxl DTS
>
> Carlo Caione (4):
>   firmware: meson_sm: Mark chip struct as static const
>   nvmem: meson-efuse: bindings: Add secure-monitor phandle
>   arm64: dts: meson: Link nvmem and secure-monitor nodes
>   firmware: meson_sm: Rework driver as a proper platform driver

Queued for v5.5,

Thanks,

Kevin
