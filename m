Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F357C1C0DB5
	for <lists+devicetree@lfdr.de>; Fri,  1 May 2020 07:28:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728146AbgEAF2s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 May 2020 01:28:48 -0400
Received: from conssluserg-06.nifty.com ([210.131.2.91]:47235 "EHLO
        conssluserg-06.nifty.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726452AbgEAF2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 May 2020 01:28:47 -0400
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41]) (authenticated)
        by conssluserg-06.nifty.com with ESMTP id 0415SXii008358
        for <devicetree@vger.kernel.org>; Fri, 1 May 2020 14:28:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 0415SXii008358
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
        s=dec2015msa; t=1588310914;
        bh=Lihik2cBhW70WomNy/s9Og7/35fnSWQpggQSRHF89jM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Dr790wS6aa8tV0o4i4a8YjtJSBuyxt6B87N7RWRuQRpX8B6m5V0DC1jwUk0gfokeP
         0Jl2gCrUumWbXUMKCnLdnxVnNB5Ad64+eH3oOd7ymQ2ydwUkUNfEENzV8YdEKH/Xru
         P+1ivnXCVPVrDJbAyHK517R0vzJKXlhsm0aJDWgGqh8QUsLH0oPWYGvMHnbVqhjmrB
         b5JNdRq09CEVp//7fedC77ltypzXwbgWro7ELOLMViH6roJNtKXzAb1bp/tosLbIjZ
         XjTHwgPkCe3zZe9LSETdqsw5FOt9GGSPoxxwv8mVtbXRtzBWuTVUpHfu8IEjqT1NP9
         vnLtuVIAgDIVQ==
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id z1so5736461vsn.11
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2020 22:28:34 -0700 (PDT)
X-Gm-Message-State: AGi0PubWgkLjwQLbU2RQ++tcHway8UNcFYqOlIfJdYV7St7v0M9bEZ8M
        F9u7zGb2Y3Oi4sk7qH5puWVFlMNdBWZXjL/G8jk=
X-Google-Smtp-Source: APiQypJKuzITLVDUcDeyzRvu4ZvHu/8/jcIsUD1BXb96teQq1JzxXVx29icSnKi+D+QHTe6lzxbKV6pHqsAtjMiIzZQ=
X-Received: by 2002:a67:6e07:: with SMTP id j7mr2033439vsc.181.1588310912967;
 Thu, 30 Apr 2020 22:28:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200501015147.32391-1-marek.behun@nic.cz>
In-Reply-To: <20200501015147.32391-1-marek.behun@nic.cz>
From:   Masahiro Yamada <masahiroy@kernel.org>
Date:   Fri, 1 May 2020 14:27:57 +0900
X-Gmail-Original-Message-ID: <CAK7LNARhK08CcDNij25PR0_r2A27Qx+psQp50_AgDJijexDAiA@mail.gmail.com>
Message-ID: <CAK7LNARhK08CcDNij25PR0_r2A27Qx+psQp50_AgDJijexDAiA@mail.gmail.com>
Subject: Re: [PATCH] dtc: Use better check for libyaml
To:     =?UTF-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>
Cc:     DTML <devicetree@vger.kernel.org>,
        Pavel Modilaynen <pavel.modilaynen@axis.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 1, 2020 at 10:53 AM Marek Beh=C3=BAn <marek.behun@nic.cz> wrote=
:
>
> The current check for libyaml based on pkg-config may succeed even if
> yaml.h header is missing. Try to determine if the header is also present
> by compiling a simple program.
>
> Fixes: 067c650c456e ("dtc: Use pkg-config to locate libyaml")
> Signed-off-by: Marek Beh=C3=BAn <marek.behun@nic.cz>
> Cc: Pavel Modilaynen <pavel.modilaynen@axis.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> ---


Is it possible to fix the .pc file instead?

This is ugly, and I do not know what is the
point of pkg-config if it cannot detect the pkg correctly.





>  scripts/dtc/Makefile | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
>
> diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
> index ef85f8b7d4a7..75045787f897 100644
> --- a/scripts/dtc/Makefile
> +++ b/scripts/dtc/Makefile
> @@ -12,15 +12,24 @@ dtc-objs    +=3D dtc-lexer.lex.o dtc-parser.tab.o
>  # Source files need to get at the userspace version of libfdt_env.h to c=
ompile
>  HOST_EXTRACFLAGS :=3D -I $(srctree)/$(src)/libfdt
>
> -ifeq ($(shell pkg-config --exists yaml-0.1 2>/dev/null && echo yes),)
> +_yaml_libs =3D $(shell pkg-config --libs yaml-0.1 2>/dev/null)
> +_cmd_has_yaml =3D                                                       =
         \
> +   { echo "\#include <yaml.h>" ;                                       \
> +     echo "int main(){" ;                                              \
> +     echo "yaml_get_version(NULL,NULL,NULL);" ;                         =
       \
> +     echo "}" ; } |                                                    \
> +   $(HOSTCC) -xc - -o /dev/null $(_yaml_libs) 2>/dev/null && echo yes
> +_has_yaml =3D $(shell $(_cmd_has_yaml))
> +
> +ifeq ($(_has_yaml),yes)
> +dtc-objs       +=3D yamltree.o
> +HOSTLDLIBS_dtc :=3D $(_yaml_libs)
> +else
>  ifneq ($(CHECK_DT_BINDING)$(CHECK_DTBS),)
>  $(error dtc needs libyaml for DT schema validation support. \
>         Install the necessary libyaml development package.)
>  endif
>  HOST_EXTRACFLAGS +=3D -DNO_YAML
> -else
> -dtc-objs       +=3D yamltree.o
> -HOSTLDLIBS_dtc :=3D $(shell pkg-config yaml-0.1 --libs)
>  endif
>
>  # Generated files need one more search path to include headers in source=
 tree
> --
> 2.24.1
>


--=20
Best Regards
Masahiro Yamada
