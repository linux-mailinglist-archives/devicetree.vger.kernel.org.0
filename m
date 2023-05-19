Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A3A57094D9
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 12:33:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231472AbjESKdw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 06:33:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231912AbjESKdv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 06:33:51 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23749E6E
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 03:33:47 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3093a7b71fbso2944389f8f.2
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 03:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684492425; x=1687084425;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JqbUf5iW4pm4MKo8jBbYutuoKVMlMmpyWEErz/xJUGs=;
        b=KivDySRPsicV5/FrEu0tr3IZUifQsAq8K8u1LZnR/d/Yp9Vqvq9BfR1Uh6PZZ2g4h+
         gJBGyDL8p1mo42t8bleHQrEkMgfaSpOMENQO/b7k33Mjygb9b5kpO8xmiEPMVPMazOMC
         vdVOc+aFXIl+xboZaPzYBR0+frnQT8gs2RnmWLkPddzw1uBKZjFoNv3dvWVZWx7N8Day
         XiEDgN9JdzUh9Klmm7MRjDp3rmqhu2myTtQMUkO0ZWMptHBVi23izyfMBfIuE9Ss0YXQ
         dFJxL84i1z3s6jbsTM7ADgJYrO+zNeuDdnHAk18twff+uHmVmXsc4IAreOhrxJKqy8yW
         sW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684492425; x=1687084425;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JqbUf5iW4pm4MKo8jBbYutuoKVMlMmpyWEErz/xJUGs=;
        b=iqvBpUdQf+V7odWvGCpyAr8oCRj9Z6FYX2Bx6d/qmCNXNE9Gy1fqY4c8SXSxJ20Ufh
         njc5VQkS0AdSP1zBPkIt0XJG0NUGKjEvlFhYpfnaNNScuAN72TlFRXEjb2T1OSDzt3vL
         E4e7s5FGNwHewn8ByolNRuB8L7zOTOkkk+QA7upZ24ALQKV1VrBPlgQ0EH6qv9UEHaSW
         HJLn/k52QHuNSY8qPCWzh0K0Q27k6VtuGMUrQNU4b9O9cggmPGgFYzQHUfW9bTTIivbD
         38zseFxw8FbQ7MEDdac06gs2PkW5UGsC+i9h9tg8HqTRIRgQu0dVq747cNoZt3Ir8Ijj
         Cgiw==
X-Gm-Message-State: AC+VfDwNJyMfOYGrajx6YNpE1q0U6lcenpzNNmVWqbIAteRMqfaBpgfC
        aZNyy8+FjLqCNAFDqtfMerak+ufl3J2QNbkgBe823w==
X-Google-Smtp-Source: ACHHUZ6qCct8NWnq2Z2uNVkhKGDHqSymbTeeEMJ6pmXav96yYUtEcUzXrp16xnYXtT4NJoEFK4X4OAUUXgJHUbfifdc=
X-Received: by 2002:a5d:564a:0:b0:306:2fd3:2edb with SMTP id
 j10-20020a5d564a000000b003062fd32edbmr1186052wrw.61.1684492425513; Fri, 19
 May 2023 03:33:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230405072836.1690248-1-bhupesh.sharma@linaro.org>
 <20230405072836.1690248-9-bhupesh.sharma@linaro.org> <9ecbea6a-d7bd-0f4d-e94f-dd1130e578c7@linaro.org>
In-Reply-To: <9ecbea6a-d7bd-0f4d-e94f-dd1130e578c7@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Fri, 19 May 2023 16:03:34 +0530
Message-ID: <CAH=2NtymHsMY3MOaSw9oy6h6PSA8WNi9xawmH2A86NWTMZLVNQ@mail.gmail.com>
Subject: Re: [PATCH v6 08/11] arm64: dts: qcom: sm8150: Add Crypto Engine support
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
        robh+dt@kernel.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org, djakov@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Konrad,

Sorry for the late reply, but I wanted to look at the latest
downstream code before responding.

On Thu, 6 Apr 2023 at 19:28, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 5.04.2023 09:28, Bhupesh Sharma wrote:
> > Add crypto engine (CE) and CE BAM related nodes and definitions to
> > 'sm8150.dtsi'.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8150.dtsi | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > index 9491be4a6bf0..c104d0b12dc6 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > @@ -2081,6 +2081,28 @@ ufs_mem_phy_lanes: phy@1d87400 {
> >                       };
> >               };
> >
> > +             cryptobam: dma-controller@1dc4000 {
> > +                     compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
> > +                     reg = <0 0x01dc4000 0 0x24000>;
> > +                     interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
> > +                     #dma-cells = <1>;
> > +                     qcom,ee = <0>;
> > +                     qcom,controlled-remotely;
> > +                     iommus = <&apps_smmu 0x514 0x0011>,
> > +                              <&apps_smmu 0x516 0x0011>;
> > +             };
> > +
> > +             crypto: crypto@1dfa000 {
> > +                     compatible = "qcom,sm8150-qce", "qcom,qce";
> > +                     reg = <0 0x01dfa000 0 0x6000>;
> > +                     dmas = <&cryptobam 4>, <&cryptobam 5>;
> > +                     dma-names = "rx", "tx";
> > +                     iommus = <&apps_smmu 0x514 0x0011>,
> > +                              <&apps_smmu 0x516 0x0011>;
> Downstream uses these (sid, mask) combos:
>
> qcedev:
> 0x0506 0x0011
> 0x0516 0x0011 // equal to 0x506 0x11
>
> qcom_cedev_ns_cb:
> 0x512 0
> 0x518 0
> 0x519 0
> 0x51f 0
>
> Shouldn't we use them too?

Sure, but the following are the latest values used in the downstream
.dtsi, so I used them in the latest version and tested with the same
on sa8115p-adp and sm8150-mtp without any issues:

qcedev:
0x0502 0x0641
0x0504 0x0011

qcom_cedev_ns_cb:
0x0506 0x0011
0x0508 0x0011
0x0512 0x0000

I dropped:
0x0514 0x0011 // equal to 0x504 0x11
0x0516 0x0011 // equal to 0x506 0x11
0x0518 0x0011 // equal to 0x508 0x11

Thanks for pointing this out.

Regards,
Bhupesh
