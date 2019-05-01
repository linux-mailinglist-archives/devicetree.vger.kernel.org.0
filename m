Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0072A10C9B
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 20:13:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726101AbfEASNN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 14:13:13 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:33141 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726004AbfEASNN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 14:13:13 -0400
Received: by mail-pg1-f194.google.com with SMTP id k19so8635305pgh.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 11:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QjVR2bg3lSzD+1vdiSDKM7exDphVwFLvdYeDDZ13SDQ=;
        b=pgsKREkPdHanvUyiOKIS7OGkxqp1Zct7ysG5ZChSVy/BmLHOEU9//LW3HXzjXrGWWL
         ATOs+ek09DTigflog3zuMNBf5Trm/TiYLWtcdU6/FRAFBlGTEjZgQ2UTSfxMzYQ/N54z
         XGs+TQRzb8t7d8HZ7uqvwsgkITjNRL/1VYMgy9oiXFeKdsMbmTuSIb3WxgmOnsw4sRUs
         mTHNy/DnInflLneVNBHEt1z6oklY5ZZZCzkHmI/A9hPYMmhyRd/oOcuI+qOEv/p3pRQO
         jwbDmURzTawoAr5+E/l2UlR/69gTjhhpvgG0zEkClHn+a2EsiDEab3yQMN+r9AVnjXOo
         pe6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QjVR2bg3lSzD+1vdiSDKM7exDphVwFLvdYeDDZ13SDQ=;
        b=iQK0NUTf6Dh3+QkihODKakV04Z7hKeLvzdtnQWk0PgDGrqDWscrw4rm69t5AOpA16K
         znt2/jSz26b4pF/tsbbEaryADsm2H5igHWEz9UyyGdkXfpMoXaqKxt4gUij5HR1bmcqa
         YlnD9DzlkAJqQXrED42vl5kKetVzgoLShyZnE7S/3UEap5f5RQczAXaAFRdDnlHR0535
         pz7oqOJcVIpxWskCyl5vfbWaeFtZbJHr5MqJdKufzDWWX108C+OKmO6d5Sjd0WOf2xqE
         E/IcOBLTNQAC5cng0R0R69pyprEGlY52ga+FJ05ITRu1DyPDlpm03d4gHW4h/VtntfVK
         rqCA==
X-Gm-Message-State: APjAAAUP7QwPvX2MbfN9j7wNSNAHRaIxGFMi3pcVTiXpLbciRGewIJKu
        242HlStMMLqWAbYFNhWcIm5/Aje/RQNRdcutJwfp8A==
X-Google-Smtp-Source: APXvYqzX+NRNbH/ziRd4am7ygEoMzC1ex0vXZcwj82yXdcoP8C02dPXgnXc0PgYXm7Ki5p25cGPdqkFsgxE2CnUMJTw=
X-Received: by 2002:a63:f817:: with SMTP id n23mr33732919pgh.302.1556734392354;
 Wed, 01 May 2019 11:13:12 -0700 (PDT)
MIME-Version: 1.0
References: <46b3e8edf27e4c8f98697f9e7f2117d6@AcuMS.aculab.com>
 <20190430145624.30470-1-tranmanphong@gmail.com> <CAKwvOdmvA4sO7UsXW4DapO_HKodeWFwA_5FsNe_wVjneZBYYdg@mail.gmail.com>
 <CAKwvOdntTmHBinCK0T_8OZ-2ksUHkQBvDyR8WrxZdW=+yu25dw@mail.gmail.com>
In-Reply-To: <CAKwvOdntTmHBinCK0T_8OZ-2ksUHkQBvDyR8WrxZdW=+yu25dw@mail.gmail.com>
From:   Nick Desaulniers <ndesaulniers@google.com>
Date:   Wed, 1 May 2019 11:13:01 -0700
Message-ID: <CAKwvOdnVrm9MyBkWL=yykX0td-c6uB3=Ymo0hr8wMQG1QESreg@mail.gmail.com>
Subject: Re: [PATCH V2] of: fix clang -Wunsequenced for be32_to_cpu()
To:     robh+dt@kernel.org, Frank Rowand <frowand.list@gmail.com>,
        pantelis.antoniou@konsulko.com
Cc:     David.Laight@aculab.com, hch@infradead.org,
        Nathan Chancellor <natechancellor@gmail.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Phong Tran <tranmanphong@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 30, 2019 at 9:29 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Apr 30, 2019 at 9:28 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > Thanks for the patch.
> > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/460
> > Suggested-by: David Laight <David.Laight@ACULAB.COM>
>
> sent too soon...
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

We'll also need this for stable, can the maintainers please add the
following tag if it's not too late:

Cc: stable@vger.kernel.org

to unbreak ppc back through at least 4.14.
-- 
Thanks,
~Nick Desaulniers
