Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25A8B62B53F
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 09:32:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232000AbiKPIcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 03:32:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238455AbiKPIbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 03:31:41 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACDEBC779
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 00:29:00 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id k1so17183779vsc.13
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 00:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7E52UgeDgBikPUyfmAXqV0RNh0nggToZg8ivIyzthVA=;
        b=fIxw4CQjuXbD9t0Ku8I0WcARmlyxbRoGVQTjHYdJAupUtc9IeJf8bGZPN1AKuFJRn/
         BH9YL5N6DK8wf+NAeGXXuNTJGWoccz0AYVi/WJdBnSMVsEREx8aj2mdKnVLqeSxlwYwB
         yPbjLXIoV5pgkJ/Q0phcyXY8QUtmoyPE3vWUIcuePsg+exQUzGkV2+QfYf7ZBmv5oB5Z
         9/s7mU1pX+XF9fpp1pAOgwApPEmDn1W+cIthagPP8olWiFtKnQ25D5T9C68ilWgz/s6a
         UtNqbuKBHPRZnKtTWJzRoU7qvmQHoy9y2XZ3EuSbXLlUn+wudSbWc4donrCj77YE5Ns2
         9ZpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7E52UgeDgBikPUyfmAXqV0RNh0nggToZg8ivIyzthVA=;
        b=DJjWn/kSVwWrTmLBZUdyQ8TjDTXnDgBXJC3N0dWg+j4ao/Pax3aU3v6TfmJfAcSr7W
         IWvk5FMMiOqcRD7SwDU9mZhrKA5zUkTM+Tsm+fkm5y3o+HC3hn1jFmB/5zFKAnIHUmrn
         bcpKPt0b7b3/CAx4ZYs/UHVZub+osV7uaOVRUAmtj3/athpM9k1oYpl3W9UPTVvuvyd/
         QwLHsrNJsNWmfPC/YJ7mt+l22e0HjFsvoiNURD/KQMHok7yixlGJo8V+oCunKY0zg8bo
         /eb0MBVNMa8TXmseMXyd09jPkn9KIyfNcYPU9kFDpX7xj7pFjOKUxYfjcVsveWNzjblM
         Wnmg==
X-Gm-Message-State: ANoB5pnik7l53UanUVju0VJ/LBVBZ9vDwyEMuxVIYNAfltqQVEL9dxz+
        sqh2yn5xucNsEUHgQhgDaYXU+X58Mlk9qZ6KxufaRg==
X-Google-Smtp-Source: AA0mqf57PJI+KFr+pxSVTVXbFjZxyU6Tj53936uqgBbcjwMTYK9nVSqu3rFSDy+ucT/a/wlU66D+WyuGN41791D+txI=
X-Received: by 2002:a67:ce13:0:b0:3a7:769c:6dee with SMTP id
 s19-20020a67ce13000000b003a7769c6deemr11443047vsl.13.1668587339861; Wed, 16
 Nov 2022 00:28:59 -0800 (PST)
MIME-Version: 1.0
References: <20221116065335.8823-1-zhuyinbo@loongson.cn> <88f8d4b3-b144-4d04-a2bc-61ee30dd6ff6@app.fastmail.com>
In-Reply-To: <88f8d4b3-b144-4d04-a2bc-61ee30dd6ff6@app.fastmail.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 16 Nov 2022 09:28:49 +0100
Message-ID: <CAMRc=Mfz67A47q5ESUTxJL6U_oPnrLz8qh+ndzdZDmnqH9=wyQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] gpio: loongson: add dts/acpi gpio support
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     Yinbo Zhu <zhuyinbo@loongson.cn>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        WANG Xuerui <kernel@xen0n.name>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Juxin Gao <gaojuxin@loongson.cn>,
        Bibo Mao <maobibo@loongson.cn>,
        Yanteng Si <siyanteng@loongson.cn>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        loongarch@lists.linux.dev, linux-mips@vger.kernel.org,
        Arnaud Patard <apatard@mandriva.com>,
        Huacai Chen <chenhuacai@kernel.org>,
        Jianmin Lv <lvjianmin@loongson.cn>,
        zhanghongchen <zhanghongchen@loongson.cn>,
        Liu Peibao <liupeibao@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 16, 2022 at 8:31 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, Nov 16, 2022, at 07:53, Yinbo Zhu wrote:
> > The latest Loongson series platform use dts or acpi framework to
> > register gpio device resources, such as the Loongson-2 series
> > SoC of LOONGARCH architecture. In order to support dts, acpi and
> > compatibility with previous platform device resources in driver,
> > this patch was added.
>
> I think the support for legacy platform_data should be left out
> of this patch. I am working on a series that removes unused
> platform_data headers for machines that have DT support and no
> longer use static platform_device declarations anywhere in
> the kernel, so if you add another instance, that would just
> get removed again in the near future.
>
> Just don't add it here. If there are users that use traditional
> boardfiles instead of DT, they already need kernel patches to
> add the board files, and adding in the driver support can be
> part of the same patches.
>

To add to that: there's nothing in this platform data that can't be
represented as static device properties in board files which actually
makes it easier to use the upstreamed driver as is with out-of-tree
platforms.

Bartosz
