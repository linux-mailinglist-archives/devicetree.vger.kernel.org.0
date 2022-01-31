Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE4624A5175
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 22:30:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230390AbiAaVaS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 16:30:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380980AbiAaVaS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 16:30:18 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4D57C06173D
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 13:30:17 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id m10so4333094oie.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 13:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=EWCX5hcXaVgGfJq6Uro6wFymwW8ucLF1OZM+3brDUms=;
        b=NJNE3eqMczWuf/HseHyXh+VUHBQBFOr1U7Iaio1FR04rg4XF+RTUhw5XN8J2Nhp275
         4ZV2X+mM136/0DUXUPei6EhTHdxPMfMVsFfIUOboSDgCsyrEnsBC/WOzHtZsYBNYl/c2
         KMIQ81s3xxgHhv5NuO+zIWV3NA9FgnFq+pOAruJQVcxyxLNgu7uawIiJ69CZgNq1qlD8
         GDWNNZOVG6i94lGsd3GnfQkVp4ddOWfCxKxfxSPfR50W1sndL3fHPiHn4qcsecJb2e93
         4Kk3o2d0VelM2AfI+2NBdf7/z2PKriJvsLkgUR/pV9N1tPfNcA9ojwlxYKrn8zyCON1b
         QaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EWCX5hcXaVgGfJq6Uro6wFymwW8ucLF1OZM+3brDUms=;
        b=MGHBuqgKtpg1wI88H7qhAkwVPsLcaiNER1jviMoMkJHehwV3ubakFT1RuaeC1MCSmN
         eiAHvx6x3GwG2EMVRw7EBK2KGW9IWnThVILKlFvOQOP1qBtId+ikssl9Ayhs1D/YdZsj
         3vO1vHlcKOGc05+4wj/vAXDrEq0MFjxUVQcamNTpYhANEhiDmJSnePiC/v+hcrQ6D92Q
         5wzCGNxMGH2oSeSd4zddNSaHpjyrc1eh1ZD+P6bBCDtCOIftZgH9npjqtC3OsGv1zQmY
         AjSJZgb3NHxA9jc130ktDE7gv9k3eV9631EwwGUjD29wq2XyKstRKpvpQuhJe7jvJ8WI
         QtEQ==
X-Gm-Message-State: AOAM531LHmP5xIPekBiBDjouAtxUSLYCsFd6sA8zm6cNMfipIv9vEpVw
        FM1NtwbrtXzQyyqZyGtnDoCkOA==
X-Google-Smtp-Source: ABdhPJxNRZPDIHBqMhCXLiQbQnClLqoP+mUjES33x4GJfmpl1pbyfkfna2k1O6NXpUdSthoT6JnKMA==
X-Received: by 2002:a05:6808:1b0f:: with SMTP id bx15mr19590906oib.172.1643664616881;
        Mon, 31 Jan 2022 13:30:16 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id z4sm6606358otu.24.2022.01.31.13.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 13:30:16 -0800 (PST)
Date:   Mon, 31 Jan 2022 15:30:14 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     David Heidelberg <david@ixit.cz>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        ~okias/devicetree@lists.sr.ht, Alex Elder <elder@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-binding: soc: qcom: convert QCOM SMP2P binding to yaml
Message-ID: <YfhU5s8H/3PjEAAc@builder.lan>
References: <20211218205039.35994-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211218205039.35994-1-david@ixit.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 18 Dec 14:50 CST 2021, David Heidelberg wrote:

