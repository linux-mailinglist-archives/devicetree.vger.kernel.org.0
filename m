Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6349761D92
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 17:43:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbjGYPnd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 11:43:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbjGYPnc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 11:43:32 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39BC41FFF
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 08:43:31 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-563643b2b4cso2875680a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 08:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690299810; x=1690904610;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V+gDE6Cs996RG3GqZsaJFunZXFp2ML2TuD0abc+ohd0=;
        b=TZ0XcGoL9GHkCIzg/KZc+hMs2zlyYbXFcp8JjShW6TYjdrNIfnsIjgm0EisSVSqzEx
         Qw+Z1nuAPmT9jYhJ5+cBC97bqdvaVB2yzZ6stKnLn56EohJSmgo1Jm/xXFrv2ET/leb4
         uU+iX2L+bAhXG0ThVHyB8VmyO/0VRUhDzTh3WD9Jk4wQQSIwBDh4/zAGG/qXqLIqtYuV
         82DEGlOb9CUjodIzFj1Kg8pihT++ceud4u7X/0rgh3WxRJ4As4o+73pvJKjySOjAIa8X
         NYdBc2EI3EsO/G6zNYq5vo0ERppfDmfO4iqMUg0JtZDAu4SDARGUDtM8kSbsWqBUDOMO
         +YvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690299810; x=1690904610;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V+gDE6Cs996RG3GqZsaJFunZXFp2ML2TuD0abc+ohd0=;
        b=dx2a1K7dxUNV9tYqTf/JOvg3nYjdfZeGeAxOS0cdwOYmRrXcG5tHiS0JY+kdR13mXu
         vpNYfyhjKjFhmg+nNsOogdzBEGVDybuDoD+HRdf2igem0548zrYWkqfrnb95wRSVybY1
         YV8IpVCkhZpMrf+oK6+F6wawoAYcUyxncQoyC61zWKPZ/6e3KxCdZC93+xXkL8oL7tSL
         Z5tlRrOnhUEs9JN1XIaQ6+hwBneWZ62woNltRkLPEOn5qVFpkjwkcdVk1JNe3R+iHp4u
         Gq7EzmQqCyqZodOewfm4Lh/kkzo/m8FBZznsGEOiSJHR9sA4iqtQWibj+gNyGo89k2X6
         y74Q==
X-Gm-Message-State: ABy/qLZjIjmd90CGOCMRKPdcWGd6B2mYZyUnwogehdzF/xewLoQSnJF9
        NV+kwX27aSi5H6gOx1cWMyDY9Pm0ZlDAbJFQN7YTaA==
X-Google-Smtp-Source: APBJJlF2L/xNS/4rgqa3Q/8+YpQsoy/Vs8zfSJHaAPfpvL/vWB8ng5Rd4ymgE8wmiCB2vf95x1dd7lodUaEO+bf1uSA=
X-Received: by 2002:a17:90b:202:b0:268:1745:b61 with SMTP id
 fy2-20020a17090b020200b0026817450b61mr4966305pjb.34.1690299810608; Tue, 25
 Jul 2023 08:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230724142033.306538-1-mchitale@ventanamicro.com>
 <20230724-scrap-pranker-7fd120078136@spud> <CAK9=C2XXnQWqJgES2iWjatG9SFeFEUXZzLXz1gTYQ0aAh=7KJg@mail.gmail.com>
 <20230725-dwelled-obtain-24bf6a4e6964@wendy>
In-Reply-To: <20230725-dwelled-obtain-24bf6a4e6964@wendy>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Tue, 25 Jul 2023 21:13:19 +0530
Message-ID: <CAK9=C2UapxZewmW+dfctr7hOHZfNUhiPCx4mq08-j_vN5LFsWw@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Risc-V Kvm Smstateen
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Conor Dooley <conor@kernel.org>,
        Mayuresh Chitale <mchitale@ventanamicro.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup@brainfault.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 25, 2023 at 3:37=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> Hey Anup,
