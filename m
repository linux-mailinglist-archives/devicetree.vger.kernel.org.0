Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42C9365B3CF
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 16:07:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232479AbjABPHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 10:07:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236265AbjABPHY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 10:07:24 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B8B58FC9
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 07:07:23 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id 124so18841367pfy.0
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 07:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wEXS7nrJFORzyDPmh7+FGBbOMiQgOyBfpmUbiyI6pu4=;
        b=ksEFKm7Ezybsf9oLGYhGyyq9SUeqw7ldNnAXgJPWsgDlHveaQG2HQ0t8A+azOrymmz
         w6teBZkH4bQoTPToLP4aZAKnPKzAvVw7E5jIvrbL62W5AIInjy4PBUZ6NBTBGrPiuYiV
         RdIFYU66E5/o+VSA+WhPSoh9SkbhX4w7T7UNbaYeuEPVNWifUslWMXmI7oERQrKbcjMv
         PT6oxXLbE3yarjKVJqkY5J8FzFbcAHd8v9ycpR7cWIZ3A1XkBXIPMgT6D/0Vlrgynzjo
         QQMmosORKY+kTsHmdxEc+mGD9mUOw9zi0/cEcif0Zb9Z7vmO8Wfo3/GjL7TAZbmS+Kxe
         LlKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wEXS7nrJFORzyDPmh7+FGBbOMiQgOyBfpmUbiyI6pu4=;
        b=torI/eRV/Vr+Bggvh53bsvSME/ObSRpf1eYs3kotCBsVFOtZhBOPwaiTpcVNZSAtdF
         TVUMXk8H9oPpQbd31103kO1mTG0nGAjliClaRo55QT10ZJ72BbwNjeglWizZv5kT2KeO
         W4qSy4SLjJNQeqGpsvxaer+lqOl/zajPDHj+jVKecMlvXU1K42SOiOSizh8C5RvhIUJN
         7Mwt0fUjIZHKMAuqtl0cbC1nR9XLxQO30iiLRHsy75Gp+IE8jJCuEc871V4hDBC/RCN9
         SvzCk6CIHrpMp9YNM07TPDXj4YVdhK25Be1u+VPN8W6Q9LXA8DiljmdQ5D/Yn23TXXBW
         k47A==
X-Gm-Message-State: AFqh2kpWHljim379oYUifpUHhMhzn7jrw35g9aP+sS0vtbBRP4tNtRkp
        yIu36c3eeg0ieDWrzKqu8H71PFCJ1ieIuHl2i9EJ8w==
X-Google-Smtp-Source: AMrXdXveB6w6ko5UpGztJDmBUhjBlHnkl7XTn0GFtvIltj3YGiKK2OxzvjEJPtgCrP69aZ6NJTh37oya64dSSpnFuxI=
X-Received: by 2002:a63:24c4:0:b0:499:c23c:d65b with SMTP id
 k187-20020a6324c4000000b00499c23cd65bmr1292737pgk.541.1672672042769; Mon, 02
 Jan 2023 07:07:22 -0800 (PST)
MIME-Version: 1.0
References: <20221223030347.17093-1-peng.fan@oss.nxp.com>
In-Reply-To: <20221223030347.17093-1-peng.fan@oss.nxp.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 2 Jan 2023 16:06:46 +0100
Message-ID: <CAPDyKFq3f+_8SqupidTqzLmJtDwVaamb-6uWrUN3isivhHZ3PQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: update binding for
 i.MX50 and i.MX7D
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 23 Dec 2022 at 04:02, Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> i.MX50 eSDHC is compatible with i.MX53. i.MX7D uSDHC is compatible with
> i.MX6SL. So update for them.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index dc6256f04b42..546ebcecaf95 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -37,6 +37,12 @@ properties:
>            - fsl,imx8mm-usdhc
>            - fsl,imxrt1050-usdhc
>            - nxp,s32g2-usdhc
> +      - items:
> +          - const: fsl,imx50-esdhc
> +          - const: fsl,imx53-esdhc
> +      - items:
> +          - const: fsl,imx7d-usdhc
> +          - const: fsl,imx6sl-usdhc
>        - items:
>            - enum:
>                - fsl,imx8mq-usdhc
> --
> 2.37.1
>
