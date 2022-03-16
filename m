Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 412EB4DA8A6
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 03:52:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353353AbiCPCxD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 22:53:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244717AbiCPCxB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 22:53:01 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A2CF5D5D3
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 19:51:48 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id i11so25800plr.1
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 19:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=AYHjzsyjRmUc4OJ6wH8zfYo7ibjgR1tXCd77sc7RSAg=;
        b=heKvuWgQr5VoHoQl4h09u4O/8GGphb7ssh8IqJxyD98rdVexqrbAfvjuWmUO+TzJhW
         vo61dtbQBe1ziAwtwjYKInKObl0XRwSK81elk3LnXWSDGENZY0MywgWBdWbnCH/8YWna
         sRpPiwn+n6k5Pi+1r0Tx5K5gHG1IrBU7XFL7SSKhnZFem+mXx9BTvVQpeoCrGoxGyybq
         S7/Lw10eQyay9N9Q8Y3Xrv9hnliUWcgo1FgjaizxzB6a4NRb+e6rL5U8JzRlAldi27FT
         gAZ48IsbrqMxGmqtaKiB/AWahUKFMzvSknBsf+ueWUUDw6deCXvl0e/X5Qde8i4eaPIW
         gKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AYHjzsyjRmUc4OJ6wH8zfYo7ibjgR1tXCd77sc7RSAg=;
        b=fXC78+CSzaLydkxNFPVBCsX+TBHgMFrngt26IObSfb/OWdirBLeYermW/kzU8JCoiN
         9piIMT76WQqXSL9GOiTQIhP7Yr6JfJGtnGCBN7hkmDyjaad7Btig9aqz0s94MFaINLSK
         myA9t2Io/N3Ou3fpWkxz5rhuQK7TQocNwiPGbn4AGaVw6k1YQ9sAja2qnSK4RoM1E7Db
         Luj4fWcN2YO4hE1X+sEtzoVzP712ZyQiEV8H+O+oGDseG3o6Cb2WD6rNjlF4iV77SqQC
         vk5jmLNBhKgzZBDNPGEs4jTcfk8Rx0ZRHjvQlIP/cSBQgGIHOHzNvjQbcaQcX2Nv/AQG
         BwqA==
X-Gm-Message-State: AOAM531S6omlS3gfuEnJZ75zRqzV3nvs/LyGkKkXvCJ7gjSRIdZO7ZIE
        t/Yu6NsQgIv+s9W80j1sZ++MTA==
X-Google-Smtp-Source: ABdhPJywnuIpV4rpwTvcBK1Ts8mfgkpqjlL3K+BiNlxFqZuhiF0aqHb13KjDHMleqMwblr0gLsLkdA==
X-Received: by 2002:a17:902:c745:b0:153:b0e:8586 with SMTP id q5-20020a170902c74500b001530b0e8586mr31175866plq.9.1647399107340;
        Tue, 15 Mar 2022 19:51:47 -0700 (PDT)
Received: from google.com (223.103.125.34.bc.googleusercontent.com. [34.125.103.223])
        by smtp.gmail.com with ESMTPSA id i11-20020a056a00004b00b004f6907b2cd3sm530269pfk.122.2022.03.15.19.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 19:51:47 -0700 (PDT)
Date:   Wed, 16 Mar 2022 02:51:42 +0000
From:   Chun-Tse Shao <ctshao@google.com>
To:     Masahiro Yamada <masahiroy@kernel.org>
Cc:     Nick Desaulniers <ndesaulniers@google.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Rob Herring <robh+dt@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        David Howells <dhowells@redhat.com>,
        David Woodhouse <dwmw2@infradead.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Josh Poimboeuf <jpoimboe@redhat.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        keyrings@vger.kernel.org, DTML <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4] config: Allow kernel installation packaging to
 override pkg-config
Message-ID: <YjFQvhv7I6w8xjbK@google.com>
References: <20220306223016.2239094-1-ctshao@google.com>
 <CAKwvOdnmtRYnSx3VvG=PEnzpzWa8f=0bn1xDymjER5EShS2tmw@mail.gmail.com>
 <YiaMJCHOOuujHwiK@google.com>
 <CAK7LNAS-=Fne6fyiqzQ6DwNLOdF-HAY9Libn10uyV9GmQQMUKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK7LNAS-=Fne6fyiqzQ6DwNLOdF-HAY9Libn10uyV9GmQQMUKQ@mail.gmail.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Tue, Mar 08, 2022 at 01:01:45PM +0900, Masahiro Yamada wrote:
> On Tue, Mar 8, 2022 at 7:50 AM Chun-Tse Shao <ctshao@google.com> wrote:
> >
> > On Mon, Mar 07, 2022 at 10:17:17AM -0800, Nick Desaulniers wrote:
> > > On Sun, Mar 6, 2022 at 2:39 PM Chun-Tse Shao <ctshao@google.com> wrote:
> > > >
> > > > Add HOSTPKG_CONFIG to allow tooling that builds the kernel to override
> > > > what pkg-config and parameters are used.
> > >
> > > Sorry, kind a late thought here for v4, but we don't seem to prefix
> > > many other host side tools with HOST_, i.e. LEX, YACC, AWK, PERL,
> > > PYTHON3, etc.  Maybe just having the variable identifier be simply
> > > PKGCONFIG rather than HOSTPKG_CONFIG then put it at the end of the
> > > list in the top level Makefile after ZSTD (i.e. the list of host
> > > tools)?  There's HOST_ prefixes when there's more than one tool
> > > involved (i.e. host compiler vs target compiler), but I suspect
> > > there's no such distinction for the existing uses of pkg-config?
> > >
> > Thanks for your suggestion, Nick! Yes I think it makes sense with PKGCONFIG
> > instead of HOSTPKG_CONFIG since there is only one tool involved. I will
> > work on it and submit a new patch.
> >
>
> Please hold on.
>
> I was also wondering what to do with the "HOST" prefix.
>
> Libraries are usually arch-dependent.
> (in other words, pkg-config should return different library paths
> for $(CC) and $(HOSTCC) )
>
> You already understood this, so you added "HOST" prefix.
>
>
> Please let me take time for further discussion.
> I will come back to this when I get some time.
>
>

Hi Mashiro,

I was wondering if you were able to look more into this.

Thank you!

-CT

> In the meantime,
>   a8a5cd8b472ca20e5b8fa649c43b3756867322f8
> as reference info if you have not seen it.
>
>
> How many distros support something like
> "aarch64-linux-gnu-pkg-config"  ?
>
> Ubuntu 18.04 and 20.04 seem to support it.
> I do not know for others.
>
>
>
>
>
> --
> Best Regards
>
> Masahiro Yamada
