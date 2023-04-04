Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C46726D58EB
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 08:51:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233639AbjDDGv2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 02:51:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233561AbjDDGv1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 02:51:27 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B2B62110
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 23:51:25 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id j18-20020a05600c1c1200b003ee5157346cso21142771wms.1
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 23:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680591084;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OLvfUjZlGoiC6E8ZsiMGzI/gZ0qXzWEniLSO6l1hhK0=;
        b=JdLUltt4dGzsZxE2SMoYArGnoBn/hat62geg6Gv8Qn65riD4njUzikP8IrHhcZXreN
         qu+5S6QHOnvrsSOkaRtZlQOZyB1KPSNP1V7E73m/4SVvpopbMtgdY9xQVtxSJj7o6OFO
         wjjqwoU15Uq/u01lSwnhhEdpMpZqezoW8AGC9TP1+NJtKHhaguNtfqGXOWmCM4ckVKGq
         Rua2wsZWgIdLZQYB0yCLW7buDe0tJSHExZGrrHPG0Z3AGbCT5cy24X0lzlql11cMGB8n
         +cY0jgQ6pbFFvC2o5DBiWokI+xroKN7ttIq9C+ESujE7klKtk3dbt5iQLz/q/HHN6rMy
         3r8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680591084;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OLvfUjZlGoiC6E8ZsiMGzI/gZ0qXzWEniLSO6l1hhK0=;
        b=6LnYOpBQBL4egXMUACwW+jdCg8NujS3Tp3+2QiAsbmfyuvXwnMpor87ZJY9ZTaHgwt
         bM5skEXk5reQDXGQXW413D4qQXvql6iG024qoOCLi0ZdB9q43ZUl5OnZUFXumX6ASE0d
         x/yjLaiINf694x0pSteuDXudsXlpYcx+VlXxYDvZBCZlOHpZVX2PYGBzGuoiRFQhi3Gw
         meV8BbcH2P70doO1+2Wfvdyqf/OX4QwjRFTqlqU+cksuSY9vc7KN8XbK/3PrcUZjDTMw
         eGHFmcgUV2KVvVmwxt/OpBj2cj+jwUqXYd73XLHxjMrjbB0QrJnF9DKKG6979v8OKzYp
         WEfg==
X-Gm-Message-State: AAQBX9dIiJpSRa6Hm5fKDm8zwMVzdYfwLK80NnDZw8KnUOBOjRBK/mZy
        /s0TSaphjq8KZNpYvil46insIZg6xHJqa5jg8YLaog==
X-Google-Smtp-Source: AKy350ZvuT/VAsKLkawblV/SVB7Q8YGrIS/FPjDOqKP8dqJp8Zan1XcL6Bx+RgnUhmXZuPjroY+OcI7hM8RmL1t6+RY=
X-Received: by 2002:a05:600c:2247:b0:3ef:6935:da8d with SMTP id
 a7-20020a05600c224700b003ef6935da8dmr470831wmm.8.1680591083936; Mon, 03 Apr
 2023 23:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230402100509.1154220-1-bhupesh.sharma@linaro.org>
 <20230402100509.1154220-11-bhupesh.sharma@linaro.org> <9ecab48e-e828-0a03-2bc7-678e555bc80d@kernel.org>
In-Reply-To: <9ecab48e-e828-0a03-2bc7-678e555bc80d@kernel.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Tue, 4 Apr 2023 12:21:12 +0530
Message-ID: <CAH=2Ntzgm0PyBfCOwj1VtAupqBqjgNoUQhH7=dHzsGmLz7OKMA@mail.gmail.com>
Subject: Re: [PATCH v5 10/11] arm64: dts: qcom: sm8350: Add Crypto Engine support
To:     Georgi Djakov <djakov@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
        robh+dt@kernel.org, konrad.dybcio@linaro.org,
        vladimir.zapolskiy@linaro.org, rfoss@kernel.org,
        neil.armstrong@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 3 Apr 2023 at 17:46, Georgi Djakov <djakov@kernel.org> wrote:
>
> Hi Bhupesh,
>
> On 2.04.23 13:05, Bhupesh Sharma wrote:
> > Add crypto engine (CE) and CE BAM related nodes and definitions to
> > 'sm8350.dtsi'.
> >
> > Co-developed-by and Signed-off-by: Robert Foss <rfoss@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >   arch/arm64/boot/dts/qcom/sm8350.dtsi | 22 ++++++++++++++++++++++
> >   1 file changed, 22 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> > index 7fbc288eca58..090ee07d1800 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> > @@ -1730,6 +1730,28 @@ ufs_mem_phy_lanes: phy@1d87400 {
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
> > +                     iommus = <&apps_smmu 0x594 0x0011>,
> > +                              <&apps_smmu 0x596 0x0011>;
> > +             };
> > +
> > +             crypto: crypto@1dfa000 {
> > +                     compatible = "qcom,sm8350-qce", "qcom,sm8150-qce", "qcom,qce";
> > +                     reg = <0 0x01dfa000 0 0x6000>;
> > +                     dmas = <&cryptobam 4>, <&cryptobam 5>;
> > +                     dma-names = "rx", "tx";
> > +                     iommus = <&apps_smmu 0x594 0x0011>,
> > +                              <&apps_smmu 0x596 0x0011>;
> > +                     interconnects = <&aggre2_noc MASTER_CRYPTO &mc_virt SLAVE_EBI1>;
> > +                     interconnect-names = "memory";
>
> We switched to #interconnect-cells = <2> (since commit 4f287e31ff5f), so maybe #include
> dt-bindings/interconnect/qcom,icc.h and add the tags.

Sure Georgi, I will fix it in the next version.

Thanks,
Bhupesh
