Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E5E23FDDA
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2019 18:28:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726102AbfD3Q2s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Apr 2019 12:28:48 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:40059 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725942AbfD3Q2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Apr 2019 12:28:48 -0400
Received: by mail-pf1-f196.google.com with SMTP id u17so3353145pfn.7
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2019 09:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1jOWjc9sv7NsGDbJtvu/TnPU13dJOvBN74NeQMobQak=;
        b=aUcKqWfe1AePUG3HV2kyOdwdr0VGaKqoEbIYWixjNLaiL8G5+KRY6tkNyDCWS60iH3
         HbylEF0Ymk5FdzhveDSHC5wR1sC6y2hQcgZE3xia98Mu7/EUSt48g0HkGJGpMYBGjKt6
         Wti509HNf2nx84Sbh0WRbDRiXk0xZ+ajevdIMK2LUXfZj0kdEPONrSuC7+TCY8eam8sd
         KDyVXFVzJ1epQxuK8H9pUutHdRw8KmEAiGyQXUGEBzN/SJKzf3MHa383CWMaY9+Btc8v
         tWjCvkbo8CC9UtlnZpb3Z77HV+20mDRfzVlQeN7XM1d09TajBMW/3iqZwSYGm/ChTMXX
         oLZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1jOWjc9sv7NsGDbJtvu/TnPU13dJOvBN74NeQMobQak=;
        b=esm8A5jsKQ3I6YX0ZzvsEdATxlfKdPVS7javuBc9weE3mKcdiWbBVe+mtlXdM5pJFK
         yW4NjOmNY+x65F7BuhfQ2EcY82WPnf7H1l7nfYhG11L7bFf2RT3VB/xbk9vFW/163UDC
         haNFZ9jcM2kdmtFml1o2x4bz7kjRmFwjg02EMWI4JRnF5c28kdlt1OeKN5nsqhBsVp4n
         4+ssaFHD7Jtiw8jfmIVEIg/2f2ymumxHPXzDXTNEIjOSZyrto3sU9OGuy/GbUYLlHDa6
         fNcxtf1woI39WwtqwbpTkJfVlQoU5HH+5jamzln2IZTi1HXqO/URvYS6prOw++XjiKvw
         cFxQ==
X-Gm-Message-State: APjAAAW3r+HTM8BMTMGLYtpOWShmgEsIJ6dwe3JQIfb5fDCpEnAEZqRK
        gtH4+bHM2ciPKXeshiUeo4QbCn6kC09zRWhN1NsfDg==
X-Google-Smtp-Source: APXvYqwXsmuopCUIMKHrBDPBKxlS+tGIhXcAOqEEvvQNthFUz/mKPjHw7icNYsMv2vb4BFMqoDOfEBYTbI8DbVKwjms=
X-Received: by 2002:a63:f817:: with SMTP id n23mr25948490pgh.302.1556641726271;
 Tue, 30 Apr 2019 09:28:46 -0700 (PDT)
MIME-Version: 1.0
References: <46b3e8edf27e4c8f98697f9e7f2117d6@AcuMS.aculab.com> <20190430145624.30470-1-tranmanphong@gmail.com>
In-Reply-To: <20190430145624.30470-1-tranmanphong@gmail.com>
From:   Nick Desaulniers <ndesaulniers@google.com>
Date:   Tue, 30 Apr 2019 09:28:35 -0700
Message-ID: <CAKwvOdmvA4sO7UsXW4DapO_HKodeWFwA_5FsNe_wVjneZBYYdg@mail.gmail.com>
Subject: Re: [PATCH V2] of: fix clang -Wunsequenced for be32_to_cpu()
To:     Phong Tran <tranmanphong@gmail.com>
Cc:     robh+dt@kernel.org, Frank Rowand <frowand.list@gmail.com>,
        pantelis.antoniou@konsulko.com, David.Laight@aculab.com,
        hch@infradead.org, Nathan Chancellor <natechancellor@gmail.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 30, 2019 at 7:58 AM Phong Tran <tranmanphong@gmail.com> wrote:
>
> Now, make the loop explicit to avoid clang warning.
>
> ./include/linux/of.h:238:37: warning: multiple unsequenced modifications
> to 'cell' [-Wunsequenced]
>                 r = (r << 32) | be32_to_cpu(*(cell++));
>                                                   ^~
> ./include/linux/byteorder/generic.h:95:21: note: expanded from macro
> 'be32_to_cpu'
>                     ^
> ./include/uapi/linux/byteorder/little_endian.h:40:59: note: expanded
> from macro '__be32_to_cpu'
>                                                           ^
> ./include/uapi/linux/swab.h:118:21: note: expanded from macro '__swab32'
>         ___constant_swab32(x) :                 \
>                            ^
> ./include/uapi/linux/swab.h:18:12: note: expanded from macro
> '___constant_swab32'
>         (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
>                   ^
>
> Signed-off-by: Phong Tran <tranmanphong@gmail.com>

Thanks for the patch.
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/460
Suggested-by: David Laight <David.Laight@ACULAB.COM>

> ---
>  include/linux/of.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/include/linux/of.h b/include/linux/of.h
> index e240992e5cb6..71ca25ac01f6 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -234,8 +234,8 @@ extern struct device_node *of_find_all_nodes(struct device_node *prev);
>  static inline u64 of_read_number(const __be32 *cell, int size)
>  {
>         u64 r = 0;
> -       while (size--)
> -               r = (r << 32) | be32_to_cpu(*(cell++));
> +       for(; size--; cell++)
> +               r = (r << 32) | be32_to_cpu(*cell);
>         return r;
>  }
>
> --
> 2.21.0
>


--
Thanks,
~Nick Desaulniers
