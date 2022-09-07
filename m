Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 205335B0EFA
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 23:13:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229620AbiIGVNY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 17:13:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229541AbiIGVNX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 17:13:23 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E64BEB5A67
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 14:13:21 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id g5so23396924ybg.11
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 14:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=SJK16+uU9VJEIIC+Fyc2hg8dmVOoE7V69f5hgdf9kE4=;
        b=NtUZNHRVtILcxEdJzyYbhvTu6lkoDxvevKubhxPvpMJQ5Vbr3WMJuP7FFobpT02O0u
         SDNwi16ddRmxLfus5OBbt6+v5zo0WzHcsth9Ex+vvikfTuy+Fu7U0iL5lNUqpCj+Cx9z
         O4VbyF26LMWpSts+MvoivoU1S/Cu4FM0+0PiuCIHEYvtKItK33oIgnhxKRiaBH9cgfg9
         bWNY49JYQrY1tk9cqtkc353I/B453F9ZHQxzXXJqdqU+P82wWFMqEIsLOW1bZJISOqdx
         lWant4c+E3rY4RaWCYU4379LT/JW+TgvBt4b++23ByoeAtAaSv95WCUYM5zUsCghKcwC
         zrKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=SJK16+uU9VJEIIC+Fyc2hg8dmVOoE7V69f5hgdf9kE4=;
        b=AJRsORjCuRZkRmfKxxT0k6QRGAeXY3sKGBOU/SUMFZr2/DxmNAk5XJLQ6z1hbU7Zir
         yuGpqiPTxDmdQjCR1cStcbTx1NK8J5tQi3AQyPjM7p6aYaLvf57BPyQ+E3lRt349cGGg
         nl+AxZcrvm/b57FlJ75s1KhgczE4BrHGINjwmEcotkUHJvBz6ZSZo2JSkLOUalwBGB3a
         ajHxg7OdoR3tbOdaD7gRs6oPAc7lRojcMsWla2QMZNDdRxe+hZVjPm1ENQ/rCDKiHkUg
         xEtDf0/X031wqLv6U4Bamr5caljJQpyzCtjIgIPu37aIAvenJqKPp7FfCB20FW2FGBuO
         JPUw==
X-Gm-Message-State: ACgBeo0Cy0x8hLbyGZe5Kqrip5tK0P4Y6jNCmQZiG5Sw7jlgCRY4Mgn4
        B/+7PTPyCbVzRTEelfpo5AIaOI+mQu50nCMF0DlEVA==
X-Google-Smtp-Source: AA6agR5vM/SputRDG2oAeSWV36MXAxdfUAjvvRWGWx+d7CpyXT+ZZ7ssin5/mMOx6PxOrE0DBqKbbKlAWxXlKNp/TWg=
X-Received: by 2002:a5b:2ce:0:b0:67a:6054:9eb0 with SMTP id
 h14-20020a5b02ce000000b0067a60549eb0mr4423720ybp.15.1662585201138; Wed, 07
 Sep 2022 14:13:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220901102312.2005553-1-dmitry.baryshkov@linaro.org>
 <20220901102312.2005553-5-dmitry.baryshkov@linaro.org> <20220907195904.GA98468-robh@kernel.org>
In-Reply-To: <20220907195904.GA98468-robh@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 8 Sep 2022 00:13:10 +0300
Message-ID: <CAA8EJpoJk-_LC25uyqkQ0Q8CYziNuU8nSnExm40542xZcvcbxQ@mail.gmail.com>
Subject: Re: [PATCH v6 04/12] dt-bindings: display/msm: move common DPU
 properties to dpu-common.yaml
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Loic Poulain <loic.poulain@linaro.org>,
        David Airlie <airlied@linux.ie>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Stephen Boyd <swboyd@chromium.org>,
        freedreno@lists.freedesktop.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
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

On Wed, 7 Sept 2022 at 22:59, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Sep 01, 2022 at 01:23:04PM +0300, Dmitry Baryshkov wrote:
> > Move properties common to all DPU DT nodes to the dpu-common.yaml.
> >
> > Note, this removes description of individual DPU port@ nodes. However
> > such definitions add no additional value. The reg values do not
> > correspond to hardware INTF indices. The driver discovers and binds
> > these ports not paying any care for the order of these items. Thus just
> > leave the reference to graph.yaml#/properties/ports and the description.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../bindings/display/msm/dpu-common.yaml      | 44 ++++++++++++++++++
> >  .../bindings/display/msm/dpu-msm8998.yaml     | 46 ++-----------------
> >  .../bindings/display/msm/dpu-qcm2290.yaml     | 41 ++---------------
> >  .../bindings/display/msm/dpu-sc7180.yaml      | 45 ++----------------
> >  .../bindings/display/msm/dpu-sc7280.yaml      | 45 ++----------------
> >  .../bindings/display/msm/dpu-sdm845.yaml      | 46 ++-----------------
> >  6 files changed, 64 insertions(+), 203 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/msm/dpu-common.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/msm/dpu-common.yaml b/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
> > new file mode 100644
> > index 000000000000..bf5764e9932b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
> > @@ -0,0 +1,44 @@
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/msm/dpu-common.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm Display DPU dt properties (common properties)
> > +
> > +maintainers:
> > +  - Krishna Manikandan <quic_mkrishn@quicinc.com>
> > +  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > +  - Rob Clark <robdclark@gmail.com>
> > +
> > +description: |
> > +  Common properties for QCom DPU display controller.
> > +
> > +properties:
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  operating-points-v2: true
> > +  opp-table:
> > +    type: object
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +    description: |
> > +      Contains the list of output ports from DPU device. These ports
> > +      connect to interfaces that are external to the DPU hardware,
> > +      such as DSI, DP etc.
>
> Haven't we been over this already?
>
> You have to define 'port' nodes or else anything is allowed in them
> (and endpoint nodes). If you want to define them as pattern, then fine.
> But you must have a ref to graph.yaml#/properties/port.

Last time you asked to do this, I did a check. Adding any additional
property results in a schema error. And this is logical.
graph.yaml#/properties/ports already limits the node properties. I
thus do not see a need to define port@[0-9a-f]+$. Did I miss anything?

>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - clocks
> > +  - interrupts
> > +  - power-domains
> > +  - operating-points-v2
> > +  - ports
> > +
> > +additionalProperties: true
> > diff --git a/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml b/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
> > index 253665c693e6..0d6743eabd27 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
> > @@ -62,7 +62,10 @@ patternProperties:
> >    "^display-controller@[0-9a-f]+$":
> >      type: object
> >      description: Node containing the properties of DPU.
> > -    additionalProperties: false
> > +    unevaluatedProperties: false
> > +
> > +    allOf:
> > +      - $ref: /schemas/display/msm/dpu-common.yaml#
>
> Don't need allOf here. (and elsewhere)

Ack

>
> Rob



-- 
With best wishes
Dmitry
