Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADC3872E665
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 16:58:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240634AbjFMO4s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 10:56:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242950AbjFMOyw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 10:54:52 -0400
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com [IPv6:2607:f8b0:4864:20::e34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FE701BCD
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 07:54:47 -0700 (PDT)
Received: by mail-vs1-xe34.google.com with SMTP id ada2fe7eead31-43b54597d3cso427367137.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 07:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686668086; x=1689260086;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujKpeDBf4dlsgCHpOAeVReymujxCrTOGm/9TDlUS9o8=;
        b=4yz4ATvwH1tPmaTnf4zVg+ULGJd7OA2GjN6pjySEKg2LlPnbuAfWLgzRLxbOxLDFsy
         t0zLz28hhGrpKT37Q/V6KNpTPpQqASBYD4vInsJa9X8GxiT3/JUMEMR4k3bOBrdAUFYX
         PrAEH9xCmS+Ce5Tv9DKOybyWqaRnFij6oAJ89DSXxg4aW09/5YSg20GJHHXtDN+tJp71
         oHOoLcJWWBAPh4u6UdiJnnL/5SMGmpqYC1SLV+pCUwc38ODvvxRy29maEWOx4AtzK5jY
         JtqFKbDrmDmGXWPAzdPaIIqxxmR1FxwJPLDMyeYp0D0/rnPQp7j2mGuEfM5fu06QyaXQ
         /drg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686668086; x=1689260086;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ujKpeDBf4dlsgCHpOAeVReymujxCrTOGm/9TDlUS9o8=;
        b=FZ3js9AuKczRwtuUqTiccA3ZhXExBKXiF+n/srMneoX0XTrnQIiLVY4b4XiB1Xidw6
         N2gec3YvrYPixN2lpHMtB+ugzmesvB0BbWYCFPiAW6nPSQRlJvC+H3yxs48kXF1ZpqHh
         2uTcEn2f+6OaXlK68/7qIaYnBQO3PmQDu1y2Ldm3ExKVrRlFmB3Egywmj/hgFbdpNjpQ
         WOTcqkoSZRlUsz0O/Vg7OBoe1ebETp4XVUYJ3vjZJ4tTaQxPJ/6FzuvuoISYOo24nE7I
         s0NRKRduPbZ0kKyeNJIQMa6exfX1P6v2aUPKKs5BgexRb4DTydxdtXt8TQnMka534N3t
         4Ttg==
X-Gm-Message-State: AC+VfDyeqW1zpExNebOnOpd/WPzeJRyb9tyRkx595KQ8MNvrQltjM0Nx
        v9zYHJoV8EfkqkRFvVGALUmWckYA0zlHSt4SMmoHgw==
X-Google-Smtp-Source: ACHHUZ6F0BD0AfkU0XluXJjcMLWPntGpPl2nLiNPAiceu39hatrS3xE+Zp8rfKjyLrBOQhARtVcB0FhfuQlHNJxrDTA=
X-Received: by 2002:a67:f9c7:0:b0:43d:cf39:456c with SMTP id
 c7-20020a67f9c7000000b0043dcf39456cmr4690712vsq.15.1686668086467; Tue, 13 Jun
 2023 07:54:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230607115508.2964574-1-l.goehrs@pengutronix.de> <20230607115508.2964574-3-l.goehrs@pengutronix.de>
In-Reply-To: <20230607115508.2964574-3-l.goehrs@pengutronix.de>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Tue, 13 Jun 2023 16:54:35 +0200
Message-ID: <CAMRc=Me5VJ5xfNSW2hu2EYwV2wkHJpd+dvx-iGsR70Dso3EX5w@mail.gmail.com>
Subject: Re: [PATCH v1 3/8] dt-bindings: gpio: pca9570: add gpio-line-names property
To:     =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Sungbo Eo <mans0n@gorani.run>, kernel@pengutronix.de,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 7, 2023 at 1:57=E2=80=AFPM Leonard G=C3=B6hrs <l.goehrs@pengutr=
onix.de> wrote:
>
> This patch allows giving each of the controller's pins a meaningful
> name.
>
> Signed-off-by: Leonard G=C3=B6hrs <l.goehrs@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml b/D=
ocumentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> index 5b0134304e51c..452f8972a9659 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> @@ -24,6 +24,10 @@ properties:
>    '#gpio-cells':
>      const: 2
>
> +  gpio-line-names:
> +    minItems: 4
> +    maxItems: 8
> +
>  required:
>    - compatible
>    - reg
> --
> 2.39.2
>

Applied, thanks!

Bart
