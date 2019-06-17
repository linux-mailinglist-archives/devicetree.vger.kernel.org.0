Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F0807486A9
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 17:10:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727850AbfFQPKL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 11:10:11 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:33614 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727999AbfFQPKL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 11:10:11 -0400
Received: by mail-pl1-f196.google.com with SMTP id c14so4226920plo.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 08:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:to:from:subject:cc:user-agent:date;
        bh=RrNEZkQt5HKoUfzRadgZa2XIFWt7gGNYEFg83I4dzHg=;
        b=Ky0OhGyFU/8wdxd/wWoxfATOJXQA4oQm20lG4MLzYkk08eKB19NfpVHAK06+y3k/P9
         Xu9XX3nfykiU6HkQdwBM9bz9QJ/ekFK15dya0gpRCL+FVayr8jsgCikYQc2Wo4KZnXqY
         AF2EyiM8qv+WBCaoyXS93RlzrCj3eY+O/R4Vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:to:from:subject:cc
         :user-agent:date;
        bh=RrNEZkQt5HKoUfzRadgZa2XIFWt7gGNYEFg83I4dzHg=;
        b=i+eT/mqh02M2JCDLG3vovS80vGFVibiEgfFY8YKxCVV1u2yTuukajoeo9TEQ14SfZN
         dDpZryu2Uuos+GvQ7FtXG1V39WLjpi0oyIb2NaRNE/WtHie43JWjz+Eapj/Y3ELafFYr
         kA1yZUAAayJNiyMUufm7wLlamTQlu6FDodgEOcAmzLsabTih1SlTi7Mkaf3CTLMAqdXZ
         3X6ZbTK3utC40EIBtPbkVcQADEGmtNg9LNAkm5cZdArCOgcwzG9mulKJ12R7d9Mwh5pN
         CjjhI5GYS0ObfWaSXto/5hwWoQiOf16JNvAAIpC6aR2D2Zic5q9jTXH0OS4XUTSLt+0H
         jHXg==
X-Gm-Message-State: APjAAAWD9j3s5t3XbleZLaXNf63JhecrWJoFljgJos+GDpme0W9lh1b0
        7XOHEpwfcmpE7SeB8wTrolfK3asgOZ0=
X-Google-Smtp-Source: APXvYqylFmQKmBTKyHsSy1Ps5/Nh3sNrn1DbSH0wex7/W/BGfi9v5C7IT0RxX6UfE1Njsz5KtJUlkg==
X-Received: by 2002:a17:902:760a:: with SMTP id k10mr88282143pll.83.1560784210920;
        Mon, 17 Jun 2019 08:10:10 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id g5sm10125082pjt.14.2019.06.17.08.10.09
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 17 Jun 2019 08:10:09 -0700 (PDT)
Message-ID: <5d07ad51.1c69fb81.25c8.f3a0@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190615030343.96524-1-wangkefeng.wang@huawei.com>
References: <20190612010011.90185-1-wangkefeng.wang@huawei.com> <20190615030343.96524-1-wangkefeng.wang@huawei.com>
To:     Kefeng Wang <wangkefeng.wang@huawei.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH next v2] of/fdt: Fix defined but not used compiler warning
Cc:     Kefeng Wang <wangkefeng.wang@huawei.com>,
        Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>
User-Agent: alot/0.8.1
Date:   Mon, 17 Jun 2019 08:10:08 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Kefeng Wang (2019-06-14 20:03:43)
> When CONFIG_OF_EARLY_FLATTREE is disabled, there is a compiler
> warning,
>=20
> drivers/of/fdt.c:129:19: warning: =E2=80=98of_fdt_match=E2=80=99 defined =
but not used [-Wunused-function]
>  static int __init of_fdt_match(const void *blob, unsigned long node,
>=20
> Since the only caller of of_fdt_match() is of_flat_dt_match(),
> let's move the body of of_fdt_match() into of_flat_dt_match()
> and eliminate of_fdt_match().
>=20
> Meanwhile, move of_fdt_is_compatible() under CONFIG_OF_EARLY_FLATTREE,
> as all callers are over there.
>=20
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Arnd sent something similar now too.

