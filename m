Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFC1076071E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 06:17:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbjGYERa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 00:17:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbjGYER3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 00:17:29 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5CDFE59
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 21:17:28 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5841be7d15eso5947587b3.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 21:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690258648; x=1690863448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ztafGsi8N/rxNWEUo6v/O5aHmGBjWLPK2kGljR5XpTE=;
        b=M1bad07Jl92/ujfNzfQxqi3obqU40n2b3+MTKbjXQCr6/qFwSSC6/V8rZEfZDz3EPt
         z8hvQXj7TBR2rE9xqs5Lx2QVB7Kc3V+3Tw/MPIb/d91R6kXoLqcmyl2akZNKkpIYDdjr
         rV47JQdjcowTrpTiYOCmx9zajmDiL4AS9Oje9aE6Pg0Y5rndTUAy0kk0g8TEfp7GYNNo
         MYcK+lDA8xNdVo1Jnt86L31lhoxwydLje1odMo6p3nbLNX8A7OVtuK4OLekbH2jwIqf9
         I9UivcLr2xit5IgrLkCy7ADza1XDtp1LN8q6AyF5AF0i6ejNmqfIbNlpV5XjWpxc3q6q
         NxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690258648; x=1690863448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ztafGsi8N/rxNWEUo6v/O5aHmGBjWLPK2kGljR5XpTE=;
        b=PcFddc7tjc2xzShDp/D+Ri2HjIhf+uTT5G/v5R4NyZ1H99ZOs+dG9cj1plM685Phs4
         JKWbdkrbPqVT8eGkuogKh0GeCARjzPHk8QJ8FbY/KY0AqzQx9KohHJqzGAe0QjlIVe9w
         qh84026xpvEEWtZObtlyYJOT2p7PbsbX6pfZnTPUakiP1PbkHheqHTyOT/0Qwh+YjGby
         DQd0EwZkGYp2gOeRvGRUlE0HgtPGax2z9R6AbUiYf0wDVSDqyl3T0tEfU5QzD6oGnB8V
         xWpQQsgwdDxaZex+sxxSxDTwN3b9YKjIqubxeBZhj79Ib7kcdUK2+xGzpzbL6/jqkXJv
         BIaQ==
X-Gm-Message-State: ABy/qLbORYZ+5I3h/3R5NNx4ua7Zd26qWyhoRLWRWMJJkdOoj/6xNgHg
        V6qeI4DVE4BqK+83bqvEsH/faSbKB3ienfJCzyQQBA==
X-Google-Smtp-Source: APBJJlG5oC6Hhob3ANtsjlzdyeu1Yx2AJY48rs8kUbnFiG17qTLw2TkJli78ibW1rQ6BIzreg+XC7/8fKPRzEVcaAIk=
X-Received: by 2002:a0d:ef42:0:b0:583:9018:29ec with SMTP id
 y63-20020a0def42000000b00583901829ecmr10154845ywe.32.1690258647756; Mon, 24
 Jul 2023 21:17:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230724142033.306538-1-mchitale@ventanamicro.com> <20230724-scrap-pranker-7fd120078136@spud>
In-Reply-To: <20230724-scrap-pranker-7fd120078136@spud>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Tue, 25 Jul 2023 09:47:14 +0530
Message-ID: <CAK9=C2XXnQWqJgES2iWjatG9SFeFEUXZzLXz1gTYQ0aAh=7KJg@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Risc-V Kvm Smstateen
To:     Conor Dooley <conor@kernel.org>
Cc:     Mayuresh Chitale <mchitale@ventanamicro.com>,
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
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 24, 2023 at 10:08=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> Hey Mayuresh,
>
> On Mon, Jul 24, 2023 at 07:50:26PM +0530, Mayuresh Chitale wrote:
> > This series adds support to detect the Smstateen extension for both, th=
e
> > host and the guest vcpu. It also adds senvcfg and sstateen0 to the ONE_=
REG
> > interface and the vcpu context save/restore.
>
> There's not really an explanation in this series of where Smstateen is
> needed, or why it is only implemented for KVM. The spec mentions that thi=
s
> also applies to separate user threads, as well as to guests running in a
> hypervisor. As your first patch will lead to smstateen being set in
> /proc/cpuinfo, it could reasonably be assumed that the kernel itself
> supports the extension. Why does only KVM, and not the kernel, require
> support for smstateen?

Here's the motivation behind Smstateen from the spec:
"The implementation of optional RISC-V extensions has the potential to open
covert channels between separate user threads, or between separate guest
OSes running under a hypervisor. The problem occurs when an extension
adds processor state---usually explicit registers, but possibly other forms=
 of
state---that the main OS or hypervisor is unaware of (and hence won=E2=80=
=99t
context-switch) but that can be modified/written by one user thread or
guest OS and perceived/examined/read by another."

Based on the above, Ssaia extension related CSRs need to be explicitly
enabled for HS-mode by M-mode (which OpenSBI already does) and
for VS-mode by HS-mode (which this series adds for KVM RISC-V).

Currently, there are no new extensions addings CSRs for user-space
so RISC-V kernel does not need to set up sstateenX CSRs for processes
or tasks but in the future RISC-V kernel might touch sstateenX CSRs.

Regards,
Anup
