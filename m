Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3422053B229
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 05:42:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233575AbiFBD16 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 23:27:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233573AbiFBD15 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 23:27:57 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66D7654F81
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 20:27:56 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d22so3433340plr.9
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 20:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id;
        bh=rnA3YE+pv8nNqtZ8f73F4bpfaP5ih+dKJDHetvSZNy4=;
        b=rdXjcC9sYNcjE0vyUHyP/+5WkX5RXDVVWw1cGVppt2JORKzG5E0S1NQQI+wyUKVrML
         b8I88p8JeJCJKmNLMzUY5ZncOjT6SB4aRnzu1sHinebFDHbl7u7Ywu+EIsmfyfrOiJJk
         RjUyHhjrE9jeYVvKpTzssO+/R6uIc+4MKsNhHC+i55ygkSbpnqolwYdiP2Us2K8OzRqC
         /cj1VWBDT0EfP1SfJbh8/DYjYu8dyLfyxD3Uat0keTuFANYSntpTlF1Tx5uDsTfrYYCe
         UoaGk80WbGYL5EQsZvn4hbXvDMIhwyipyqa/dTC67zAlC14WrrjhNJO7fV48fOV1A2Ci
         BHuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id;
        bh=rnA3YE+pv8nNqtZ8f73F4bpfaP5ih+dKJDHetvSZNy4=;
        b=4GD4432iCMs98ed5HEOxjkiWIuG9MsH584VUk3pE3bHdfXKqTyNvo41yT3aPjxdwvT
         TBn3o+reu/e6Kdli26mu+5wYElN5h183gQaSW5ibyYP0ERbb6X4DdknOVrDSK3XIw8mj
         DUattn4ZuaUgToCNzR4wv9quD4tZ+gqybf3inHZibNBcwAvhwXgLBwAhHxydTPC2M2rN
         V2Jm3DXINWspZi2tu8z7m2VsbMXR6FbJ/a7bYHxZ3u4Krr2dqvog791Bz8pGYq9Mq5ON
         k1lu80jT9HpvCpDYjgkq9Nn71VZIk5pr32+CbnatVGYulvuLhGH25UN/B/w5TrsqiSX7
         C0ow==
X-Gm-Message-State: AOAM53274qFsR5KD8FKInS9mJqtByvWv+h0/l49aNKLhb8odYDfB4B7v
        w8eiL0HgJ2ha2652L372QiUKyQ==
X-Google-Smtp-Source: ABdhPJwLYv0nG0E1buUnJDrTuwHq/SMc18FdJWr025oYW7WTf18cX52/GBs2cYpG0n2dWHbfIYqrlA==
X-Received: by 2002:a17:902:830a:b0:161:b926:2c3d with SMTP id bd10-20020a170902830a00b00161b9262c3dmr2686050plb.103.1654140475836;
        Wed, 01 Jun 2022 20:27:55 -0700 (PDT)
Received: from localhost ([12.3.194.138])
        by smtp.gmail.com with ESMTPSA id k8-20020a170902d58800b001641244d051sm2212231plh.257.2022.06.01.20.27.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 20:27:55 -0700 (PDT)
Date:   Wed, 01 Jun 2022 20:27:55 -0700 (PDT)
X-Google-Original-Date: Wed, 01 Jun 2022 20:20:14 PDT (-0700)
Subject:     Re: [PATCH] RISC-V: Allow the used to downgrade to sv48 when HW supports sv57
In-Reply-To: <CAMuHMdVE9mpRStjo3+jy9k=6A7Fur1xPW6hMtx1Nbr=3NURZTQ@mail.gmail.com>
CC:     apatel@ventanamicro.com, alexandre.ghiti@canonical.com,
        linux-riscv@lists.infradead.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, devicetree@vger.kernel.org
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     geert@linux-m68k.org
Message-ID: <mhng-fcec78d4-f1d2-4ce5-838e-cf7657ff8c98@palmer-ri-x1c9>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 25 Apr 2022 07:30:52 PDT (-0700), geert@linux-m68k.org wrote:
> Hi Anup,
>
> On Mon, Apr 25, 2022 at 4:14 PM Anup Patel <apatel@ventanamicro.com> wrote:
>> On Mon, Apr 25, 2022 at 7:06 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>> > On Mon, Apr 25, 2022 at 3:14 PM Anup Patel <apatel@ventanamicro.com> wrote:
>> > > On Mon, Apr 25, 2022 at 6:12 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>> > > > On Fri, Apr 22, 2022 at 11:42 PM Palmer Dabbelt <palmer@rivosinc.com> wrote:
>> > > > > Similar to the previous patch, this allows a dt-selected downgrade to
>> > > > > sv48 on systems that support sv57 in case users don't need the extra VA
>> > > > > bits and want to save memory or improve performance.
>> > > > >
>> > > > > Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
>> > > > > ---
>> > > > > This is on top of the patches from Alex's set that I dropped.
>> > > >
>> > > > You mean "[PATCH v3 13/13] riscv: Allow user to downgrade to sv39
>> > > > when hw supports sv48 if !KASAN"?
>> > > > 20211206104657.433304-14-alexandre.ghiti@canonical.com
>> > > >
>> > > > For both: "DT describes hardware, not software policy"?

