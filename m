Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1F5E56AB9F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 17:24:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387924AbfGPPYB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 11:24:01 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:43783 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387880AbfGPPYB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 11:24:01 -0400
Received: by mail-io1-f67.google.com with SMTP id k20so40512175ios.10
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 08:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=N195P2f0us9phWu08NVADmmlZekvAMPF8Z5SqipHjkU=;
        b=UFwnonZ/cfc25F4c3cAbdHC6solwqR0l8lLv7BAeP9Ozczdhg8nGvZUpzg5Y37od+t
         Xhq8oFbJNiKcY8wa+O3h0pLxMIMjaTMb+94vSFlm1z9xCPzC3a2dp42DZuExmajJeSnW
         lHIQNUWp4FqhJHcTAgwX2SLv1lo8pDeq5vp5Eg3CjBTBMnXmqEQ0W8RPbRkISSlIthCk
         jv1bxEzIfW+XBKdww/YOIQsrxjtyP7J43c47tngACpodJTHHOHj9jg6CwatIOqGsKEw9
         V8lbFN9aabPXiEZIackgQeu3hBNIzDEGxgIEPFReyyll+Je2q4zQp8hV3c4jJUWOT+UL
         qPrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=N195P2f0us9phWu08NVADmmlZekvAMPF8Z5SqipHjkU=;
        b=EXPMfe/asia8T/0Qxm14Jwl/UE3ci7pnfKIG3nOG7v4NeLkCzFlYxcVQ284QhWZDzN
         zWP7dYY93YPSWavoQ5emoaX6ElLpASUG+W2Mt6J8I+z+RTWhFUQaD0GfuYRionZwrtk9
         CpRa09y7F01nIRjZTsZou5QN+DaTgLOC4KAWK+jgBhSZcmBATW2t161ubqts21FOOsqO
         bnS6eTGAkeYbrIjGEk/eRo9v2X6uSWMKVnSkehXKxtCdQjfos9orVdLa8ddz9lDUhbBb
         X4ldvVxxVveDMcmYS5myJxakCNNrWxXPXZTjJZuIdbvZKs29ZYuB+3R4L8qiCcESxEEn
         j6+w==
X-Gm-Message-State: APjAAAUz+cRWDXII5GIMqeBb2JytiSWub+F6YndssgiRPmzk02MzigXw
        KhOKHhgyINzavEQpkSur3Iv7TA==
X-Google-Smtp-Source: APXvYqyOxSJGHpDH9ZiCTa86Ja+vjoynyZSZ7MI6Nczc+lsODPXjGQ+sZHWd7xEI9cd/16JKEWBCQA==
X-Received: by 2002:a5e:9701:: with SMTP id w1mr32235289ioj.294.1563290640716;
        Tue, 16 Jul 2019 08:24:00 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
        by smtp.gmail.com with ESMTPSA id t133sm29445698iof.21.2019.07.16.08.23.59
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 16 Jul 2019 08:24:00 -0700 (PDT)
Date:   Tue, 16 Jul 2019 08:23:59 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Rob Herring <robh@kernel.org>
cc:     linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@sifive.com>, devicetree@vger.kernel.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: riscv: Limit cpus schema to only check
 RiscV 'cpu' nodes
In-Reply-To: <CAL_JsqKmovGLxZj5jOLgXLtYD1cRHjtrQZm27Nk8cRQR9tsidg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1907160823330.16470@viisi.sifive.com>
References: <20190626235759.3615-1-robh@kernel.org> <CAL_JsqKmovGLxZj5jOLgXLtYD1cRHjtrQZm27Nk8cRQR9tsidg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Jul 2019, Rob Herring wrote:

> On Wed, Jun 26, 2019 at 6:00 PM Rob Herring <robh@kernel.org> wrote:
> >
> > Matching on the 'cpus' node was a bad choice because the schema is
> > incorrectly applied to non-RiscV cpus nodes. As we now have a common cpus
> > schema which checks the general structure, it is also redundant to do so
> > in the Risc-V CPU schema.
> >
> > The downside is one could conceivably mix different architecture's cpu
> > nodes or have typos in the compatible string. The latter problem pretty
> > much exists for every schema.
> >
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../devicetree/bindings/riscv/cpus.yaml       | 143 ++++++++----------
> >  1 file changed, 61 insertions(+), 82 deletions(-)
> 
> Paul, do you plan to apply this? I have several fixes to send to Linus
> if you want me to include this.

Please go ahead:

Acked-by: Paul Walmsley <paul.walmsley@sifive.com>

and thanks for asking.


- Paul
