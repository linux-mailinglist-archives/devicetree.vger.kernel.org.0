Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3484489898
	for <lists+devicetree@lfdr.de>; Mon, 10 Jan 2022 13:29:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245500AbiAJM3w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jan 2022 07:29:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245495AbiAJM3o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jan 2022 07:29:44 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A894C061756
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 04:29:44 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id pj2so11956363pjb.2
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 04:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SGfSEU0CeGrXbquXnVsVNDDAD7e1HIDKV+YsANMjeb4=;
        b=DDgDr/r5W4v7U+MblDiYilhoMEr34kSDFxCo6+5eJhFckXZfykbnP7/7angYf/GxtT
         vNX/ZYZ/DkCLozbWRIRUXTqxhYIu73V4UrzwpaxjiMqPmBXpPy+Y/i/oJQ9kG/uLSc4A
         fY6PcwzQ74YyqPEkcV9aUeLkOYPFsqS6uED7oDdAHgEk/mAxCeCF7hOjYrvmcOvWZYql
         dKXSNy+Wy/PxDbnb2fZJNyQoAiYaQpZePNS21I99DPsR9BrAR7rPHnneryapmn9lsDku
         zPapnld5fuIPFCkXDID7B+zqnnrqIEZHlQGsmWH08z4yF58qNGqqFpTF0ckvaU7vKiLL
         2KJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SGfSEU0CeGrXbquXnVsVNDDAD7e1HIDKV+YsANMjeb4=;
        b=YtlYS1zU0UtpQB1zGGM664B1p5Pag4nFLshslNTGckNxs4xR4Mfmco09BqnH55ftGO
         8WAiOfWESh8MMLhdAmPc4yhLtC0c3dEFDXEAylGnS4fjhuZdxLCZ/BzndduvXsxZU6yP
         QUpL+MhbdFhNJfj12dgHZhtr5Sa/VEnXR7s2grjpnp/VHhAUHQOqXtJcMHzv2UGCn61w
         J3Uf+VZHLZQ7mTNktIkUqzhYUkdDCeBNsXNCwRX4V+aalD4wc3KaSM8UYylO+4x0Ndzz
         B8qo8yvGlG6RyWWdRjtT6aGUMqagmv9ObNKZqjixHDv1jdmWuKzOlbuZUruB+FaCNPG6
         e6yA==
X-Gm-Message-State: AOAM531GjLh9FlnykOAZCSybDX5tXnlt9NZCrWLugmxe36AZ2alsc9+K
        8GtmXsG6Z+AGOeKRvvBtNvBFw5SuBaze4cO5c8btug==
X-Google-Smtp-Source: ABdhPJz9DCo1Y88REAHm05xme8LtvOPDiPEDEj6kzKjas+GejChCXT0wTsuMqtkVuwnfw7JZryYfVkG3s/Yl57s0Mb4=
X-Received: by 2002:a17:90a:5295:: with SMTP id w21mr28299481pjh.179.1641817783793;
 Mon, 10 Jan 2022 04:29:43 -0800 (PST)
MIME-Version: 1.0
References: <20220109024910.2041763-1-bryan.odonoghue@linaro.org> <20220109024910.2041763-3-bryan.odonoghue@linaro.org>
In-Reply-To: <20220109024910.2041763-3-bryan.odonoghue@linaro.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Mon, 10 Jan 2022 13:29:32 +0100
Message-ID: <CAG3jFysmAwrLYfacz_sf+-QjSrhc=HQ4UHRXL=KJW9x_C7=RtQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] media: dt-bindings: media: camss: Add vdda supply
 declarations sm8250
To:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        mchehab@kernel.org, hverkuil@xs4all.nl, jonathan@marek.ca,
        andrey.konovalov@linaro.org, todor.too@gmail.com,
        agross@kernel.org, bjorn.andersson@linaro.org, jgrahsl@snap.com,
        hfink@snap.com, vladimir.zapolskiy@linaro.org,
        dmitry.baryshkov@linaro.org, devicetree@vger.kernel.org,
        robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 9 Jan 2022 at 03:47, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> Add in missing vdda-phy-supply and vdda-pll-supply declarations. The
> sm8250 USB, PCIe, UFS, DSI and CSI PHYs use a common set of vdda rails.
> Define the CSI vdda regulators in the same way the qmp PHY does.
>
> Cc: devicetree@vger.kernel.org
> Cc: robh@kernel.org
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/media/qcom,sm8250-camss.yaml           | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
> index af877d61b607d..07a2af12f37df 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
> @@ -265,6 +265,14 @@ properties:
>        - const: vfe_lite0
>        - const: vfe_lite1
>
> +  vdda-phy-supply:
> +    description:
> +      Phandle to a regulator supply to PHY core block.
> +
> +  vdda-pll-supply:
> +    description:
> +      Phandle to 1.8V regulator supply to PHY refclk pll block.
> +
>  required:
>    - clock-names
>    - clocks
> @@ -277,6 +285,8 @@ required:
>    - power-domains
>    - reg
>    - reg-names
> +  - vdda-phy-supply
> +  - vdda-pll-supply
>
>  additionalProperties: false
>
> @@ -316,6 +326,9 @@ examples:
>                          "vfe_lite0",
>                          "vfe_lite1";
>
> +            vdda-phy-supply = <&vreg_l5a_0p88>;
> +            vdda-pll-supply = <&vreg_l9a_1p2>;
> +
>              interrupts = <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
>                           <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
>                           <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
> --
> 2.33.0
>

Reviewed-by: Robert Foss <robert.foss@linaro.org>