Ya, sorry I missed that -- luckily neither of these actually boot, so 
there wasn't much of a rush...

>> > >
>> > > It is possible that HW is designed to support both Sv48 and Sv39 but
>> > > there is some errata due to which Sv48 does not work correctly ?
>> >
>> > In that case, I assume the software has to disable Sv48 on its own?
>> > Fixed hardware should use a different compatible value, so software
>> > will know when the issue is fixed, and the feature can be used.
>> > How else is DTB backwards-compatibility supposed to work?
>>
>> Usually, HW vendors will use different names for incrementally
>> improving implementations so they will tend to create separate
>> dts/dtsi files for newer implementations with some sharing via
>> common dtsi files.
>
> Even for a minor update of the SoC to fix some errata, where newer
> boards just contain a newer revision of the silicon?
>
>> > > We should allow users to downgrade the MMU mode, due to
>> > > their own reasons. In fact, users can also disable an extension
>> > > by not showing it in the DT ISA string.
>> >
>> > That sounds like a software policy, too.
>> > What is wrong with a kernel command line option?
>>
>> The MMU modes are detected very early and even before the kernel
>> command-line is parsed.
>
> That can be fixed.
>
>> > If you want it in your DTB, you can add it to chosen/bootargs.
>>
>> If HW vendor describe complete details in DT and disables few
>> things in chosen/bootargs then it means there is some issue with
>> those things disabled via chosen/bootargs.
>>
>> A HW vendor might never want to advertise broken extensions in
>> their implementation so the ISA string and various HART features
>> in DT will be set based on working functionality on real hardware.
>
> That may be true in a perfect world.
> Depending on the level of brokenness, the issue may not be detected
> before devices are released into the world.  So you're better prepared
> for such cases.

IMO there's really two use cases here, and they've got different ways 
they should be triggered:

* Users who have systems with larger VA spaces, but know they aren't 
  going to actually use that much VA and don't want to pay for.  That 
  seems like a kernel command-line option is the best bet, as it's a 
  user configuration option and command-line is a pretty standard way to 
  do that.  Certainly forcing a DT modification would be odd.
* Users who have systems that attempted to have larger VA spaces, but 
  are actually broken.  That's just an errata and we already have errata 
  mechanisms, so let's just stick with those.

There is a bit of an elephant in the room here WRT our errata mechanism 
where we're relying on vendors to be sufficiently well behaved that they 
leave something we can detect at runtime to select those errata, but I'm 
not really sure there's any way around that.  We'll just have to add 
complexity there over time as HW vendors find new and exciting ways to 
break things.  Wouldn't be surprised if some scheme ends up passing info 
via DT at some point, but given that we're already relying on SBI to get 
m{vendor,imp,arch}id maybe there's another way to do it.

IIRC someone sent by an errata of this flavor already, so that's 
probably the right place to start.  That one we should be able to do 
without breaking medlow support, which is kind of nice.  A command-line 
option also seems reasonable, but I don't think it's a super pressing 
matter for now so I don't intend on working on it (though happy to take 
patches if someone else wants to).

Regardless of exactly where we go here, sounds like this isn't the right 
answer so I'm not going to take it (or the removal of medlow, at least 
until something needs that).

Thanks!
