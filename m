Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9F80FD3072
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 20:35:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726698AbfJJSfB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Oct 2019 14:35:01 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:35918 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725901AbfJJSfA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Oct 2019 14:35:00 -0400
Received: by mail-ot1-f65.google.com with SMTP id 67so5773317oto.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2019 11:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=r4XAjDc0xfpf5vzfo/i7Ws66r6JtB7Z+yeiV1OLT15o=;
        b=Mv4MgHakwlbkZi54pRbq6rETPbooTcIqnnEmLH++AM/dbjJdkhLvcNrXOW6IsB/pgz
         d3BRPjAYgQBUlrZUnlPimOcZM56EUiNxYWXroi33EWcAq5Fahw8qTgF6f72D6D5a6YWU
         7q+yiS2BlxAegJ+W9jG3+epyOA7gnmnpBJPqvF325FE5RJDugDklSWrk6RcuPRm8gboS
         NTLPeYmYJHcKWhneSddbCJX/CvCvSPdD+dJPI1kA6LYqbcEzzn6/LZmG47mjRo0eR6jX
         EBgk0m7BwCElwY/08rYUe0cf8VTuxLShCP1sxj18C0SXkFF458ooK8/QtW7p1Ueg0kBu
         IevA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=r4XAjDc0xfpf5vzfo/i7Ws66r6JtB7Z+yeiV1OLT15o=;
        b=bKHCp2rpw4EJB5IKWczSDVlsAnGEy4WJIQx/kdf7TRZf84bp0BeFD3wl3HPFdT26cD
         oYuQWMrB5Se9QqgzmCSc0bu5xWrU16wy5giBWdUQQB6/YYsWp/HZuqGybkWpUJY7Xw3P
         G8u5orRQv0rQUK6AUpeaV9tt4c0fzPMA1wMtMHHEvN6CGZLCHTmddx1wjUJ137lwUisG
         /L7wbCpRNqpACxjYRwg8tgS92IJ1BI2cKdRyD6nisSlN/rIFcVATKp6CKfy58EKrdatG
         RBmn/E/C/vRyomhH+6nYJOEy4NDv8aawWgAqQJdp4mz9iJZVLPNZ1vpjrFoZQXLhsLE4
         nAUw==
X-Gm-Message-State: APjAAAVPW3A4UVVeoi/ZjXC5dQ6mjr9d5eU/Vxktdo/lYIJeCumo0XEf
        krXUfYDmp7IQMeMU+C88vxufFw==
X-Google-Smtp-Source: APXvYqxflYfMilSfm+EF8uvVn9CW8v2d/Bajx2LYtYV1/X7fPOeBeGReXzuA/f5bw8ZARuEpamC1jg==
X-Received: by 2002:a9d:3675:: with SMTP id w108mr6677517otb.81.1570732498705;
        Thu, 10 Oct 2019 11:34:58 -0700 (PDT)
Received: from localhost ([2600:100e:b04d:43d4:f34c:fed9:3a80:e86d])
        by smtp.gmail.com with ESMTPSA id w25sm1914021oth.39.2019.10.10.11.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 11:34:58 -0700 (PDT)
Date:   Thu, 10 Oct 2019 11:34:55 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Rob Herring <robh@kernel.org>
cc:     Palmer Dabbelt <palmer@sifive.com>, devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2] dt-bindings: riscv: Fix CPU schema errors
In-Reply-To: <CAL_JsqK==+6QPrx3NDobYfWQwRg9m-t0LZgL=KzqfhAfbu+xTg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910101132440.4464@viisi.sifive.com>
References: <20191009234648.2271-1-robh@kernel.org> <alpine.DEB.2.21.9999.1910091657240.11044@viisi.sifive.com> <CAL_JsqK==+6QPrx3NDobYfWQwRg9m-t0LZgL=KzqfhAfbu+xTg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Oct 2019, Rob Herring wrote:

> On Wed, Oct 9, 2019 at 7:08 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Wed, 9 Oct 2019, Rob Herring wrote:
> >
> > > Fix the errors in the RiscV CPU DT schema:
> > >
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@1: 'timebase-frequency' is a required property
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible:0: 'riscv' is not one of ['sifive,rocket0', 'sifive,e5', 'sifive,e51', 'sifive,u54-mc', 'sifive,u54', 'sifive,u5']
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible: ['riscv'] is too short
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> > >
> > > The DT spec allows for 'timebase-frequency' to be in 'cpu' or 'cpus' node
> > > and RiscV is doing nothing special with it, so just drop the definition
> > > here and don't make it required.
> >
> > The RISC-V kernel code does in fact parse it and use it, and we currently
> > rely on it being under /cpus:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/riscv/kernel/time.c#n19
> >
> > The RISC-V user ISA specification also constrains the timebase-frequency
> > to be the same across all CPUs, in section 10.1:
> >
> >   https://github.com/riscv/riscv-isa-manual/releases/download/draft-20190608-f467e5d/riscv-spec.pdf
> >
> > So the right thing is to require 'timebase-frequency' at /cpus, and forbid
> > it in the individual CPU nodes.
> 
> Yes, but this schema only deals with 'cpu' nodes and we can't check
> /cpus here. We'd need to write another schema matching on a child cpu
> node having a RiscV compatible.
> 
> I can change this to 'timebase-frequency: false' to ban it here.

Sounds good to me.  (Might catch the occasional mistake.)  With that 
change, the resulting patch would be

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # for arch/riscv

and thanks indeed for cleaning this up.

> That doesn't add too much as any undefined name is still allowed such as 
> 'timbase-frequency'. There's a way to address this in json-schema draft8 
> with 'unevaluatedProperties', but that's not ready yet.

OK


- Paul
