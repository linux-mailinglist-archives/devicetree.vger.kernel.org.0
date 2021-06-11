Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF4F43A3D5D
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 09:40:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231502AbhFKHmt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 03:42:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230035AbhFKHmt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 03:42:49 -0400
Received: from mail-vk1-xa31.google.com (mail-vk1-xa31.google.com [IPv6:2607:f8b0:4864:20::a31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21A83C061574
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 00:40:52 -0700 (PDT)
Received: by mail-vk1-xa31.google.com with SMTP id d13so2327336vkl.10
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 00:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=BBdAwSczaNf+rHArQaHJIC7Mgb+GZNj+B0A18W96i2I=;
        b=DDuRUkgGQ2gwm4MrE0GMH0YF2qaeIgqXCeXFS+9TFihSQOe6GGs8L2y7GNz4se7hbS
         ZzVkLsktgUG+PQ58w0GtxC71EPdJvGoY/UL3Zbmy9YJjpJgmYFg3mxnA/QztGkSqDCYR
         YHIIXFPWP06gtKoCz9kdKQkRh1mA551lwU+IZFz7gWdypUxsdwIrTqSJqnyeM+WFcAcV
         KZVVyf6CU4f6Y3O7iFYCbXe8ASiSeE6k0Fie2qc18UVZ07ybB3G2R0J/48F8iUwySD/7
         fqS+s5NrH2gLXdjfryaS8pCFdZSWOEg8+rk2z/bbewPt/p1x/J9JjVYuOkYWlXcWhXLp
         wcBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=BBdAwSczaNf+rHArQaHJIC7Mgb+GZNj+B0A18W96i2I=;
        b=UVJG4+q2c+xPm+uCfiTxRN9aB7A9MUfKkgEP9puDN1YdaZNei8Z8wDYJHmJP5UwCt+
         IU2gBwCFlZ0tUey7n1L/4KjyU+fHlwr4e6FF/IgfosWlIX2eDnfOL6nywVrfbHlYxeDI
         1V1R3e//6lVXVInqk7vSW18dctOZch/Y71Fu9isIG+9yYlBxCPZ3zCP0IpCF487zRzr+
         6UxmuwtgS4D/KjCHr9cG9iYD+RIsW46z9aJBXV1e3hJyj5DEglE50adurBPE4X/ia0O1
         tC1AAM9Xn3LMLjK5+KMP2FNWkmah+Sjg/Yupo5rubAM09ZsuRgRSKLqKYuZeE/gtY7jp
         /XNQ==
X-Gm-Message-State: AOAM5322OpGCPHmf5T1wIEZncPPP5MV2ME6bKA56YhH3JzV5Wg1Mo6p9
        /qwpHoZQwJ8BDSGJS+u3b6E4ED3k1j6cdOwNCHpjIRbRvA/kjw==
X-Google-Smtp-Source: ABdhPJxmj6fYMIapIuKq25TWJPMsAbZwQIFmsiOZFWnQReFEn4Z81dnBenUXepsXJ8aQSZIqkG2yB3XvcuNtapnOMmY=
X-Received: by 2002:a1f:9542:: with SMTP id x63mr7317524vkd.15.1623397247116;
 Fri, 11 Jun 2021 00:40:47 -0700 (PDT)
MIME-Version: 1.0
References: <1623329930-14387-1-git-send-email-zhouyanjie@wanyeetech.com>
In-Reply-To: <1623329930-14387-1-git-send-email-zhouyanjie@wanyeetech.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 11 Jun 2021 09:40:10 +0200
Message-ID: <CAPDyKFqyB=rL-aLX3YLAoE7qEsR4sDP7zqmS2io2-aoCVsQyzQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add support for JZ4775
To:     =?UTF-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmppZSk=?= 
        <zhouyanjie@wanyeetech.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-mips <linux-mips@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>, dongsheng.qiu@ingenic.com,
        aric.pzqi@ingenic.com, rick.tyliu@ingenic.com,
        sihui.liu@ingenic.com, jun.jiang@ingenic.com,
        sernia.zhou@foxmail.com, zhenwenjin@gmail.com,
        Paul Cercueil <paul@crapouillou.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Jun 2021 at 14:59, =E5=91=A8=E7=90=B0=E6=9D=B0 (Zhou Yanjie)
<zhouyanjie@wanyeetech.com> wrote:
>
> v1->v2:
> 1.Add support for probing mmc driver on the JZ4775 SoC from Ingenic.
> 2.The drive clock selection and sample clock selection have been
>   supported since JZ4775, not X1000. So support for these two
>   functions has been added for JZ4775 and JZ4780.
>
> =E5=91=A8=E7=90=B0=E6=9D=B0 (Zhou Yanjie) (2):
>   dt-bindings: mmc: JZ4740: Add bindings for JZ4775.
>   mmc: JZ4740: Add support for JZ4775.
>
>  Documentation/devicetree/bindings/mmc/ingenic,mmc.yaml | 1 +
>  drivers/mmc/host/jz4740_mmc.c                          | 5 +++--
>  2 files changed, 4 insertions(+), 2 deletions(-)
>

Applied for next, thanks!

Kind regards
Uffe
