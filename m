Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E15E134A6AB
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 12:57:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229671AbhCZL5M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 07:57:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229871AbhCZL5F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 07:57:05 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA8DFC0613AA
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 04:57:04 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id b4so7257204lfi.6
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 04:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y/YJy6ENumZLg5/zvFHAeuvrrpukOzL88n9aSHHrphQ=;
        b=aPcFuvKdA862pPL2UYtr5TE/4vlFoQDw4Z63nQepN+saeNxNGA8a8zwRoArd6EMTNe
         aqi4CeEEtvwd9oos84Wc78G8uILwOhZPDHWwew//XfPnQoGfulKcFawY34Dtqw8hiaRs
         WOVg4XAn2aoc/ti4KVNAdv3fEkVzsPV0IWAja4uJpLWi2v2Xz/DyGIsfU4uTn+vCAEg3
         gbh67KaIHrl/NfD418cN+iVzxYLAYpUMRYvyr62fucCYqVUphTW0MAA39icB/uhBrak5
         GzdRNbobqXcoX9ag6OvUtO4nNblp+I4IihHqCc/mbM8Wc6L7KL1vPwMfjqF+bd0kgp10
         6U2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y/YJy6ENumZLg5/zvFHAeuvrrpukOzL88n9aSHHrphQ=;
        b=HuOg05ZAdhj4hwkiG8GcPvtioTBI2YfTGmYd7GtVQiw9G/ALYXmJAPTvlopw0y2jYA
         5qA1qqsRlHVT2YlI/UfLtBi6TkcQTvv4Gvte6O9S5Wz6iy4gj22b6hDmFh7L++syJynv
         n2+hnHttv9yAdDYAPoPNEbfsZe5cvEDMqryaLbXOGO8RsHqbDUlxQcHN0LWa7p5ez3QP
         G+qDq/AuupVBRUWZaxPQYClZlarNYKH1bo8kBM1RmJAEgGf5LvWhiUAhQ0p765PicGIX
         mXDvnoWqwYMcFuxhgZ5I254wlmxVedbO0rsab3DgH1mPUO/v4U87IGVYi1K69iXVmVvZ
         HXYw==
X-Gm-Message-State: AOAM532A+0dbpV2qipTnf54hlnQszxshxYF8sbHthYdA3Fm8nPOw7jIk
        +fK0gGqy3p+PNIDFWAM8PolrJJSmXCXZxzV7M58cmQ==
X-Google-Smtp-Source: ABdhPJwK6yp/8uK0rO8yQ6TqoS3aFd/xSINJSltbT5uI17puaOX+o1xEL/vwp04RUP5+w+XCFKiVytIHyeSptHFkUzU=
X-Received: by 2002:ac2:5509:: with SMTP id j9mr7768919lfk.302.1616759823215;
 Fri, 26 Mar 2021 04:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210325143255.1532452-1-sudeep.holla@arm.com>
 <20210325143255.1532452-2-sudeep.holla@arm.com> <CAFA6WYMrCzDUHn4O=tM7y+w01LcSPrRu3Awja7io1XtcZPhqYQ@mail.gmail.com>
 <20210326105545.44rdcbrumg3q6i7y@bogus>
In-Reply-To: <20210326105545.44rdcbrumg3q6i7y@bogus>
From:   Sumit Garg <sumit.garg@linaro.org>
Date:   Fri, 26 Mar 2021 17:26:52 +0530
Message-ID: <CAFA6WYNf+Wmb3v56_-hUekn4UwSBe87OGJFehDx7t4iDWgg17g@mail.gmail.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: Arm: Add Firmware Framework for
 Armv8-A (FF-A) binding
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 26 Mar 2021 at 16:25, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Fri, Mar 26, 2021 at 10:35:23AM +0530, Sumit Garg wrote:
> > Hi Sudeep,
> >
> > Apologies for catching up late on this patch-set.
> >
> > On Thu, 25 Mar 2021 at 20:05, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > Since the FF-A v1.0 specification doesn't list the UUID of all the
> > > partitions in the discovery API, we need to specify the UUID of the
> > > partitions that need to be accessed by drivers within the kernel.
> > >
> >
> > Wouldn't we be able to implement auto-discovery of ffa partitions? I
> > think enumeration of ffa partitions on FFA bus should be quite similar
> > to enumeration of TAs on TEE bus (see [1]). Otherwise we need to put
> > these redundant DT entries for every ffa partition which IMHO would
> > bloat up device trees for every platform.
> >
>
> Any suggestions on how to ? Clearly spec doesn't have that provision, I
> had raised this point in the past. Jens has similar concern and he did
> ask the same[1]. As I replied to him in that thread[2].
>
> I am open to suggestion on how to auto-discover, currently as I see spec
> doesn't support it.
>

Thanks for sharing links to prior discussions and I can see that
currently spec doesn't support it. But from an implementation
perspective, I can't find any reason that we can't support
auto-discover. Have a look at below proposed simple FFA ABI:

FFA_LIST_PARTITIONS

- No input params.
- Returns an array of secure partition UUIDs to which this non-secure
virtual/physical FF-A instance is allowed to communicate with.

I think with auto-discovery, one of the major benefits is that if the
OEM is using a common platform to cater to multiple use-cases which
rely on different secure partitions then OEM doesn't have to bother
about shipping separate DTs.

-Sumit

> --
> Regards,
> Sudeep
>
> [1] https://lore.kernel.org/linux-arm-kernel/20201216134659.GA4146223@jade/
> [2] https://lore.kernel.org/linux-arm-kernel/20210113092236.pnabzaufzuzwprmw@bogus/
