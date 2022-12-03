Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 790C4641587
	for <lists+devicetree@lfdr.de>; Sat,  3 Dec 2022 11:04:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbiLCKEB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Dec 2022 05:04:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiLCKEA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Dec 2022 05:04:00 -0500
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B1EB84DFD
        for <devicetree@vger.kernel.org>; Sat,  3 Dec 2022 02:03:58 -0800 (PST)
Received: by mail-yb1-xb2d.google.com with SMTP id o127so8825924yba.5
        for <devicetree@vger.kernel.org>; Sat, 03 Dec 2022 02:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N6E8CnP3iI5t13RtsJQQcTXnbZ3ZGPTmoPz8kIfTx4U=;
        b=k0vaNbXpIr1SS/R+YqWWkyExuOQIYt3c8XfhEfqDa9Z2UuX4cdm9VdUn/4gHGMUxtH
         5FyGA8rU9sdTo1UFjoFc5JgDdVGmXSAMsZY35MJUnaSncVbVYJXR5j+p4TrjstZjq8xz
         JCOEDr9BdvQQTTPf+fFgcjUCv9YGPv4mVcHvxJXJ93CWUynMjTGe4Blq/e83y+RDFEbV
         XMjN1RKwqXqIe+4mElvNvFbFzfFjRxyuttUTmR4wfjxopzy3yay/5qCYu1jvusRq7z6t
         DH2pwodZDL90KwVCuHcpmsO0+iSnBUNAUL3svPVBSnVusbSa4QZJnaqVQwCqoNaXBs8x
         3gXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N6E8CnP3iI5t13RtsJQQcTXnbZ3ZGPTmoPz8kIfTx4U=;
        b=Y/C/Z1T31c4epOfWqD9u2o0l93QyeorPACNZocXoZ6tICJJLDTyQJh98VCt0fDG+61
         baWbaUkOZ1MjL4P46S+S6fZdTEPqdkleDrHC/4lsioy9Jypi95LyZkXTS6bKXWiQTtSJ
         pxMTimeaEFwke+EeXc8XaUko/1o3E7svkrnMp/mPQq5s1L1CPTJM11HWZRM2hKlKD4To
         U4nRAWh750i11/pE+/VNHCqJeYyKU2AmHrW9W+qPuBh79VoTH5KRNJmZP4YvubbYsauw
         q84+tDxIe/fwQVrDhETMdyHAyiGGIf6i/WGiSlgJXCoA3q5Gwh+BqX9WQ4ZYUzr51OVg
         Pcgg==
X-Gm-Message-State: ANoB5plEudOp4Z5BGJu2VGtBv6tFDVXfeGEUHvQYFRKi1OazdmaDsL0n
        Q2z6KnM0SFpqHv4Ny3WSfRGKSJ6w0ultdFD0gXjQgw==
X-Google-Smtp-Source: AA0mqf6D4lrppamEcD0PVhGEQxhIID44UmELO3zkV8dlr+HoqpZTBr+TgBXi4XgTOEHh0lS6bXQVtURTpgndyWewC8k=
X-Received: by 2002:a25:d8d4:0:b0:6f0:36e2:5fc2 with SMTP id
 p203-20020a25d8d4000000b006f036e25fc2mr46503178ybg.52.1670061837556; Sat, 03
 Dec 2022 02:03:57 -0800 (PST)
MIME-Version: 1.0
References: <20221201123220.7893-1-zhuyinbo@loongson.cn>
In-Reply-To: <20221201123220.7893-1-zhuyinbo@loongson.cn>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 3 Dec 2022 11:03:46 +0100
Message-ID: <CACRpkdZm-4-5625szX_VqJoQH1OQZnw+jH3SqWsb9nr3S0Nbmw@mail.gmail.com>
Subject: Re: [PATCH v10 1/2] gpio: loongson: add gpio driver support
To:     Yinbo Zhu <zhuyinbo@loongson.cn>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        WANG Xuerui <kernel@xen0n.name>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Juxin Gao <gaojuxin@loongson.cn>,
        Bibo Mao <maobibo@loongson.cn>,
        Yanteng Si <siyanteng@loongson.cn>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        loongarch@lists.linux.dev, linux-mips@vger.kernel.org,
        Arnaud Patard <apatard@mandriva.com>,
        Huacai Chen <chenhuacai@kernel.org>,
        Jianmin Lv <lvjianmin@loongson.cn>,
        Hongchen Zhang <zhanghongchen@loongson.cn>,
        Liu Peibao <liupeibao@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 1, 2022 at 1:33 PM Yinbo Zhu <zhuyinbo@loongson.cn> wrote:
(...)
> +config GPIO_LOONGSON_64BIT
> +       tristate "Loongson 64 bit GPIO support"
> +       depends on LOONGARCH || COMPILE_TEST
> +       select GPIO_GENERIC
> +       select GPIOLIB_IRQCHIP

If the kernelbots start complaining you might need to add a:

select IRQ_DOMAIN_HIERARCHY

here.

Yours,
Linus Walleij
