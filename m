Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B5A1340675
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 14:09:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231318AbhCRNJU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 09:09:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231288AbhCRNI7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 09:08:59 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9A7CC06174A
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 06:08:48 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id x187-20020a4a41c40000b02901b664cf3220so1408276ooa.10
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 06:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ml8axY3qlzG3ov6dmEpT5bvGhbf+BjkuHFIDOheG9jg=;
        b=k5nNnynNiDS4V73GHwZzqcAYkVyCn/OW5C+TqZaef6nm+DAFrnIy8kHRBNYElUsVq6
         sspz6NUKaLxIg3aJvvufbo/e3MsZnvlgc8QWUIzLfQkvXFMA4FBcsBEO7zRQ4vA+tL5O
         x+RwF0hT3lCmL4VebLPHzi4SrgB4SQ/aGZskBYHnErQ95xELIzTI8vFqXWwcISYhWs1i
         i7NEB/scfXPBxHpPwIEET0FONNz8e5c3YUIcSrx3l00YQgeGtAxt3EVSGNKi855mSJsg
         YcgcPzUsTTe5JFWWn15sxd/nfF3xa1atxtgFTeMa2YU5Kf+AiNJqKPDQ4Xw3+sI8c1Pn
         8xKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ml8axY3qlzG3ov6dmEpT5bvGhbf+BjkuHFIDOheG9jg=;
        b=W8rzIsx/Gy7ssx5x11I5erev9Y5pk3SGaPUrvISTB3gttYSG0gumk4+KdhPr8Vo7Lo
         2g2PErwAkeVcOLbN04KfuSttQpbB+Df+n50OgKgv1/Gi3Fy00dR+XwU2RB/w3L1E3z67
         Yv+Ehn2FHfXsN+vZei89W5ZXAyeqfCXnOOPdqNf0l84SpXSTMZ/mvVTTFJiOc5zYfg0/
         O0RyC3xLhTrSWnUJj6Ng/zci1E0AFYYMCWkQpjGIXw5cz/mufZI+3d2ueFJIy3tDFYqZ
         wCMsu90+5TQ2YjFEsvHS01HdoH4K9G84IlnY/JzcyT3WxOlkagM47CvxYPKJJYp7g+hh
         GeHw==
X-Gm-Message-State: AOAM533fSZ+04QZ4NTlVt7eD8KTYTZ42BnkHi4nIdA+aZl0H/kM0Djv9
        hmce4dZa2Pi/j14K+DA3nFsmTej9LmBhWdvG6y9hcw==
X-Google-Smtp-Source: ABdhPJwYTZ0R7oWBMVlfA1wLsHY6nyw0acIJ8D21GcHyeSTqYFF6MFGF8XYM9wZIaNWiuMdtac21DPaCgRRJriMa43Q=
X-Received: by 2002:a05:6820:3c8:: with SMTP id s8mr7491791ooj.49.1616072928106;
 Thu, 18 Mar 2021 06:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210212154614.38604-1-sudeep.holla@arm.com> <20210212154614.38604-7-sudeep.holla@arm.com>
In-Reply-To: <20210212154614.38604-7-sudeep.holla@arm.com>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Thu, 18 Mar 2021 14:08:37 +0100
Message-ID: <CAHUa44Fuq3MoS+r60rfG4Fgh_gQ-_8R6qfTx0TUmUvVQYpXOMQ@mail.gmail.com>
Subject: Re: [PATCH v4 6/7] firmware: arm_ffa: Setup in-kernel users of FFA partitions
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 12, 2021 at 4:46 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Parse the FFA nodes from the device-tree and register all the partitions
> whose services will be used in the kernel.
>
> In order to also enable in-kernel users of FFA interface, let us add
> simple set of operations for such devices.
>
> The in-kernel users are registered without the character device interface.
>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_ffa/common.h |   2 +
>  drivers/firmware/arm_ffa/driver.c | 188 ++++++++++++++++++++++++++++++
>  include/linux/arm_ffa.h           |  38 +++++-
>  3 files changed, 227 insertions(+), 1 deletion(-)
>

Reviewed-by: Jens Wiklander <jens.wiklander@linaro.org>

Thanks,
Jens
