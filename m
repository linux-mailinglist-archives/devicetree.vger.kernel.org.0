Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82D52262111
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 22:26:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729717AbgIHU0S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 16:26:18 -0400
Received: from mail-il1-f196.google.com ([209.85.166.196]:39199 "EHLO
        mail-il1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729691AbgIHU0Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 16:26:16 -0400
Received: by mail-il1-f196.google.com with SMTP id u20so181134ilk.6
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 13:26:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Q1GA46eurbq393bshkUOLAZcgNwCZjpQb+QME3Fcn7s=;
        b=li8k0QLVMBbAGqxKC/e0mBCq9N1h3Vh80sc5cUs8OW00J4upbGA+Rsa2GRDQx4sHsg
         7XWQu5WvxuoF6axrjP0/v7bXB0GHuWDMLatbsf5uU8QJvjv4K9JK3SbG1mg09gAynEWR
         3juxzMvHXrx+1+7bmx0Pm5xYyVJ5Umgf0lPqAkn0Tc7lsIMEXGJWRhpvurtrsrHd8Kvd
         8O1wFQY2VfTd2HlDNc49d0tuCnjsdqZLXHGP4gp1762gTlpEyFmZLLtr1FVF8c+CP2lX
         /z5S5nOHz9Qw8nAndAaEgEupSTztBhgtTMAPwrkgAxVgpu5Yf4Si+/iSrNoR0RRHDJW4
         XLvw==
X-Gm-Message-State: AOAM5331kljxYPnG+nxZi3Nfb7jm0oKUNY9Es1q+XXc/r0MJ9/WYNuoX
        e0F+bsF+aHpaQB39RMo3Dg==
X-Google-Smtp-Source: ABdhPJzzSW1HnGca6SP8Zt6KLQ+Q5whz2tQ9a74wQVyKdYZv+huCox6teMirfI+OOM2Jt0BKp9QmaA==
X-Received: by 2002:a92:7a0a:: with SMTP id v10mr421545ilc.99.1599596775540;
        Tue, 08 Sep 2020 13:26:15 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id b207sm195050iof.37.2020.09.08.13.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 13:26:15 -0700 (PDT)
Received: (nullmailer pid 851362 invoked by uid 1000);
        Tue, 08 Sep 2020 20:26:14 -0000
Date:   Tue, 8 Sep 2020 14:26:14 -0600
From:   Rob Herring <robh@kernel.org>
To:     Nicola Mazzucato <nicola.mazzucato@arm.com>
Cc:     devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: Add devicetree binding for
 cpu-performance-dependencies
Message-ID: <20200908202614.GA851007@bogus>
References: <20200908141714.7194-1-nicola.mazzucato@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200908141714.7194-1-nicola.mazzucato@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 08 Sep 2020 15:17:14 +0100, Nicola Mazzucato wrote:
> Currently, there is an assumption that the performance domains as provided
> by the SCMI protocol should be mirroring the exact implementation in
> hardware, for example, the clock domains, which are a typical type of
> performance domains.
> 
> By design, an SCMI performance domain defines the granularity of
> performance controls, it does not describe any underlying hardware
> dependencies (although they may match in many cases).
> 
> As a consequence, in platforms where hardware may have the ability to
> control cpu performance at different granularity and choose to describe
> fine-grained performance control through SCMI performance domains, there
> is currently no way for OSPM to discover the actual cpu hardware
> dependencies. Inevitably, software components that rely on this missing
> description will cease to work.
> 
> Thus, there is a need for a new description of hardware dependencies where
> the performance level is coordinated by hardware (or firmware) since these
> dependency domains might be larger than the SCMI performance domains.
> 
> This new optional binding will provide visibility to OSPM on any hardware
> or firmware coordination of performance requests and enable more
> accurate assumptions about performance and performance side-effects of
> requesting performance level changers. This is essential information for
> OSPM thermal and energy management frameworks.
> 
> There are two main reasons to support this new addition:
> 
> 1) Per-cpu control & SCMI performance domains
> 
> Same as explained above. Some platforms would like to make aggregation
> decisions in firmware and want to describe themselves as having per-cpu
> control. In order to continue to make sane decisions in the OSPM layer,
> we need to know about the underlying connections.
> 
> With this optional binding, we provide performance dependencies
> information to OSPM for sets of CPUs while the h/w coordinates the
> performance level for each cpu.
> 
> 2) ACPI
> 
> With respect to performance, ACPI describes two main types of coordination
> that may take place in system when logical processors are required to
> transition to a different power/performance state. These two types are
> software coordination (SW) and hardware coordination (HW). In the first
> one, OSPM is in charge of handling such transitions while preserving the
> integrity of the entire system. In the latter case, the h/w is responsible
> for ensuring correct operations.
> 
> In the HW coordination, OSPM can control each processor as if they were all
> independent each other. However, platforms can use ACPI defined interfaces
> to group CPUs to create so called "dependency domain". Such interface is
> the _PSD method. Users in kernel that need to know dependencies among
> cores, can retrieve such information via _PSD [1].
> 
> If the same system needs to work with dt + SCMI, we will have all the
> controls, but we are missing the information performance level coordination
> in hardware/firmware.
> This new dt binding provides the missing bits.
> 
> [1]ACPI Specification, version 6.3 - 8.3 Power, Performance, and Throttling
> State Dependencies
> 
> Signed-off-by: Nicola Mazzucato <nicola.mazzucato@arm.com>
> ---
>  .../bindings/arm/cpu-perf-dependencies.yaml   | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/cpu-perf-dependencies.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

./Documentation/devicetree/bindings/arm/cpu-perf-dependencies.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/arm/cpu-perf-dependencies.yaml#
Error: Documentation/devicetree/bindings/arm/cpu-perf-dependencies.example.dts:24.13-29 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:342: Documentation/devicetree/bindings/arm/cpu-perf-dependencies.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1366: dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1359759

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

