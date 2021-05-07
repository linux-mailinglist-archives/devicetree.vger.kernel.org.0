Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8A793763E9
	for <lists+devicetree@lfdr.de>; Fri,  7 May 2021 12:36:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234023AbhEGKhK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 May 2021 06:37:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234057AbhEGKhI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 May 2021 06:37:08 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC6C2C061761
        for <devicetree@vger.kernel.org>; Fri,  7 May 2021 03:36:08 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id z13so12138903lft.1
        for <devicetree@vger.kernel.org>; Fri, 07 May 2021 03:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S4ThqpCDApZFuKAxB9K1Ka8qEg9mB3V4qA9vC26YVkk=;
        b=MzBtlSZzpJAr8tnd/5RIekuBw6l7vSZhO7ebB0heZLPlmkGV24vqwNOwHxJUG4uD1f
         6iBrnIqOoL762HGPJJhI4a9V4bbf/fWM8+2GUZ61ack7UtkNvUhQ3SntvC6/1htbrkMU
         eSQ3yuCa5R3VSLwgJZbKiw+yx8hyvaNLSeX/p5qCV38hh/6ibjxEaGoUGhdVZ66wsbt+
         mpZ4PTCWBvIU37spzVs/kK1pr9/phRVM/CcXDDbOvSBB3mKb8o7vq9jv3hlQIiWIvRZ0
         DCqCwph8yg77C3Ctt6jSsLSeeLQJJhSoaNsG9xcLadrW0I2N6KxY8DkLV4H0gAiIY/+I
         UbJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S4ThqpCDApZFuKAxB9K1Ka8qEg9mB3V4qA9vC26YVkk=;
        b=J0GbTCUy+SL5fAHM0UVMAl3vULWPd6a1Emc/3P9Wly5fQQW9u5Pk5FvZZdoaikVtHk
         LJ4j6mh7iRfqV1JVJiKMwnm3I6pYUj27fUAK6vHrDKpPKqfDJSgOMNlmK9wDVTCCz/a8
         uUvzXYLTQ+tFvpGhM4fb3lgZT4SljyMI1OsoAbnujKL00Ooqb72n2h64iB8yWA40o9o2
         V+qmKdlX9oyEm4i2bqCCPSbK6oBU7It+Bf1hjQabSFQnPT83ULbx+1iZYnNSdQ8aTvvC
         B8meDKgWgIOqtw699c85GW4RagqKTXw9H4D76Fan1iTbC/nlHBGU8NjmYlaTX0kZV38J
         PpDA==
X-Gm-Message-State: AOAM533zy5LDBJ9MRWLbJi4Pc3KRkx1IwN+rUqlt96qJSS7mXm3QEDi6
        7tSJAE9jNpBuD7cdJsKhx8NDwiIrgusbPVmnlZ4SVQ==
X-Google-Smtp-Source: ABdhPJwGVrIFfrGyONppHY8teuB2o77I8NbBL50oT/QlnGc0e3NLmIlNMMRGerTGeyuxvd3Sqtw8r/iA8CTP7iSiP8g=
X-Received: by 2002:a05:6512:6d5:: with SMTP id u21mr6084637lff.586.1620383767209;
 Fri, 07 May 2021 03:36:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210507103040.132562-1-linus.walleij@linaro.org> <20210507103040.132562-4-linus.walleij@linaro.org>
In-Reply-To: <20210507103040.132562-4-linus.walleij@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 7 May 2021 12:35:56 +0200
Message-ID: <CACRpkdbposbGrihN2S6Vo7czmkhMrKRMbdumdG4M3xJ+=FwX_Q@mail.gmail.com>
Subject: Re: [PATCH 3/4 v2] PCI: ixp4xx: Add device tree bindings for IXP4xx
To:     Bjorn Helgaas <bhelgaas@google.com>
Cc:     linux-pci <linux-pci@vger.kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Zoltan HERPAI <wigyori@uid0.hu>,
        Raylynn Knight <rayknight@me.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 7, 2021 at 12:30 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> This adds device tree bindings for the Intel IXP4xx
> PCI controller which can be used as both host and
> option.

Ooops I see I missed some review comments on the bindings,
ignore this v2 for the bindings and I'll fix and send a v3.

Yours,
Linus Walleij
