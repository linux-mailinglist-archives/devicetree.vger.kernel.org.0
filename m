Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECC903F611A
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 16:57:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238014AbhHXO54 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 10:57:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237931AbhHXO54 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 10:57:56 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F396C061764
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 07:57:12 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id g13so46105857lfj.12
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 07:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/0jwM+NRdVEmoda+rXP1IvhOE4u26R3ufvVRf6e5LTU=;
        b=XPxxrAjMJ8s/8q5lP9xENYUlet4QRuQdTR76cLQ1Rh3T/ctYWPBJQeTO70Tr6aRm7b
         JxDFM4Wu3mGC16wuB8hCnS2tZWWiMWz4usGPbnmtH513neQTsvl+zBkEhwvFmEZdbkDv
         ncGC2b9Qif5fH2/CZQXvbH5undbnvA66nfEfE35zpsHg8WiTp1lvOe83iPshJ+K2xCau
         zKC4+Y8aPXHLgwgK8tMO79xos1D34Jg8QnIyWwXCC1NMRBoQs2i6q+T0D0g7z13Gw0V1
         G5EhiANjIl0o+xvRM5XyU5U5icYUMc9c72ZYCRd/ntjyY9if+ZaT9NPQODGSFoj6nGin
         IZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/0jwM+NRdVEmoda+rXP1IvhOE4u26R3ufvVRf6e5LTU=;
        b=QJvzPJQC9zAKS1dqivxU9fFDAbHHRUYWETtTe8jVjz3Wqj6XFPfqcMjN71QSktmaxp
         r8UMCektwbXkIF5lIkbzVjlJt5Lb3z+5s9SHZLXSOLxZCgtjp8hQTSrsoeOVwOYWxdJ4
         FDCb8Cq/lDZp99SmWbDbC5i6oVaXjfpADd53om93Z5PvQHJwffi4ZuK/0klPPr5T8thM
         3i06X/AbtFHM4VlYoaQkgF8v7Dm1N/plVXm6T5kQMm3VFs1IXZoNBgI223WWpUsps1xX
         waSEAe6jkiQ4R6uxuybqso9ng/o+qJ2eL4mrtznNuIxcDId+oeStqHkZFHjRp9jpuUmP
         VWiA==
X-Gm-Message-State: AOAM5300PQVVlKifuzgGw0eQnnnItkMJrHGxRNyFfMDtBgU8gfACIgRC
        mfZcVBgyPbs6tUMP4i265aqm98rKCuPVwnxzTP2gUw==
X-Google-Smtp-Source: ABdhPJzwAJNX13cGakqN8GmHHCm1Y9uxOcqa+dVBLkt73GD8MsYvUIndZ+1qRxOmG/g5qUJVP2UPWa7lg7As8HWfvHA=
X-Received: by 2002:a05:6512:e99:: with SMTP id bi25mr3313841lfb.486.1629817030730;
 Tue, 24 Aug 2021 07:57:10 -0700 (PDT)
MIME-Version: 1.0
References: <1629278277-7313-1-git-send-email-haibo.chen@nxp.com>
In-Reply-To: <1629278277-7313-1-git-send-email-haibo.chen@nxp.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 24 Aug 2021 16:56:34 +0200
Message-ID: <CAPDyKFouXOzV4Lfk4v2Hrj_OPg5jL7h_WoNnM2sH3h44q+6NRA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: add a new compatible string
To:     Haibo Chen <haibo.chen@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-mmc <linux-mmc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 18 Aug 2021 at 11:39, <haibo.chen@nxp.com> wrote:
>
> From: Haibo Chen <haibo.chen@nxp.com>
>
> Lack a compatible string "fsl,imx6sll-usdhc", so add it here.
>
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index 8a9f1775b0e2..1457eb21473e 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -29,6 +29,7 @@ properties:
>            - fsl,imx53-esdhc
>            - fsl,imx6q-usdhc
>            - fsl,imx6sl-usdhc
> +          - fsl,imx6sll-usdhc
>            - fsl,imx6sx-usdhc
>            - fsl,imx6ull-usdhc
>            - fsl,imx7d-usdhc
> --
> 2.17.1
>
