Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F1BE2DA2ED
	for <lists+devicetree@lfdr.de>; Mon, 14 Dec 2020 23:02:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727154AbgLNWB7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Dec 2020 17:01:59 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:35097 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727013AbgLNWBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Dec 2020 17:01:51 -0500
Received: by mail-ot1-f68.google.com with SMTP id i6so17373221otr.2
        for <devicetree@vger.kernel.org>; Mon, 14 Dec 2020 14:01:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CLg81VCw7WUSOyJHczxiTOaiCI7Ub7ICfiX/XqBfJbU=;
        b=Rh6yEkZHtZqoAV0mQnfuaYmYjHfOdECTyOIu50opHJBH9qJ4SMKEm+gZQG4uoOSsoW
         5431lum5Kq94BG7qGQxWdtzi6MHybmLZtiRugwF5FFk/+LephdoteTXurje4G+SuLj5M
         uVuK9fIOs6K/z7+td+qO66QWGYdJzw4Cl5sjWD9sn5bn+FBNlKKdIMi6bvoLJE3L4Ucb
         vPkkO5UK6SpoMf77XE12BvbJZeKcOYtXPILK5GOFWqYybYwJCPGCfGWNifGlByhQ5La6
         CwFwnKQnNyQSHt/mGaIKghamIBWJp1GeuafNkAL1F48A7neWrFbKk2UvanXDxQk5+Yke
         dQLg==
X-Gm-Message-State: AOAM530X0df91iLil7BrIHQd8bcmSVKo/fE/nuX8+GoY1PPXCLb7PL2F
        w5zBz8wpIyFwYVhhcLPmAw==
X-Google-Smtp-Source: ABdhPJz3VQP125TN/BywgL93zVAHEgHOivyXp4I2SYwnh9E64x+911d9PGe4d6vPeiVlqNFi7A+9cA==
X-Received: by 2002:a9d:e91:: with SMTP id 17mr21100998otj.237.1607983269919;
        Mon, 14 Dec 2020 14:01:09 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t12sm4216046oot.21.2020.12.14.14.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Dec 2020 14:01:09 -0800 (PST)
Received: (nullmailer pid 2464252 invoked by uid 1000);
        Mon, 14 Dec 2020 22:01:07 -0000
Date:   Mon, 14 Dec 2020 16:01:07 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: Arm: Add Firmware Framework for
 Armv8-A (FF-A) binding
Message-ID: <20201214220107.GA2430387@robh.at.kernel.org>
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-2-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201204121137.2966778-2-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 04, 2020 at 12:11:31PM +0000, Sudeep Holla wrote:
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
> +    type: object
> +    description: One or more child nodes, each describing an FFA partition.
> +    properties:
> +      $nodename:
> +        const: ffa_partition
> +
> +      compatible:
> +        oneOf:
> +          - const: arm,ffa-1.0-partition
> +
> +      uuid:
> +        $ref: '/schemas/types.yaml#definitions/string'
> +        description: |
> +          The 128-bit UUID [2] of the service implemented by this partition.
> +
> +          [2] https://tools.ietf.org/html/rfc4122

UUIDs are actually a known thing in json-schema with 'format: uuid'. 
The meta-schema will probably reject that, so we'll need to add support 
to dtschema. Maybe it should be a new definition to reference.

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

This could all be simplified down to just a single property:

arm,ffa-partitions = "12345678-9abc-def0-1234-56789abcdef0", 
	"12345678-9abc-def0-1234-56789abcdef1"
	"12345678-9abc-def0-1234-56789abcdef2";

Obviously, that's not extensible, but do we need it to be?

Rob
