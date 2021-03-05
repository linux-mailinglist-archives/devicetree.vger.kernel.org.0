Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4317832F4A7
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 21:40:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbhCEUjV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 15:39:21 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:33695 "EHLO
        mail-oi1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbhCEUiw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 15:38:52 -0500
Received: by mail-oi1-f176.google.com with SMTP id a13so3973079oid.0
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 12:38:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5Uv2fBsdzVzAjrkZscaxWC7WQeabh4APOPETOERYi/I=;
        b=kqWc6UxYb7Qj94cDWrk2ClwfZDr3ISkuto8M1TVRVg3bTAr4VpaATNC0sccN0x+tnU
         /Nw03YFIE2hBbzYomuf4PVKP8bx0VEcL/JsYQ3jp5b+/aIbTPH6zqOlp9Wvoz48srDOn
         4NeZKTS+aAc7/1tbcQI0v+jqDP8iM3eDd1F78uzZe1UfnndC3so8YORaPBGOK6awauyX
         vq6K1eJoalIf2kdMG/rnziFLVcOJFJKYMoGo+MK1jp6RbLvLc+5Fosj9Pckvxpu0rDEK
         HzuiDN1uBqQs60wF7f5WtWS0BjeMoFnLt788EUrCsQ0PBjwqejvqsPGqQc3e9DMAaI61
         XxKw==
X-Gm-Message-State: AOAM532rUqF5R1BJ6+328GScfFV483sERi7zYDABbq5GSGXSYCV69y19
        GsOygH9MOTw2Cs/WGGiRPg==
X-Google-Smtp-Source: ABdhPJzzpNKS6xGg7OHNDAzJY160AxS0PJb9i0/5L1J0+7iQqrqMCku2u/Ura0ufM5ACxWmsy/9msg==
X-Received: by 2002:aca:c792:: with SMTP id x140mr8470741oif.86.1614976731709;
        Fri, 05 Mar 2021 12:38:51 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t6sm789926otc.49.2021.03.05.12.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 12:38:50 -0800 (PST)
Received: (nullmailer pid 606466 invoked by uid 1000);
        Fri, 05 Mar 2021 20:38:49 -0000
Date:   Fri, 5 Mar 2021 14:38:49 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: Arm: Add Firmware Framework for
 Armv8-A (FF-A) binding
Message-ID: <20210305203849.GA585154@robh.at.kernel.org>
References: <20210212154614.38604-1-sudeep.holla@arm.com>
 <20210212154614.38604-2-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210212154614.38604-2-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 12, 2021 at 03:46:08PM +0000, Sudeep Holla wrote:
> Since the FF-A v1.0 specification doesn't list the UUID of all the
> partitions in the discovery API, we need to specify the UUID of the
> partitions that need to be accessed by drivers within the kernel.
> 
> This binding to provide the list of partitions that kernel drivers
> may need to access.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,ffa.yaml      | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml
> 
> Hi Rob,
> 
> Sorry to send the same version again just to keep the driver review progress.
> I am still exploring on how to add "format: uuid" support in the dt-schemas.
> I am seeing errors as format is used in some of the audio/video DT bindings.
> I get errors for all those files, may be I need to use $format, initial
> trial to do that also failed.

Other bindings shouldn't affect you. The meta-schema and maybe the 
fixups are probably the issue. It's something I need to fix.


> Regarding other comment, I had replied earlier[1] as why we need to keep
> separate DT nodes for each partitions.

That's fine. It's the other users like TF-A that I'm now more concerned 
about...

> [1] https://lore.kernel.org/linux-arm-kernel/20210113100011.bnn75jogx22cgkk4@bogus/
> 
> Regards,
> Sudeep
> 
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,ffa.yaml b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> new file mode 100644
> index 000000000000..a014a5801c34
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> @@ -0,0 +1,58 @@
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
> +  "^ffa_partition[0-9]+$":

'^ffa-partition-[0-9a-f]+$'

> +    type: object
> +    description: One or more child nodes, each describing an FFA partition.
> +    properties:
> +      $nodename:
> +        const: ffa_partition
> +
> +      compatible:
> +        oneOf:

Don't need oneOf.

> +          - const: arm,ffa-1.0-partition
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
> +      ffa_partition0 {
> +        compatible = "arm,ffa-1.0-partition";
> +        uuid = "12345678-9abc-def0-1234-56789abcdef0";
> +      };
> +    };
> -- 
> 2.25.1
> 
