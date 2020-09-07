Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8059B25F9E4
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 13:51:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729085AbgIGLu7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 07:50:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729160AbgIGLui (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 07:50:38 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4ED0C061574
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 04:50:37 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id n25so4859718ljj.4
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 04:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OprOp2em24X5m4o3PUof0yAN4YU+uTpPGAtCtWvXlNA=;
        b=NaTzQpnWPET6m3hR4pMK+Fv+kYVcmvBc6HSvONrngdeQJAY5jSkF4I7Rh04pSSR5JH
         f3s0qTUgVu8be6iyHOy5mo9ylnHUElRgWhD/DigPwM7XyshB28wNYN7Z+Zs1cZ3Wwc/P
         muwbagslDBfXwYh1+Fb6Lh8Nl0efiAfVx3EWChUD1IgdKa86sd+l7Y04ox7i7MY4jwty
         HGLaf1ULo8tpy3SATPrT9caiKm+MvfFuAbhI/acNo40ltH6M1kNuSjyeu6rRY3MUPB9R
         uRaP0Qb09D7AbVkgl5uDt/qBs/jUl3yFSUjc8BpBcqOQBKmFXWO+SBJEL9ziVzUmJDsQ
         OzXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OprOp2em24X5m4o3PUof0yAN4YU+uTpPGAtCtWvXlNA=;
        b=QqBQ4pCBwgC1T5fmXjYF7ecdoTKGfVNYsEExk9j9Po4zncliDgS0QaGawp8zquwIfV
         I1i4Z6rfXQvt68wWeFsMGbeEt6wBzeybVgQc5UHLM8P0pvSNehJnKc01KVpmbg78Gm9T
         gCc+awuR4UaAbfcZFzMK0zq8i2ifkSlHrdu1a7bkMP3o7APtOW9pqiulaH+FVwPuMMW+
         AUl0bll4vJ3RfN2XA80rvpYklPsjlDX9Tq0zyhU3qgx6qb+ARpxhrm3iofDn8mVxpoex
         WwyKQgua32OzK215VP+QBixRSM7EAwCpgdPdpoYMbW77KajrKNP4qrSr21onMx5D8jiS
         7VfA==
X-Gm-Message-State: AOAM532ngbVAnVxbrr0sGZyZsZNn7zHpXpZpSLqSiuIAmxClWD1hHNsI
        M+lU79CPOd9IGMerVNvw/X6asJsQBg37hPTOOZm6zw==
X-Google-Smtp-Source: ABdhPJwvpzbst+CDx7Bzy8imZV6B8N4xGrr79yQL6ltKSsY4hsLQN+7461X7PW78zu3yPdvlRnWCw9G/oLrn1pHgrlU=
X-Received: by 2002:a2e:9d04:: with SMTP id t4mr10548159lji.293.1599479433311;
 Mon, 07 Sep 2020 04:50:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200812195020.13568-1-dmurphy@ti.com> <20200812195020.13568-7-dmurphy@ti.com>
 <CACRpkdY1pCcUONFhEXeyXa3f+JFB=Wg1nSB-qRJF5njM=L+CVw@mail.gmail.com> <f253bf11-3422-4f49-fce3-ac6b51d91c25@ti.com>
In-Reply-To: <f253bf11-3422-4f49-fce3-ac6b51d91c25@ti.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 7 Sep 2020 13:50:22 +0200
Message-ID: <CACRpkdbSWdkZzHZ65jqz3=u=zLH1xivx_7+kwKDvK+58FKP0Ww@mail.gmail.com>
Subject: Re: [PATCH v33 6/6] ARM: dts: ste-href: Add reg property to the
 LP5521 channel nodes
To:     Dan Murphy <dmurphy@ti.com>
Cc:     Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh@kernel.org>,
        =?UTF-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux LED Subsystem <linux-leds@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 28, 2020 at 8:39 PM Dan Murphy <dmurphy@ti.com> wrote:

> > I don't knof if I should just apply these two patches or if there are
> > dependencies that need to go in first. I guess yes?
>
> I believe all dependencies have been met for these

OK I applied this patch to the Ux500 tree!

Yours,
Linus Walleij
