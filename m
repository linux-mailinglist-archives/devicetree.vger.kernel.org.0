Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C712247977
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 06:45:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726147AbfFQEnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 00:43:43 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:45373 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726070AbfFQEnn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 00:43:43 -0400
Received: by mail-lf1-f66.google.com with SMTP id u10so5429405lfm.12
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2019 21:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QZYnY2hIUSm+INHACfGV3NJI8hXeyeTw8tvqjhCF464=;
        b=MMXvlchVs2Zgrzft62CDXTNlgYLYUhsdEmF5yBBfIzjcxXwgu+TFNl4ZoIwXwi/Cp5
         GZyWocmV8KqP7vfrpu1KZsUdWgrLDSd0gdy43lJi+LlqepOvPg3LRwzIW8VKsHP3Zyex
         nUl+DAZfb/HRyNan1Ndv+uAdskNAK0QOUFJS1qq8hxxYXWax7O1+84TlV70C14ekBJq6
         2Ld/EPFBUYKfF5DBrHjTwoqqpQ8o2NWQU/A8PIF+9etcSJjrhDveAIUKfa2rAObbsj+p
         xspUXSK+ZWwcak0Pe7L+Kb0TaWtpxbwnsJoIEHGhu7U1B34r930XYyfs5qAAq3I80GEW
         ESfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QZYnY2hIUSm+INHACfGV3NJI8hXeyeTw8tvqjhCF464=;
        b=uNwRWTJRL59w5INcqrbJFsIbWf7T+jTHeaTW1j2yBNxlJnIaKXG1AsC5cNlzIPGth1
         MbS+Q1ZI771LBBy9ktYWZJ63PIFgZTJDLYApxMw/hvfHCgf2oNxVvC9iKL4HL7MNfv6G
         OOR3l4QSlso12dkMD36nu+/IodMWbPV72qwucrjdbPf2wwnpgAQ/Qhw/c2PmlJmJfRuH
         O/5HLhS2ZYxRgArWpTVwqT7G577YAcb+8tbuuXnuZLhLR1AthqMdtAWOtjBMtW0Kylwn
         T7wjSMlDOaV1VclrOOVw5Km3DG4BNdughb766ist7hgXEfwBH+r3pAAmFuIjQQHVW5FE
         D+zQ==
X-Gm-Message-State: APjAAAVOiQhE3xUUjqFQYyT5jApG/6jM7qNVjPNEd5T88t7XCQRQcgC2
        uPZ0c37H5Wr7Jp6NOOcwrkW0b3c17XGx2HZ7xSPXyw==
X-Google-Smtp-Source: APXvYqx5atfcvuI00s9Z4mXLRo48akZO/SgAq0T1wCjD9YxY4YsnaLJCxKSL3H3msuEwih+R7uGarFUy+Wtgrp1SkuE=
X-Received: by 2002:a19:5046:: with SMTP id z6mr6335117lfj.185.1560746621318;
 Sun, 16 Jun 2019 21:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Mon, 17 Jun 2019 10:13:05 +0530
Message-ID: <CAJ2_jOH2X6+CcNCruxX0aeCzPnjcGuv-X1Q4eESsY6PyW1LViA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
To:     David Miller <davem@davemloft.net>, devicetree@vger.kernel.org,
        netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 17, 2019 at 9:49 AM Yash Shah <yash.shah@sifive.com> wrote:
>
> On FU540, the management IP block is tightly coupled with the Cadence
> MACB IP block. It manages many of the boundary signals from the MACB IP
> This patchset controls the tx_clk input signal to the MACB IP. It
> switches between the local TX clock (125MHz) and PHY TX clocks. This
> is necessary to toggle between 1Gb and 100/10Mb speeds.
>
> Future patches may add support for monitoring or controlling other IP
> boundary signals.
>
> This patchset is mostly based on work done by
> Wesley Terpstra <wesley@sifive.com>
>
> This patchset is based on Linux v5.2-rc1 and tested on HiFive Unleashed
> board with additional board related patches needed for testing can be
> found at dev/yashs/ethernet branch of:

Correction in branch name: dev/yashs/ethernet_v2

> https://github.com/yashshah7/riscv-linux.git
>
> Change History:
> V2:
> - Change compatible string from "cdns,fu540-macb" to "sifive,fu540-macb"
> - Add "MACB_SIFIVE_FU540" in Kconfig to support SiFive FU540 in macb
>   driver. This is needed because on FU540, the macb driver depends on
>   SiFive GPIO driver.
> - Avoid writing the result of a comparison to a register.
> - Fix the issue of probe fail on reloading the module reported by:
>   Andreas Schwab <schwab@suse.de>
>
> Yash Shah (2):
>   macb: bindings doc: add sifive fu540-c000 binding
>   macb: Add support for SiFive FU540-C000
>
>  Documentation/devicetree/bindings/net/macb.txt |   3 +
>  drivers/net/ethernet/cadence/Kconfig           |   6 ++
>  drivers/net/ethernet/cadence/macb_main.c       | 129 +++++++++++++++++++++++++
>  3 files changed, 138 insertions(+)
>
> --
> 1.9.1
>
