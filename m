Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD0A56D993D
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 16:11:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237769AbjDFOLf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 10:11:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233628AbjDFOLR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 10:11:17 -0400
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41FE0B459
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 07:10:33 -0700 (PDT)
Received: by mail-vs1-xe33.google.com with SMTP id cz11so34508285vsb.6
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 07:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680790228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IrV0HduwnTYQrs78eFl1LVmvoAd5k3NNcXgfHwN64VA=;
        b=gWkoE9JYUbzA27pjY3/BlLJTd084xNOeCYKSMq1ijbtkBZM3caZy2R6p1nZ2Tp3/QF
         p1Khn3RnvyLvMidPRFrj5SXPKqG2+jV5ZvcBXE9YgVeFeWJkw0IfVoQkt9JxbeYeRgpW
         /+3/yMP5VpdMdg1noPBcpLU0qfSA/wHFOi9v5vuB0J9Fey0pK57hPbhBuyJEbKb9RIwc
         K6TZ7xWhgyRe5IgYHgFjkFmK5h/f3TmBTkBGu/bS3T0BFzc8NjPUjky8Pwf6Gx6rSUjx
         IFVb4KKX4cl38j6C3P3CNuPYK36XpyS57A/sq3DYH780uM02FQ642Ynqmkx9lz0HLVQh
         6jtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680790228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IrV0HduwnTYQrs78eFl1LVmvoAd5k3NNcXgfHwN64VA=;
        b=20FlMg45tLnuT2mhi/biSPr8WacPagY0SE+kztFpX/GiIrJmRq3uA5IerQKh4txECL
         CgIBu0awZAtIp26vLF1R7kaKvroJPKWe4wN0nXcdQa31RU63x7+DyIEzF+95kIrasLgz
         pmu0cSC9CN6PdinYxwtjDOgIXVHPmT2JBooD+MgcOtGcgkM/EJP21rXdFQClFGjOJAMs
         QcJLUeIDgU5Org7mMoz/W0JFfZ7kKAe+oNNe9kvfj6JKw5Y2IElwztQOBygadVOCgbkm
         yArOMUPOE1wI+M0/M/Xbaw9SjWEp4GY1fkgFA0dq1IE4MTw7+44Vz341k4EPQggYBenK
         sAvQ==
X-Gm-Message-State: AAQBX9fdj8yo2C7IobTuzPMK2cX2IcYIDg6edGezOjIt319r1O2Gyoll
        K26zxthL67GzC5G+Lrf9H8YWuB/3lsetRmvhCGxbkQ==
X-Google-Smtp-Source: AKy350Z/M6f5lKpbAeLqxBiMBOsEYzC/LtKL47/N+Ao/9EarEJAj8PA/1iKs9987FSSbMF0ZU6b4rIT+Uw/IL3qJdoQ=
X-Received: by 2002:a67:d29a:0:b0:426:7730:1b89 with SMTP id
 z26-20020a67d29a000000b0042677301b89mr7693615vsi.0.1680790227908; Thu, 06 Apr
 2023 07:10:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230327125316.210812-1-brgl@bgdev.pl> <20230327125316.210812-4-brgl@bgdev.pl>
In-Reply-To: <20230327125316.210812-4-brgl@bgdev.pl>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 6 Apr 2023 16:10:17 +0200
Message-ID: <CAMRc=Mfe6gCM=Mz6Can6xsSsrjX-9T_aR2Yev+b57koky_az-A@mail.gmail.com>
Subject: Re: [PATCH v3 03/18] dt-bindings: interrupt-controller: qcom-pdc: add
 compatible for sa8775p
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 27, 2023 at 2:53=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Add a compatible for the Power Domain Controller on SA8775p platforms.
> Increase the number of PDC pin mappings.
>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Marc Zyngier <maz@kernel.org>
> ---
>  .../devicetree/bindings/interrupt-controller/qcom,pdc.yaml     | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,=
pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.=
yaml
> index 94791e261c42..641ff32e4a6c 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yam=
l
> +++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yam=
l
> @@ -26,6 +26,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - qcom,sa8775p-pdc
>            - qcom,sc7180-pdc
>            - qcom,sc7280-pdc
>            - qcom,sc8280xp-pdc
> @@ -53,7 +54,7 @@ properties:
>    qcom,pdc-ranges:
>      $ref: /schemas/types.yaml#/definitions/uint32-matrix
>      minItems: 1
> -    maxItems: 32 # no hard limit
> +    maxItems: 38 # no hard limit
>      items:
>        items:
>          - description: starting PDC port
> --
> 2.37.2
>

Bjorn,

Will you pick up the dt-bindings patches from this series as well or
should they go through Rob's tree?

Bart
