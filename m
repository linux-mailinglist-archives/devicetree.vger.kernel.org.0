Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBA2678C72A
	for <lists+devicetree@lfdr.de>; Tue, 29 Aug 2023 16:17:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234250AbjH2ORB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Aug 2023 10:17:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236785AbjH2OQ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Aug 2023 10:16:28 -0400
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20C99CD3
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 07:16:12 -0700 (PDT)
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-573449a364fso2474370eaf.1
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 07:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693318571; x=1693923371;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mArj2+8FjJfEgCanmjSqswPaGOqecoYV1Hn4xtmoCnA=;
        b=Nmgg0SVmBN2xHQrqRwx7JGo19+4NsJtPMzixLZgKCEpW1C0jL9lFHJKUX29flOB0ny
         ZQvrXy8Jk51bmXNLbtkVtHHvqXr5LmV5R60xcN36ccoAJfUZcUN85wJ8KY9D4eAqTexX
         1qWBZ/6qwD0IZQ5aKvENJYFfk8gq53oUIKJX1hQ8BE2KqWjYwTat2OW5cvzooXyrsuu0
         MYZIhv+iXlM1QOwz61pF5na9AsBMz6BxqND+TcJS4ik+/k9bb5B+fCUpm+Q9gCsQVRqX
         CZTNiztP7QVc88bFyFz01wM7NK/oc7poh2q5A8R6HvY9Zfie5xNnaJKNbnV07r04GfR9
         XkKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693318571; x=1693923371;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mArj2+8FjJfEgCanmjSqswPaGOqecoYV1Hn4xtmoCnA=;
        b=AXzLVmwkdc8SWjVo98S7wtVhaQticswVeicNzhec4FizoWE2SJrZ2AcIuY6rRoD6nv
         2wcsFICdni5aMLF6ylqkNDCvbCUlx8dIYLym+ctNDvZVBeR5Z+TVNDFw8+tP3GEGpp5g
         uJOt7X5T2ptTgnew9AQM/fGJfIRqee4+B3oz2WW2TdAQUUV/USTWkXCcQcblOxB4wAjz
         yhD89/gEeHim2WcFpnWY3WPiOOFLAkuDW3Y8K0DJLKlh/8B2HYelmXgAlnSYGtWz2DvS
         C98YvmTrgohWUSSobNtUNb+Z72Yw0dLjoBJYkjITIq6RqOUuB8EBLe+CWFW+ZkoWcuNn
         9+dg==
X-Gm-Message-State: AOJu0YxNzOIyTWOnSOyCtvYvjDKR0e/6PEIXhBuSFfj7bATnvc3quYgd
        zOoeqcmF/H3q3ETRwI7hNhp5DqAn/LawXdNj2H9nWg==
X-Google-Smtp-Source: AGHT+IGZrZJdCSRA+NiWCNL6jPpDYBKBJKBCAqXlyhrHLfXWMaKmhLvAUd5rEutjxSSRI/8n8DXOHk+lcKujxDLvQgg=
X-Received: by 2002:a05:6358:27a8:b0:135:62de:ff7d with SMTP id
 l40-20020a05635827a800b0013562deff7dmr28354516rwb.8.1693318571322; Tue, 29
 Aug 2023 07:16:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com> <20230829135818.2219438-5-quic_ipkumar@quicinc.com>
In-Reply-To: <20230829135818.2219438-5-quic_ipkumar@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 29 Aug 2023 17:16:00 +0300
Message-ID: <CAA8EJpq6JJ8XxK+QxCOZrQdXAeU5XVjp3PF-U8OG-2yk6eHtvw@mail.gmail.com>
Subject: Re: [PATCH 4/9] dt-bindings: phy: qcom,uniphy: Add ipq5332 USB3 SS UNIPHY
To:     Praveenkumar I <quic_ipkumar@quicinc.com>
Cc:     robert.marko@sartura.hr, luka.perkov@sartura.hr, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, catalin.marinas@arm.com,
        will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de,
        geert+renesas@glider.be, nfraprado@collabora.com, rafal@milecki.pl,
        peng.fan@nxp.com, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_varada@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 29 Aug 2023 at 17:00, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
> Add ipq5332 USB3 SS UNIPHY support.
>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,uniphy.yaml  | 117 +++++++++++++++++-
>  1 file changed, 114 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> index cbe2cc820009..17ba661b3d9b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> @@ -19,21 +19,53 @@ properties:
>      enum:
>        - qcom,usb-ss-ipq4019-phy
>        - qcom,usb-hs-ipq4019-phy
> +      - qcom,ipq5332-usb-ssphy
>
>    reg:
>      maxItems: 1
>
> +  reg-names:
> +    items:
> +      - const: phy_base
> +
> +  clocks:
> +    maxItems: 3
> +
> +  clock-names:
> +    maxItems: 3
> +
> +  "#clock-cells":
> +    const: 0
> +
>    resets:
> +    minItems: 1
>      maxItems: 2
>
>    reset-names:
> -    items:
> -      - const: por_rst
> -      - const: srif_rst
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-output-names:
> +    maxItems: 1
>
>    "#phy-cells":
>      const: 0
>
> +  qcom,phy-mux-sel:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      PHY Mux Selection for used to select which interface is going to use the
> +      combo PHY.
> +    items:
> +      - items:
> +          - description: phandle to TCSR syscon region
> +          - description: offset to the PHY Mux selection register
> +          - description: value to write on the PHY Mux selection register

Generally these values should be a part of the driver, since they are
specific to the particular SoC, rather than being different from
device to device.

> +
> +  vdd-supply:
> +    description:
> +      Phandle to 5V regulator supply to PHY digital circuit.
> +
>  required:
>    - compatible
>    - reg
> @@ -41,6 +73,68 @@ required:
>    - reset-names
>    - "#phy-cells"
>
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq5332-usb-ssphy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: pipe
> +            - const: phy_cfg_ahb
> +            - const: phy_ahb
> +
> +        "#clock-cells":
> +          const: 0
> +
> +        clock-output-names:
> +          maxItems: 1
> +
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: por_rst
> +
> +        vdda-supply:
> +          description:
> +            Phandle to 5V regulator supply to PHY digital circuit.
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,usb-ss-ipq4019-phy
> +    then:
> +      properties:
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: por_rst
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,usb-hs-ipq4019-phy
> +    then:
> +      properties:
> +        resets:
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: por_rst
> +            - const: srif_rst
> +
>  additionalProperties: false
>
>  examples:
> @@ -55,3 +149,20 @@ examples:
>                 <&gcc USB2_HSPHY_S_ARES>;
>        reset-names = "por_rst", "srif_rst";
>      };
> +
> +  - |
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +
> +    ssuniphy@4b0000 {
> +      #phy-cells = <0>;
> +      #clock-cells = <0>;
> +      compatible = "qcom,ipq5332-usb-ssphy";
> +      reg = <0x4b0000 0x800>;
> +      clocks = <&gcc GCC_USB0_PIPE_CLK>,
> +               <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +               <&gcc GCC_PCIE3X1_PHY_AHB_CLK>;
> +      clock-names = "pipe", "phy_cfg_ahb", "phy_ahb";
> +
> +      resets = <&gcc GCC_USB0_PHY_BCR>;
> +      reset-names = "por_rst";
> +    };
> --
> 2.34.1
>


-- 
With best wishes
Dmitry
