Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A2F674B292
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2019 09:04:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731039AbfFSHEO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 03:04:14 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:39304 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725892AbfFSHEO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jun 2019 03:04:14 -0400
Received: by mail-pl1-f194.google.com with SMTP id b7so6804087pls.6
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2019 00:04:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=PbYeBHsXCZa7rfwxfeGbM1ofQD9jWLYTMyvYxIoxevc=;
        b=PYNn/GNILWTXQixS0j+NxbLAF6z0fwm/Fetz5fhzRvOPI9HaK8+lve4ch3ntANwWL2
         ZwIpiNJNKIS/6ZI1NfKT1it9BBoCQF4zb0R53+g48qD7k+j596lRN0/DozpW4lINjoKN
         703syOKkWrx6DIm4V8WDepc1mDcu5I4VUp4LXY6G+sK48GHA5ogH+3S3sir5KbZZIrZo
         KmkqpIQdEMDmWEP/xixvamrq2lSDmTTDowls0RdyKezDICpC8BcJ3fYYSWwgOvd6tIkH
         WB6LZW8hxIXPEfT8ewF/3CIXApVC89Ys0syVDbJtaa/tJXQP/gJ6nF8UqkXIfVyqvtOB
         yVgw==
X-Gm-Message-State: APjAAAXRZT8UP9aSErRX+48ZiOOTcsfIeGKEho5tuwlL7wgV6MGCSYBP
        KU4v26vR7pMXHk6ev06LLOdGyg==
X-Google-Smtp-Source: APXvYqy+pIFCp1pdmlOYEhY+tkWW1f8ElGIIEfuWVp0uAyCklawr9uR1wjJDEfCeh8fUXLizyuYroA==
X-Received: by 2002:a17:902:848b:: with SMTP id c11mr95273759plo.217.1560927853629;
        Wed, 19 Jun 2019 00:04:13 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
        by smtp.gmail.com with ESMTPSA id 125sm16255713pfg.99.2019.06.19.00.04.12
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 19 Jun 2019 00:04:12 -0700 (PDT)
Date:   Wed, 19 Jun 2019 00:04:12 -0700 (PDT)
X-Google-Original-Date: Wed, 19 Jun 2019 00:02:47 PDT (-0700)
Subject:     Re: [PATCH 1/3] arch: riscv: add config option for building SiFive's SoC resource
In-Reply-To: <1560799790-20287-2-git-send-email-lollivier@baylibre.com>
CC:     Paul Walmsley <paul.walmsley@sifive.com>, lollivier@baylibre.com,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, khilman@baylibre.com
From:   Palmer Dabbelt <palmer@sifive.com>
To:     lollivier@baylibre.com
Message-ID: <mhng-57108556-f1ec-4ff8-a6a0-98ddfee8232a@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 Jun 2019 12:29:48 PDT (-0700), lollivier@baylibre.com wrote:
> Create a config option for building SiFive SoC specific resources
> e.g. SiFive device tree, platform drivers...
>
> Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> ---
>  arch/riscv/Kconfig                  | 2 ++
>  arch/riscv/Kconfig.socs             | 8 ++++++++
>  arch/riscv/boot/dts/sifive/Makefile | 2 +-
>  3 files changed, 11 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/Kconfig.socs
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index ee32c66e1af3..eace5857c9e9 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -94,6 +94,8 @@ config PGTABLE_LEVELS
>  	default 3 if 64BIT
>  	default 2
>
> +source "arch/riscv/Kconfig.socs"
> +
>  menu "Platform type"
>
>  choice
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> new file mode 100644
> index 000000000000..60dae1b5f276
> --- /dev/null
> +++ b/arch/riscv/Kconfig.socs
> @@ -0,0 +1,8 @@
> +menu "SoC selection"
> +
> +config SOC_SIFIVE
> +       bool "SiFive SoCs"
> +       help
> +         This enables support for SiFive SoC platform hardware.
> +
> +endmenu
> diff --git a/arch/riscv/boot/dts/sifive/Makefile b/arch/riscv/boot/dts/sifive/Makefile
> index baaeef9efdcb..6d6189e6e4af 100644
> --- a/arch/riscv/boot/dts/sifive/Makefile
> +++ b/arch/riscv/boot/dts/sifive/Makefile
> @@ -1,2 +1,2 @@
>  # SPDX-License-Identifier: GPL-2.0
> -dtb-y += hifive-unleashed-a00.dtb
> +dtb-$(CONFIG_SOC_SIFIVE) += hifive-unleashed-a00.dtb

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
