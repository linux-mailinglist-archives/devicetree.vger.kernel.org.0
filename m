Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BBF01D59D0
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 21:18:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726226AbgEOTSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 15:18:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726023AbgEOTR7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 May 2020 15:17:59 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70349C061A0C
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 12:17:59 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id h15so3140940edv.2
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 12:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zbFsGFMIlvy1kKOGqgavt+ubA29TnTVOTBRv6vIQjH0=;
        b=DYjN1UQ+2UifVP6w0ZHdAS+uaK/GP/9FOFhOPYeVr635TTaqdqu+hbJhqccicAI5lx
         Cbo4FdRrTW0jq/ekvklHVpsOkZBAOYDwp+KcZCiioXOsJ7nN1THWpRDJ8kkCV5qWtm0g
         AF/+1417vIKTX3DYRaoeOUt3wKN4+Ft836iqIjoOgl+X6UJGNj2GLPekJh8DuKYjf3UE
         AXjUmpSfyNeiq8S37ot0NrUeGh3+vXZJaYGwsPNrz9mVCSVhK6B96CRah6XKUOsEhypz
         ryKvBFjGDOrNVUKj4PYHDUpHNw82luHfzbGnyDdIGkha6PdBAja9wmcuYdT0B/+oY+TA
         MbhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zbFsGFMIlvy1kKOGqgavt+ubA29TnTVOTBRv6vIQjH0=;
        b=brFuCCzok0qTt/ZRBNeRSXnJt/8W04Ksoat1+uuXhe2R/NEtfBM2RHjmv08w3B10TQ
         llNFLywW9mF5BLjxlCMFiKSG+yPQhCpDsMBgTzcH50r72S4Zn4F2bWBtRAVM1N1SOjvp
         geFTXaymG1Rk1846NgsRISHmSRJPQPd4C6cb6Db+qVhyYD+KNsexn2bqBAkcL5vCdRMy
         N1+mQrFtG0nHaKNYbGDLPQDDcLHeYynkyrVB/Mljqn5LCg74idizf8UlnQZ3OhdDrChQ
         ZcZAHzLzu9fNJMq4xOWGafdbqvbZkkxIAHO7WNelJIedveYSR/Ljzr3w5oitaF+MgKHu
         R9ng==
X-Gm-Message-State: AOAM532oa0Sj3HfKj1dm/ujODXvANrhjLJKhyxpjy3/kXedIQgnLEHnw
        htjNkIhdwOdDB7VYKdQTT359ZviR5MeT+8s5zACqfw==
X-Google-Smtp-Source: ABdhPJz0Ek3DDmLsyu6vepzg7IcDPqIXlEvChPtaCxV8HF3LZLhlke8gwyZn2f1RjvDzPYken2umNdX2JOgQpllNx+E=
X-Received: by 2002:a50:ee04:: with SMTP id g4mr4273534eds.221.1589570278060;
 Fri, 15 May 2020 12:17:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200515184434.8470-1-keescook@chromium.org> <20200515184434.8470-2-keescook@chromium.org>
In-Reply-To: <20200515184434.8470-2-keescook@chromium.org>
From:   Pavel Tatashin <pasha.tatashin@soleen.com>
Date:   Fri, 15 May 2020 15:17:22 -0400
Message-ID: <CA+CK2bBV2vT-4NCsBnbuKM7YtDM=y9tV3mOcb+Mh+mW=YxF5Lg@mail.gmail.com>
Subject: Re: [PATCH v4 1/6] printk: Collapse shutdown types into a single dump reason
To:     Kees Cook <keescook@chromium.org>
Cc:     Petr Mladek <pmladek@suse.com>, Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Benson Leung <bleung@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 15, 2020 at 2:44 PM Kees Cook <keescook@chromium.org> wrote:
>
> To turn the KMSG_DUMP_* reasons into a more ordered list, collapse
> the redundant KMSG_DUMP_(RESTART|HALT|POWEROFF) reasons into
> KMSG_DUMP_SHUTDOWN. The current users already don't meaningfully
> distinguish between them, so there's no need to, as discussed here:
> https://lore.kernel.org/lkml/CA+CK2bAPv5u1ih5y9t5FUnTyximtFCtDYXJCpuyjOyHNOkRdqw@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Maybe it makes sense to mention in the commit log that for all three
merged cases there is a pr_emerg() message logged right before the
kmsg_dump(), thus the reason is distinguishable from the dmesg log
itself.

Reviewed-by: Pavel Tatashin <pasha.tatashin@soleen.com>
