Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8F1AC34A99
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 16:41:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727616AbfFDOlY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 10:41:24 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:40208 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727182AbfFDOlV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 10:41:21 -0400
Received: by mail-wm1-f65.google.com with SMTP id u16so323048wmc.5
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 07:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=JYu/Sf6DYA1LvVsAE9hAP2/zUxBfGo6g6Cc3589jfpA=;
        b=QFezxepBvrgiXhmKm1McpNMYyYT4mjgtLdF0nIx340LiL8knK4tBoXTMiANhRLdvUz
         WT1jjJjAx7LRstuYIGqb5S2luxmEgQuy8ZCzLwt4Nv5SPg9u09Z6R4GTFbIjngteY7DQ
         bZfU38bR0MYhdpoYlf8QngSBFdr5U4n2PClMG0cNR/0FiS7WZNUKJBA6oobE2kj39HJ2
         X+7KY+xPSi36O9Jc4LSb+sJGTx3q25GGVKVevxhS8ZanmDbnT5mPMWZMB7ood8v6nsGs
         SQqWV22m1Y89u8IMFn4hhhBfibFC4h8/rZWieu1EHOO0eXT2T2GtD/blPXf2PYWYE4h9
         mfKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=JYu/Sf6DYA1LvVsAE9hAP2/zUxBfGo6g6Cc3589jfpA=;
        b=eCA0vmLKOKBtqw4qP+bbsdF0Ksz5y8i3qp/Gsxrbmv9tcYE1q4gSgEeJR8WhH0QpCf
         98szmpTbKRBiLcOkU5qs7+Zl1G/VgvgirA+81pmJJBg5u3cT1tWrw40UGGMqbUY3oOOz
         AeKLno63VXPdMAtcXFVb6nQ/jVIXt1pLvmEKFb6hC/iCECWX74WrOp3t05hHjyPO8xIK
         82vNgF6z6WtdgZITyeJKrl6ViRP41iBP0DX0n5l/0vSL9VoQqL/tmhKGAAUB/qanMiSK
         2HcT/L63OEWvwqKpvSRbGXxv43GufNY1Tlb06T6WqBDpDs0u2Rzvt86/GbXIqaJWYYSv
         A33A==
X-Gm-Message-State: APjAAAXqeZrnolgOjc0tVQ7ORraDkg5zOQkZ272alVP2wjxlEyFVAtqn
        yVm5JrOvIltD6SYbEnqswOy8FA==
X-Google-Smtp-Source: APXvYqyc1QeM0/4vvWBgZDrhojj2xAQnDeiCexy1d/QXuq48dTOxl1LvD7DQ5J2L9IH0Govxwc79Lw==
X-Received: by 2002:a1c:188:: with SMTP id 130mr18108451wmb.18.1559659279143;
        Tue, 04 Jun 2019 07:41:19 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id q14sm15217623wrw.60.2019.06.04.07.41.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jun 2019 07:41:18 -0700 (PDT)
From:   Loys Ollivier <lollivier@baylibre.com>
To:     Paul Walmsley <paul.walmsley@sifive.com>,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Paul Walmsley <paul@pwsan.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Palmer Dabbelt <palmer@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 5/5] riscv: dts: add initial board data for the SiFive HiFive Unleashed
In-Reply-To: <20190602080500.31700-6-paul.walmsley@sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com> <20190602080500.31700-6-paul.walmsley@sifive.com>
Date:   Tue, 04 Jun 2019 16:41:17 +0200
Message-ID: <86pnnth0qa.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 02 Jun 2019 at 01:05, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Add initial board data for the SiFive HiFive Unleashed A00.
>
> Currently the data populated in this DT file describes the board
> DRAM configuration and the external clock sources that supply the
> PRCI.
>
> This third version incorporates changes based on more comments from
> Rob Herring <robh+dt@kernel.org>.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
Tested-by: Loys Ollivier <lollivier@baylibre.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: devicetree@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
