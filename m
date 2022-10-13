Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A21A65FE398
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 22:57:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbiJMU5C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 16:57:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229942AbiJMU5C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 16:57:02 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 351D3183E22
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 13:57:01 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id x31-20020a17090a38a200b0020d2afec803so2962465pjb.2
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 13:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BYaziEJ7Yp9qYJtgvX45VBWyIc4HpzXkckmVSYMctDg=;
        b=aJk3zaDZBm8/UfgByPmkSLx0Vn2au4SnrDGkqEZx678j8ppPLR63VNqItjjiNuCpg9
         fkYAXsQbLzJ/56eRN468M6UdAHgbhtmjhEj+Oqlr9V4dwPwbdP8VU7oWHHSssSWHQ2H7
         INNNgJO/hpggwLtPMbDLUSCW4l207dMLzHvbt7KwNKkoOg3C7juBuuK6OGjzqYWFJkFz
         s2r6Bl1TNIMs9iZOAfJapAZXcSVTzqsk3pLQDS9VsPHz51J6m8CAoNUToNUXiNgqMq1A
         mapi5McJR4DRt7MHYGyDbBjKIEnwJZ/OQeuvddUb66cveEUBszpMqxefjN9vvEQbx82v
         MInA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BYaziEJ7Yp9qYJtgvX45VBWyIc4HpzXkckmVSYMctDg=;
        b=Wz/BAdLvZjlIk0+UvvlDNy7pqnnI6ba1LBXZX0ubx1WK71ATFLaMME+a6TmP3wcife
         VHhK8IfHueHno2POJWxpEJanecEwzHAXYLe6qoTkYhePAwAvWIS5VP7+33oX2cOKkf1J
         Aanrz/7/xpLz+zKuY4h1tWPYeTMezwgMx9WgLcMR95fw8tzlVQlfDceul/KdAOpZyRFp
         +uGp2MsKl/5KF+QzW+voThPEjc54kakn1vib09HSewlMyr5P5l6K7xj+bmmsVxCvE7sr
         tkRuv7cPl4+C6B1UuLwz30Iyl5DKskF2w2qiZBRPaAfNTF6stfnlGUgFNbjWlaTTfblv
         LlJQ==
X-Gm-Message-State: ACrzQf1bAS4pWX9Ox9yRzCcz1B5/zI4J9C4xex7TvPGUY9gX2pOz7DDA
        fUIhULAIpSUdnIvuUdXipadQy4mTC4ub4k39JHnZLw==
X-Google-Smtp-Source: AMsMyM6MOeEKW0yihGodYRFpUfcMXSeOibakzhbNseqUJSB45y2DUEHx6M2yKYsQfl67TCq68IsL8c94sjwX/8LX6Qo=
X-Received: by 2002:a17:90b:3a88:b0:209:f35d:ad53 with SMTP id
 om8-20020a17090b3a8800b00209f35dad53mr13382600pjb.102.1665694620565; Thu, 13
 Oct 2022 13:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20221012174622.45006-1-cgzones@googlemail.com>
In-Reply-To: <20221012174622.45006-1-cgzones@googlemail.com>
From:   Nick Desaulniers <ndesaulniers@google.com>
Date:   Thu, 13 Oct 2022 13:56:49 -0700
Message-ID: <CAKwvOdk+dLP+0iZmKVNdgi7425DLZpMH+9dHnASzKZeXUnkiiA@mail.gmail.com>
Subject: Re: [PATCH] of: declare string literals const
To:     =?UTF-8?Q?Christian_G=C3=B6ttsche?= <cgzones@googlemail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Tom Rix <trix@redhat.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 12, 2022 at 10:46 AM Christian G=C3=B6ttsche
<cgzones@googlemail.com> wrote:
>
> of_overlay_action_name() returns a string literal from a function local
> array.  Modifying string literals is undefined behavior which usage of
> const pointer can avoid.  of_overlay_action_name() is currently only
> used once in overlay_notify() to print the returned value.
>
> While on it declare the data array const as well.
>
> Reported by Clang:
>
>     In file included from arch/x86/kernel/asm-offsets.c:22:
>     In file included from arch/x86/kernel/../kvm/vmx/vmx.h:5:
>     In file included from ./include/linux/kvm_host.h:19:
>     In file included from ./include/linux/msi.h:23:
>     In file included from ./arch/x86/include/asm/msi.h:5:
>     In file included from ./arch/x86/include/asm/irqdomain.h:5:
>     In file included from ./include/linux/irqdomain.h:35:
>     ./include/linux/of.h:1555:3: error: initializing 'char *' with an exp=
ression of type 'const char[5]' discards qualifiers [-Werror,-Wincompatible=
-pointer-types-discards-qualifiers]
>                     "init",
>                     ^~~~~~
>     ./include/linux/of.h:1556:3: error: initializing 'char *' with an exp=
ression of type 'const char[10]' discards qualifiers [-Werror,-Wincompatibl=
e-pointer-types-discards-qualifiers]
>                     "pre-apply",
>                     ^~~~~~~~~~~
>     ./include/linux/of.h:1557:3: error: initializing 'char *' with an exp=
ression of type 'const char[11]' discards qualifiers [-Werror,-Wincompatibl=
e-pointer-types-discards-qualifiers]
>                     "post-apply",
>                     ^~~~~~~~~~~~
>     ./include/linux/of.h:1558:3: error: initializing 'char *' with an exp=
ression of type 'const char[11]' discards qualifiers [-Werror,-Wincompatibl=
e-pointer-types-discards-qualifiers]
>                     "pre-remove",
>                     ^~~~~~~~~~~~
>     ./include/linux/of.h:1559:3: error: initializing 'char *' with an exp=
ression of type 'const char[12]' discards qualifiers [-Werror,-Wincompatibl=
e-pointer-types-discards-qualifiers]
>                     "post-remove",
>                     ^~~~~~~~~~~~~
>
> Signed-off-by: Christian G=C3=B6ttsche <cgzones@googlemail.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  include/linux/of.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/include/linux/of.h b/include/linux/of.h
> index 6b79ef9a6541..8b9f94386dc3 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -1549,9 +1549,9 @@ enum of_overlay_notify_action {
>         OF_OVERLAY_POST_REMOVE,
>  };
>
> -static inline char *of_overlay_action_name(enum of_overlay_notify_action=
 action)
> +static inline const char *of_overlay_action_name(enum of_overlay_notify_=
action action)
>  {
> -       static char *of_overlay_action_name[] =3D {
> +       static const char *const of_overlay_action_name[] =3D {
>                 "init",
>                 "pre-apply",
>                 "post-apply",
> --
> 2.37.2
>


--=20
Thanks,
~Nick Desaulniers
