Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 25DC326AB7
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 21:18:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729762AbfEVTSj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 15:18:39 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:52534 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728533AbfEVTSi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 May 2019 15:18:38 -0400
Received: by mail-wm1-f67.google.com with SMTP id y3so3351993wmm.2
        for <devicetree@vger.kernel.org>; Wed, 22 May 2019 12:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:user-agent:date
         :message-id:mime-version;
        bh=oMdcno1bN7UGFXmlvdsH86j5M8DSKBM+CBX05MLBto4=;
        b=IiHh0OkjSBhfeEaplOxktSUxiYE6QnxnBWhAnRpE+MfxpLOpFOmxtbpEOeQC7+Gn3d
         StdAwsHQOC5dtEQofdiP+h3EiWwWNjcVtQoOOGu6woXz5s7vKdugOPyxHdDXSHySSOqB
         nP8Xwa1vEktW6I1veR341reZCVR3xswoiN16Chzh5tLTx0sTXlMbdG4intN0XDRaXMNy
         xxSWtkhkj4h7m4hE25rTekhhjjIwDmJXS9uImPQI83vibg7paTg7QUoI8iltmNQXeE1M
         SO+hxzfHVw41Ybgq0SzLg/23yF3FWgALlMQMfDxujKMxxQ5BoIdCDbA7Cb/4AAaUF2wP
         bKuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :user-agent:date:message-id:mime-version;
        bh=oMdcno1bN7UGFXmlvdsH86j5M8DSKBM+CBX05MLBto4=;
        b=odKvgSUs5OMiZq9F+hLOZ+jfqNAYhuE25TE9uyx6QObr66eJf4zTdPCeEE662ayRq6
         VVTNqpCwGjq5wTde4FtNSs23F5F9guAIyb/Gm/gDItN0JCfb0vJPJtVb7BKS/YWSYWDR
         RGxmqNeC3L941t7mOtQeNDMzwQLPKQWHWyIQwTBJsUgQNeUfonUhQOBRob1TUNMUTOX8
         arSaR6QEa/sl2z979GBwNwLzk0eviei9chRKiP6MPXykpXWUe0RjgYgdyVtBCjN/vn+5
         S3NpFhdp6fRZ53YDbb6zYfC6hB2BXxh8JW1nWacj4Wp22qx4dE9rtMrmWuX3LyKbRY/A
         uxCA==
X-Gm-Message-State: APjAAAU9xgykm8xfa98m5xRNiFE4xkvrKwqnO4gTzoej9FfxfNZSN75m
        wDc9GrEQfLiKNR7hlW4VfRsbsA==
X-Google-Smtp-Source: APXvYqwJkoMFDjSKM1Xceo+2NVH2eEaNn1h+0mvTxstEwWDLuXSNqLr+xgh+7QN1+3tmDHssAXHjNg==
X-Received: by 2002:a1c:40c6:: with SMTP id n189mr8955328wma.65.1558552716735;
        Wed, 22 May 2019 12:18:36 -0700 (PDT)
Received: from localhost ([2a01:cb1d:12c:8800:1e45:34e8:9e5f:f03])
        by smtp.gmail.com with ESMTPSA id y40sm47697179wrd.96.2019.05.22.12.18.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 May 2019 12:18:35 -0700 (PDT)
From:   Loys Ollivier <lollivier@baylibre.com>
To:     Paul Walmsley <paul.walmsley@sifive.com>
Cc:     linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Paul Walmsley <paul@pwsan.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: [PATCH 1/6] arch: riscv: add support for building DTB files from DT source data
In-Reply-To: <20190411084304.5072-2-paul.walmsley@sifive.com> (Paul Walmsley's
        message of "Thu, 11 Apr 2019 01:42:59 -0700")
References: <20190411084304.5072-2-paul.walmsley@sifive.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
Date:   Wed, 22 May 2019 21:18:33 +0200
Message-ID: <868suyb8mu.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 11 Apr 2019 at 01:42, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Similar to ARM64, add support for building DTB files from DT source
> data for RISC-V boards.
>
> This patch starts with the infrastructure needed for SiFive boards.
> Boards from other vendors would add support here in a similar form.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>

Tested-by: Loys Ollivier <lollivier@baylibre.com>

Tested the whole patch series using FSBL+BBL.
Did basic boot testing and uart validation.

The actual testing process is quite cumbersome.
One needs to rebuild the BBL to update the dtb loaded.

Would you have an idea of the delta between bbl and u-boot ?
I tried booting the same kernel + dtb with U-Boot but ran into
errors related to plic.

Loys
