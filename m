Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D4B7525A26
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 05:35:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376793AbiEMDfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 23:35:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376787AbiEMDff (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 23:35:35 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB6142983AA
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 20:35:32 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id g23so8388116edy.13
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 20:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hp5XW+EPUgNO9juHKBfPepcJCtSp8113Ul6jaPu0DAQ=;
        b=GDSDCn+HYVu7o6UcrQY7lfpYOfUai0qVrApLd9h412Qrq2pirSRC/X/vIGsbko6Xzr
         u3u5darEcYyz1M2dEJRf6XEL1U+gNibYj54aLOA6Sy+/Fx6sALMc8GvkVgl/2TEaeP51
         6K5WH0O4bOLy61rVkroPJh9crDW+fddMKEZzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hp5XW+EPUgNO9juHKBfPepcJCtSp8113Ul6jaPu0DAQ=;
        b=Q0Chf/SEFk7kciPoHKQhcEjWGFckBvpbMfB6AnxNIWZLP/PZ9utn1eOF2y5IP9SJXR
         DTBe5A+Q2tQr3ESuw/MtXLNOXA9iUNOcX8jxD5VzRg41dmOYUgLghNIL6BfjsObD18By
         C8m4mRJfWWY5ET+AwU1jc83C2MPtO4nqpwTUGGR9oada7D0x3OnUCG5eFCUq74805I1C
         peD+qiErejuZCW9u4li3YFKGIwB07IvvJAut8fv+2zY472KSbfbPeITJq1K8gXwqHcF2
         ZqmyCv7KuC0vf0M/WrmB8R7X9f55L+5RgUMumOVPSYwdrbyhnKEb5GwETjn2A2LBKX0i
         HlFw==
X-Gm-Message-State: AOAM532w45bW8RxpriKY1PVYe2YBmFUYNJbM0jJjfY4p6+qMct0C7bYw
        1N6nf9LGQr1oFs7TsMyAK7CA+jlXquPcEORLWgYK3w==
X-Google-Smtp-Source: ABdhPJwCxuakH0MPfmD4BsVGbk8H/0s+6mFVVZ6p1DZEFE3K2V6LRK/oXrI3wQNquf51Rr/hHpcAOHj5MVbVUnJKE6w=
X-Received: by 2002:a50:9ecc:0:b0:428:73bd:4667 with SMTP id
 a70-20020a509ecc000000b0042873bd4667mr34262382edf.165.1652412931525; Thu, 12
 May 2022 20:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220513032832.17645-1-johnson.wang@mediatek.com> <20220513032832.17645-2-johnson.wang@mediatek.com>
In-Reply-To: <20220513032832.17645-2-johnson.wang@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 13 May 2022 11:35:20 +0800
Message-ID: <CAGXv+5FqjDX7y_bR0Y=2xCnCqwtAB2S+3Fn==adxJJqanv8=YQ@mail.gmail.com>
Subject: Re: [RESEND v4 1/2] dt-bindings: interconnect: Add MediaTek CCI dt-bindings
To:     Johnson Wang <johnson.wang@mediatek.com>
Cc:     cw00.choi@samsung.com, krzk+dt@kernel.org, robh+dt@kernel.org,
        kyungmin.park@samsung.com, djakov@kernel.org, khilman@kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, jia-wei.chang@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 13, 2022 at 11:31 AM Johnson Wang <johnson.wang@mediatek.com> wrote:
>
> Add devicetree binding of MediaTek CCI on MT8183 and MT8186.
>
> Signed-off-by: Jia-Wei Chang <jia-wei.chang@mediatek.com>
> Signed-off-by: Johnson Wang <johnson.wang@mediatek.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  .../bindings/interconnect/mediatek,cci.yaml   | 140 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 141 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interconnect/mediatek,cci.yaml
>
> diff --git a/Documentation/devicetree/bindings/interconnect/mediatek,cci.yaml b/Documentation/devicetree/bindings/interconnect/mediatek,cci.yaml
> new file mode 100644
> index 000000000000..034c3b38ca3d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interconnect/mediatek,cci.yaml
> @@ -0,0 +1,140 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interconnect/mediatek,cci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Cache Coherent Interconnect (CCI) frequency and voltage scaling
> +
> +maintainers:
> +  - Jia-Wei Chang <jia-wei.chang@mediatek.com>
> +  - Johnson Wang <johnson.wang@mediatek.com>
> +
> +description: |
> +  MediaTek Cache Coherent Interconnect (CCI) is a hardware engine used by
> +  MT8183 and MT8186 SoCs to scale the frequency and adjust the voltage in
> +  hardware. It can also optimize the voltage to reduce the power consumption.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mediatek,mt8183-cci
> +      - mediatek,mt8186-cci
> +
> +  clocks:
> +    items:
> +      - description:
> +          The multiplexer for clock input of the bus.
> +      - description:
> +          A parent of "cpu" clock which is used as an intermediate clock source

Replace "cpu" with "bus"?

> +          when the original CPU is under transition and not stable yet.


And also, "when the original clock source (PLL) is under transition ..."

Otherwise,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
