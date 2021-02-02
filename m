Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80B9A30CA71
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 19:50:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237699AbhBBStM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 13:49:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233703AbhBBSqu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 13:46:50 -0500
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AE50C06178A
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 10:45:57 -0800 (PST)
Received: by mail-il1-x130.google.com with SMTP id e7so20020524ile.7
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 10:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wq7pGFTcyQVS5VHHV8GUbyK8pzqY8jYx+8baqL3TKmc=;
        b=lAFYsESjKmSjzbxny8pK8qIiHh8wJNTyMSiD/wu0h52t3rHjnleHsR8hyxbcIegtCQ
         x0Buj/bm1BpmG5HVGPodA/RTKd8gWUQW0pcntBnk4iSL3kitbpohlLHQ9iEPqnaXPZtV
         c+fhUegroitny7WH8xLrEvg/o8a9hIBG/5ELE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wq7pGFTcyQVS5VHHV8GUbyK8pzqY8jYx+8baqL3TKmc=;
        b=tD+KrH9FJyzHTSSqaJjP4XkkYvCTiuWp2s+Rx/h3t3V0BVvq+n3Qs4yo09ZyF2ikx2
         4Rl7lZqOLVlRwC4jfK9qzb/BRoggR5Yl+/In/wAhAtTN4fDUW5ce9V4saKzHOk4JHeJu
         VeTQWo6RIyh9Dr05SAX0QHIWnxhQ35b2Hpd+0YSv7UUcoRqzMo1EtiWNDha8C+XGkKE9
         TTywfKGIl6uwwfkZR1YDtnM/OwjQ6xIf2wXed48ZePAdOZo9t0/iWaaCwJtZS+3YXbLq
         duyVPlFi+WqT88OO+PDBn5IGluRRjFiPlVNtWXSbTo2Dg/gddDuczXZmLhUkhCeCs98+
         nmcg==
X-Gm-Message-State: AOAM533znl6cFBvLcBKczI+BMiSmeVNMaLJ8FQ+C6exCzkXH0La2G/vk
        G7UpFkS5q5i6fBTaPyOftWFkMO4oB/GzQ1NPeoW1
X-Google-Smtp-Source: ABdhPJweRT7F8YDnb72o6r7Vof4UUGAWpx8rTIwCvCLZmSqVzwEHmQVgk7A3JOyhvXsTV+XD1L35VsJz0W7kZAzinN8=
X-Received: by 2002:a92:ce50:: with SMTP id a16mr4284798ilr.219.1612291557061;
 Tue, 02 Feb 2021 10:45:57 -0800 (PST)
MIME-Version: 1.0
References: <20210202103623.200809-1-damien.lemoal@wdc.com> <20210202103623.200809-9-damien.lemoal@wdc.com>
In-Reply-To: <20210202103623.200809-9-damien.lemoal@wdc.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 2 Feb 2021 10:45:46 -0800
Message-ID: <CAOnJCU+fgbGv48Lhkn+jZ45CPM8wMwrk9ys39s2G-KBMijO9tg@mail.gmail.com>
Subject: Re: [PATCH v14 08/16] dt-bindings: add resets property to dw-apb-timer
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Rob Herring <robh@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 2, 2021 at 2:37 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> The Synopsis DesignWare APB timer driver
> (drivers/clocksource/dw_apb_timer_of.c) indirectly uses the resets
> property of its node as it executes the function of_reset_control_get().
> Make sure that this property is documented in
> timer/snps,dw-apb-timer.yaml to avoid make dtbs_check warnings.
>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml b/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml
> index d65faf289a83..d33c9205a909 100644
> --- a/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml
> +++ b/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml
> @@ -24,6 +24,9 @@ properties:
>    interrupts:
>      maxItems: 1
>
> +  resets:
> +    maxItems: 1
> +
>    clocks:
>      minItems: 1
>      items:
> --
> 2.29.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



Reviewed-by: Atish Patra <atish.patra@wdc.com>
-- 
Regards,
Atish
