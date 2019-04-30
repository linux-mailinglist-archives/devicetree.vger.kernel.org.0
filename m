Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6ADBDFDDC
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2019 18:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726167AbfD3Q3Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Apr 2019 12:29:24 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:40110 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726006AbfD3Q3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Apr 2019 12:29:24 -0400
Received: by mail-pf1-f196.google.com with SMTP id u17so3354081pfn.7
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2019 09:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M8CMI/W3q+BSC73DTflngmeta3WjHrDaqS1WHzzkYCk=;
        b=veTmN8YaZ3bNLDr94/iiI2YhDH1dk7szUetYQ4x7FThsIr2WCCAOOppzZgcXwaTV1x
         iaifTKBgUYNlpfmoUIQ58b5TLqg72BgDJLt+5rQEZ+yaJ/agYTsEaMsPgrYrg7mXcRSt
         UQ7KeXvjLfA5h4yBMrCkQf8zUJ7mVQfqu6zVGrwheBEMBPP0CqYFcKDlqhYZ/DE/9b3Y
         vQg63MCbKkW5Godw8bKTv6Eqacr8WJVry7H8vHiz2r0nGdoWnOdJ++kq8DWu3FnAAnno
         4nEXdiZY0lRja41CnQ/cZFRGDg0Y6g3ltiq0mgXmdOAA7XUN+aKQYpM1RgYMk7d1CKSv
         SiDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M8CMI/W3q+BSC73DTflngmeta3WjHrDaqS1WHzzkYCk=;
        b=d3mTvuvJJ+a7thQNF9H7G/GBeIJFu67/rxQPcJjm7xJ4+MICw1NmJXvd9x5p8lrWFq
         8eGBFetCqICMZnReyRI7WY33GJBwDgRiLf6hLCz1MX3ARruVGjz+bycTYWArismEWNs6
         1MrWwDFkqlF+bDkiZYdoYepJiMDBseCZgplOHs+VFjGubBZjmWfzzfsS+NCTk/n1FGam
         m77mNuaR29mv06akM9/mkChMFV6DKvLP+mZxzuLYfpTGIJAdKgHUqOrLgGI39DkHvfCE
         x0VC6+8d9m1QbJH761WJ+tEEzs/ZY8i0UKNcfVm7zpVVlktzGccvdJ6ZYpZj3DP+y2AS
         SYTw==
X-Gm-Message-State: APjAAAULBGaRg+HdfVaD3ouuWvAVcnmu11ceGsTj6hh+kh830gb7cBqL
        7BaUGBw7S+hLkY3rbDrL2dKX9AgJ/oMWr6BZh0+Czw==
X-Google-Smtp-Source: APXvYqwAcVVfpquk09wow26pwxwIdNJqiUwANpR/06l/uFpJFmV2MWFMo4DRtnuE3eA8Sgq6jqSi8swP2KVzAKTVWF4=
X-Received: by 2002:a63:cc48:: with SMTP id q8mr528012pgi.202.1556641763398;
 Tue, 30 Apr 2019 09:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <46b3e8edf27e4c8f98697f9e7f2117d6@AcuMS.aculab.com>
 <20190430145624.30470-1-tranmanphong@gmail.com> <CAKwvOdmvA4sO7UsXW4DapO_HKodeWFwA_5FsNe_wVjneZBYYdg@mail.gmail.com>
In-Reply-To: <CAKwvOdmvA4sO7UsXW4DapO_HKodeWFwA_5FsNe_wVjneZBYYdg@mail.gmail.com>
From:   Nick Desaulniers <ndesaulniers@google.com>
Date:   Tue, 30 Apr 2019 09:29:12 -0700
Message-ID: <CAKwvOdntTmHBinCK0T_8OZ-2ksUHkQBvDyR8WrxZdW=+yu25dw@mail.gmail.com>
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

On Tue, Apr 30, 2019 at 9:28 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Apr 30, 2019 at 7:58 AM Phong Tran <tranmanphong@gmail.com> wrote:
> >
> > Now, make the loop explicit to avoid clang warning.
> >
> > ./include/linux/of.h:238:37: warning: multiple unsequenced modifications
> > to 'cell' [-Wunsequenced]
> >                 r = (r << 32) | be32_to_cpu(*(cell++));
> >                                                   ^~
> > ./include/linux/byteorder/generic.h:95:21: note: expanded from macro
> > 'be32_to_cpu'
> >                     ^
> > ./include/uapi/linux/byteorder/little_endian.h:40:59: note: expanded
> > from macro '__be32_to_cpu'
> >                                                           ^
> > ./include/uapi/linux/swab.h:118:21: note: expanded from macro '__swab32'
> >         ___constant_swab32(x) :                 \
> >                            ^
> > ./include/uapi/linux/swab.h:18:12: note: expanded from macro
> > '___constant_swab32'
> >         (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
> >                   ^
> >
> > Signed-off-by: Phong Tran <tranmanphong@gmail.com>
>
> Thanks for the patch.
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/460
> Suggested-by: David Laight <David.Laight@ACULAB.COM>

sent too soon...
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
Thanks,
~Nick Desaulniers
