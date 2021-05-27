Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDD6339395C
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 01:46:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236231AbhE0XsK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 19:48:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236124AbhE0XsJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 19:48:09 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33B90C061761
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 16:46:34 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id e2so3026846ljk.4
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 16:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oUMq5gMakuTv+VxVCawBoEv0d6hHmUUnitcWr50QPbU=;
        b=n0nnJj3xNV7aoppJdcUWyqnujztsYmLvtUZZGXI8rspgnNsSoUcFFO2nRMYl4LngJR
         i35dmrfNWtbjLVeuNXKEtG96fCcdPE/CRCUGnRQ8dLyl1qfC9cqcErJeZ00Cs537VlJb
         nRBtj6x8BRASrwlvxGCXczuZvPyQ7+RIW3UbY+TVH6yCOPURf8Hfnx8J8gylc+BA/PIw
         mB4asa86kLk8SgBxCTIEINX/nlnGEKXEFSbkXwjSNC+R3mGDNNNIH1fL19ZzRiWYP7oo
         KswDkl4XlEJ7yMY90phpeO1w5UK9OzJ0rG9qotvVc0Dqhiw99s6e9RuZGdVzibJiMCvf
         tgcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oUMq5gMakuTv+VxVCawBoEv0d6hHmUUnitcWr50QPbU=;
        b=dzquIaCwSY14fp43S4A626Ff2eFFQGn5WhdKRrMM6GME1wU875ecDcOHmjdtBALqd8
         Jo5vglBmQHp35pKUcYniwSQGgiMKyUwFkTYCevz0txBZEugLyF5NRX/hDE7EkJH7BfPv
         Z4Bsjc9YaVOP9XYs9ksGvlAl8zhOVUmlzLXawV2mLKctH6yu5UdwIVL+xqqFvJfuwadR
         n264tw6AiKYbhHXVFzRLwZUPzVG8+8Sbz7NrI6/69gNTrjULmbWrpuHW04nCEo78pbsR
         fhXroZ3tcJgsrKf8IS8F4Jap6B3pKq6rpJjdJ5Juyg5vtgoCt6kElT6txtwSsF2F/diJ
         VDBA==
X-Gm-Message-State: AOAM533ai2g1fYFTUvo3KcVXSnUn4MDV8hWvhPKfvFBdpEfpyxTBt8Jw
        idXZ5Vwybtt+Tqx8TvSayDMlwP/1LBDKLKf2glAXLA==
X-Google-Smtp-Source: ABdhPJxmDdGYglPiAFXs4Eu7ptrL+GCuuFiVIJrOFzslyzTdz+YvWNKCStjMplLuqgpzYu5Swlu4HGv5Pt7x5GCAszY=
X-Received: by 2002:a2e:b805:: with SMTP id u5mr4620596ljo.74.1622159192598;
 Thu, 27 May 2021 16:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210525055308.31069-1-steven_lee@aspeedtech.com> <20210525055308.31069-4-steven_lee@aspeedtech.com>
In-Reply-To: <20210525055308.31069-4-steven_lee@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 May 2021 01:46:21 +0200
Message-ID: <CACRpkdb90ruzyyz9xmKQRSB+cxZAn6t+bfjGahQio_kyk-5_Ug@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] pinctrl: pinctrl-aspeed-g6: Add sgpio pinctrl settings
To:     Steven Lee <steven_lee@aspeedtech.com>
Cc:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        "moderated list:ASPEED PINCTRL DRIVERS" 
        <linux-aspeed@lists.ozlabs.org>,
        "moderated list:ASPEED PINCTRL DRIVERS" <openbmc@lists.ozlabs.org>,
        "open list:ASPEED PINCTRL DRIVERS" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        Hongwei Zhang <Hongweiz@ami.com>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 25, 2021 at 7:53 AM Steven Lee <steven_lee@aspeedtech.com> wrote:

> AST2600 supports 2 SGPIO master interfaces and 2 SGPIO slave interfaces.
> Current pinctrl driver only define the first sgpio master and slave
> interfaces.
> The second SGPIO master and slave interfaces should be added in
> pinctrl driver as well.
>
> Signed-off-by: Steven Lee <steven_lee@aspeedtech.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij
