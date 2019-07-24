Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B39A73175
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 16:18:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728217AbfGXOSS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 10:18:18 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:34036 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726910AbfGXOSS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 10:18:18 -0400
Received: by mail-pf1-f194.google.com with SMTP id b13so21041981pfo.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 07:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:subject:to:cc:from:user-agent:date;
        bh=i6ucO8M1kBwfk/WDeuCHxIoA+2DfAiPuMamyFSvxMIE=;
        b=TND1gWT+zyPtTrknjApjowmDcsWxhTeFFGQQKuHPjwHM2p+eRGXgyM/jgeho5dZ5b/
         bLE5zwWspO66n2PXUX4fU3WNEigbELc5ZOvRddO9zVh/AEf6mn610vnp/GjuLr8pjT3r
         Tl8gh340iXQfZf7V6Z0eW5ED8IBh6e7w7hGeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:subject:to:cc:from
         :user-agent:date;
        bh=i6ucO8M1kBwfk/WDeuCHxIoA+2DfAiPuMamyFSvxMIE=;
        b=qL/NTyov2AqZMK4i4+WztxZBxLgbacb9Jsh8J0Z1E2AyepPzIc7mNSuA+MKpSgn5w+
         +KjruVu3tWnttIhh/0yjLAIPLcTB4GRFkdoD3qZpZoHp59uebKZbAxLI/C57RVQP8ZH5
         ZItqU70pXc/eyNc8+48iLDZoEM/0J56mU+xUaP70paCQEOO2PVN1BxFVH0iDZjSeh4ND
         m7G/JJod5R8Ds/H+0+XlImUTnJqCSS5jrXT4udSJePqwvKd6rQ0opq+7pxz54wiPkj0w
         keKymvLgty4+hnABTiXj7gGDSZZ+d8R6rTpEMl1hojd3K5tJtfN/s2pYCXIHzwLQbgfw
         m1vw==
X-Gm-Message-State: APjAAAWW8bGFcEmvR3TZR+iXqXByaAXVsiZudPBc6DjzTYwEOiy3otMD
        xl5mMBxxy5TLv8d1YQBOgvTtSQ==
X-Google-Smtp-Source: APXvYqwA2DaROWqS6dAgzLQRMlZAOqpPRUpDwwbWaRi5dnx4FVbkt5kHlJYwChON/qwoRaxOY5ouTQ==
X-Received: by 2002:a17:90a:d151:: with SMTP id t17mr87008292pjw.60.1563977898088;
        Wed, 24 Jul 2019 07:18:18 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id j20sm44352358pfr.113.2019.07.24.07.18.17
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 07:18:17 -0700 (PDT)
Message-ID: <5d3868a9.1c69fb81.876aa.ac30@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8c181f08-559b-5d77-a617-65cfd3d5da55@codeaurora.org>
References: <1563568344-1274-1-git-send-email-daidavid1@codeaurora.org> <1563568344-1274-2-git-send-email-daidavid1@codeaurora.org> <5d371ce7.1c69fb81.9650.8239@mx.google.com> <8c181f08-559b-5d77-a617-65cfd3d5da55@codeaurora.org>
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: Update Qualcomm SDM845 DT bindings
To:     David Dai <daidavid1@codeaurora.org>, bjorn.andersson@linaro.org,
        georgi.djakov@linaro.org, robh+dt@kernel.org
Cc:     evgreen@google.com, ilina@codeaurora.org, seansw@qti.qualcomm.com,
        elder@linaro.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date:   Wed, 24 Jul 2019 07:18:16 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting David Dai (2019-07-23 14:48:42)
> On 7/23/2019 7:42 AM, Stephen Boyd wrote:
> > Quoting David Dai (2019-07-19 13:32:23)
> >> +- compatible : shall contain only one of the following:
> >> +                       "qcom,sdm845-bcm-voter",
> >> +
> >> +Examples:
> >> +
> >> +apps_rsc: rsc@179c0000 {
> > But there isn't a reg property.
> I'll change this to the generic example with just apps_rsc: rsc {
> >
> >> +       label =3D "apps_rsc";
> > Is label required?

Any answer?

> >
> >> +       compatible =3D "qcom,rpmh-rsc";
> >> +
> >> +       apps_bcm_voter: bcm_voter {
> >> +               compatible =3D "qcom,sdm845-bcm-voter";
> >> +       };
> >> +}
> >> +
> >> +disp_rsc: rsc@179d0000 {
> >> +       label =3D "disp_rsc";
> >> +       compatible =3D "qcom,rpmh-rsc";
> >> +
> >> +       disp_bcm_voter: bcm_voter {
> >> +               compatible =3D "qcom,sdm845-bcm-voter";
> >> +       };
> >> +}
> >> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,sdm84=
5.txt b/Documentation/devicetree/bindings/interconnect/qcom,sdm845.txt
> >> index 5c4f1d9..27f9ed9 100644
> >> --- a/Documentation/devicetree/bindings/interconnect/qcom,sdm845.txt
> >> +++ b/Documentation/devicetree/bindings/interconnect/qcom,sdm845.txt
[...]
> >> +
> >> +mem_noc: interconnect@1380000 {
> >> +       compatible =3D "qcom,sdm845-mem_noc";
> >> +       reg =3D <0 0x1380000 0 0x27200>;
> >> +       #interconnect-cells =3D <1>;
> >> +       qcom,bcm-voter =3D <&apps_bcm_voter>, <&disp_bcm_voter>;
> >> +};
> > How does a consumer target a particular RSC? For example, how can
> > display decide to use the disp_bcm_voter node from mem_noc here? Maybe
> > you can add that consumer to the example?
>=20
> I was thinking that the association between the bcm voters and the icc=20
> nodes would be handled by the interconnect provider, and that there=20
> would be a set of display specific icc nodes with their own unique IDs=20
> that the consumers could reference. I will mention this as part of the=20
> description and provide an example.
>=20
> Ex: interconnects =3D <&mmss_noc MASTER_MDP0_DISP &mem_noc SLAVE_EBI_DISP=
>;
>=20

It looks backwards to me. Don't the consumers want to consume a
particular RSC, i.e. apps or display RSC, so they can choose where to
put the bcm vote and then those RSCs want to find MMIO registers for
mmss_noc or mem_noc that they have to write to tune something else like
QoS? If the MMIO space is the provider then I'm lost how it can
differentiate between the RSCs that may be targetting the particular
NoC.=20

Maybe I've just completely missed something and this is all decided
already. If so, sorry, I'm just trying to understand.

