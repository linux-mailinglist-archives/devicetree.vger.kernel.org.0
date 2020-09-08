Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD21A261CCD
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 21:26:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732122AbgIHT0w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 15:26:52 -0400
Received: from mail.kernel.org ([198.145.29.99]:37298 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732163AbgIHT0u (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 8 Sep 2020 15:26:50 -0400
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 895AA2098B
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 19:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599593209;
        bh=5N3CIXJskWldf54NzBBdznBXwxjRWq9yx9TWi18rk3A=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=FIfAu/1DE9bluUUfLeMMno3i1gzAkSDTt5HrsJ7AGrWyNkxh9k2AmpLrRCjUZN9+m
         SUdu8fkUyBNArHG4pHk6HuZxAZtGgOImG9xkaC8CrE3uKuYxOmMpot3Kk3q71vE9DM
         OrDWarDVfn28WhhEEnFzEdwz2liwcYAeyPVtwifE=
Received: by mail-ot1-f48.google.com with SMTP id a2so173551otr.11
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 12:26:49 -0700 (PDT)
X-Gm-Message-State: AOAM532514fkMJCzlAxq9IbdF7sEuz67lunDPzCdhUl3i1xiA4vFJPbR
        frWwZZco99pmvUDmJNdaR04SdtPqAQZSrt9qcQ==
X-Google-Smtp-Source: ABdhPJz/51uJ55jFrKc5ytiwIHGkYW4lsewjRCjSE8YkxOjpW8zqGO/8DbLqDoGGjzmdkLVFpnDMOzQNOVg1MZ1eQPw=
X-Received: by 2002:a9d:6b0d:: with SMTP id g13mr439754otp.129.1599593208759;
 Tue, 08 Sep 2020 12:26:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200908141714.7194-1-nicola.mazzucato@arm.com>
In-Reply-To: <20200908141714.7194-1-nicola.mazzucato@arm.com>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 8 Sep 2020 13:26:37 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLxHVgbztTHCtzdROHp_hhkZYx=xu-WFX4bD=TMZ72aGA@mail.gmail.com>
Message-ID: <CAL_JsqLxHVgbztTHCtzdROHp_hhkZYx=xu-WFX4bD=TMZ72aGA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Add devicetree binding for cpu-performance-dependencies
To:     Nicola Mazzucato <nicola.mazzucato@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infread.org,
        Sudeep Holla <Sudeep.Holla@arm.com>,
        Viresh Kumar <vireshk@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 8, 2020 at 8:53 AM Nicola Mazzucato
<nicola.mazzucato@arm.com> wrote:
>

So while this resend fixes the problem of not getting into DT
patchwork, you've dropped everyone else. The correct thing to do is
follow what get_maintainers.pl outputs as a starting point. That's not
exact as often you may or may not want 'commit signers' though I think
this wouldn't apply here given it's a new file. For this one, it's Arm
related so LAKML should be Cc'ed. As well as, Sudeep for SCMI, Viresh,
Daniel and probably others for power management related knowledge.

Where's the kernel implementation? Not strictly needed for adding a
binding, but more people will pay attention if there's an
implementation.

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

Wouldn't non-SCMI platforms need to describe the same dependencies? On
the flip side, why doesn't SCMI make itself discoverable rather than
putting this in DT?

How does this relate to OPPs? Wouldn't we have an OPP per 'performance domain'?

How does this relate to idle states? Aren't they going to have the
same dependencies at least for cluster level states?

I'd like to see a complete example with OPPs, idles states, etc. all included.

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

ACPI is not really relevant to a DT binding patch.

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
> diff --git a/Documentation/devicetree/bindings/arm/cpu-perf-dependencies.yaml b/Documentation/devicetree/bindings/arm/cpu-perf-dependencies.yaml
> new file mode 100644
> index 000000000000..3b8cf7e29982
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/cpu-perf-dependencies.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/cpu-perf-dependencies.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: CPU Performance Dependencies
> +
> +maintainers:
> +  - Nicola Mazzucato <nicola.mazzucato@arm.com>
> +
> +description: |+
> +  This optional node provides information to OSPM of cpu performance
> +  dependencies.
> +  Each list represents a set of CPUs which have performance level
> +  dependencies and can assumed to be roughly at the same performance
> +  level coordinated by hardware and/or firmware.
> +  Example: Describing CPUs in the same clock domain.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - arm,cpu-perf-dependencies
> +
> +  cpu-perf-affinity:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: |
> +      Specifies a list of phandles to CPU nodes corresponding to a set of CPUs
> +      which have performance affinity.
> +
> +examples:
> +  - |
> +    cpu-performance-dependencies {
> +        compatible = "arm,cpu-perf-dependencies";
> +        cpu-perf-domain0 {

What does 0 correspond to? Just making up indices or ???

> +            cpu-perf-affinity = <&CPU0>, <&CPU1>, <&CPU2>, <&CPU3>;
> +        }
> +        cpu-perf-domain1 {
> +            cpu-perf-affinity = <&CPU4>, <&CPU5>, <&CPU6>;
> +        }
> +        cpu-perf-domain2 {
> +            cpu-perf-affinity = <&CPU7>;
> +        }
> +    };
> --
> 2.27.0
>
