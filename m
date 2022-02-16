Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EBE64B7C10
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 01:48:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245118AbiBPAsX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 19:48:23 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232906AbiBPAsW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 19:48:22 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25C409A4FF
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 16:48:11 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id p9so902570ejd.6
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 16:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/cjwcsK2Z/wcbTt8K+I1i/+ouqYtEz0ERgthhiM1bOw=;
        b=ARFSImXFCQU7/86E2XEtKSq0CRE6B9dQEi7undLJSyzlYLOiNOSeups5uVdSomKsjm
         yKkc4SeiPWzHEIVxAqaIVbJE87nRFD5s9LKNDTGUOEovpcK0eQsgzCLHhuLlK4vCws2v
         gIXKvTseMn6IDNJXZyCvhJrpvj0qj8Mq5diNMBSHWLO6CKhu9jy9OIhlqOEwKw4sY79N
         7NW+i18IXQp5l8j4+ThTcXzwApbAnModzuz6E74E4u7eus4xB0Qdb/ZQ4+HNk2KBbzHj
         fGX/MGyS5s4ccIT+YM7yAIIz2+oHTFLmR4MI5URnNO9jMdcAp5p30tATbGT+4mNCxyEj
         CBkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/cjwcsK2Z/wcbTt8K+I1i/+ouqYtEz0ERgthhiM1bOw=;
        b=ffVrLW9uKvcqzPdov78VohhS9lkQgPJll7+iufZN1DJUgjiaWBHsyaVUM90XIr+jCA
         PBy7NVSVdRTj5dCN7ei7xLtiaFox/iIRodAlQpCgCPYaZU38DywHo6ibjpUqHbFh0a1c
         mWePLhWuaOmnrTs0dA4ZTmDv5SBH1IIOneGiupyzbn5S4UzFoauzDKDEhI5By3OhykRE
         TVdqdl+brPhMUpk4DHQJLH6Imv+zz3tsW3lIY8u0vp6KeUPSDOCDOdED7Rw8vwX/LBsM
         0PboQ/vohh7vCHrPxWihnwMT2Fomnd4Z8FzJxBB7+jtkDOvP3zHe9yhXaz0jx4XoVG3j
         42Jw==
X-Gm-Message-State: AOAM531mg94Xy+m9+7Ih3Jqs3lbmFCf+65gnxXvP7UhGS9KOb0w5beaj
        6ggYMCKiJZofZVSDekUVrJEw74kZcopfFa3Q5hGWvFJ84HrTKbeP
X-Google-Smtp-Source: ABdhPJzu47NdUWSghRxixl+1E5UFiDId7J8+nY7TooqKzmlDusTv/KjWmcYYzJCPLw9xnOq5lNA87RPlJ5Vx4dKClxE=
X-Received: by 2002:a17:906:1995:b0:6ce:6b78:f9ec with SMTP id
 g21-20020a170906199500b006ce6b78f9ecmr392593ejd.459.1644972489613; Tue, 15
 Feb 2022 16:48:09 -0800 (PST)
MIME-Version: 1.0
References: <20220210214018.55739-1-atishp@rivosinc.com> <CAHBxVyGSB-LjTEwLXrw_UKn+VB56k6GtH7P8hMvU7qB530PqEA@mail.gmail.com>
 <3135135.4LZR2ihtLn@diego> <5047719.XZAooIIPeM@diego>
In-Reply-To: <5047719.XZAooIIPeM@diego>
From:   Atish Kumar Patra <atishp@rivosinc.com>
Date:   Tue, 15 Feb 2022 16:47:58 -0800
Message-ID: <CAHBxVyGQUPvo7cC3QMUM275Qti5OvnmWod3JT=JB6=Oxx3HrHQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] RISC-V: Implement multi-letter ISA extension
 probing framework
To:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc:     Atish Patra <atishp@atishpatra.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree <devicetree@vger.kernel.org>,
        Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 15, 2022 at 1:50 AM Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Am Dienstag, 15. Februar 2022, 10:48:16 CET schrieb Heiko St=C3=BCbner:
