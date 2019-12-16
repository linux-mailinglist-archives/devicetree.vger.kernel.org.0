Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A3E2011FF6F
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 09:10:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726863AbfLPIKF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Dec 2019 03:10:05 -0500
Received: from mail-vk1-f195.google.com ([209.85.221.195]:43913 "EHLO
        mail-vk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726788AbfLPIKE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 03:10:04 -0500
Received: by mail-vk1-f195.google.com with SMTP id h13so1359980vkn.10
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2019 00:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OaW5Hnc1v0arti4eZTySZ/4BhiMhUg3N5njmRM9tic4=;
        b=y8bMJA3mew2fcZQ7cpXVf/KhayFi/B2k/6eZ6N9Sv26pXuVqEg0g0meW5SHvNxQfq1
         CXwOdlE68eobeKxZqVXVuPhvmAKrGBZ00op1yOHOqf2RzzZdbivN1O9T7iqMgHbtag1E
         VwmOxqjG6r1lXxi/Bd4ob/QiGnbJlx+9Lu8ssLMLyoKWTFehEF3qpaCr65WL/1kTblAG
         9beDIfbJ4JyuJkm7MsuQyUcsPH+1zGPW3RNrZr2X6/HicmoX3P81W77kszgcHAAcSs8G
         McuF9QkoLFHowla+BmUpoKkQvBWQlDRfJ3F6f+bUotqCHKyHtS6h6fzgLXT6tDAI0Da1
         FeOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OaW5Hnc1v0arti4eZTySZ/4BhiMhUg3N5njmRM9tic4=;
        b=G5UOffZeZL8L75HJrj+p83qaF8UYn1OTD64vSuRB4zWg8qHlh7ay1gBw+6ZKozK90J
         DLQbpFcb6VLF1/RJpGon5x5hr6BlQfcVLWQEcnXPK6FxbGOQu6w1GnYCktX9FH0bmMEY
         fu+s92pO6pD1KGvLYNA4uz2SxNq1Dq7RI+vWdxbYjvg+3ymoRudTgzqKBSNb0bwE8YAs
         M3yqu4kgLofWD8iThwP8GA0Knz5t0tnk8QfhyUIMkGsarvkCGgdzE3PqLki09DSowTRW
         weFv5dv0/o7qaUsmnQOcgnn+hLlvip5rNXN3PcuJ0OdfpFUVWolTtW7nl/kysnLu0cZo
         /FZA==
X-Gm-Message-State: APjAAAWTvdQWvSFNFBeTXOgEINa3W9imxMAol5kbf4q28vdPwHdYlWcp
        c6hufVznut9IMo5g7CwFqZT4C3kfoP/k+WPnNQtUvw==
X-Google-Smtp-Source: APXvYqxrAb1mbxQGpITUr96izDI9QHkdc32NxrkBD2ZJlXCzk+6QUM2DiUNw2b1ZYAJSZRzpOYold++C0qlU8ALpepg=
X-Received: by 2002:a1f:add3:: with SMTP id w202mr1458047vke.30.1576483803676;
 Mon, 16 Dec 2019 00:10:03 -0800 (PST)
MIME-Version: 1.0
References: <20191210154157.21930-1-ktouil@baylibre.com> <20191210154157.21930-3-ktouil@baylibre.com>
In-Reply-To: <20191210154157.21930-3-ktouil@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 16 Dec 2019 09:09:52 +0100
Message-ID: <CACRpkdZPO+nBA=H0qJUiSq2iA0BDg=n3Ez5wPgnrtLc3MYdpJw@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] nvmem: add support for the write-protect pin
To:     Khouloud Touil <ktouil@baylibre.com>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        baylibre-upstreaming@groups.io,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, linux-i2c <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 10, 2019 at 4:42 PM Khouloud Touil <ktouil@baylibre.com> wrote:

> The write-protect pin handling looks like a standard property that
> could benefit other users if available in the core nvmem framework.
>
> Instead of modifying all the memory drivers to check this pin, make
> the NVMEM subsystem check if the write-protect GPIO being passed
> through the nvmem_config or defined in the device tree and pull it
> low whenever writing to the memory.
>
> There was a suggestion for introducing the gpiodesc from pdata, but
> as pdata is already removed it could be replaced by adding it to
> nvmem_config.
>
> Reference: https://lists.96boards.org/pipermail/dev/2018-August/001056.html
>
> Signed-off-by: Khouloud Touil <ktouil@baylibre.com>

This is consistent IMO, we just specify that WP is active high
as in "when it is high, it actively protects against writing", so:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