>
> On Tue, Jul 25, 2023 at 09:47:14AM +0530, Anup Patel wrote:
> > On Mon, Jul 24, 2023 at 10:08=E2=80=AFPM Conor Dooley <conor@kernel.org=
> wrote:
> > > On Mon, Jul 24, 2023 at 07:50:26PM +0530, Mayuresh Chitale wrote:
> > > > This series adds support to detect the Smstateen extension for both=
, the
> > > > host and the guest vcpu. It also adds senvcfg and sstateen0 to the =
ONE_REG
> > > > interface and the vcpu context save/restore.
> > >
> > > There's not really an explanation in this series of where Smstateen i=
s
> > > needed, or why it is only implemented for KVM. The spec mentions that=
 this
> > > also applies to separate user threads, as well as to guests running i=
n a
> > > hypervisor. As your first patch will lead to smstateen being set in
> > > /proc/cpuinfo, it could reasonably be assumed that the kernel itself
> > > supports the extension. Why does only KVM, and not the kernel, requir=
e
> > > support for smstateen?
> >
> > Here's the motivation behind Smstateen from the spec:
> > "The implementation of optional RISC-V extensions has the potential to =
open
> > covert channels between separate user threads, or between separate gues=
t
> > OSes running under a hypervisor. The problem occurs when an extension
> > adds processor state---usually explicit registers, but possibly other f=
orms of
> > state---that the main OS or hypervisor is unaware of (and hence won=E2=
=80=99t
> > context-switch) but that can be modified/written by one user thread or
> > guest OS and perceived/examined/read by another."
>
> This much I gathered from my (brief) reading of the spec.
>
> > Based on the above, Ssaia extension related CSRs need to be explicitly
> > enabled for HS-mode by M-mode (which OpenSBI already does) and
> > for VS-mode by HS-mode (which this series adds for KVM RISC-V).
>
> Ah right. Reading back through the patches, in [4/7] I see "Configure
> hstateen0 register so that the AIA state and envcfg are accessible to
> the vcpus". I would ask that, at least, [1/7] is updated to provide this
> motivation & the rationale for why only KVM needs to care. The
> motivation for the work should appear in the patchset somewhere, and
> probably in the cover too.

Yes, more details can be added to the commit description of PATCH1
and cover letter.

>
> > Currently, there are no new extensions addings CSRs for user-space
> > so RISC-V kernel does not need to set up sstateenX CSRs for processes
> > or tasks but in the future RISC-V kernel might touch sstateenX CSRs.
>
> Right, that is what I figured was going on, ignoring it for now, in the
> hopes that we remember to deal with it before some userspace visible
> side channel shows up.
>
> Dumb question maybe, but I find this to be quite -ENOPARSE:
> > Bit 0 of these registers is not custom state itself; it is a standard f=
ield of a standard CSR, either mstateen0,
> > hstateen0, or sstateen0. The requirements that non-standard extensions =
must meet to be conforming are not
> > relaxed due solely to changes in the value of this bit. In particular, =
if software sets this bit but does not execute
> > any custom instructions or access any custom state, the software must c=
ontinue to execute as specified by all
> > relevant RISC-V standards, or the hardware is not standard-conforming.
> Does this mean that bit 0 of the CSRs mentioned in the quote controls all
> non-standard extensions at the respective privilege level? If so, does
> that not make the "ignore that we will now report the presence of this
> extension" approach flimsier, since we have little visibility into what
> may exist on that front?

Yes, bit0 of the stateen CSRs controls the access to custom registers
added by custom extensions. Of course, not all custom extensions
would add custom registers.

Higher privilege levels (such as hypervisors) should not enable
bit0 by default. It should be enabled only if higher privilege levels
knows what it is and how to context-switch the custom registers.

>
> Granted, it is not as if delaying this patchset would benefit anyone in
> that regard, since those attempting to exploit the side channel know that
> the side channel exists, whether the kernel reports having sstateen or
> not. This probably just boils down to /proc/cpuinfo being a terrible
> interface for detecting extension support in the kernel.
> I've got some other comments about it that came up on IRC yesterday, so
> I'll go complain about it elsewhere :)
>
> Thanks,
> Conor.

Regards,
Anup
