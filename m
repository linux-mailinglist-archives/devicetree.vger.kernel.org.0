Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 783B84A332D
	for <lists+devicetree@lfdr.de>; Sun, 30 Jan 2022 02:56:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346560AbiA3B46 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 20:56:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236743AbiA3B45 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jan 2022 20:56:57 -0500
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84E54C061714
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 17:56:57 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id 23so29816967ybf.7
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 17:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PhqoonLW0MG4xXzGhCB6St73UBw/+Ws3aRva1qAiNsQ=;
        b=WevqdraLzwXsGJtybKj+ekmLgpoWVwkH0IfdaA0hqeH4DZm+szPFvpBqKQudbpTjux
         7xG7eu+ICDBix9q7403hGYFZfu/+7ZHbTY5KpdyVxC36TokrOY3NyTqEDRPU6Mya/dnM
         lsqqCxgsLfWMQecuDvGwBYmAZiMWBm5A9yh0eB5zoU/uJPdWTDf7K2fd4TjbvsttMSW0
         0cjqNpB35OOjCCa+mGcEVsqCNZ0PrghKTXeyUojNBzBhAp03lkquFvUqJ+jR/V5scVee
         O86Px9I2UAHHRMkSoIBQwcZtdPtQAW6z/L+YJu8RbNNr2y7eEtcr+ezta0+M5LeZkJa2
         6Klw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PhqoonLW0MG4xXzGhCB6St73UBw/+Ws3aRva1qAiNsQ=;
        b=yRm3kYD8gLOygOulL6Epnat4KYBslhmi95/u8sZOHA0o3Qbe3joINU0kArIkX5DE5S
         ed5gGU9rI6giOQ9324h6hsOQ3SbyJdn99XyfqGWly349kyojVr8H/WgbrwghIkyW7Z7P
         gGQrs+Grx2XQCcperV0zr+8IvwzG5eU/0KIE/h6QHyiEO4zKdolNoOFUkOa5tDXOOfLk
         rkRK3Fae6CWbwl1HCV9nfrKj63m/wn53u9ZUDo9P/U1Kw2bkM0e0HMb0nOVGMpY0jsPt
         IwDdM1ydWDb+oRBTvCkKkSHUHk3+O51pm7ZntPzwdOdOfymYrIm9bVLr1Wpc/rHi7nlJ
         wz6A==
X-Gm-Message-State: AOAM531Mh1UzjnoIQcXPUjqkf6aAovnPp3oo7ZKiD+vUVkY01uFzYsX8
        8pYKkiOv1nBAZtMSXCHo4xYwrzgfREqiHLeKkr5bbwHthwM=
X-Google-Smtp-Source: ABdhPJyFmHL7lzEc8bPbVZ3VkRKNkvAzFB6GLXrckR/nTRmxNx97pFDsRV+wRhAXM0r8TZJRolEbVVaBgHbr7NVz8d0=
X-Received: by 2002:a05:6902:124a:: with SMTP id t10mr20375015ybu.634.1643507816772;
 Sat, 29 Jan 2022 17:56:56 -0800 (PST)
MIME-Version: 1.0
References: <1642344734-27229-1-git-send-email-wellslutw@gmail.com>
In-Reply-To: <1642344734-27229-1-git-send-email-wellslutw@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 30 Jan 2022 02:56:45 +0100
Message-ID: <CACRpkdZsrsFK69hUOBtOBz+OSEfTVaukxQ4woXwwjCAB3EgJ+A@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] This is a patch series for pinctrl driver of
 Sunplus SP7021 SoC.
To:     Wells Lu <wellslutw@gmail.com>
Cc:     linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, wells.lu@sunplus.com,
        dvorkin@tibbo.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 16, 2022 at 3:52 PM Wells Lu <wellslutw@gmail.com> wrote:

> Sunplus SP7021 is an ARM Cortex A7 (4 cores) based SoC. It integrates
> many peripherals (ex: UART, I2C, SPI, SDIO, eMMC, USB, SD card and
> etc.) into a single chip. It is designed for industrial control
> applications.

No further comments for some two weeks so patches applied!
Any remaining issues can be fixed in-tree.

Thanks for you efforts to fix this up!

Yours,
Linus Walleij
