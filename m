Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 637D147A2FA
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 00:12:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233835AbhLSXMV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Dec 2021 18:12:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233800AbhLSXMU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Dec 2021 18:12:20 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76994C061574
        for <devicetree@vger.kernel.org>; Sun, 19 Dec 2021 15:12:20 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id m6so13202581oim.2
        for <devicetree@vger.kernel.org>; Sun, 19 Dec 2021 15:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=V+fitUhnopQFJlSmWEit/8ewNmmVdw9mIHee406vaxc=;
        b=V5GYThmgzC4Ae64KEcxIC8RlauvEJH6/3jZhB6A7HH8fcnDw1pIxlkC+gAceo0fr/Z
         SxbSAt1GgqdgQJTF2UHkiOR8fpibf9djGpgandxiJS9JpYoc9xw6ZbNwuahR2MkVmbxT
         Ixqiaf+Z/BWDCpUXWhs3f/dEKv+Fakh+Vyfby+QYTGGYzpGFyAaQPDPNlQ23WI5SpwOg
         muIFti0G6WffPMk/8ArfTz1H+/aUzmLJ7w29qj6U50pWsFGLaw1LWpTOe956NRL7fICq
         dn9fDHNHXpUvdxFpcFThURzFRBXnrw54gLd4wrSjCuFUOzyGW0BjOIg5fMbSTAcEWJqA
         o9rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V+fitUhnopQFJlSmWEit/8ewNmmVdw9mIHee406vaxc=;
        b=w732Tk3Sebjez0PBaEVGLsCw9zcmjTmMtIcqmxnhdL3nvx32iNPFM9U67wd/R4G2aK
         8tUBdT9XUeQRH5AJGwL4AAwfJisYSyRciKP9Dwq93S3uZBh9Mx/0sDtcNoeaKP87euyj
         kYkBufE/o5t6VBCoyh9gND4KdoSbgmq0q+6pqpe9Zt5l0Z0y9r5UCzReOA5yDYEuZL22
         8Qnn1SrK/jjmMeYERLioJtE5PY9bZ5AU4otfGQWyxWXpYlKezWE2BKAQ5yowG9PvVa1W
         dmcvTs6pxyeK5IaOigyUTVwmVmdnwE2gRXx+9tHlsgiMlO8Kdlo2Rz+8uoCgAq+DUjVZ
         WnFg==
X-Gm-Message-State: AOAM5321O3nmLhF36NICtuMOwFn+cYYetTu5GQVtbiDp/5o0V+KurbDa
        FtI7u6YkzUc3PoNcnhjWqDsdOTL1783aJyftWA3JzQ==
X-Google-Smtp-Source: ABdhPJzViiZ3xuGjyJBQ4tb4QFHx+cBq4f3roEVtZ9ytkBtrhOCQK5RiawS318NDT/imvycu2I3EerJP3ce31XMeQWc=
X-Received: by 2002:a54:4791:: with SMTP id o17mr10432122oic.114.1639955539779;
 Sun, 19 Dec 2021 15:12:19 -0800 (PST)
MIME-Version: 1.0
References: <20211218144927.GA6388@standask-GA-A55M-S2HP>
In-Reply-To: <20211218144927.GA6388@standask-GA-A55M-S2HP>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 20 Dec 2021 00:12:08 +0100
Message-ID: <CACRpkdbceLrbrORrJKxYh-1n-7xOpgqn2YPA237NBFWe1-iSkw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: ux500: Document missing compatibles
To:     Stanislav Jakubek <stano.jakubek@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 18, 2021 at 3:49 PM Stanislav Jakubek
<stano.jakubek@gmail.com> wrote:

> These compatibles are used in Ux500 device trees, but were not documented so
> far. Add them to the schema to document them.
>
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>

Thanks for fixing this!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
if Rob wants to pick this up for v5.17.

Also queued this in my Ux500 tree so I don't lose
track of it.

Yours,
Linus Walleij
