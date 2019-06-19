Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 840444B296
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2019 09:04:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725854AbfFSHEW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 03:04:22 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:44310 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725946AbfFSHEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jun 2019 03:04:21 -0400
Received: by mail-pg1-f193.google.com with SMTP id n2so9098880pgp.11
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2019 00:04:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=GRtGy7EtU8jAUy4yjm+riLlSPb0h7m/0LVZFMRonxGc=;
        b=NXdPySl+m5yFwt23PdZMHXLG0lRDRBkcZ9sj/4cZZZgOGw4fvlFnOv31H+/hLzAXhs
         LZcghMwbBBCKFy1K6LyvkhNUiEIEuSYeO63LhJP3X9rEd2aP5viMegdOJ4R1S3acV1H2
         0lMPGfyVXcIMh3qVlehZAPVpMeW+BUQWgj87adVC8x/deRGuDiqiAirs6rwQmt2KjGhU
         9Ewo70XfQw38WwZMTPMosRli0oN/6oEAheHqncRPE0m9F/fzbLStvCz8Cl//PASNfwGh
         CEe1Bhvp4uj+BzZQpS6HanuUzhaGVv2/zyRvpVoyo93PiYbfmT0d3kQkS6v8dJWC38KA
         Nw5w==
X-Gm-Message-State: APjAAAXgCpyVZA2tmCL0Fh91sxp4qMi0ZSn4YPqxHtEDjgPnfjgr6JWS
        xtHtoRRvESbFVmgc5ULuJB9jLg==
X-Google-Smtp-Source: APXvYqyRdGXM+Smc3hV/EoxiTjkWKnX1cbCHAGS/7j+K5uF7RUjeUIGPuiQ6LZuMklZ2vjFNydYcfA==
X-Received: by 2002:a63:5b1d:: with SMTP id p29mr6212374pgb.297.1560927860195;
        Wed, 19 Jun 2019 00:04:20 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
        by smtp.gmail.com with ESMTPSA id v23sm17622559pff.185.2019.06.19.00.04.19
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 19 Jun 2019 00:04:19 -0700 (PDT)
Date:   Wed, 19 Jun 2019 00:04:19 -0700 (PDT)
X-Google-Original-Date: Wed, 19 Jun 2019 00:03:34 PDT (-0700)
Subject:     Re: [PATCH 2/3] riscv: select SiFive platform drivers with SOC_SIFIVE
In-Reply-To: <1560799790-20287-3-git-send-email-lollivier@baylibre.com>
CC:     Paul Walmsley <paul.walmsley@sifive.com>, lollivier@baylibre.com,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, khilman@baylibre.com
From:   Palmer Dabbelt <palmer@sifive.com>
To:     lollivier@baylibre.com
Message-ID: <mhng-e248d181-8676-4355-9825-d06049606d85@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 Jun 2019 12:29:49 PDT (-0700), lollivier@baylibre.com wrote:
> On selection of SOC_SIFIVE select the corresponding platform drivers.
>
> Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
> ---
>  arch/riscv/Kconfig.socs | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 60dae1b5f276..536c0ef4aee8 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -2,6 +2,11 @@ menu "SoC selection"
>
>  config SOC_SIFIVE
>         bool "SiFive SoCs"
> +       select SERIAL_SIFIVE
> +       select SERIAL_SIFIVE_CONSOLE
> +       select CLK_SIFIVE
> +       select CLK_SIFIVE_FU540_PRCI
> +       select SIFIVE_PLIC
>         help
>           This enables support for SiFive SoC platform hardware.

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
