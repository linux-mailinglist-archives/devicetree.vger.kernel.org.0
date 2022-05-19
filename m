Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 126B152E00A
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 00:35:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245514AbiESWfQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 18:35:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239262AbiESWfP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 18:35:15 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D9F3C0388
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 15:35:13 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-e5e433d66dso8463599fac.5
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 15:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=VjlrbV4vJKI8XrHdrvSp11oTKl50bHpTcvsdSZU8U4M=;
        b=XkI+w/MjL3A6mJl2TFEUT88gLNyZg00mKX8nHV7mXLrN8otWS80SaNXd/6sNN2XUTo
         oZ+Tp90Cs1lq2W9ocDlCd23qD8CaCLRgFr3Mk8m9L4k0AktuSg7PaUdLtT8S9CHKYj5y
         caMezmMFbAAhbmPNUrkS5UN0NVPZA+odXJR2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=VjlrbV4vJKI8XrHdrvSp11oTKl50bHpTcvsdSZU8U4M=;
        b=2bO//KWBwS826EO0gIp3mo9EGEEyYPLhseyrG/RLBuJTjM1hwZg3o/X70RT5sUyltt
         QAt5wnQKlA/VxUotPidl63bqRDs8u3ixup77iAjNj061FZTYagiMXc70wBguwBjXR9g2
         oxAw/TjPNx8IvSVmNjAsBc4Yok9v+z7u46Lct+8erq3zkopE0vajtnYJCqGGPM+htpAQ
         RC6PdA3khuwV6YyrtVQLF0HF8mtUAJZP3XTpQAzig6tk19MoVvlh5HnBn+Cyz/yUy7Gg
         qew+vmjGYllwXeSJJsZqffAYhx8jUgbc5Pzmqvn21zIIIer22BIO2PHSRNdhc6c+SfmX
         v22A==
X-Gm-Message-State: AOAM533FsX/JD/5A3laZXJLPz7kN46w31a6um3/wNWyMOkdHM7zb5akh
        X83/S8hZDi5twm5BjMcsaJE0hLESVvUMnnfmihxNhg==
X-Google-Smtp-Source: ABdhPJyHbu0BSr9LBi52hxpKPmXOdW1xCXpPhmUrDoe9clR+KRpEObjnicQVOt9bttlw1GiBXVL+iYfOG64eiydGEFw=
X-Received: by 2002:a05:6870:240d:b0:f1:b878:e97c with SMTP id
 n13-20020a056870240d00b000f1b878e97cmr3776843oap.193.1652999712543; Thu, 19
 May 2022 15:35:12 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 19 May 2022 15:35:11 -0700
MIME-Version: 1.0
In-Reply-To: <1652978825-5304-3-git-send-email-quic_sibis@quicinc.com>
References: <1652978825-5304-1-git-send-email-quic_sibis@quicinc.com> <1652978825-5304-3-git-send-email-quic_sibis@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 19 May 2022 15:35:11 -0700
Message-ID: <CAE-0n50iYAUmj6GEdCuOJ1d_SgeeFWtoxqWf7qN=jZ_js4wBcQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: remoteproc: qcom: Convert SC7280 MSS
 bindings to YAML
To:     Sibi Sankar <quic_sibis@quicinc.com>, bjorn.andersson@linaro.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     ohad@wizery.com, agross@kernel.org, mathieu.poirier@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mka@chromium.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2022-05-19 09:47:04)
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc7280-mss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc7280-mss-pil.yaml
> new file mode 100644
> index 000000000000..a936d84eefa6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc7280-mss-pil.yaml
> @@ -0,0 +1,250 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/remoteproc/qcom,sc7280-mss-pil.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SC7280 MSS Peripheral Image Loader
> +
> +maintainers:
> +  - Sibi Sankar <quic_sibis@quicinc.com>
> +
> +description:
> +  This document describes the hardware for a component that loads and boots firmware
> +  on the Qualcomm Technology Inc. SC7280 Modem Hexagon Core.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,sc7280-mss-pil
> +
[..]
> +
> +  resets:
> +    items:
> +      - description: AOSS restart
> +      - description: PDC reset
> +
> +  reset-names:
> +    items:
> +      - const: mss_restart
> +      - const: pdc_reset
> +
> +  memory-region:
> +    maxItems: 2
> +    description: Phandle reference to the reserved-memory for the MBA region followed
> +                 by the modem region.
> +
> +  firmware-name:
> +    $ref: /schemas/types.yaml#/definitions/string-array
> +    maxItems: 2

Instead of maxItems can this be

       items:
         - description: Name of MBA firmware
	 - description: Name of modem firmware

so that we know the order? Same for 'memory-region' above.

> +    description:
> +      The name of the MBA and modem firmware to be loaded for this remote processor.
> +
> +  qcom,halt-regs:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array

Should this have maxItems: 1? Or that's implicit from description?

> +    description:
> +      Phandle reference to a syscon representing TCSR followed by the
> +      four offsets within syscon for q6, modem, nc and vq6 halt registers.
> +
> +  qcom,ext-regs:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array

Should this have min/maxItems: 2?

> +    description:
> +      Two phandle references to syscons representing TCSR_REG and TCSR register
> +      space followed by the two offsets within the syscon to force_clk_en/rscc_disable
> +      and axim1_clk_off/crypto_clk_off registers respectively.
> +
> +  qcom,qaccept-regs:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle reference to a syscon representing TCSR followed by the
> +      three offsets within syscon for mdm, cx and axi qaccept registers.
> +
> +  qcom,qmp:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Reference to the AOSS side-channel message RAM.
> +
> +  qcom,smem-states:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: States used by the AP to signal the Hexagon core
> +    items:
> +      - description: Stop the modem

This one did items for a phandle array so I think we should follow the
same above.

> +
> +  qcom,smem-state-names:
> +    description: The names of the state bits used for SMP2P output
> +    const: stop
> +
> +  glink-edge:
> +    $ref: qcom,glink-edge.yaml#
> +    description:
> +      Qualcomm G-Link subnode which represents communication edge, channels
> +      and devices related to the DSP.
[..]
> +        power-domain-names = "cx", "mss";
> +
> +        memory-region = <&mba_mem>, <&mpss_mem>;
> +
> +        qcom,qmp = <&aoss_qmp>;
> +
> +        qcom,smem-states = <&modem_smp2p_out 0>;
> +        qcom,smem-state-names = "stop";
> +
> +        resets = <&aoss_reset AOSS_CC_MSS_RESTART>,
> +                 <&pdc_reset PDC_MODEM_SYNC_RESET>;
> +        reset-names = "mss_restart", "pdc_reset";
> +
> +        qcom,halt-regs = <&tcsr_mutex 0x23000 0x25000 0x28000 0x33000>;
> +        qcom,ext-regs = <&tcsr 0x10000 0x10004 &tcsr_mutex 0x26004 0x26008>;

Because it's two items I'd expect:
	
	<&tcsr 0x10000 0x10004>, <&tcsr_mutex 0x26004 0x26008>;

> +        qcom,qaccept-regs = <&tcsr_mutex 0x23030 0x23040 0x23020>;
> +
> +        glink-edge {
> +            interrupts-extended = <&ipcc IPCC_CLIENT_MPSS
> +                                   IPCC_MPROC_SIGNAL_GLINK_QMP
> +                                   IRQ_TYPE_EDGE_RISING>;
