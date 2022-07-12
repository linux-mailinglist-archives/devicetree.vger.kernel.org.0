Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9833457181D
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 13:10:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232925AbiGLLK1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 07:10:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232976AbiGLLKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 07:10:13 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6E66B1870
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 04:10:11 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id r9so5340452lfp.10
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 04:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uwaWTlB9XyYSCbsGwzEE8BVlrGpHkrwxw1TbvJ4Org4=;
        b=DZx1pmciZROwc48L94adQPdjnNrHIsmIDfTxOKjK16+njO+4fyxaxlfXdN3waf3a0b
         iM5mPh1KW6XDNtqJ5QAy5OO0FvJxeAr8GKZ6B10T7DxKG8mzOirP0a/YeYev9YrUP8Go
         EM+SizTVel+y1raK1kbUZEwmfSD12pnlfo5JjYYQO6uzVckxQqgfpa0i5Am1uxsmX4xN
         iBX32lKu6C3qjvzBGmJG7BNnfMG3ZTa9XelXo5bv/y+hJv2m28qCCC0SUYvJ5OENLuHE
         O/7banmuGTWx6F4R2jJhe3T5FbLDe9eZdTERHLTzM798W8RBUvKoY7oUZwazBiMlgvS+
         9llg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uwaWTlB9XyYSCbsGwzEE8BVlrGpHkrwxw1TbvJ4Org4=;
        b=DVnVkusy9JekojeQC+B3mpcxdyO8QNYHUNNrlcXhFV7rVql7CFIGDEkWbaBOu0R6YE
         sfnNnaVkdYksD1h6VJDxm7snEc+s8N8HkmUgV4yJ0xTn+q67F+v9qMm3KEqzP0tNFDYY
         j+cSwBfUYmwkw2P1uR5jwc3FRq7G4M7UMxTu/LtZH/WHyfpo4s17w0qPLUC/vrFz4O51
         6zqtVK68TqndB/QUtqCezVvsgm6sDDz91ANOtW/AmEmDDdyhQMhEMOfgaXsrm+tgza8c
         JzxZkSVaGjketyziFs1Tci8leMPlWWIZab1VsUHONYw+zq5NGfiPbqod8y/gkcTY7p0Y
         ++kQ==
X-Gm-Message-State: AJIora/HNVhX2LMhftl5iTIFoui4oFSaNaLHLTLl0KhXDBN4NgKF+v7n
        0/mdH0WJS+OinVYZH829+ML7nPO7gz3jWFX/Sv09AA==
X-Google-Smtp-Source: AGRyM1ve5l8iOOqjKIRpIrGFxxBTNnh3DERnaKcFR3f0PFlcws/EjMxWxw8lvTV7HgWGqRd6EEPzTV4VMLjMOFwbt28=
X-Received: by 2002:a05:6512:15a8:b0:489:ed48:24 with SMTP id
 bp40-20020a05651215a800b00489ed480024mr2187021lfb.184.1657624210224; Tue, 12
 Jul 2022 04:10:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220704143554.1180927-1-robimarko@gmail.com>
In-Reply-To: <20220704143554.1180927-1-robimarko@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 12 Jul 2022 13:09:33 +0200
Message-ID: <CAPDyKFro0BkQdRJ1q44ED95CqQHbujBshAtFJm_PVPUD+rKE=w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: sdhci-msm: document resets
To:     Robert Marko <robimarko@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, bhupesh.sharma@linaro.org,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 4 Jul 2022 at 16:35, Robert Marko <robimarko@gmail.com> wrote:
>
> Commit "mmc: sdhci-msm: Reset GCC_SDCC_BCR register for SDHC" added
> support for utilizing a hardware reset and parsing it from DT, however
> the bindings were not updated along with it.
>
> So, document the usage of "resets" property with the limit of only one
> item.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 31a3ce208e1a..ca8814a80443 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -116,6 +116,9 @@ properties:
>      description:
>        Should specify pin control groups used for this controller.
>
> +  resets:
> +    maxItems: 1
> +
>    qcom,ddr-config:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description: platform specific settings for DDR_CONFIG reg.
> --
> 2.36.1
>
