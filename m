Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A76738AE4A
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 14:33:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234021AbhETMeE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 08:34:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233751AbhETMdz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 08:33:55 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AA3FC0E1EF6
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 04:39:35 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id i17so17283524wrq.11
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 04:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=rOR/bE6KeQ5HZ3FZ82kLVJ7uz1OxpfmHwQwUe9gKcNs=;
        b=NZr70dRmEM0JMXAWO6zmUcOkBIe/qjOpjpzp1IaGbh67LHHyOvFaZLweiqdQEHPrX4
         GKtci8trVgcHmMkHT0ee0RghnbnilbIgQS2Sed9iDBJQgTZOFW+1YRdteD1w74NcRetM
         C0la3E2/beovJg27Nec9wf6h4nj4YeWhB4X9vBVeBFDZQ4HxqIxirJ7mVIDkqXmQxPMM
         tYXKwMLhG0M/Dg0izKm3UlokCh2KSlXruugL1CYzBiREmC8ZIo2oLkcQ3uQrW+OfQ0dP
         GHvKtCzUXRrvY98J5VB7AiRn3RGl3/iB+XVt1PKRSjGby02HopKbxcOR+zoHJKggOdRx
         YBcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=rOR/bE6KeQ5HZ3FZ82kLVJ7uz1OxpfmHwQwUe9gKcNs=;
        b=O0n1qsl6jpS6tb2eTpUbRf/1Bqi0dLfFPrMcf+MDGk1Ok3TXNP9VCCKEoez7mSizGQ
         zwzwQBQjR+zn55EuntjY3hIOHtzT8gduIx7vWQdA9nnIcslK6cvEnhVyQx9fm96TQYz6
         LUQm3tgXMc7YBzkmJqpJGtoaRpziAINNlSzY3c+0O83PyVqFwwvjk8E/fOC6aGI9H0ej
         shz6Xc7/TYgGablxU1yfe42Mucv7qMksSHAvok0d0QXHaQ6qKIR/Doq/k5P88TiHErb/
         u0MuyRmFW/3/NpskZdEqn9OYJI176G46hu+VqKqwLIc5P6Xkoi5VqRJybqC9NWbsBwZ4
         /zyQ==
X-Gm-Message-State: AOAM5330YDQEqGYV3ZQoWrXTjNstHux4aNidrcvG61otVOM7vpCT5+/h
        6Ed0suR09Xg5T4bIZeV1dIxrgQ==
X-Google-Smtp-Source: ABdhPJyXeIV+dQjn1qVkcKlSbCmMspSSPlaH/0NkZU7TQGJqPfLIDWDnR2nLd0Zd8vmh/3KNV26pBw==
X-Received: by 2002:adf:e607:: with SMTP id p7mr3813981wrm.358.1621510773767;
        Thu, 20 May 2021 04:39:33 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id d3sm2934456wrs.41.2021.05.20.04.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 04:39:33 -0700 (PDT)
Date:   Thu, 20 May 2021 13:39:30 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Eric Biggers <ebiggers@kernel.org>
Cc:     davem@davemloft.net, herbert@gondor.apana.org.au,
        linus.walleij@linaro.org, linux@armlinux.org.uk,
        robh+dt@kernel.org, ulli.kroll@googlemail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] crypto: add gemini/sl3516 crypto driver
Message-ID: <YKZKchyUeeQwedXF@Red>
References: <20210518151655.125153-1-clabbe@baylibre.com>
 <YKVbW8T92bY3NG4u@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YKVbW8T92bY3NG4u@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Wed, May 19, 2021 at 11:39:23AM -0700, Eric Biggers a écrit :
> On Tue, May 18, 2021 at 03:16:50PM +0000, Corentin Labbe wrote:
> > The gemini SL3516 SoC has a crypto IP.
> > This serie had support for it.
> > 
> 
> Please describe how this was tested.

Sorry I forgot to write it.
It was tested with CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y.
Furthermore, it survives hours and gigs of write/read to a luks2 using xts(ecb-aes-sl3516).

I forgot also to write on performance, which is quite good.
On a luks2 partition (2To with bs=4096), a fsck comes from 14m26(without CE) to 8m48(with CE).
So it is really usefull.

With bs=512, the performance is similar with software.

Regards

