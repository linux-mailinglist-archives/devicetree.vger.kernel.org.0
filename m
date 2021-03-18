Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8EC4340761
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 15:03:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbhCROC5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 10:02:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230118AbhCROCt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 10:02:49 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 288EBC06174A
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 07:02:47 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id w195so1619777oif.11
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 07:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RedgoN86uS0MtSxzC5wrbKNIMVOE3dFhjtpCx8cti5s=;
        b=gxG9AVkXbQEd2YYRvZVPP2yWgUOKew/8Bhrded8t7j3zXmn4vWtcXREoH7zABEBDIm
         A8iCkMW9ciAe9SbcUsfDgJXbqHTV1e914Tzhq6SmAn2mnPRVkXrpQFLu9XM9Sn4/BgsW
         xcPqaEB+B7KUMamC7SdhWdOhScW3EBtKUM7HQa6j+WlIbLkW7Zb+VInm7lg2X5GkwviZ
         YzW87MwrRNTTuHo0r8eN7d5Y0VgcIMZqUEPz/zHMGONRaCvomrm3QNxWwZosLLW/BWD5
         LFhb/oP3OFaTFUQqNaHa3w+SPqPBoCczJs0NBKSl+v3iluMOBD1RgMV7YlkJVZRzQn5P
         Gt3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RedgoN86uS0MtSxzC5wrbKNIMVOE3dFhjtpCx8cti5s=;
        b=cOWANGUDAeGsCC+h37Nw4ZImrxh3QhxE3FPi8YidCR9jrgrRKdWx96HUy8iyedHzDA
         +BSoXdaNYnTqR/kkV5mXMq8eqj/hiKybH+KbGtkrgXT7edBoC8Bed+dI7HRM53+dv7JG
         OPPLnlMsfa+rT6Gu3t4PUovodw92PkRQZabHJIJIFBFmpKVS4bCRNPDuNEtd6ej+TuLk
         hz6/Shbn1MApNKLjDjskyyDhSGhwDbGRBelVEglVwDfQ1iR2c+dPDD0ikJ7fvl44N+7u
         qOEirPc3n3eiJWCjd8h9IapSm9XZ1HH5TtzIWZWCHiJtrfkvaKlSnrGqEQ4IE50XsX7L
         mYTw==
X-Gm-Message-State: AOAM530fBmEWNjE48KRZ8Je48yai0jAIwob3yPNpqo7+4trAcC1gSoQz
        WuKkhA92JYM23M7TJeBxiynBBBoCOByZJfYPQ1M0Eg==
X-Google-Smtp-Source: ABdhPJy2VoBFq/U+gv055lgcogQshwEKrerbzNSRucxyZdi6MmzjrzW6C/L8qRkCU48wJSCOvX/z+OlipFcFO9P1DMc=
X-Received: by 2002:aca:ea44:: with SMTP id i65mr3126967oih.149.1616076166342;
 Thu, 18 Mar 2021 07:02:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210212154614.38604-1-sudeep.holla@arm.com> <20210212154614.38604-8-sudeep.holla@arm.com>
In-Reply-To: <20210212154614.38604-8-sudeep.holla@arm.com>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Thu, 18 Mar 2021 15:02:35 +0100
Message-ID: <CAHUa44FKwpwu5W57KL7HLWo6+9mo2xk68kU+q72jk7xL5424vQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] firmware: arm_ffa: Add support for MEM_* interfaces
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
> Most of the MEM_* APIs share the same parameters, so they can be
> generalised. Currently only MEM_SHARE is implemented and the user space
> interface for that is not added yet.
>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_ffa/driver.c | 184 ++++++++++++++++++++++++++++++
>  include/linux/arm_ffa.h           | 150 ++++++++++++++++++++++++
>  2 files changed, 334 insertions(+)
>
[snip]
> diff --git a/include/linux/arm_ffa.h b/include/linux/arm_ffa.h
> index f0c68f3f1c6a..9d7a5a3eac75 100644
> --- a/include/linux/arm_ffa.h
> +++ b/include/linux/arm_ffa.h
[snip]
> +struct ffa_mem_region {
> +       /* The ID of the VM/owner which originally sent the memory region */
> +       u16 sender_id;
> +#define FFA_MEM_NORMAL         BIT(5)
> +#define FFA_MEM_DEVICE         BIT(4)
> +
> +#define FFA_MEM_WRITE_BACK     (3 << 2)
> +#define FFA_MEM_NON_CACHEABLE  (1 << 2)
> +
> +#define FFA_DEV_nGnRnE         (0 << 2)
> +#define FFA_DEV_nGnRE          (1 << 2)
> +#define FFA_DEV_nGRE           (2 << 2)
> +#define FFA_DEV_GRE            (3 << 2)
> +
> +#define FFA_MEM_NON_SHAREABLE  (0)
> +#define FFA_MEM_OUTER_SHAREABLE        (2)
> +#define FFA_MEM_INNER_SHAREABLE        (3)
> +       u8 attributes;
> +       u8 reserved_0;
> +/*
> + * Clear memory region contents after unmapping it from the sender and
> + * before mapping it for any receiver.
> + */
> +#define FFA_MEM_CLEAR                  BIT(0)
> +/*
> + * Whether the hypervisor may time slice the memory sharing or retrieval
> + * operation.
> + */
> +#define FFA_TIME_SLICE_ENABLE          BIT(1)
> +
> +/*
> + * Whether the hypervisor should clear the memory region before the receiver
> + * relinquishes it or is aborted.
> + */
> +#define FFA_MEM_CLEAR_BEFORE_RELINQUISH        BIT(0)

I believe this should be clear before retrieval.

Thanks,
Jens
