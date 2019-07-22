Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5AD8A709A9
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 21:25:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727600AbfGVTZU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 15:25:20 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:33555 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726260AbfGVTZU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 15:25:20 -0400
Received: by mail-io1-f68.google.com with SMTP id z3so76548932iog.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 12:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=rf8ryiSI7gM7VW/mCBLHJLZdnlhJlIXGezmFbO+mcVw=;
        b=Xb5UwnBHkO/b7wAi1N5yXMS813VTh/5G24EzGuW5yJgQJgkjhUeKrTPSDkIp1KfUd6
         Iv3pWmtQA4mpIFFovuwl6FoaHQR+QSADg5v7gsjVpmHM4SI31heH50S/PkRTLaYA9lce
         +01E1ByorK9WOcBiaZz1FUtb3mjsV1xoqE6F7D9Yu4CWdB1e4XcdnZ0wBUR1TvQCcGr3
         ckF18v2qRvhL6FFsnkyEXeWtWu9RH4YwxumHUnoMed1uigXSdgTxN3sMKYU/ijspqfyX
         VfcYR7l9OaMGtYoRIf9WRepYgUU+N0FLHXUuyZvPMCKyhk68ZrFYinGWON2Tbg1EenkL
         KhVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=rf8ryiSI7gM7VW/mCBLHJLZdnlhJlIXGezmFbO+mcVw=;
        b=ja5juVKQLrPTxyczWtHx50xv5eRJCeDeF97c4kDNoz+G+eu9Yg1rvREvuenWzxmyWL
         gs+x21kYayq4uMqPf8IFWIsIzlQ5Y6Gm9ED5gGOcTp0VqHlyScSMJwzD3myZTjUqdjKy
         V/dMOkXjFCq8Ks+rF2AWygKoDQJHwKTOGsPDCNabxlVnDC28zJ/qJlfc/jLKo3F72ROu
         gtmwyxexGXwfIQqFN9Bcv3b9cUZAKudMTUbcsm/gPAiWEeDTEOqN85xyUe/oPyhKgaic
         yqX23lkNDy6AQTcy1sS7bL1FKYBsuzb17kMFNW2xJuUXK/VJrZVx8p8xYH01F5f9RZeV
         bXbA==
X-Gm-Message-State: APjAAAUcFcZ+TY2lndTCex2UP5aBUcoz+70qB45ASllsefI1BWMbGqfl
        TOwYRgTZjuWt2+trVu3D5mAn9Q==
X-Google-Smtp-Source: APXvYqwYUcpO+JDt/loIDZQbYbOA1X6JHoiG+W3zU6bs1mBiztsz8Q1eqm+2GIS51glKmkkHqpFvIQ==
X-Received: by 2002:a02:cd83:: with SMTP id l3mr39191324jap.66.1563823519409;
        Mon, 22 Jul 2019 12:25:19 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
        by smtp.gmail.com with ESMTPSA id n2sm41584533ioa.27.2019.07.22.12.25.18
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 12:25:18 -0700 (PDT)
Date:   Mon, 22 Jul 2019 12:25:17 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Atish Patra <atish.patra@wdc.com>
cc:     linux-kernel@vger.kernel.org,
        Jeremy Linton <jeremy.linton@arm.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Ingo Molnar <mingo@kernel.org>,
        Johan Hovold <johan@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-riscv@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Morten Rasmussen <morten.rasmussen@arm.com>,
        Otto Sabart <ottosabart@seberm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Will Deacon <will.deacon@arm.com>,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V 
In-Reply-To: <alpine.DEB.2.21.9999.1907121012050.2267@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907221224170.23563@viisi.sifive.com>
References: <20190627195302.28300-1-atish.patra@wdc.com> <alpine.DEB.2.21.9999.1907121012050.2267@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 12 Jul 2019, Paul Walmsley wrote:

> On Thu, 27 Jun 2019, Atish Patra wrote:
> 
> > The cpu-map DT entry in ARM can describe the CPU topology in much better
> > way compared to other existing approaches. RISC-V can easily adopt this
> > binding to represent its own CPU topology. Thus, both cpu-map DT
> > binding and topology parsing code can be moved to a common location so
> > that RISC-V or any other architecture can leverage that.
> > different config for the architectures that do not support them.
>
> Once v5.3-rc1 is released, let's plan to get these patches rebased and 
> reposted and into linux-next as soon as possible.

These CPU topology patches are now queued for v5.4-rc1.  They should enter 
linux-next shortly.


- Paul
