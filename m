Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88A5A42167F
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 20:30:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238673AbhJDScH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 14:32:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238671AbhJDScH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 14:32:07 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA469C06174E
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 11:30:17 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id z11so22846850oih.1
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 11:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=uCLhCIedrLItIW/fIfQqIROcIoOGMNaU28b9WsBMQnI=;
        b=P6zsoL37SUGXaq+jlFKw64cq/gWi8DvYuFwDk7R/ncTC7gIPttZrqFNxbIRwzBNhr6
         +Hl2duvFMKp+P7YDAvnH6BQvwbL6mXtoVK/ouAC5FZ9ctWYaECxF+t3inL5aMlosIDL6
         EsZIbQyPHZZQNirMUwPuEQRxA5IKRGFyosR3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=uCLhCIedrLItIW/fIfQqIROcIoOGMNaU28b9WsBMQnI=;
        b=b/UPMtlSh3N+K4Rfas8cUdFFUL3PXkKW0uEv+eyAT4NnBA3GZzCMroV6nUzsFAljK8
         a/UAQlFwpF5ZoDQPgpifHMhVXuZnvNhQtn8U7OxxKx/oSmW8N900OCvG7lk3/0rkzLbB
         QjUGtJ0oZi+F04ulwM9PHkV45WheTmamKKIntQOuYjBEQ6EfjCzyzhtcaPaZ3M6d1xlg
         ZGoKHBRCB1/yrBoeoNjtnRrieotbpMm/zXGmBxlAce+KG+q//c1krrpro4J9FixVC2Ur
         o73wRc/zt8ypgdm5vti3SCVGLximxG9qqJ7NoE+BNv3sU+S1nXoDCE8J2BkD1fjUG4BT
         +gpg==
X-Gm-Message-State: AOAM533FVAaRMrmrrZv9KGmsUHiOAuDAZddN6nwZfd9xm4lGDDGnJ+EE
        nEBcEm0FjbkKi04zmCFMkOt0RK1FcDvKaUIctlEXyQ==
X-Google-Smtp-Source: ABdhPJwMewBiHcj4UTVv/PT20GzfqwNCqVLYizMCffyKapvUT9VTsB2dEfJCzOign0BlblGRDjGR712uoYIlg7cG0mg=
X-Received: by 2002:aca:42d7:: with SMTP id p206mr14586908oia.32.1633372217132;
 Mon, 04 Oct 2021 11:30:17 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 4 Oct 2021 14:30:16 -0400
MIME-Version: 1.0
In-Reply-To: <1633330133-29617-2-git-send-email-pillair@codeaurora.org>
References: <1633330133-29617-1-git-send-email-pillair@codeaurora.org> <1633330133-29617-2-git-send-email-pillair@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 4 Oct 2021 14:30:16 -0400
Message-ID: <CAE-0n50_Qtz4OfZ9og8BWUZRe8DYRPnoSkOSAHgzTd3bpA32cw@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: remoteproc: qcom: adsp: Convert
 binding to YAML
To:     Rakesh Pillai <pillair@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, mathieu.poirier@linaro.org,
        ohad@wizery.com, p.zabel@pengutronix.de, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibis@codeaurora.org,
        mpubbise@codeaurora.org, kuabhs@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rakesh Pillai (2021-10-03 23:48:51)
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,qcs404-cdsp-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,qcs404-cdsp-pil.yaml
> new file mode 100644
> index 0000000..b698bb7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,qcs404-cdsp-pil.yaml
> @@ -0,0 +1,167 @@
[...]
> +
> +  qcom,smem-state-names:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: The names of the state bits used for SMP2P output
> +    items:
> +      - const: stop
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts-extended
> +  - interrupt-names
> +  - clocks
> +  - clock-names
> +  - power-domains
> +  - reset
> +  - reset-names
> +  - qcom,halt-regs
> +  - memory-region
> +  - qcom,smem-states
> +  - qcom,smem-state-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,gcc-qcs404.h>
> +    #include <dt-bindings/clock/qcom,turingcc-qcs404.h>
> +    remoteproc@b00000 {
> +        compatible = "qcom,qcs404-cdsp-pas";
> +        reg = <0x00b00000 0x4040>;
> +
> +        interrupts-extended = <&intc GIC_SPI 229 IRQ_TYPE_EDGE_RISING>,
> +                              <&cdsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
> +                              <&cdsp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
> +                              <&cdsp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
> +                              <&cdsp_smp2p_in 3 IRQ_TYPE_EDGE_RISING>;
> +        interrupt-names = "wdog", "fatal", "ready",
> +                          "handover", "stop-ack";
> +
> +        clocks = <&xo_board>,
> +                 <&gcc GCC_CDSP_CFG_AHB_CLK>,
> +                 <&gcc GCC_CDSP_TBU_CLK>,
> +                 <&gcc GCC_BIMC_CDSP_CLK>,
> +                 <&turingcc TURING_WRAPPER_AON_CLK>,
> +                 <&turingcc TURING_Q6SS_AHBS_AON_CLK>,
> +                 <&turingcc TURING_Q6SS_AHBM_AON_CLK>,
> +                 <&turingcc TURING_Q6SS_Q6_AXIM_CLK>;
> +        clock-names = "xo",
> +                      "sway",
> +                      "tbu",
> +                      "bimc",
> +                      "ahb_aon",
> +                      "q6ss_slave",
> +                      "q6ss_master",
> +                      "q6_axim";
> +
> +        resets = <&gcc GCC_CDSP_RESTART>;
> +        reset-names = "restart";
> +
> +        qcom,halt-regs = <&tcsr 0x19004>;
> +
> +        memory-region = <&cdsp_fw_mem>;
> +
> +        qcom,smem-states = <&cdsp_smp2p_out 0>;
> +        qcom,smem-state-names = "stop";
> +
> +        glink-edge {

Where is glink-edge documented as a property?

> +            interrupts = <GIC_SPI 141 IRQ_TYPE_EDGE_RISING>;
> +
> +            qcom,remote-pid = <5>;
> +            mboxes = <&apcs_glb 12>;
> +
> +            label = "cdsp";

It would be good to have these properties defined as well and maybe
include the common schema for a glink edge that way.

> +        };
> +    };
