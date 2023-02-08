Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94C2F68F186
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 16:01:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjBHPBV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 10:01:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231497AbjBHPBT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 10:01:19 -0500
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6B913757B
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 07:01:17 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-51ba4b1b9feso236765737b3.11
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 07:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kbQlt2pQ7AMp/FKuEJYVUCXGBnYewouLlM1+eF+nla8=;
        b=CgbNn+Y10XhYXoXMPxkTE6yqe3kCcXpchpHHj5LQ1HYdeEHNzU6XC8P6ifjgbwjVDH
         tlNtO1cQOyVMYICSgntJbeJof2omdwKRjvAdp6K0pUn+Hp8FsXJiwE2WmiXWFsEK2tRs
         36bHktf0pXAUUZTw0M/hvZJopB4cbWsFxjIXR9ZMzy2ScuGBFZXimme1+B7/9KDwox/l
         TFpJuTUNyVb8SI8w/llVSlIUclqEgB7mz0d0KaPj9vcEh7JEwO65q4XyN/NEye5arSqj
         7Qjdkg6qz0lv5v7hFJMEeXiSwxkFdF0uNgNma2k/6afGEk9nIVVfLla70gXadCBBW+fV
         4cAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kbQlt2pQ7AMp/FKuEJYVUCXGBnYewouLlM1+eF+nla8=;
        b=LY+LSQqmUy06uXgpj9qIlnBUp6HMp7ogPnr8R1DjP5njWJv6noB/Sp+z++siLDbCUJ
         SXclZguBogGmOvDlJv6L8u7dBS3hU9KrgQxi9Z0GGZx5wP5wIaeIJVciqWG9W80k6cQZ
         mw1eWq7STSCA3fXs2iCEZET0VxupBCYj7LZ/UWwqRxE9SLjeqLyRXXO/+P5tLRNoCOqi
         jT3lCIPPyjhXpCizVdJc1VxiCsgmqNG0VR6cZjs15PeIXNMhyrk4dlQQa4Pl7/VtRu5h
         rbW6tcATTGWKiQHIvr7EXHkgxkRof8MGh+tHylneb6ehxJfFvbRFukYg0Ej3/YCyw9mx
         B0gw==
X-Gm-Message-State: AO0yUKVHI4yriyT6HShjp4e00d0aOd71vTFqts+xpPNGxPUVKSo53XsL
        9b0x/OUQ7ocemslgfwVT4oy6w/pI6eDxqi7lxJAOzbJ1AaadnPax
X-Google-Smtp-Source: AK7set9ZLlf32G2ucmFu5CZewO5xBxd4UIpcwAi7CO1pcCSyuBYUFS9w/wOieVP6pc0b7no1GJ/lONV/Y2JM7mgIyiA=
X-Received: by 2002:a0d:e004:0:b0:527:b418:a622 with SMTP id
 j4-20020a0de004000000b00527b418a622mr768702ywe.469.1675868476881; Wed, 08 Feb
 2023 07:01:16 -0800 (PST)
MIME-Version: 1.0
References: <20230207150742.GA36689@localhost>
In-Reply-To: <20230207150742.GA36689@localhost>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 8 Feb 2023 16:01:05 +0100
Message-ID: <CACRpkdYZ3C3a4x4HKr2-3+8-DM=PmObMAOdLDs4Wu5Cx1HWtsg@mail.gmail.com>
Subject: Re: gpio-line-names policy
To:     Trevor Woerner <twoerner@gmail.com>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Trevor,

On Tue, Feb 7, 2023 at 4:07 PM Trevor Woerner <twoerner@gmail.com> wrote:

> But what about those lines that go out to general purpose headers such as
> the 40 pins of the Raspberry Pi header? Most SBCs have some set of header
> that's available to users to connect whatever devices they wish, many of
> them have adopted the rpi's 40-pin layout.

I think using the names on the header is fine, what I didn't want to see
is things like the name of the pin on the SoC package or names made
up from kernel-internal software constructs. As long as it is something
real, and preferably unique I'm fine with it.

One early example is the HiKey N96 board:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts

Yours,
Linus Walleij
