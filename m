Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE8153A237E
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 06:25:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbhFJE10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 00:27:26 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:43643 "EHLO
        mail-wm1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229788AbhFJE10 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Jun 2021 00:27:26 -0400
Received: by mail-wm1-f54.google.com with SMTP id 3-20020a05600c0243b029019f2f9b2b8aso5513230wmj.2
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 21:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yrNkDf8sPCo44azByjqHolZWEpOUjgQyhZJeKfu6GJM=;
        b=PPiKAmTaL648+b5NzcLpfi3Aa+M8WwE6gzH9QTcBVKTsUQ3XcD2Icp0ar9gAdgjdo4
         YCv+bk3k+Am4Zf5lkF/OIOgPMKJDNtX9WJzJb0YSrSJJLkvot3GDzgtEjSBtrvbYpcp/
         swEIPXHmpGNoCIaTFLXNA/0o1Dlujn+GlYjilNgEAud/37/DrD09TUUyxw9gdbm/HQlM
         kO6TFmb2jdly+ASE1eT/q0VDOI+Xto6V3PKZ/j+hMZUlkEm1Oq7S8TxsItyJ4AiRETko
         DKm2fCmUbl8RDgczOb22AUjJrQb+OjzOZRBwFI7qpCKErezN5cIxhh1v741OJ+whaQGv
         Df0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yrNkDf8sPCo44azByjqHolZWEpOUjgQyhZJeKfu6GJM=;
        b=HGo2ueEVnIerDEua3bVRuqHbrOsFM4X7orKwJ4tvF3Y3xxAC7YhEBPSvRZeL00FU+2
         uLjwnxmltP9Bvz2CUVGCiCDPc60RlIMHq8bVQPEKZzZnVruHNoTo2/K9TsUzRGUjqSYF
         frB+EyrTeEgCehHs7Kj66+djnYAAaHO9mv/Ki4JTtd/sMSe5AW7brXN/DCAsKMFlY311
         5hkfOdPJBcRvy8faU/5HPtl96IsHn2r9Oamnmg4C5lKlIanHhuDAwjJhk5Tmu/Iw2Hwv
         aslqNFNK9iChMYXTB1N0pdo/+S4VsxtcljBXmHKT8F476kSmoUYIqDnHgYrA+4ia7s6V
         R++A==
X-Gm-Message-State: AOAM530e6+v8fz8LnJ6oKoHynAa+16mIBvB4CpbDMIVAuWL70JiR8T7T
        o9Bd4RQToS2mSuMRPpotwrmcKQrEjFdjhT27MMdvuQ==
X-Google-Smtp-Source: ABdhPJxl+43M1wzHk1fvw1rrT+5af8Fyig2WKLKNoUbsVRsuOy7HhLChxsw2vVtPyWuuzI66AIMCmxzazQYNVCrIAqo=
X-Received: by 2002:a05:600c:3b23:: with SMTP id m35mr13190824wms.185.1623299069816;
 Wed, 09 Jun 2021 21:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210609122715.3389-1-anup.patel@wdc.com> <20210609122715.3389-8-anup.patel@wdc.com>
 <1623255403.618479.3763295.nullmailer@robh.at.kernel.org>
In-Reply-To: <1623255403.618479.3763295.nullmailer@robh.at.kernel.org>
From:   Anup Patel <anup@brainfault.org>
Date:   Thu, 10 Jun 2021 09:54:18 +0530
Message-ID: <CAAhSdy2yqqdCJCaUkX8Ld8yUQcuGQx6c-TAVaNNVehgNHsjwzQ@mail.gmail.com>
Subject: Re: [PATCH v6 7/8] dt-bindings: Add common bindings for ARM and
 RISC-V idle states
To:     Rob Herring <robh@kernel.org>
Cc:     Anup Patel <anup.patel@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        "Rafael J . Wysocki" <rjw@rjwysocki.net>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Sandeep Tripathy <milun.tripathy@gmail.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Atish Patra <atish.patra@wdc.com>,
        "open list:THERMAL" <linux-pm@vger.kernel.org>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        DTML <devicetree@vger.kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liush <liush@allwinnertech.com>, Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 9, 2021 at 9:46 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, 09 Jun 2021 17:57:14 +0530, Anup Patel wrote:
> > The RISC-V CPU idle states will be described in under the
> > /cpus/idle-states DT node in the same way as ARM CPU idle
> > states.
> >
> > This patch adds common bindings documentation for both ARM
> > and RISC-V idle states.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../bindings/{arm => cpu}/idle-states.yaml    | 228 ++++++++++++++++--
> >  .../devicetree/bindings/riscv/cpus.yaml       |   6 +
> >  2 files changed, 217 insertions(+), 17 deletions(-)
> >  rename Documentation/devicetree/bindings/{arm => cpu}/idle-states.yaml (74%)
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
>
> \ndoc reference errors (make refcheckdocs):
> Warning: Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt references a file that doesn't exist: Documentation/devicetree/bindings/arm/idle-states.yaml
> Warning: Documentation/devicetree/bindings/arm/psci.yaml references a file that doesn't exist: Documentation/devicetree/bindings/arm/idle-states.yaml
> Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt: Documentation/devicetree/bindings/arm/idle-states.yaml
> Documentation/devicetree/bindings/arm/psci.yaml: Documentation/devicetree/bindings/arm/idle-states.yaml
>
> See https://patchwork.ozlabs.org/patch/1489849
>
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit.
>

Sure, I will quickly fix this one and send a v7 revision

Regards,
Anup
