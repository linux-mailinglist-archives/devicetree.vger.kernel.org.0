Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12A123F7ED8
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 01:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232756AbhHYXDz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 19:03:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231535AbhHYXDz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 19:03:55 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9044AC061757
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 16:03:08 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id f10so598222wml.2
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 16:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Cm6c7hFNakADjloCVmJSXuiCFhhriT1Qx0X20C3Kl7c=;
        b=khzvqlxQf5CBzXWQPHCXwnB0671jsehkTA/CFYFuDJx8QGYIkTniffcyrzWV5Q+pAt
         pmDYlmczRHefdwfrUT+KE9ZpxQE9mr0rVg5CoBedZuM93IonbTMRWHmYHxgNzfv+BmGl
         xEsx256i+pqRAOa7c47xRu8fq1fnHZYCdlL4q7EPiNyXIrWU9WANJIiwvEXVZkHbc9Pq
         rfUoy8QZWFi3GejEBHiWjkIhhM83ak1SJsvUeuJ+bVEQaEsuXM77eGncsues+pLbBphN
         sEQ8kaH3gIOZxjCeWOSTiJlLZiwk64jMn212LqGvqPbsnCUwccjQC8yLMqDA5XXEHSWl
         lTQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Cm6c7hFNakADjloCVmJSXuiCFhhriT1Qx0X20C3Kl7c=;
        b=miTPP7IWhptLXld4iPXsju/bGUaCVk8bawrXVZ4KnPhKw9PvMK4Jb4QAVbLmGm42KK
         c9xbuSRojIfRgnK5s2bNDfD1RK4uk9zhGvz2Hu6hErOd0la9xeQmhOBQG44us+s/02fo
         C0z1H7WeYnqrKd3tlMldbBekDyhhvCyx8g7IO07nnLIKhxvL4IaPuetya+h4NqzlfWbh
         STqNae5i2MyLSMzsD/FooqiTmMw9tfgt1zrOTGdZA4ouP5Nva0gWQXapU1bzbNhQFpv/
         fXEb90T6pNyeM+m0Zmkp5avs8z2A4j4x72VuF1Ryt4PdM9AkoajioKc+k8HGfi9v8Mu9
         bfTA==
X-Gm-Message-State: AOAM532zMQVshJlzExWjTE2QrwgSZgTt0cvgE7fA8AsB768rWlbaiXaN
        7EHTclOaf50pV/sH7qU0McA=
X-Google-Smtp-Source: ABdhPJyZX8vP16ssTcxswljgsJu/rjKv++m8C0Xptcb4SywM+pcgvJGuSAREfnbudE+TDRr+u2/MYA==
X-Received: by 2002:a7b:c4c2:: with SMTP id g2mr733342wmk.134.1629932587119;
        Wed, 25 Aug 2021 16:03:07 -0700 (PDT)
Received: from skbuf ([82.78.148.104])
        by smtp.gmail.com with ESMTPSA id n3sm915428wmi.0.2021.08.25.16.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 16:03:06 -0700 (PDT)
Date:   Thu, 26 Aug 2021 02:03:05 +0300
From:   Vladimir Oltean <olteanv@gmail.com>
To:     Tom Rini <trini@konsulko.com>
Cc:     Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Michael Walle <michael@walle.cc>,
        Priyanka Jain <priyanka.jain@nxp.com>, u-boot@lists.denx.de,
        heiko.thiery@gmail.com
Subject: Re: incompatible device trees between u-boot and linux
Message-ID: <20210825230305.hbxhshhbdhe56iod@skbuf>
References: <51c2a92f6bf771769f1e2da5157727e8@walle.cc>
 <20210825140045.GR858@bill-the-cat>
 <20210825141816.qfn25xlech55rwsg@skbuf>
 <20210825142610.GU858@bill-the-cat>
 <20210825151220.xkpxxucce2oicfvy@skbuf>
 <20210825152408.GW858@bill-the-cat>
 <20210825154323.reksf2nyncech6so@skbuf>
 <20210825200950.GY858@bill-the-cat>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210825200950.GY858@bill-the-cat>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 25, 2021 at 04:09:50PM -0400, Tom Rini wrote:
> I'm saying that because it's what's been said for what feels like 10+
> years.  I don't want to think how many countless hours have been spent
> on that point at conferences over the years.  It's not even a Linux
> thing.  I would swear you can (or could, unless it got broken) take the
> same DTB for some platforms and boot Linux or FreeBSD or some other BSD
> or maybe even VxWorks and it works.

So I absolutely do not oppose the greater goal, and if you say that
other silicon vendors do it, then shame on us really, NXP should step up
their game and be way stricter during internal review and such for things
that matter.

I'm afraid it's something that must trickle down from the management and
maintainership level before it could be effective.

In any case, it doesn't sound absurd at all, with a bit of passion it
could be done on all Layerscapes. I would be absolutely glad to help on
the Ethernet / DSA side of things (which I believe is the reason why
Michael summoned me into this thread), but I don't believe that's where
the problem is right now. When I added the DM_DSA uclass to U-Boot I did
my best to pick a reasonable subset of Linux DSA, and with compatible
device tree bindings. Also maintaining the Linux side of things, I did
provide feedback to Tim Harvey for the Microchip KSZ switches as to
what is the subset supported by U-Boot that would also be DT-compatible
with Linux. If it turns out that I failed at that, I am willing to
rework what we have.

I have been known on a few occasions to say "U-Boot does not parse this
part of the device tree, you can just strip it away", but I will keep my
mouth shut from now on.
