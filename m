Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E73EF420429
	for <lists+devicetree@lfdr.de>; Sun,  3 Oct 2021 23:59:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231804AbhJCWBP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Oct 2021 18:01:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231765AbhJCWBO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Oct 2021 18:01:14 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0A51C061782
        for <devicetree@vger.kernel.org>; Sun,  3 Oct 2021 14:59:20 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id g41so63152974lfv.1
        for <devicetree@vger.kernel.org>; Sun, 03 Oct 2021 14:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bbZ8owU4QzLAqnCanW0nVCBDjaAKFcd+haR1u53mZxo=;
        b=oFaTwE5zeVG0+n6KGHulHMvwJzZ3781+WF2XtvkhlepwAM5J5wUMTTQiSFugBdL70q
         d8XK6BO+dlbewNQwEAKa21QiEpFWi6coUT/5fOXHCo3VoD26bp11NUzTNovETNjQlNvI
         YTK2D9Tu5qj6oR1RROuHR4I3Cu+6YB8eHnvoOWINbvsTWtpAhH9GcPd4u53CyGdcOfuV
         mCnlKZ7Npq98YgLDMJ99Dt7PVAY0o5YXQ7z5V+/NlnAZwMT4kUkavSzX4OgrAEa+KHJy
         /wPm0ZMN8h3JxUZR4bhxm5djIk8uGlQE77AjOmQAAaYqQyOC+SOA7H8AR0mpHtnubzfQ
         jYAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bbZ8owU4QzLAqnCanW0nVCBDjaAKFcd+haR1u53mZxo=;
        b=NlBuTH/lOoYU5W5p1tTNzrg1BNT6Avnvm5UwbHEsf4pG2fd9lQJyy92QSsZYFyw3M4
         lgmZmXKLMC2olV7DdCMa/4yD6FjuECDmolTlotEYoen0NM3zvv5+Kbyt+BCWTO1fwVpa
         HA1I5V+gw+LCgf6yhgOnb2kSP/q6HuqrwCIH/PQH3dTzXM7LMRjLCQUSQ61gmINj7hvx
         3n9+y1qeBqs5aVeABKm/+eCTpqxJUV/BUiiuI+paXM7z1KNMQH+Axh7DBjFHd40ZLC8M
         3nVrw/2tQ7oC78k5oSs/E5wpl3WmuSJcosqNagXqkbguGfG5SLn7pHUzzMSguezAOwep
         LWXQ==
X-Gm-Message-State: AOAM533qWr2vwrxtz58EPifsaUOscKYTMl7FCnsKMRJHkEuCBviBDRL4
        WE/hfj2Cgu3T/LCA0S+pOxsBfjNDFcYRa4CGCZITDA==
X-Google-Smtp-Source: ABdhPJwq2rCDKkckKnqGQIQgPlkVHUV2j+E4mP2OxxdKrVv9rwlmy+s2Io9q0Bq5Ud9YzKo5KaJXq0leO/5Ce32JG9M=
X-Received: by 2002:a2e:4e11:: with SMTP id c17mr11617702ljb.19.1633298358986;
 Sun, 03 Oct 2021 14:59:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210930232617.6396-1-dipenp@nvidia.com> <20210930232617.6396-9-dipenp@nvidia.com>
In-Reply-To: <20210930232617.6396-9-dipenp@nvidia.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 3 Oct 2021 23:59:08 +0200
Message-ID: <CACRpkdYvevVHLe112ZHDzPTfzs_FWRtkk+1dD+8OT-nB66XuSg@mail.gmail.com>
Subject: Re: [RFC v2 08/11] gpiolib: cdev: Add hardware timestamp clock type
To:     Dipen Patel <dipenp@nvidia.com>
Cc:     "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-tegra <linux-tegra@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Kent Gibson <warthog618@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 1, 2021 at 1:26 AM Dipen Patel <dipenp@nvidia.com> wrote:

> This patch adds new clock type for the GPIO controller which can
> timestamp gpio lines in realtime using hardware means. To expose such
> functionalities to the userspace, code has been added in this patch
> where during line create call, it checks for new clock type and if
> requested, calls hardware timestamp related API from gpiolib.c.
> During line change event, the HTE subsystem pushes timestamp data
> through callbacks.
>
> Signed-off-by: Dipen Patel <dipenp@nvidia.com>
> ---
> Changes in v2:
> - Added hte_dir and static structure hte_ts_desc.
> - Added callbacks which get invoked by HTE when new data is available.
> - Better use of hte_dir and seq from hte_ts_desc.
> - Modified sw debounce function to accommodate hardware timestamping.

This looks pretty much like I imagined it would, good work!
I am a bit busy now and unable to do an in-depth review
(brain parse the code and make sure all is sane) but it looks
really good, so at least I can say:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
