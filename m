Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E53A2D9B92
	for <lists+devicetree@lfdr.de>; Mon, 14 Dec 2020 16:58:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729168AbgLNP6Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Dec 2020 10:58:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729091AbgLNP6Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Dec 2020 10:58:16 -0500
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com [IPv6:2607:f8b0:4864:20::942])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C236C061793
        for <devicetree@vger.kernel.org>; Mon, 14 Dec 2020 07:57:36 -0800 (PST)
Received: by mail-ua1-x942.google.com with SMTP id t19so5621351uaq.1
        for <devicetree@vger.kernel.org>; Mon, 14 Dec 2020 07:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dXj2L/gpA5Z+dEMYx7lFyvYb6eATLj9JT43cDhRuOs4=;
        b=mItKLRyCuzJrSK8Od8x+kXuTZfDwYKDtxNWWYttW2xt9pJ340SAw3D74IPyF1TRQkj
         bf6Zky0yKI6L5+LP6Z+6PDJ024szLWmlpSOptu0arTk+UGSLhPZE2fwXhrFv3RYdIacB
         31JgIFaLxn4sEDuUi0vZDA2LtAACNqERBnyxoq/PT6wI7jXjxKi4StzKuXaFdFifd1Pi
         Np5Drtzn1tBr0Ejw9giN/sHfJXz9aqR5upRR+I5gHTMPduzmzJZW8G9SwaWQtaD9ID/0
         34rL6Z+EfpBjoej5wMc+RbiSM75QUYfZ1qUGbnMlw6nySB1TQ1XwoGsAd9RZg9dB7AMi
         47XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dXj2L/gpA5Z+dEMYx7lFyvYb6eATLj9JT43cDhRuOs4=;
        b=A6YyiDqt2qTaCKSoZgcJXq/U4/krg9yutuPvHm8BBnAYH6OXAv6LdhZaYj+dmEXHCO
         S4REaqP2W/BkUjHRoF3F1rPZBg9moHC6LIxb7A3PyKTH7ntcdoZOLznXcB9jpUMXEyf+
         1TojbcDTXAlc85r9paw2VPn2Ll5+Zp3xZkchw6iHdKT+/gi0F8l5INXnfyXuTBixXzWK
         Jkonzw1V3mo1njWp6q7F35rIzDgMGlw9RBSndJ91MlK+ma5qO0vgIQqqu3URsoRt/Bxs
         VEYAHNgA/VTXRh4LEp6zFKcNeqLJBX4zAs1TBgK3acVYazLd2M0GOgzvemZhJQMW8fBK
         otPw==
X-Gm-Message-State: AOAM531fTVIyCR7VG+SAyjhe75t20s3sgWrvMNFG7+Gz6PCX7M85f60k
        pAu/SWi7ELATOZEyVj43JvelMSWLQPYAZe/XE4urjA==
X-Google-Smtp-Source: ABdhPJzdfWPRBW0/f0jpVNrHb1/fu5VTxg/DQ0L43Zjos4Zi2HwXvGdkwhaNygxEwdpDSjUu9VyxZY/jyLL25Bv2K38=
X-Received: by 2002:a9f:2213:: with SMTP id 19mr23369715uad.15.1607961455333;
 Mon, 14 Dec 2020 07:57:35 -0800 (PST)
MIME-Version: 1.0
References: <20201208012615.2717412-1-andrew@aj.id.au>
In-Reply-To: <20201208012615.2717412-1-andrew@aj.id.au>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 14 Dec 2020 16:56:59 +0100
Message-ID: <CAPDyKFpCiA_fT0tQ58z_3mt183RJ30QZWE_qjbmXGO3imHqMzw@mail.gmail.com>
Subject: Re: [PATCH v5 0/6] mmc: sdhci-of-aspeed: Expose phase delay tuning
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        ryan_chen@aspeedtech.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 8 Dec 2020 at 02:26, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Hello,
>
> This series implements support for the MMC core clk-phase-* devicetree bindings
> in the Aspeed SD/eMMC driver. The relevant register was exposed on the AST2600
> and is present for both the SD/MMC controller and the dedicated eMMC
> controller.
>
> v5 fixes some build issues identified by the kernel test robot.
>
> v4 can be found here:
>
> https://lore.kernel.org/linux-mmc/20201207142556.2045481-1-andrew@aj.id.au/
>
> The series has had light testing on an AST2600-based platform which requires
> 180deg of input and output clock phase correction at HS200, as well as some
> synthetic testing under qemu and KUnit.
>
> Please review!

FYI, other than the comment I had on patch1, I think the series looks
good to me.

[...]

Kind regards
Uffe
