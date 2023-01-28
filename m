Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73DA767F2CE
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 01:12:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232296AbjA1AMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 19:12:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbjA1AMY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 19:12:24 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9A28C14F
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 16:12:23 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id z13so6562738plg.6
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 16:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QfSzQb0mn3RsZbwmCdOsGY9lWarr0Do0dd+IyLOh3eQ=;
        b=YsKia6MOuy//+Z37k2hY2xgGXTbLVtiw3/nid7Qq8fybenqEUubul9iFBJObRGElFg
         azPE0ymJFwv0eb/aQ0s/Y0lA9ofMSuIZv3581HFUBRC0vwuo8tRKP5/3ElQkTcAD5rHh
         5afwIZth902Z2uOukLw0m/2Vsjgi0g8aBB1j0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QfSzQb0mn3RsZbwmCdOsGY9lWarr0Do0dd+IyLOh3eQ=;
        b=sQx/vf4TlIqHbVet4wUzu0KOT5MZ+BoXwCxXromEwvWhNKbaM6UT2zNfjcrGT8kCX1
         p72QQ81aGwgOaSUkvFPx/rqV8KnII1T2iR93iZumPTsZnBQ+gN52MdfZNvPHp6zlzrXu
         wSecXW803BxXsXAxfcpxSNviXfl9MfKLkqm1hVp2tTIRLo44S/MO+qdAne7CJ9vcuq60
         vqs1CcpTmBnBy+iwz3LnTF9B97OP9+qvXVAISNTkQPo7AIBgL1zTLPvXcJ6lZkk/PZCK
         vSfjlykmQZDzBCZtgbBzdPfooVQVVCDWkTN+bnfbW4a2rK1Wlqql3IIWMRUMtp8kHvQN
         homQ==
X-Gm-Message-State: AFqh2kpHW5oEuyO2WpXyFo4rKIMMMQqPaDR8caQjqtchexiGOIAO15De
        By7FXy87075lBMX9prgx0ufZrA==
X-Google-Smtp-Source: AMrXdXutL9tt03XB19XKLEssq4U1X4SNds46C2Sf+vO2QepCIinzcIrLmOLgUqNF+kyyyUggQZ4+Gg==
X-Received: by 2002:a17:902:a40f:b0:194:5ff8:a3b0 with SMTP id p15-20020a170902a40f00b001945ff8a3b0mr37807189plq.7.1674864743313;
        Fri, 27 Jan 2023 16:12:23 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j14-20020a170902da8e00b001928c9d772bsm3386016plx.206.2023.01.27.16.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 16:12:22 -0800 (PST)
Date:   Fri, 27 Jan 2023 16:12:21 -0800
From:   Kees Cook <keescook@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH] scripts/dtc: Replace 0-length arrays with flexible arrays
Message-ID: <202301271609.15F0E5EB15@keescook>
References: <20230127224101.never.746-kees@kernel.org>
 <CAL_JsqKVp57NtR11JV-eXktMU9_dQ+8sF8YSPe7KyazrvJB-eQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqKVp57NtR11JV-eXktMU9_dQ+8sF8YSPe7KyazrvJB-eQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 27, 2023 at 05:44:13PM -0600, Rob Herring wrote:
> On Fri, Jan 27, 2023 at 4:41 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > Replace the 0-length array with a C99 flexible array. Seen with GCC 13
> > under -fstrict-flex-arrays:
> >
> > In file included from ../lib/fdt_ro.c:2:
> > ../lib/../scripts/dtc/libfdt/fdt_ro.c: In function 'fdt_get_name':
> > ../lib/../scripts/dtc/libfdt/fdt_ro.c:319:24: warning: 'strrchr' reading 1 or more bytes from a region of size 0 [-Wstringop-overread]
> >   319 |                 leaf = strrchr(nameptr, '/');
> >       |                        ^~~~~~~~~~~~~~~~~~~~~
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Frank Rowand <frowand.list@gmail.com>
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  scripts/dtc/libfdt/fdt.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Changes to dtc/libfdt go to upstream dtc first and then we sync them back.

Ah-ha, I've found it: https://github.com/dgibson/dtc

Thanks!

-- 
Kees Cook
