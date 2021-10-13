Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FB7842C761
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 19:15:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237893AbhJMRRv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 13:17:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233315AbhJMRRu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 13:17:50 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1194C061746
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 10:15:46 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id e63so4750257oif.8
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 10:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W8nJn1I9+6xqCWimBgakZ0ZykoVGwL72//fXC4D2ENM=;
        b=GI2da+Yf8iRRrz33iNLPc7mzogAwHgSYE6UnW3MHkFfv7C00ULlaeRSw+ecfq1ILmK
         yJIL013x3qXks11y/cjE+AALW6awCN1OArNQUkyBQ+4mgvb0KjtqVqo+kEkh+UoCBt+H
         0WDCQuuqVuTNpZJ4fvbpMBA9HV5sEbdiL3Q3jZrxBESwug1StY1cjr8xlboSu4cmw+8j
         6pN+Le3SWffPOmsGK3waohlhvtMo927iGVjPzMVlGN/hzh9v4oBqB7lWtvtuVSYvhn99
         0dAJdEtstNq+XGfKyAf2tiglHD+mxdHxf9/Y1ZgeXqp3HaNt5gVA40RtAqLUQMUAO5CQ
         QMrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W8nJn1I9+6xqCWimBgakZ0ZykoVGwL72//fXC4D2ENM=;
        b=ryUcELZO63O05yqz7m+BzPea8MADJ+J6CXk+NVrF9S7qwntFJHivVqbI7xcrt+nl+g
         lKDySan6gz+AN/LB11qA62GRm5N2AwDLxMNrhpgLeqlhiAeJIqvtHytNQANAcTWkElBK
         epX++mljBvaaCiFbYGi/inY3ZLXZyCrP6/BDkRENCquc6Lj389+OlgkluhQ+qV4a3zZP
         Su3y0vq+yZ2SYjGlI2rlXReyBB2lgPyt+u+f6VFQia2evSYkN5NR0xxkTP7mSBGlxSq4
         1VJ+Ixqy5z2PqCVdVcbgCyIt5uZW/3Z+FGJ50309kiA5hDVLMWDXpdvD1asIUlCnl91f
         fxVQ==
X-Gm-Message-State: AOAM5332jeU4hSfqRCT2SE6TmS1/+zCs+i4b8lk6hHFTu/QjLU95/r8V
        ggEaKTqulnDStS3AUkUMCh7VOb9HT+xcmJDXBrotgA==
X-Google-Smtp-Source: ABdhPJxlYaW0DbUNDGvX1GOmNno4laeXfJ5hJQT1f9YdWbCUWCT4I+0fram+3t4Qp5MihxS84DdI0NDO7jJ4uJ+qErc=
X-Received: by 2002:a05:6808:1686:: with SMTP id bb6mr246917oib.40.1634145346288;
 Wed, 13 Oct 2021 10:15:46 -0700 (PDT)
MIME-Version: 1.0
References: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
 <20211013105541.68045-8-bhupesh.sharma@linaro.org> <f58d549a-5ce3-a51d-c371-a3ffdc76496d@linaro.org>
In-Reply-To: <f58d549a-5ce3-a51d-c371-a3ffdc76496d@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Wed, 13 Oct 2021 22:45:35 +0530
Message-ID: <CAH=2NtzoVs5XjSn11_VioEhTiTDN9_E9iU7eSTxT2R4gR8W80A@mail.gmail.com>
Subject: Re: [PATCH v4 07/20] dt-bindings: qcom-qce: Convert bindings to yaml
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc:     MSM <linux-arm-msm@vger.kernel.org>, linux-crypto@vger.kernel.org,
        bhupesh.linux@gmail.com,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Vladimir,

On Wed, 13 Oct 2021 at 18:35, Vladimir Zapolskiy
<vladimir.zapolskiy@linaro.org> wrote:
>
> Hi Bhupesh,
>
> On 10/13/21 1:55 PM, Bhupesh Sharma wrote:
> > Convert Qualcomm QCE crypto devicetree binding to YAML.
> >
> > Cc: Thara Gopinath <thara.gopinath@linaro.org>
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >   .../devicetree/bindings/crypto/qcom-qce.yaml  | 67 +++++++++++++++++++
> >   1 file changed, 67 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/crypto/qcom-qce.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
> > new file mode 100644
> > index 000000000000..b7ae873dc943
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
> > @@ -0,0 +1,67 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/qcom-qce.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm crypto engine driver
> > +
> > +maintainers:
> > +  - Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > +
> > +description: |
> > +  This document defines the binding for the QCE crypto
> > +  controller found on Qualcomm parts.
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,crypto-v5.1
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: iface clocks register interface.
> > +      - description: bus clocks data transfer interface.
> > +      - description: core clocks rest of the crypto block.
> > +
> > +  clock-names:
> > +    items:
> > +      - const: iface
> > +      - const: bus
> > +      - const: core
> > +
> > +  dmas:
> > +    items:
> > +      - description: DMA specifiers for tx dma channel.
> > +      - description: DMA specifiers for rx dma channel.
>
> Please consider to swap the description lines, so that they'll
> be matching the dma-names below and a regular order found in
> dts files.

Ok, I will fix it in v5.

Regards,
Bhupesh

> > +
> > +  dma-names:
> > +    items:
> > +      - const: rx
> > +      - const: tx
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - dmas
> > +  - dma-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/qcom,gcc-apq8084.h>
> > +    crypto-engine@fd45a000 {
> > +        compatible = "qcom,crypto-v5.1";
> > +        reg = <0xfd45a000 0x6000>;
> > +        clocks = <&gcc GCC_CE2_AHB_CLK>,
> > +                 <&gcc GCC_CE2_AXI_CLK>,
> > +                 <&gcc GCC_CE2_CLK>;
> > +        clock-names = "iface", "bus", "core";
> > +        dmas = <&cryptobam 2>, <&cryptobam 3>;
> > +        dma-names = "rx", "tx";
> > +    };
> >
>
> --
> Best wishes,
> Vladimir
