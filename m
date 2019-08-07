Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7523E85246
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 19:42:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389002AbfHGRmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 13:42:32 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:34789 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387957AbfHGRmc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 13:42:32 -0400
Received: by mail-pl1-f196.google.com with SMTP id i2so41890831plt.1
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 10:42:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=/uiebD3btGZbv4vhWYrLmVJnJacov4IOPhmk60kkajg=;
        b=rLh6velGMv7LvmqkzY9n9F1Nw6J1HjbpYYlyCaMdHbQBDAYyR94NmwOlNvZojVTfaN
         hGVAHjNdlB94fJwcVwGt2pzM6EB/NSph8ZnqbR8T/v9Z8OLTZ8+1JmMLxFiJTx0d5uky
         G15q7oidKcFCSjvYVIK5urw3Bs5h97t8sPvkbcodLaIpmI90Suk+eT9Hffl/2MFsdVB2
         bsdABEiqKk/weDvVvC0SLNJLxwCX75RvzvLgTBhB7Ohy2xRoQyDIB1pNj4LeJqs/0VPt
         Z1giJuFEU5pvHKKWsfJ4sNkvfabcw392yfRfmM5qMGiH7dBYHOIzYcDo7VZY2xh9pnIC
         cgjw==
X-Gm-Message-State: APjAAAUCIyzlQfuT5AisIQTll6Mw2PTIt+B4zsIimyXxguBPpyeE2Fij
        AZaGO26b46o1ZZt9pBg+74HuEw==
X-Google-Smtp-Source: APXvYqw1JEMLevhf1LxZ3JskWiL2HpnAPmkA0NRBmwn1FJZT+5YEh83ZyPicXC8jCeVqb1RmwoO2Tw==
X-Received: by 2002:a17:90a:2190:: with SMTP id q16mr989287pjc.23.1565199750802;
        Wed, 07 Aug 2019 10:42:30 -0700 (PDT)
Received: from localhost ([12.206.222.5])
        by smtp.gmail.com with ESMTPSA id p187sm146508645pfg.89.2019.08.07.10.42.30
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 10:42:30 -0700 (PDT)
Date:   Wed, 07 Aug 2019 10:42:30 -0700 (PDT)
X-Google-Original-Date: Wed, 07 Aug 2019 10:42:28 PDT (-0700)
Subject:     Re: [PATCH v3 3/5] RISC-V: Fix unsupported isa string info.
In-Reply-To: <a2795337bd86ff22ae9618d7ccae22e7482be332.camel@wdc.com>
CC:     Paul Walmsley <paul.walmsley@sifive.com>, info@metux.net,
        allison@lohutok.net, aou@eecs.berkeley.edu,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        tglx@linutronix.de, daniel.lezcano@linaro.org,
        Anup Patel <Anup.Patel@wdc.com>, mark.rutland@arm.com,
        johan@kernel.org, robh+dt@kernel.org,
        Greg KH <gregkh@linuxfoundation.org>, tiny.windzz@gmail.com,
        gary@garyguo.net, linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@sifive.com>
To:     Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-5befbd83-7239-4ee0-8c03-06e377e53f72@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 07 Aug 2019 10:31:51 PDT (-0700), Atish Patra wrote:
> On Tue, 2019-08-06 at 18:26 -0700, Paul Walmsley wrote:
>> On Wed, 7 Aug 2019, Atish Patra wrote:
>> 
>> > On Tue, 2019-08-06 at 16:27 -0700, Paul Walmsley wrote:
>> > 
>> > > Seems like the "su" should be dropped from mandatory_ext.  What
>> > > do you 
>> > > think?
>> > > 
>> > 
>> > Yup. As DT binding only mention imafdc, mandatory extensions should
>> > contain only that and just consider "su" extensions are considered
>> > as
>> > implicit as we are running Linux. 
>> 
>> Discussing this with Andrew and Palmer, it looks like "su" is
>> currently 
>> non-compliant.  Section 22.6 of the user-level specification states
>> that 
>> the "s" character indicates that a longer standard supervisor
>> extension 
>> name will follow.  So far I don't think any of these have been
>> defined.
>> 
>> > Do you think QEMU DT should be updated to reflect that ?
>> 
>> Yes.
>> 
>> > > There's no Kconfig option by this name, and we're requiring
>> > > compressed 
>> > 
>> > Sorry. This was a typo. It should have been CONFIG_RISCV_ISA_C.
>> > 
>> > > instruction support as part of the RISC-V Linux baseline.  Could
>> > > you 
>> > > share the rationale behind this?
>> > 
>> > I think I added this check at the config file. Looking at the
>> > Kconfig,
>> > RISCV_ISA_C is always enabled. So we can drop this.
>> 
>> OK great.  Do you want to resend an updated patch, or would you like
>> me to 
>> fix it up here?
>> 
> 
> I am sending the patch right now. We can remove the 'S' mode check as
> palmer have already sent the QEMU patch as well, .

Looks like I missed the boat for 4.1, though.

> 
> Regards,
> Atish
>> I'll also send a patch to drop CONFIG_RISCV_ISA_C.
>> 
>> 
>> - Paul
> 