> Convert Qualcomm SoC SMP2P binding to the yaml format.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../bindings/soc/qcom/qcom,smp2p.txt          | 110 --------------
>  .../bindings/soc/qcom/qcom,smp2p.yaml         | 139 ++++++++++++++++++
>  2 files changed, 139 insertions(+), 110 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,smp2p.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,smp2p.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,smp2p.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,smp2p.txt
> deleted file mode 100644
> index 49e1d72d3648..000000000000
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,smp2p.txt
> +++ /dev/null
> @@ -1,110 +0,0 @@
> -Qualcomm Shared Memory Point 2 Point binding
> -
> -The Shared Memory Point to Point (SMP2P) protocol facilitates communication of
> -a single 32-bit value between two processors.  Each value has a single writer
> -(the local side) and a single reader (the remote side).  Values are uniquely
> -identified in the system by the directed edge (local processor ID to remote
> -processor ID) and a string identifier.
> -
> -- compatible:
> -	Usage: required
> -	Value type: <string>
> -	Definition: must be one of:
> -		    "qcom,smp2p"
> -
> -- interrupts:
> -	Usage: required
> -	Value type: <prop-encoded-array>
> -	Definition: one entry specifying the smp2p notification interrupt
> -
> -- mboxes:
> -	Usage: required
> -	Value type: <prop-encoded-array>
> -	Definition: reference to the associated doorbell in APCS, as described
> -		    in mailbox/mailbox.txt
> -
> -- qcom,ipc:
> -	Usage: required, unless mboxes is specified
> -	Value type: <prop-encoded-array>
> -	Definition: three entries specifying the outgoing ipc bit used for
> -		    signaling the remote end of the smp2p edge:
> -		    - phandle to a syscon node representing the apcs registers
> -		    - u32 representing offset to the register within the syscon
> -		    - u32 representing the ipc bit within the register
> -
> -- qcom,smem:
> -	Usage: required
> -	Value type: <u32 array>
> -	Definition: two identifiers of the inbound and outbound smem items used
> -		    for this edge
> -
> -- qcom,local-pid:
> -	Usage: required
> -	Value type: <u32>
> -	Definition: specifies the identifier of the local endpoint of this edge
> -
> -- qcom,remote-pid:
> -	Usage: required
> -	Value type: <u32>
> -	Definition: specifies the identifier of the remote endpoint of this edge
> -
> -= SUBNODES
> -Each SMP2P pair contain a set of inbound and outbound entries, these are
> -described in subnodes of the smp2p device node. The node names are not
> -important.
> -
> -- qcom,entry-name:
> -	Usage: required
> -	Value type: <string>
> -	Definition: specifies the name of this entry, for inbound entries this
> -		    will be used to match against the remotely allocated entry
> -		    and for outbound entries this name is used for allocating
> -		    entries
> -
> -- interrupt-controller:
> -	Usage: required for incoming entries
> -	Value type: <empty>
> -	Definition: marks the entry as inbound; the node should be specified
> -		    as a two cell interrupt-controller as defined in
> -		    "../interrupt-controller/interrupts.txt"
> -		    If not specified this node will denote the outgoing entry
> -
> -- #interrupt-cells:
> -	Usage: required for incoming entries
> -	Value type: <u32>
> -	Definition: must be 2 - denoting the bit in the entry and IRQ flags
> -
> -- #qcom,smem-state-cells:
> -	Usage: required for outgoing entries
> -	Value type: <u32>
> -	Definition: must be 1 - denoting the bit in the entry
> -
> -= EXAMPLE
> -The following example shows the SMP2P setup with the wireless processor,
> -defined from the 8974 apps processor's point-of-view. It encompasses one
> -inbound and one outbound entry:
> -
> -wcnss-smp2p {
> -	compatible = "qcom,smp2p";
> -	qcom,smem = <431>, <451>;
> -
> -	interrupts = <0 143 1>;
> -
> -	qcom,ipc = <&apcs 8 18>;
> -
> -	qcom,local-pid = <0>;
> -	qcom,remote-pid = <4>;
> -
> -	wcnss_smp2p_out: master-kernel {
> -		qcom,entry-name = "master-kernel";
> -
> -		#qcom,smem-state-cells = <1>;
> -	};
> -
> -	wcnss_smp2p_in: slave-kernel {
> -		qcom,entry-name = "slave-kernel";
> -
> -		interrupt-controller;
> -		#interrupt-cells = <2>;
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,smp2p.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,smp2p.yaml
> new file mode 100644
> index 000000000000..40d1c42e917b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,smp2p.yaml
> @@ -0,0 +1,139 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/qcom/qcom,smp2p.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Qualcomm Shared Memory Point 2 Point
> +
> +description: |

You may omit the pipe.

> +  The Shared Memory Point to Point (SMP2P) protocol facilitates communication of
> +  a single 32-bit value between two processors.  Each value has a single writer
> +  (the local side) and a single reader (the remote side).  Values are uniquely
> +  identified in the system by the directed edge (local processor ID to remote
> +  processor ID) and a string identifier.
> +
> +maintainers:
> +  - Bjorn Andersson <bjorn.andersson@linaro.org>
> +
> +properties:
> +  compatible:
> +    const: qcom,smp2p
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  mboxes:
> +    description: >
> +      reference to the associated doorbell in APCS, as described
> +      in mailbox/mailbox.txt
> +
> +  qcom,ipc:
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +    description: >
> +      three entries specifying the outgoing ipc bit used for
> +      signaling the remote end of the smp2p edge
> +    minItems: 1
> +    maxItems: 32 # no hard limit
> +    items:
> +      items:
> +        - description: phandle to a syscon node representing the apcs registers
> +        - description: offset to the register within the syscon
> +        - description: the IPC bit within the register
> +
> +  qcom,smem:
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +    description: indentifiers of the smem items used for this edge
> +    items:
> +      - items:
> +          - description: identifier of inbound smem items
> +      - items:
> +          - description: identifier of outbound smem items
> +
> +  qcom,local-pid:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: specifies the identifier of the local endpoint of this edge
> +
> +  qcom,remote-pid:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: specifies the identifier of the remote endpoint of this edge
> +
> +patternProperties:
> +  "^((master|slave)-kernel|ipa-ap-to-modem|ipa-modem-to-ap|)$":

These are simply the identifiers in "qcom,entry-name" and putting them
in the binding would mean that whenever we have additions (there are
some for e.g. WiFi on newer platforms) we have to update the binding.

So I would prefer if we just skip the constraints on the names of the
child nodes.

Regards,
Bjorn

> +    type: object
> +    properties:
> +      interrupt-controller:
> +        description: >
> +          marks the entry as inbound, if not specified
> +          this node will denote the outgoing entry
> +
> +      '#interrupt-cells':
> +        const: 2
> +
> +      qcom,entry-name:
> +        $ref: /schemas/types.yaml#/definitions/string
> +        description: >
> +          specifies the name of this entry, for inbound entries this will be
> +          used to match against the remotely allocated entry and for outbound
> +          entries this name is used for allocating entries
> +
> +      '#qcom,smem-state-cells':
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description: required for outgoing entries
> +        const: 1
> +
> +    required:
> +      - qcom,entry-name
> +
> +    oneOf:
> +      - required:
> +          - interrupt-controller
> +          - '#interrupt-cells'
> +      - required:
> +          - '#qcom,smem-state-cells'
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - qcom,smem
> +  - qcom,local-pid
> +  - qcom,remote-pid
> +
> +anyOf:
> +  - required:
> +      - mboxes
> +  - required:
> +      - qcom,ipc
> +
> +additionalProperties: false
> +
> +examples:
> +  # The following example shows the SMP2P setup with the wireless processor,
> +  # defined from the 8974 apps processor's point-of-view. It encompasses one
> +  # inbound and one outbound entry:
> +  - |
> +    wcnss-smp2p {
> +        compatible = "qcom,smp2p";
> +        qcom,smem = <431>, <451>;
> +
> +        interrupts = <0 143 1>;
> +
> +        qcom,ipc = <&apcs 8 18>;
> +
> +        qcom,local-pid = <0>;
> +        qcom,remote-pid = <4>;
> +
> +        wcnss_smp2p_out: master-kernel {
> +            qcom,entry-name = "master-kernel";
> +
> +            #qcom,smem-state-cells = <1>;
> +        };
> +
> +        wcnss_smp2p_in: slave-kernel {
> +            qcom,entry-name = "slave-kernel";
> +
> +            interrupt-controller;
> +            #interrupt-cells = <2>;
> +        };
> +    };
> -- 
> 2.34.1
> 
