Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5FB534A0C7
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 06:06:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229458AbhCZFGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 01:06:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbhCZFFh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 01:05:37 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22D2DC0613AA
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 22:05:37 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id q29so5819194lfb.4
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 22:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R+P1w5UAdqHmM+w2WKoae+I32OQS1OCjKz2JQzblE8M=;
        b=jP2L1DmX3TfLmopz8uAi8n3zMS++AxhBtBdnPBPaq4CRD9wbuR29GZURrpZrvwgRWV
         6kR1RCzfZ6d6CR6JDBb57/4H/wbnLI7H9hbckY6PArpbJOByNbt8/JAyC6VewNqhuHBM
         s6QZIPGWCLEYnmYOa9BokZ2QEf14YJ1ULHtp2OOAp/znczASaux1cXAbPQYSV+Ba/Fyh
         opOEjQTTij9iBf8gRJCmQcJNmd7J2aJkrnkAWT5yNWblavf8TSgfBZdclRzw5mwvYiGS
         JyBieeEVttCviBUEmB/x3Z2DAWSZc7wJbbUBHtL3BR957jIhROy2jev1F7TG+ZoJTMvH
         tgPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R+P1w5UAdqHmM+w2WKoae+I32OQS1OCjKz2JQzblE8M=;
        b=J2NjWJHZNtsgSfS0Soh/gjxLmQfpS0woH2LG3fotI/kme2jrQpUW9VFW36UboVw/gI
         QeppXga4aHujb6blI27C4jdljFsb4kHBsFCZJsHbct2SuKEEzwVwa/7g95Uhf471CIwv
         AxqAPmEP7mMTpbwwUvqeZZeSpYv76CND5c4MnFRqtQPZ2EU3BpWba0bnrCU0nMHsgu8V
         Fn7WBL5Nl0f8gwIsT13jvlFQhTE5R/UHAI/HPo2E/NXnkxHIl7JAOdibMl/kY8LWtYCU
         8Dt9VwhgvogfpCNoghRvFr/sxddittZK5S390QnDUxWjU94wHZqI4hdRfTbWnpCoqiIC
         rADw==
X-Gm-Message-State: AOAM530Xm6eDikfSSJwlbGFKQ9Tl5nTVgPG/s7sGJ19AtmMaw1K7lR38
        HGmt4usyBVMt4O/lyqOFd2Y43MsHNpFhp7oqsE8/dw==
X-Google-Smtp-Source: ABdhPJxDTS/BzmmkUwmS24I15gC4uzsRkIi4ZptVl7DUUFVXNBPfeHGsGqp2yMsvqE65udXgJnXITl0tkkk2enrUaq0=
X-Received: by 2002:ac2:4d9b:: with SMTP id g27mr7089312lfe.113.1616735135491;
 Thu, 25 Mar 2021 22:05:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210325143255.1532452-1-sudeep.holla@arm.com> <20210325143255.1532452-2-sudeep.holla@arm.com>
In-Reply-To: <20210325143255.1532452-2-sudeep.holla@arm.com>
From:   Sumit Garg <sumit.garg@linaro.org>
Date:   Fri, 26 Mar 2021 10:35:23 +0530
Message-ID: <CAFA6WYMrCzDUHn4O=tM7y+w01LcSPrRu3Awja7io1XtcZPhqYQ@mail.gmail.com>
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

Hi Sudeep,

Apologies for catching up late on this patch-set.

On Thu, 25 Mar 2021 at 20:05, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Since the FF-A v1.0 specification doesn't list the UUID of all the
> partitions in the discovery API, we need to specify the UUID of the
> partitions that need to be accessed by drivers within the kernel.
>

Wouldn't we be able to implement auto-discovery of ffa partitions? I
think enumeration of ffa partitions on FFA bus should be quite similar
to enumeration of TAs on TEE bus (see [1]). Otherwise we need to put
these redundant DT entries for every ffa partition which IMHO would
bloat up device trees for every platform.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/tee/optee/device.c#n153

-Sumit

> This binding to provide the list of partitions that kernel drivers
> may need to access.
>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,ffa.yaml      | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/arm,ffa.yaml b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> new file mode 100644
> index 000000000000..42ed33464ba7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/arm,ffa.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm Firmware Framework for Arm v8-A (in-kernel users)
> +
> +maintainers:
> +  - Sudeep Holla <sudeep.holla@arm.com>
> +
> +description: |
> +  Firmware frameworks implementing partition according to the FF-A
> +  specification defined by ARM document number ARM DEN 0077A ("Arm Firmware
> +  Framework for Arm v8-A") [0], providing services to be used by other
> +  partitions.
> +
> +  [0] https://developer.arm.com/docs/den0077/latest
> +
> +properties:
> +  $nodename:
> +    const: ffa
> +
> +  compatible:
> +    oneOf:
> +      - const: arm,ffa-1.0
> +
> +patternProperties:
> +  "^ffa-partition-[0-9]+$":
> +    type: object
> +    description: One or more child nodes, each describing an FFA partition.
> +    properties:
> +      $nodename:
> +        const: ffa_partition
> +
> +      compatible:
> +        const: arm,ffa-1.0-partition
> +
> +      uuid:
> +        $ref: '/schemas/types.yaml#definitions/string'
> +        description: |
> +          The 128-bit UUID [2] of the service implemented by this partition.
> +
> +          [2] https://tools.ietf.org/html/rfc4122
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    ffa {
> +      compatible = "arm,ffa-1.0";
> +
> +      ffa-partition-0 {
> +        compatible = "arm,ffa-1.0-partition";
> +        uuid = "12345678-9abc-def0-1234-56789abcdef0";
> +      };
> +    };
> --
> 2.25.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
