Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A29B947F4B3
	for <lists+devicetree@lfdr.de>; Sun, 26 Dec 2021 00:34:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233044AbhLYXeV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Dec 2021 18:34:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233024AbhLYXeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Dec 2021 18:34:21 -0500
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD611C061757
        for <devicetree@vger.kernel.org>; Sat, 25 Dec 2021 15:34:20 -0800 (PST)
Received: by mail-qk1-x734.google.com with SMTP id r139so10330282qke.9
        for <devicetree@vger.kernel.org>; Sat, 25 Dec 2021 15:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hKmiJe9CRNgJf7UKsyNMbeFwV2C9Zr81lTDn8hmzix0=;
        b=Q28iL1AYg7u1wgTeD88BO76yK/PvAg1JIx36hv5AeDOftSk4C7vX5+x+5QS1SwieAI
         NvS341MRKNZGbrh0IiT7H9JPT2EWO6agyxWdOHoON+E0SEu+mL7GEHl0FIq3DLgEKnhI
         vl56SmnmhpxPn94uYVCXUDMyb7OkwkrqlHR49xnoinLoUcMXi7PRR3xzBOFMYkBiQfFD
         ak7lQWyG5eC9GjS5kxSS8RxZGL6qb8pN/VpspvQXtb8JS6KQd5OQsVQfNl0joVzjHnK3
         F2JsDFNDUoQXUtnJ05RoRnRHrgLZmbqdD7lLn1xC5M3EBxPHrDfuC5A+hMMLKFqFfiPd
         JdEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hKmiJe9CRNgJf7UKsyNMbeFwV2C9Zr81lTDn8hmzix0=;
        b=YzWAS7wCKEmTdKf9MoUQ/jK+qg53LK5Phbh7iw/QTuInLm5ni7QoAPWZlXtT/QRoy9
         a1cryIaHNC9ewf5iuLq1+6MIsmIw2L2M65/SbsBNFSMbyDmZM0ABLcwyksyyZyPRU5oX
         vPnzYLiKd625MWgA31009V7Z/4RthY/qaGoT+452NRL6aNX7bts6TLXPLSL317yJrzsc
         ukB6CRR1rONYgOu5LklVMuub3e4gpR1XsIaT47Pom3eO1GBeAm6mk7b8fe+3sMLlPzz6
         ls/q3uPC0GYzotT0/peIj2lnFCzjrU09Zh3sZQn50qxPMVAXutlmQR5t6ck2AaQtYO4e
         RLOQ==
X-Gm-Message-State: AOAM5325x/QmtzD9qFHSO1jdyWt12ZyaYO1Ovwq8I9UB4VwiKnX3uonb
        2+CUoC2JcEJI3ToI2UXWma9IjoMLOWz9fDqkIVFZUw==
X-Google-Smtp-Source: ABdhPJycrFxGBnGfEcnR2q0JIRn89NOokVvBiwqZGL7sWhIfpdXaSUXQlfcv2oQSwG3HlxQE75zgkhzz7s2ETGg2eMQ=
X-Received: by 2002:a05:620a:797:: with SMTP id 23mr8425912qka.30.1640475259623;
 Sat, 25 Dec 2021 15:34:19 -0800 (PST)
MIME-Version: 1.0
References: <20211225205352.76827-1-david@ixit.cz>
In-Reply-To: <20211225205352.76827-1-david@ixit.cz>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sun, 26 Dec 2021 02:34:08 +0300
Message-ID: <CAA8EJpoVuNDS2uD2g8W_40XVO2jS=6GtRQFxAnyPpd_QuHim8g@mail.gmail.com>
Subject: Re: [PATCH] Discussion: dt-bindings: display: msm:
 dsi-controller-main: fix the binding
To:     David Heidelberg <david@ixit.cz>
Cc:     Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>,
        ~okias/devicetree@lists.sr.ht, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, 25 Dec 2021 at 23:54, David Heidelberg <david@ixit.cz> wrote:
>
> This binding is not much validating the old DSI v2.
>
> Currently we don't differentiate old v2 from new versions,
> so we need to figure out how to validate them.
>
> I propose specific compatible depending on mdss version, but I would be
> glad, if someone with deeper knowledge proposed the names.
>
> I'm willing to implement it then and back from autodetection.

I'd suggest to use hardware-specific compatible for apq8064 (and maybe
other v2 hosts if somebody adds support). For example
"qcom,apq8064-dsi-ctrl" or "qcom,dsi-ctrl-apq8064" (no strong
preference here).
For 6G hosts it will probably make sense to use IP versions instead
("qcom-dsi-ctrl-6g-v2.4.1").

>
> David
> ---
>  .../display/msm/dsi-controller-main.yaml      | 53 ++++++++++++-------
>  1 file changed, 35 insertions(+), 18 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> index 35426fde8610..6688ddcd7526 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> @@ -27,22 +27,34 @@ properties:
>      maxItems: 1
>
>    clocks:
> -    items:
> -      - description: Display byte clock
> -      - description: Display byte interface clock
> -      - description: Display pixel clock
> -      - description: Display escape clock
> -      - description: Display AHB clock
> -      - description: Display AXI clock
> +    oneOf:
> +      - minItems: 7 # APQ8064
> +        maxItems: 7
> +      - items:
> +          - description: Display byte clock
> +          - description: Display byte interface clock
> +          - description: Display pixel clock
> +          - description: Display escape clock
> +          - description: Display AHB clock
> +          - description: Display AXI clock
>
>    clock-names:
> -    items:
> -      - const: byte
> -      - const: byte_intf
> -      - const: pixel
> -      - const: core
> -      - const: iface
> -      - const: bus
> +    oneOf:
> +      - items: # DSI v2 (APQ8064)
> +          - const: iface # from dsi_v2_bus_clk_names
> +          - const: bus
> +          - const: core_mmss
> +          - const: src # from dsi_clk_init_v2
> +          - const: byte # from dsi_clk_init
> +          - const: pixel
> +          - const: core
> +      - items:
> +          - const: byte
> +          - const: byte_intf
> +          - const: pixel
> +          - const: core
> +          - const: iface
> +          - const: bus
>
>    phys:
>      maxItems: 1
> @@ -66,15 +78,17 @@ properties:
>
>    assigned-clocks:
>      minItems: 2
> -    maxItems: 2
> +    maxItems: 4
>      description: |
>        Parents of "byte" and "pixel" for the given platform.
> +      For older v2, "byte", "esc", "src" and "pixel".
>
>    assigned-clock-parents:
>      minItems: 2
> -    maxItems: 2
> +    maxItems: 4
>      description: |
>        The Byte clock and Pixel clock PLL outputs provided by a DSI PHY block.
> +      For older v2, Byte, Escape, Source and Pixel clock PLL outputs.
>
>    power-domains:
>      maxItems: 1
> @@ -124,6 +138,9 @@ properties:
>        - port@0
>        - port@1
>
> +patternProperties:
> +  '^(avdd|vdd|vdda)-supply$': true # FIXME only APQ8064 supplies
> +
>  required:
>    - compatible
>    - reg
> @@ -135,8 +152,8 @@ required:
>    - phy-names
>    - assigned-clocks
>    - assigned-clock-parents
> -  - power-domains
> -  - operating-points-v2
> +  # - power-domains # v2 doesn't seems to need it?
> +  # - operating-points-v2 # v2 doesn't have opp implemented yet
>    - ports
>
>  additionalProperties: false
> --
> 2.34.1
>


-- 
With best wishes
Dmitry