> > Am Dienstag, 15. Februar 2022, 10:12:53 CET schrieb Atish Kumar Patra:
> > > On Mon, Feb 14, 2022 at 3:22 PM Atish Kumar Patra <atishp@rivosinc.co=
m> wrote:
> > > >
> > > > On Mon, Feb 14, 2022 at 2:22 PM Heiko St=C3=BCbner <heiko@sntech.de=
> wrote:
> > > > >
> > > > > Am Montag, 14. Februar 2022, 21:42:32 CET schrieb Atish Patra:
> > > > > > On Mon, Feb 14, 2022 at 12:24 PM Heiko St=C3=BCbner <heiko@snte=
ch.de> wrote:
> > > > > > >
> > > > > > > Am Montag, 14. Februar 2022, 21:14:13 CET schrieb Atish Patra=
:
> > > > > > > > On Mon, Feb 14, 2022 at 12:06 PM Heiko St=C3=BCbner <heiko@=
sntech.de> wrote:
> > > > > > > > >
> > > > > > > > > Am Donnerstag, 10. Februar 2022, 22:40:16 CET schrieb Ati=
sh Patra:
> > > > > > > > > > Multi-letter extensions can be probed using exising
> > > > > > > > > > riscv_isa_extension_available API now. It doesn't suppo=
rt versioning
> > > > > > > > > > right now as there is no use case for it.
> > > > > > > > > > Individual extension specific implementation will be ad=
ded during
> > > > > > > > > > each extension support.
> > > > > > > > > >
> > > > > > > > > > Signed-off-by: Atish Patra <atishp@rivosinc.com>
> > > > > > > > >
> > > > > > > > > Tested-by: Heiko Stuebner <heiko@sntech.de>
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > By the way, does a similar parsing exist for opensbi as w=
ell?
> > > > > > > > > Things like svpbmt as well as zicbom have CSR bits contro=
lling how
> > > > > > > > > these functions should behave (enabling them, etc), so I =
guess
> > > > > > > > > opensbi also needs to parse the extensions from the ISA s=
tring?
> > > > > > > > >
> > > > > > > > >
> > > > > > > >
> > > > > > > > No. Currently, OpenSBI relies on the CSR read/write & trap =
method to
> > > > > > > > identify the extensions [1].
> > > > > > > >
> > > > > > > > https://github.com/riscv-software-src/opensbi/blob/master/l=
ib/sbi/sbi_hart.c#L404
> > > > > > >
> > > > > > > I guess my question is more, who is supposed to set CBIE, CBC=
FE bits in the
> > > > > > > ENVCFG CSR. I.e. at it's default settings CMO instructions wi=
ll cause
> > > > > > > illegal instructions until the level above does allow them.
> > > > > > >
> > > > > > > When the kernel wants to call a cache-invalidate, from my rea=
ding menvcfg
> > > > > > > needs to be modified accordingly - which would fall in SBI's =
court?
> > > > > > >
> > > > > >
> > > > > > I think so. I had the same question for the SSTC extension as w=
ell.
> > > > > > This is what I currently do:
> > > > > >
> > > > > > 1. Detect menvcfg first, detect stimecmp
> > > > > > 2. Enable SSTC feature only if both are available
> > > > > > 3. Set the STCE bit in menvcfg if SSTC is available
> > > > > >
> > > > > > Here is the patch
> > > > > > https://github.com/atishp04/opensbi/commit/e6b185821e8302bffdce=
b4633b413252e0de4889
> > > > >
> > > > > Hmm, the CBO fields are defined as WARL (write any, read legal),
> > > > > so I guess some sort of trap won't work here.
> > > > >
> > > >
> > > > Correct. Traps for extensions that introduce new CSRs.
> > > > I was suggesting setting the corresponding bits in MENVCFG and read=
ing
> > > > it again to check if it sticks.
> > > >
> > > > > The priv-spec only points to the cmo-spec for these bits and the =
cmo-spec
> > > > > does not specifiy what the value should be when cmo is not presen=
t.
> > > > >
> > > > >
> > > > > > > > In the future, zicbom can be detected in the same manner. H=
owever,
> > > > > > > > svpbmt is a bit tricky as it doesn't
> > > > > > > > define any new CSR. Do you think OpenSBI needs to detect sv=
pbmt for any reason ?
> > > > > > >
> > > > > > > There is the PBMTE bit in MENVCFG, which I found while lookin=
g through the
> > > > > > > zicbom-parts, which is supposed to "control wheter svpbmt is =
available for
> > > > > > > use". So I guess the question is the same as above :-)
> > > > > > >
> > > > > >
> > > > > > PBMTE bit in MENVCFG says if PBMTE bit is available or not. Ope=
nSBI
> > > > > > needs other way to
> > > > > > detect if PBMTE is available.
> > > > > >
> > > > > > That's why, I think MENVCFG should be set correctly by the hard=
ware
> > > > > > upon reset. What do you think
> > > > > > about that ? I couldn't find anything related to the reset stat=
e for menvcfg.
> > > > >
> > > > > me neither. Both the priv-spec as well as the cmobase spec do not
> > > > > specifiy any reset-values it seems.
> > > > >
> > > > I have raised an issue in the ISA spec.
> > > > https://github.com/riscv/riscv-isa-manual/issues/820
> > > >
> > > > > So I guess in the Qemu case, Qemu needs to set that bit when
> > > > > its svpbmt extension is enabled?
> > > > >
> > > >
> > > > We can do that if the priv spec is modified to allow that.
> > > >
> > >
> > > As per Greg's response, hardware is not expected to do that.
> > > So we have to dynamically detect the extensions in OpenSBI and write =
to menvcfg.
>
> Doesn't SBI also get the devicetree and could therefore parse
> the ISA string for extensions? Might be less volatile and would
> have both Kernel and SBI do the same thing for detection.
>

It does. But the later stage boot loader can replace the DT as well. A
incorrect DT passed to OpenSBI may
lead to crash the system but that's probably okay because the
"riscv,isa" properties shouldn't be incorrect at the first place.
We can set the hart features based on DT parsing as well (similar to
Linux kernel)

I suggested the earlier method because that infra already exists in
OpenSBI and will
continue to exist because not all hart features are ISA extensions.

So we can leverage that or add dt parsing as well. I am fine with
either approach.

>
> > > I am not sure what needs to be done for CBIE bits as it both flush(01=
)
> > > or invalidate(11) are valid values
> >
> > From looking at the security remark in the cmo-spec, I guess flush woul=
d be
> > the appropriate thing to do?
> >

Looks like that. But how does a supervisor/usermode use the invalidate
functionality ?

> > "Until a modified cache block has updated memory, a CBO.INVAL instructi=
on may expose stale data values
> > in memory if the CSRs are programmed to perform an invalidate operation=
. This behavior may result in a
> > security hole if lower privileged level software performs an invalidate=
 operation and accesses sensitive
> > information in memory."
> >
> > But also do we actually _want_ to enable cmo always ... Greg was talkin=
g
> > about backwards compatiblity in his response as well.
> >



>
>
>
>
