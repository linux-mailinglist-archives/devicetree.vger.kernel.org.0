Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEF9B45B012
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 00:27:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233467AbhKWXaS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 18:30:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229987AbhKWXaR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Nov 2021 18:30:17 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21F28C061714
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 15:27:09 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id u18-20020a9d7212000000b00560cb1dc10bso1256474otj.11
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 15:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fwR7w/M4Q8qtIzCDcAQVXEmcuIC9wJDRftO6EL4gBoo=;
        b=mSaZ2VU5+HDgoa/iDnfBfMpzjYzjog8eQcqJClYoBoCNX6T3kcHgQn5eO5nEtySDS0
         c49yFdabzc8RhTCQOQHvoxPfsWehvF/AWyZKZGq7I27B2fh9n9qrMGwqDSA/VPtlMzcw
         xK9z/EK716wVZf2WEk4/RsD5T0Yd6qRAErS1PdD7wwRYbGmgwTXun4FcO4nq4HoHGPF9
         rGXbNjNEIUdRUWPZnYn3cRVhAEOZSDyn06tntY0R9aPNHCtUhwsP04WXsx3BOzwU1+QZ
         qSFgar3kmDD/UyeTQtnqnpndS3VOAcUV+OMlh2k47TSfxYyfavFl8O3RN/OXZwYxsMKQ
         AR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fwR7w/M4Q8qtIzCDcAQVXEmcuIC9wJDRftO6EL4gBoo=;
        b=n7JVyBc5ywVtan37H74xB0XYooMEOw2AE5QcNeZBo2r57rN024if9YTAfozGeruHe0
         Snz5Rye5buwvJZRXoP5cOZaFs/ng6oYEWEO4pzE4kBe5P06B9i1FuEqq2mm6sb9mWoWr
         qDxpRjIy8QfsASzpCWhVo3phaIhjJhiOVrPp54LUt+QMsFIATSAmwYoy5nUmf5veFTCd
         ckYTkIaalnMiex89gwzoJApMj+ZJOMlOt1BEv0xoDD1kz8MJqKkbEU/hCuYWgyo1/F9o
         WpeV7Gx0mmclFa5U40NY5AGTwaveNfuLo1vF3f1PZFEIsqYSlqJViNKNuqOcrYr55/ta
         ZGHA==
X-Gm-Message-State: AOAM532CIKULBbyUqf14HHxUicGiwjH8v95Y05jYlOHtEKnRWBsdQT8P
        7XOi8vZqm8e76fjUFpblMIW+NWLpv0V3gNZnc2nlwEk/8RI=
X-Google-Smtp-Source: ABdhPJyXt8C2HSDSOfsA/RV/93m93YeKUVlAgbSNT20jk3LS6BL0w2h0DLsVZx3fAj2o0+Zx4oRJueGUwfUtiPFyBd4=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr8593599otg.179.1637710028501;
 Tue, 23 Nov 2021 15:27:08 -0800 (PST)
MIME-Version: 1.0
References: <20211122225807.8105-1-j@jannau.net> <20211122225807.8105-4-j@jannau.net>
 <5f16c962-72a1-21ec-9651-744053f74365@marcan.st> <d48d2e85-42f1-570a-bd8f-e3834147c8b8@marcan.st>
In-Reply-To: <d48d2e85-42f1-570a-bd8f-e3834147c8b8@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 24 Nov 2021 00:26:56 +0100
Message-ID: <CACRpkdZghfRvox4aY4ROXYwFqiV6mnXZgw+42ZWYisXXgQ5+jQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: apple: t8103: Add i2c nodes
To:     Hector Martin <marcan@marcan.st>
Cc:     Janne Grunau <j@jannau.net>, Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 23, 2021 at 3:43 PM Hector Martin <marcan@marcan.st> wrote:

> For those following along in the list: the reason why i2c3 was getting
> stuck is because it seems the unused bus is weakly pulled low on these
> machines, which jams it.

That looks like some power saving attempt.

I suppose that means that even i2c buses that are in use
could be weakly pulled low when suspending the system
and maybe even inbetween transactions to save some
leak current.

Yours,
Linus Walleij
