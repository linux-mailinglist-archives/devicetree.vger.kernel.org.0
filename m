Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 52C2852144
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 05:31:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726706AbfFYDbs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 23:31:48 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:40336 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726614AbfFYDbs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jun 2019 23:31:48 -0400
Received: by mail-wm1-f67.google.com with SMTP id v19so1281554wmj.5
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 20:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hreneRMdosQHoew3G/ulwzqPUoN3bk6y0Mh9gFGiOHc=;
        b=YutOJx/yNHxHBs7eip+GCzWGxLqBKS6HyqZOc89ENz9rJ34KjLkKIpDBw4RWPnmHLa
         MgchNwF70fF15hKZ24AWHDw+jN7rsCA9L13wkYtqXguEBXH072x8pEdHIijavPAOQufT
         ULwurfHUvacfjYlhENKW0MRK/d7rmWJ8yu0OcsDgVV91KEtrztuDNtXClNYJMgLaBzjI
         tEDhtW2KUAkF61HI2Etk6L3uJMrm7rBqP7pglkCVqUtohmQL0WgIPACLQTdzadflJn8N
         stPVpKOCO7djrBVvPtAQGvlSeYrSfjepK5GDBspXz4SOq5mnCipmYi9j4vRInCQRf0gk
         ZlBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hreneRMdosQHoew3G/ulwzqPUoN3bk6y0Mh9gFGiOHc=;
        b=fTVKQ+wt72fFNlIE+gqWoTgMU+naSfSbkFwLIojvG3YrYaAIWc8/wBmOF5w6qCe9Oh
         SKUrLwIk5jLt6eryFQbdaX6Y6mRlUKyuHTnDfW62geiE7NJdCBBJgBflurwYYf2nF7wR
         jIgVzqxhHh+Ej69jM5M6TbnXyEt8XnWPiLyIbmba8qNSWyUlUWp6qSehO+MTekvtDihz
         T/yO4tahfWzLIOK+mPM2XiXrctn/Gmcy4ADiGKCzxq1xNORoBzCg+awhN4BThO/JNE6E
         CdfrNzaSQl9WaJl7CHod5Fm86TDXFF2EtmmS8yVmaOQZBfjg8x3ppZPBHVfYKPPPsFOT
         N6Vw==
X-Gm-Message-State: APjAAAUXefsLcp9OALBctMaB6RdJBVX4RrVEP2JhfAZuYKS+RR34xbul
        x42c3cQUQvKPyOWUamk42ywW+jwNZnhAVSPcjQaI1Q==
X-Google-Smtp-Source: APXvYqwcYlRtlu/HQuSek8ocdSv5LWy+5p/nWI6LivltsiY0CBh5f2cBsro42LBCqwPhF/BJ5ow4BED0pcLfkh3uKF8=
X-Received: by 2002:a1c:740f:: with SMTP id p15mr17990557wmc.103.1561433506287;
 Mon, 24 Jun 2019 20:31:46 -0700 (PDT)
MIME-Version: 1.0
References: <1561375453-3135-1-git-send-email-yash.shah@sifive.com> <alpine.DEB.2.21.9999.1906241421550.22820@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906241421550.22820@viisi.sifive.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Tue, 25 Jun 2019 09:01:33 +0530
Message-ID: <CAAhSdy0Z_uGMYqC+6yRPFzEBDGi+SHkrvhe2+1ZMt9heHhJ0=g@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: Re-organize SPI DT nodes
To:     Paul Walmsley <paul.walmsley@sifive.com>
Cc:     Yash Shah <yash.shah@sifive.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>, sachin.ghadi@sifive.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 25, 2019 at 2:53 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Mon, 24 Jun 2019, Yash Shah wrote:
>
> > As per the General convention, define only device DT node in SOC DTSi
> > file with status = "disabled" and enable device in Board DTS file with
> > status = "okay"
> >
> > Reported-by: Anup Patel <anup@brainfault.org>
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
>
> This is a good start, but should also cover the other I/O devices in the
> chip DT file.  The mandatory internal devices, like the PRCI and PLIC, can
> stay the way they are.

Yes, this convention only applies to SoC devices with external connections
so PRCI, PLIC, and CLINT DT nodes are not required to follow this.

Eventually, this convention helps when we have multiple boards of same
SOC and each board having different set of peripherals connections.

Regards,
Anup
