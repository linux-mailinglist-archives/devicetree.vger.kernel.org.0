Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85FB27327E9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 08:53:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242521AbjFPGxY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 02:53:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242572AbjFPGxX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 02:53:23 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D509E2965
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 23:53:20 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-62ff0e0c5d7so4130776d6.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 23:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686898400; x=1689490400;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tpze9TUVJHynLjdP+GtnzdEuwJI6Rj8PjtY5Ob++aYY=;
        b=nUWwe8XLNUTVjVmjtZcUK9ryHZEt9qKqWQotbbpaSVmZfPQeZ4NxV6uAeE75T7W+9I
         MReEMq81h+brjHnv2impeAk4hhI/f2JrrUUl2s9TojKjg0UDnJJDaq4aZS5QRIRaFja8
         Ve0D7kNWVfRSNbdEGRZqwDJtRvbZme3q/oVY9FB8/7kdFEYYm7sIrVDTjZ0nKMRFViFZ
         WQNvQea/T4VLZmAhkhF4Ad4kbA/gHpycn757WQ/35Y848VXoUQ8kcq7UF8f/h72c5rhG
         W+D8lhHNLxf6vJkIGOYEW5m5co0+8IwGCTKKJXiaOFeIep4MRP1AmjGG48xLOW5iccjN
         sPrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686898400; x=1689490400;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tpze9TUVJHynLjdP+GtnzdEuwJI6Rj8PjtY5Ob++aYY=;
        b=EzRNgnkL03vo87vdbStRRnkSyyK55WZOpsciR29QC3Sjcr4P/7OJSNV1GLLvt7h+0g
         bT27V2/Re2zElysB8zHVbfceX+BQbVynsSZwQWkv2ag8ZG1tyQnfAuj9fZq7XK9xYLJX
         QFOmf8YMm60DLV6lske5UwCxw3p+cxtMK/DuxQE+gL2kt0u9iVV83KGwEMxeSqSo8MT0
         P/f8p8a1vs75qRqCAT5Dr6LL5tJ07NpaTK03NrZXXrU1CCnvC9/5SERYYDmuD+C28VFq
         lRaHUnwC5C3rRznTJScldumfPMnOcGu0FUaCL8VEzQstHNgAGb6061y4Cxjy5/7FTCcS
         qU2w==
X-Gm-Message-State: AC+VfDxdLbgD8iVRzBDFkwKVAdfHqaMP9f+bzn5uruUB7uLBofePYn2J
        R5PxlZmQU7PBnvgmxEt0X+QvzMgDaxglWHYZUt3qCw==
X-Google-Smtp-Source: ACHHUZ4FIxeZfmI18D29InbyzPX71jiv1O7sM8yYUWYq0e00b0ieniRrLGNLDmU4InWCXSn5yKySJDtcAnuXc+sOaN4=
X-Received: by 2002:a05:6214:1304:b0:61b:6fcd:34b7 with SMTP id
 pn4-20020a056214130400b0061b6fcd34b7mr1655550qvb.17.1686898399978; Thu, 15
 Jun 2023 23:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230615142711.2994811-1-amit.pundir@linaro.org> <5377c938-10df-20ce-2bdb-dad41e472041@linaro.org>
In-Reply-To: <5377c938-10df-20ce-2bdb-dad41e472041@linaro.org>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Fri, 16 Jun 2023 12:22:43 +0530
Message-ID: <CAMi1Hd3Kv1b7bBjqAc4MJ7W8xDZozCd10Byh513hhk9bOcgkjw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm845-db845c: Mark cont splash
 memory region as reserved
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
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

On Thu, 15 Jun 2023 at 22:56, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 15.06.2023 16:27, Amit Pundir wrote:
> > Adding a reserved memory region for the framebuffer memory
> > (the splash memory region set up by the bootloader).
> >
> > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> > ---
> > v2: Updated commit message.
> >
> > There was some dicussion on v1 but it didn't go anywhere,
> > https://lore.kernel.org/linux-kernel/20230124182857.1524912-1-amit.pundir@linaro.org/T/#u.
> > The general consensus is that this memory should be freed and be
> > made resuable but that (releasing this piece of memory) has been
> > tried before and it is not trivial to return the reserved memory
> > node to the system RAM pool in this case.
> >
> >  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> > index e14fe9bbb386..10a06ee8e262 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> > +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> > @@ -101,6 +101,14 @@ hdmi_con: endpoint {
> >               };
> >       };
> >
> > +     reserved-memory {
> > +             /* Cont splash region set up by the bootloader */
> > +             cont_splash_mem: framebuffer@9d400000 {
> > +                     reg = <0x0 0x9d400000 0x0 0x2400000>;
> > +                     no-map;
> > +             };
> > +     };
> &mdss {
>         memory-region = <&cont_splash_mem>;
> };
>
> ?

Thank you. Updated in v3.

>
> Konrad
> > +
> >       lt9611_1v8: lt9611-vdd18-regulator {
> >               compatible = "regulator-fixed";
> >               regulator-name = "LT9611_1V8";
