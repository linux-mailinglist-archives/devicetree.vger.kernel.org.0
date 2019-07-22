Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 53FB27031C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 17:07:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726713AbfGVPHc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 11:07:32 -0400
Received: from mail.kernel.org ([198.145.29.99]:41770 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726516AbfGVPHc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 11:07:32 -0400
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id CE1C121BE6
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 15:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563808051;
        bh=7qg0yAA920X4Ncr5Zds38mIfFS/XufCTetqYjm+mbd8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=qnShEYtqayY6j4wYwHHA+nlQlQc50wdBxAzgv6C8Pedm5Z1jgek828JlLTc1uz+Ye
         QKcotK1M4h+B3ZpFnSnK7/bhg/kmE4JGrjfqD+2IRxu2QKswPS8BS9Nv2BUxSa7K0D
         puHWsmXW2GzQgo//EjOgTp3UBwgrmbWgpubB8DK0=
Received: by mail-qk1-f182.google.com with SMTP id m14so3166302qka.10
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 08:07:31 -0700 (PDT)
X-Gm-Message-State: APjAAAVuS+bRn0jzxsMu4p2/bDxacQDQCtg8qaKaP5X1xAfK2ETPlO11
        zCmzEpFiTxMwgCdbaMGHwuhscTDsrHV1GqKO3w==
X-Google-Smtp-Source: APXvYqxwDqBafuv6UWbijjtznEpJUMlbiMB5DrW8ppb1oqirRkl8qD14ob6fueOHwQC+fNSyv4X5b2xgFyZ2BIF2RWc=
X-Received: by 2002:a37:a48e:: with SMTP id n136mr48170070qke.223.1563808051061;
 Mon, 22 Jul 2019 08:07:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190722081229.22422-1-maxime.ripard@bootlin.com> <20190722081229.22422-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190722081229.22422-2-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 22 Jul 2019 09:07:19 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLBAsQKvAiwXrPdWv_fsGsocZKFO+Vhctumqtbq1TnZfA@mail.gmail.com>
Message-ID: <CAL_JsqLBAsQKvAiwXrPdWv_fsGsocZKFO+Vhctumqtbq1TnZfA@mail.gmail.com>
Subject: Re: [PATCH 02/11] dt-bindings: timer: Add missing compatibles
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 22, 2019 at 2:12 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Newer Allwinner SoCs have different number of interrupts, let's add
> different compatibles for all of them to deal with this properly.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../timer/allwinner,sun4i-a10-timer.yaml      | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>
