Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B33D729D8A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:57:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240065AbjFIO5f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:57:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239991AbjFIO5Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:57:24 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D184D4487
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:56:55 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-39a95068c9cso665764b6e.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 07:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686322611; x=1688914611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5P30yTVObjCNWePFrPZlTAmy25U125Eu2KEScJ+3Q+g=;
        b=DiS+tAYV8rfbWIbHRCpGArV53sDOTNWWuaxxiYJkEDzhscawVJagxGAHwzNWLaqwgc
         YGozAa1IoPB+RSWtvhCwgM3Zs3NkLYepHEaDIaKQbmHWQTuIHlEwA1YUzjPK2L4Ma3wS
         MVA3ehcOIOGbJNbt9Lg4CMuG+vHbUTmwpqsQFRSjDX8vzp/bTOQh3J39klectF02yxfF
         gCSraKM82LukA3+xXvX2N8pd41a4kdevnusmT5DZxAk8KOQIHnsHISOy52Upt+ZngN2F
         4VV5ZTxgZ+Utt2hhv7XJBhjVPYq71c1p31B3EiF5rVkENTYx0/UD8XKjZjdvDAFV/Cps
         PdFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686322611; x=1688914611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5P30yTVObjCNWePFrPZlTAmy25U125Eu2KEScJ+3Q+g=;
        b=WB23cMO0MRPpm2sRqdrY8xxsaovCeEO/ul707drKxNkkayc1IaKux3IJGVeVVypX3F
         6X3Gvlh1AYDMVbOvwy0ylgQbZQFJjuoPG+fhsLXYVt4aaspjf/Jt7BQk5IS0vPYJ2vI9
         RXSjLCEy4r6SRI3IklYM8FkXmvTYzIL5za9Vmcy+XF9p/E/uy1SGCHgi/3OkYe8Cxth1
         +xIHBu7kK7mCnJgGTZxycHbcGfaILZY0HuMQcsLnzBc8agV3IMhEcXybY0rKk4x3BQmd
         ivu+LYlana1fh1zyt0M9gUkCy04z3mTTV1dVYnRsB3ZrzoE6QcJQJvtdVvFx1yc6qmwN
         54cA==
X-Gm-Message-State: AC+VfDx2TRYZ2Qq29rtrbVddgbJA0yXXmR5RY7u7r7QJkbLKt6p8iiqQ
        l/EsLwfabzSNkikRkdbhApVo88Vqbi2f5Y/qS/3djg==
X-Google-Smtp-Source: ACHHUZ4nFpTpj3lsBdccjwaqtlsCznyPJ13GRyEpdzMAWcin+xTZz2n7mc55BitUQ9Mi+bJLBYRdi7BCReqlTQKBHw8=
X-Received: by 2002:a05:6358:bb92:b0:129:c3fc:ff5c with SMTP id
 df18-20020a056358bb9200b00129c3fcff5cmr1385785rwb.24.1686322610069; Fri, 09
 Jun 2023 07:56:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230609054141.18938-1-quic_ppareek@quicinc.com>
 <79206b05-674b-1f6c-6eb1-ed45e6bd5637@linaro.org> <20230609125631.GA29252@hu-ppareek-blr.qualcomm.com>
 <2881f374-70e2-0057-f43e-7be12d32ae22@arm.com> <c3c12574-fc38-84ae-2a94-3c80fb9fb363@linaro.org>
In-Reply-To: <c3c12574-fc38-84ae-2a94-3c80fb9fb363@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 9 Jun 2023 17:56:39 +0300
Message-ID: <CAA8EJprqfq0ey2hgBXxf9Zg1Y_MwHP_73EQkwg-W-sRYS7VE8w@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: sa8775p: Add interconnect to SMMU
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Parikshit Pareek <quic_ppareek@quicinc.com>,
        Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Adam Skladowski <a39.skl@gmail.com>,
        linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org,
        "linux-kernel @ vger . kernel . org Prasanna Kumar" 
        <quic_kprasan@quicinc.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 9 Jun 2023 at 17:52, Konrad Dybcio <konrad.dybcio@linaro.org> wrote=
:
>
>
>
> On 9.06.2023 16:45, Robin Murphy wrote:
> > On 2023-06-09 13:56, Parikshit Pareek wrote:
> >> On Fri, Jun 09, 2023 at 10:52:26AM +0200, Konrad Dybcio wrote:
> >>>
> >>>
> >>> On 9.06.2023 07:41, Parikshit Pareek wrote:
> >>>> Some qcom SoCs have SMMUs, which need the interconnect bandwidth to =
be
> >>>> This series introduce the due support for associated interconnect, a=
nd
> >>>> setting of the due interconnect-bandwidth. Setting due interconnect
> >>>> bandwidth is needed to avoid the issues like [1], caused by not havi=
ng
> >>>> due clock votes(indirectly dependent upon interconnect bandwidth).
> >>>
> >>> [1] ???
> >>
> >> My bad. Intended to mention following:
> >> https://lore.kernel.org/linux-arm-msm/20230418165224.vmok75fwcjqdxspe@=
echanude/
> >
> > This sounds super-dodgy - do you really have to rely on configuration o=
f the interconnect path from the SMMU's pagetable walker to RAM to keep a c=
ompletely different interconnect path clocked for the CPU to access SMMU re=
gisters? You can't just request the programming interface clock directly li=
ke on other SoCs?
> On Qualcomm platforms, particularly so with the more recent ones, some
> clocks are managed by various remote cores. Half of what the interconnect
> infra does on these SoCs is telling one such core to change the internall=
y
> managed clock's rate based on the requested bw.

But enabling PCIe interconnect to keep SMMU working sounds strange to
me too. Does the fault come from some outstanding PCIe transaction?


--=20
With best wishes
Dmitry
