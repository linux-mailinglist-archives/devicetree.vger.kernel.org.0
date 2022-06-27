Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17AC255C867
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:55:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236648AbiF0Rvj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 13:51:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233113AbiF0Rvi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 13:51:38 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79CA4E008
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:51:37 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id b125so7367368qkg.11
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2l/JZxFBA6ruYVDfbOKe6Nh7SNRkHtjSUP/JeJUMaQk=;
        b=PmprGVvlBwrXtl5CKj51xhYdOTYCBWGz/xtgCcNoy+otrCDCKJZrLkuticFOK1pFEW
         rfZxv1+nKiFWfMkou+SyT5E9Kn5YQaOXCzUKyX0M+ieyUM26jABqmdCXyfd3TBDeY4r/
         tBUpEf8G4jAOjFnxrJa9hbPdfEfO5Wj22TyBl5/+/zRtkz5kEBf0gfh75JJfVhqXvbDd
         tOpJhytuvaU4HNoc+8sZBROTz2Q12nGKrs0CZlGDTZbi4SGjPROkVXv+WzVicjQ/XIGH
         C61kG89nXpVPaQUqwtDcsS06FPU3cjS/mqhvXCsPJZMGr3Af5LpoIbthjqa2eFSDsyPe
         bvPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2l/JZxFBA6ruYVDfbOKe6Nh7SNRkHtjSUP/JeJUMaQk=;
        b=sRM7RtmLpYetdMjiXm8hKELYXqGoZJ+43CyvnbQbVsENBSsBUAk+DuO1d9v6rXFu7M
         obqZSz47irN3+QOkyyargPe83GMV1lTtW1jiUJgUpiIp6dxXjdllIKTDAZ2VQJ4uuPSZ
         yVmAe9l5PijPTxB09Tx/XfTZ5gnp0f2I6FLmbzGPfI3XPMcIsyP7Kn1iQMxrROua4iUt
         dB47dgxCrHafUuQVPpVwX5nSvHBfSXSImIfhhsamyPhb/ngjTp64asI2lDLoODm+jM+K
         wlR65CHPXJwVYW8Ab9ekEPw82jAxAxL3KayFlzxGq6i4GzceNYAnBRlojNg6gAiIIatt
         vUPA==
X-Gm-Message-State: AJIora+yzWl4VYEFJCORPd3uwaPbR3VW0JjG0lSylMarJjSiBFixRhIU
        tO0tGBDEylEDIoNPnEjbcVFr8nEDFy6nmu8/Flawqg==
X-Google-Smtp-Source: AGRyM1stDXuv0fuJqFJ3eHrWX+eMJJ+43GZhpt0Aw+nmja1w31Js3JeXZTCdTQiRB+ipLhmvVXZlGvQTjEo6gNQ98BU=
X-Received: by 2002:a05:620a:31aa:b0:6af:24d1:507 with SMTP id
 bi42-20020a05620a31aa00b006af24d10507mr4317527qkb.203.1656352296597; Mon, 27
 Jun 2022 10:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220620010300.1532713-1-dmitry.baryshkov@linaro.org>
 <20220620010300.1532713-2-dmitry.baryshkov@linaro.org> <20220627171756.GA2610798-robh@kernel.org>
In-Reply-To: <20220627171756.GA2610798-robh@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 27 Jun 2022 20:51:25 +0300
Message-ID: <CAA8EJpqUraiE3f23URKFnSXTfBO+E4DtcRS+HuHDrsSDN58iiQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,hdmi-phy-qmp: add
 clock-cells and XO clock
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
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

On Mon, 27 Jun 2022 at 20:17, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Jun 20, 2022 at 04:02:58AM +0300, Dmitry Baryshkov wrote:
> > As the QMP HDMI PHY is a clock provider, add constant #clock-cells
> > property. For the compatibility with older DTs the property is not
> > marked as required. Also add the XO clock to the list of the clocks used
> > by the driver.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml | 14 +++++++++++---
> >  1 file changed, 11 insertions(+), 3 deletions(-)
>
> Doesn't apply, so no checks ran.

Dependencies: https://patchwork.freedesktop.org/series/105285/. I'll
include this in v3.

>
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> > index eea2e02678ed..41e6492d4a0f 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> > @@ -28,12 +28,14 @@ properties:
> >        - const: hdmi_phy
> >
> >    clocks:
> > -    maxItems: 2
> > +    minItems: 2
> > +    maxItems: 3
> >
> >    clock-names:
> >      items:
> >        - const: iface
> >        - const: ref
> > +      - const: xo
>
> minItems: 2

Ack

>
> >
> >    power-domains:
> >      maxItems: 1
> > @@ -44,6 +46,9 @@ properties:
> >    vddio-supply:
> >      description: phandle to VDD I/O supply regulator
> >
> > +  '#clock-cells':
> > +    const: 0
> > +
> >    '#phy-cells':
> >      const: 0
> >
> > @@ -75,9 +80,12 @@ examples:
> >                    "hdmi_phy";
> >
> >        clocks = <&mmcc 116>,
> > -               <&gcc 214>;
> > +               <&gcc 214>,
> > +               <&xo_board>;
> >        clock-names = "iface",
> > -                    "ref";
> > +                    "ref",
> > +                    "xo";
> > +      #clock-cells = <0>;
> >        #phy-cells = <0>;
> >
> >        vddio-supply = <&vreg_l12a_1p8>;
> > --
> > 2.35.1
> >
> >



-- 
With best wishes
Dmitry
