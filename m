Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C916E72F64C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 09:29:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234661AbjFNH3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 03:29:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233996AbjFNH3B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 03:29:01 -0400
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16CECC3
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:29:00 -0700 (PDT)
Received: by mail-vs1-xe2b.google.com with SMTP id ada2fe7eead31-43dd7791396so793088137.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686727739; x=1689319739;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5CRRGmdvDVbIEVTAFye64zUK3XOXIsv8ssMpfcABwlc=;
        b=Nf0/wLoZ38LsOopYbyo0ezI8LUQxgJTAFLkmLtgB++4Cqtqg95I3NTpGl9TXnYDDkY
         wQhNpaGtN+5iKwyxA/Sc3yKL4QWEEoRYv1tUv0/rZ1jPqpc9h2liqXzIFsH7Mk0PzJ2D
         8Dt9l/8xaaR/qGP/pxdKD42jgFfMPgpFD59+6wt7ykOg3xU4OOQOIVjAB7xnsarGe2xV
         S1QJ6zDt5NlO/4rFM4tBxEctZeiRwHUUbqReFG2sT+6YQbOdFDmCmmmOhAPgpwdAefLP
         SOVujR+y+Jx1AZxSFRB5PTZR3D5aXGCdsLrtMDajNAzKERlzusmNmNlP39Tdtw7fIp0C
         Jqdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686727739; x=1689319739;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5CRRGmdvDVbIEVTAFye64zUK3XOXIsv8ssMpfcABwlc=;
        b=SJcDBSwiKXUbZvx/PSKRHX63HWoYVk+1DOXSgUojXTIzNXwlqwTGGbFPBXOce4qGl7
         nG07rhlfU4SwD+NbhhBiakPR6m1n4Vyyg/ACapkJiQ9n2yFFrEWTXoITqI+Rg0d3gn7M
         xjJbWd4p97T3LKDW3PmPEi5MiUvuyeb0Wic2FQYDrZnoHO/hJQ5PYSOSW7t1VdRUj3so
         5W0y3so+9DDjcIT2iTAq4BU6DXvS1O3VsjpF73+PQURJYn5ZchVF+q7/THhfsy+079eK
         f2XkxmU7V36aCeWKZw/dh+Dxhbd3w/RAWfM6aSzO5V52ULx5zFuxWPORiONrRMbnyeHx
         cVsA==
X-Gm-Message-State: AC+VfDwL6VmdPOo5EC/QLdqeR1DS1mvW1yM8nmc+KSlVPOhSyYfn/Mlk
        h7IMWqguYm7o5FNAwLZ+yZEydKPje70Wosfo7umE3w==
X-Google-Smtp-Source: ACHHUZ5IOUv06tiZXv2OeC2IVs2JPsy0d5AliyorYz0hKnjFQVcPktvrX5L1vFgxFRciusLts8S8bofr4NgaMAhMxQo=
X-Received: by 2002:a05:6102:ca:b0:43d:54e9:35fb with SMTP id
 u10-20020a05610200ca00b0043d54e935fbmr7796848vsp.14.1686727739229; Wed, 14
 Jun 2023 00:28:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230612092355.87937-1-brgl@bgdev.pl> <20230612092355.87937-21-brgl@bgdev.pl>
 <712b2650-f0c1-088a-612c-ef6d6bcc1eb0@linaro.org>
In-Reply-To: <712b2650-f0c1-088a-612c-ef6d6bcc1eb0@linaro.org>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 14 Jun 2023 09:28:48 +0200
Message-ID: <CAMRc=McvVwk_HGU_cRzJ_qsCriHKfq61qL7bbe10evr-Sp6YSA@mail.gmail.com>
Subject: Re: [PATCH 20/26] dt-bindings: net: qcom,ethqos: add description for sa8775p
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 14, 2023 at 9:25=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 12/06/2023 11:23, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Add the compatible for the MAC controller on sa8775p platforms. This MA=
C
> > works with a single interrupt so add minItems to the interrupts propert=
y.
> > The fourth clock's name is different here so change it. Enable relevant
> > PHY properties.
> >
>
> I think the patch should be squashed with previous. Adding compatible to
> common snps,dwmac binding does not make sense on its own. It makes sense
> with adding compatible here.
>
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  .../devicetree/bindings/net/qcom,ethqos.yaml       | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/D=
ocumentation/devicetree/bindings/net/qcom,ethqos.yaml
> > index 60a38044fb19..b20847c275ce 100644
> > --- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> > +++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> > @@ -20,6 +20,7 @@ properties:
> >    compatible:
> >      enum:
> >        - qcom,qcs404-ethqos
> > +      - qcom,sa8775p-ethqos
> >        - qcom,sc8280xp-ethqos
> >        - qcom,sm8150-ethqos
> >
> > @@ -32,11 +33,13 @@ properties:
> >        - const: rgmii
> >
> >    interrupts:
> > +    minItems: 1
> >      items:
> >        - description: Combined signal for various interrupt events
> >        - description: The interrupt that occurs when Rx exits the LPI s=
tate
> >
> >    interrupt-names:
> > +    minItems: 1
> >      items:
> >        - const: macirq
> >        - const: eth_lpi
> > @@ -49,11 +52,20 @@ properties:
> >        - const: stmmaceth
> >        - const: pclk
> >        - const: ptp_ref
> > -      - const: rgmii
> > +      - enum:
> > +          - rgmii
> > +          - phyaux
> >
> >    iommus:
> >      maxItems: 1
> >
> > +  phys: true
> > +
> > +  phy-supply: true
>
> Isn't this property of the phy?
>

It is, and as discussed elsewhere with Andrew, I will move it to the
SerDes PHY driver.

Bart

> > +
> > +  phy-names:
> > +    const: serdes
>
> Keep the phy-names after phys.
>
>
> Best regards,
> Krzysztof
>
