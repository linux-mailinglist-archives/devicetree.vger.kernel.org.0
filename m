Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1E1244B293
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2019 09:04:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731063AbfFSHES (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 03:04:18 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:37204 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731062AbfFSHER (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jun 2019 03:04:17 -0400
Received: by mail-pg1-f193.google.com with SMTP id 145so199309pgh.4
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2019 00:04:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=7/8RVwwpSyiRMCTGZS64tnDjssYAeJ0LgQZ9r//r+qE=;
        b=pA1weA+eM604AxUx0vZbd7rv/y0CiuieZ8WJE0ygQEjK2e4Z3ezBxJS6XJVmYVVQEL
         AnmHPdvWCf08uVxLap6eJ9/omBBz1xXdXLVSyFf/aj9fUzBZb5kLOFDet43jQ0djV57g
         yGb1OJs5cRpGnmCExpu107v0vvh/0Dxr/+SCFz7QQqcouIikHf8/DNdxYWjE/lTTtUPv
         yS+0nALULMVV692nZWeD7lgLyunAehSwOlHZSg353O0M3dRYwjw0er/f8CzYzx/WTNG1
         d+Dff8md/oTY9KWuZxBI5b3eIvHiVJTZ/5uWyFLEvMHyDwh/pG76xJgn0DSuXdb/8F7l
         wyig==
X-Gm-Message-State: APjAAAXJSgu3yDRSxJJEg+naBOY4TOWCVqNITe5jeo3U9EqAvntC2lnF
        /6pEE7/P689mievt6B2gBhzs+w==
X-Google-Smtp-Source: APXvYqyU93GnXfOMPxiWzkmGi33H3j+hQkODkg0SsE+Md9DOd3Z+gKFS7f34Ev/hIAuIXkD2oWnH+Q==
X-Received: by 2002:a17:90a:3590:: with SMTP id r16mr9702251pjb.44.1560927856852;
        Wed, 19 Jun 2019 00:04:16 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
        by smtp.gmail.com with ESMTPSA id l7sm20331564pfl.9.2019.06.19.00.04.15
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 19 Jun 2019 00:04:16 -0700 (PDT)
Date:   Wed, 19 Jun 2019 00:04:16 -0700 (PDT)
X-Google-Original-Date: Wed, 19 Jun 2019 00:03:19 PDT (-0700)
Subject:     Re: [PATCH 3/3] riscv: defconfig: enable SOC_SIFIVE
In-Reply-To: <1560799790-20287-4-git-send-email-lollivier@baylibre.com>
CC:     Paul Walmsley <paul.walmsley@sifive.com>, lollivier@baylibre.com,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, khilman@baylibre.com
From:   Palmer Dabbelt <palmer@sifive.com>
To:     lollivier@baylibre.com
Message-ID: <mhng-81fd3887-519a-4a3b-8486-22d4d5441c9b@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 Jun 2019 12:29:50 PDT (-0700), lollivier@baylibre.com wrote:
> Enable SOC_SIFIVE so the default upstream config is bootable on the SiFive
> Unleashed Board.
> And have basic support for future boards based on the same SoC.
>
> Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
> ---
>  arch/riscv/configs/defconfig | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 4f02967e55de..6e3e37aa8fd1 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -12,6 +12,7 @@ CONFIG_CHECKPOINT_RESTORE=y
>  CONFIG_BLK_DEV_INITRD=y
>  CONFIG_EXPERT=y
>  CONFIG_BPF_SYSCALL=y
> +CONFIG_SOC_SIFIVE=y
>  CONFIG_SMP=y
>  CONFIG_MODULES=y
>  CONFIG_MODULE_UNLOAD=y
> @@ -49,8 +50,6 @@ CONFIG_SERIAL_8250=y
>  CONFIG_SERIAL_8250_CONSOLE=y
>  CONFIG_SERIAL_OF_PLATFORM=y
>  CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
> -CONFIG_SERIAL_SIFIVE=y
> -CONFIG_SERIAL_SIFIVE_CONSOLE=y
>  CONFIG_HVC_RISCV_SBI=y
>  # CONFIG_PTP_1588_CLOCK is not set
>  CONFIG_DRM=y
> @@ -66,9 +65,6 @@ CONFIG_USB_OHCI_HCD_PLATFORM=y
>  CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
>  CONFIG_VIRTIO_MMIO=y
> -CONFIG_CLK_SIFIVE=y
> -CONFIG_CLK_SIFIVE_FU540_PRCI=y
> -CONFIG_SIFIVE_PLIC=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
>  CONFIG_AUTOFS4_FS=y

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
