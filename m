Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AA9B6F1204
	for <lists+devicetree@lfdr.de>; Fri, 28 Apr 2023 08:55:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345371AbjD1Gz4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Apr 2023 02:55:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230175AbjD1Gzz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Apr 2023 02:55:55 -0400
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F7AF1FF7
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 23:55:54 -0700 (PDT)
Received: by mail-vs1-xe2e.google.com with SMTP id ada2fe7eead31-42ff08ab61dso2810442137.1
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 23:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20221208.gappssmtp.com; s=20221208; t=1682664953; x=1685256953;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=02MWxkaQdLRTYwyy27lw5gzanHvXJVQsMktOlzAmIEM=;
        b=ebeNvPj0ds7czi+movITwBF+RYZUj9k6IwRy5acHyTPjgL4ttUoayc4qtQ8Y1i721n
         cWVC/OmgHvRifsKHa+q0LUntGu96Do5gqdhBHWiXUtyYF0AB6MHKJGHmatJiZHLaqJ5c
         HNJBYH1iJcFkIZE3hd7dls2452H4HRjWJWbSjhMFOsOS3WuXgWTpGJNB+HzsiFpPt6zw
         WpEPBkP6XP3lVja50lQsymE4YNEDI+uahKtiJcMg2/22Q78D3GZJP5zkzX93xkWXi6Ji
         hwrGOSVhvlYL38Zp0bBOoRfuHGo3h1vanHPuQpBXPJxeDVcNGATvwUsqM01svL3BZagM
         cNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682664953; x=1685256953;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=02MWxkaQdLRTYwyy27lw5gzanHvXJVQsMktOlzAmIEM=;
        b=SgywkRSIl4913HFSupcx4gV7yx11krMu1Ddwt4MJBusv8djJvONAVGyf+DR1fFgfCJ
         Ae7LRiRCrXyLjX06eF3Ghw+tXhJzuX+dmdJZknNUNP+E/iD+tvXA218nnMg6NKzUO8qA
         beq1saXm9KSm6i3QuLjtp9yguLr3YD7iyPeOFCvPpauS+c0VTbk7T/9VAavs251imxpr
         2+MxJW9ZaLcXhWWENCyYrrvD9T+kHAIID/ZAM8SeMqTUMDpnIQfL5BA/niU/k2rb4mXU
         I6yMPsdcVCjaoxT1IFTeV3y6Q6r92vx6O5254FwOg1xYYNgs+jyehwMJ5fnfnb2+6Rn4
         I1dg==
X-Gm-Message-State: AC+VfDyBzysDI5+pboS+QyN5EHWD0eIwpvRYH2tkuIaDoPK2qyz+OjNu
        eKr14xCKweoZgHewC1fib2j22QaSj+KH/libPRURo+wgIMWro/+kMiY=
X-Google-Smtp-Source: ACHHUZ6EamEmWhWbB0deRP2ZL3ue6TcG8tSIpzkQ/uaEtAe82grayOte7QF7M0W1v9o43SUVKKxggkSC1iQSMRAIYAE=
X-Received: by 2002:a05:6102:34ca:b0:42e:5b8c:7a2b with SMTP id
 a10-20020a05610234ca00b0042e5b8c7a2bmr1736524vst.9.1682664953609; Thu, 27 Apr
 2023 23:55:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-6-quic_bjorande@quicinc.com> <CAJB8c04ah3YfK2VGxDhHMHK4KVJ7kZQv0b5JfPBu7jOk3mFQRA@mail.gmail.com>
 <20230427195545.GC870858@hu-bjorande-lv.qualcomm.com>
In-Reply-To: <20230427195545.GC870858@hu-bjorande-lv.qualcomm.com>
From:   "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
Date:   Fri, 28 Apr 2023 07:55:41 +0100
Message-ID: <CAJB8c06zxy7Q9eSsnpOsW9ymPsCyWZ4p9oE3b4sP3YGPTiLT_A@mail.gmail.com>
Subject: Re: [PATCH 5/7] phy: qcom-qmp-combo: Introduce drm_bridge
To:     Bjorn Andersson <quic_bjorande@quicinc.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Johan Hovold <johan@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 27, 2023 at 8:56=E2=80=AFPM Bjorn Andersson
<quic_bjorande@quicinc.com> wrote:
>
> On Wed, Apr 26, 2023 at 11:33:40AM +0100, Bryan O'Donoghue wrote:
> > On Tue, Apr 25, 2023 at 4:40=E2=80=AFAM Bjorn Andersson
> > <quic_bjorande@quicinc.com> wrote:
> > >
> [..]
> > You need to add some or all of these
> >        select DRM_DISPLAY_DP_HELPER
> >        select DRM_DISPLAY_HELPER
> >        select DRM_DP_AUX_BUS
> >        select DRM_KMS_HELPER
> >        select DRM_MIPI_DSI
> >        select DRM_PANEL
> >
> >
> > /opt/linaro/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch=
64-linux-gnu-ld:
> > Unexpected GOT/PLT entries detected!
> > /opt/linaro/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch=
64-linux-gnu-ld:
> > Unexpected run-time procedure linkages detected!
> > drivers/phy/qualcomm/phy-qcom-qmp-combo.o: In function
> > `qmp_combo_bridge_attach':
> > phy-qcom-qmp-combo.c:(.text+0xb50): undefined reference to
> > `devm_drm_of_get_bridge'
> > phy-qcom-qmp-combo.c:(.text+0xb6c): undefined reference to `drm_bridge_=
attach'
> > drivers/phy/qualcomm/phy-qcom-qmp-combo.o: In function `qmp_combo_probe=
':
> > phy-qcom-qmp-combo.c:(.text+0x13fc): undefined reference to
> > `devm_drm_bridge_add'
> >
>
> You're correct, and TYPEC. Realized that I forgot these once I had
> posted the patches. Will figure out the actual set for v2.
>
> Thanks,
> Bjorn

So I added CONFIG_DRM to Kconfig for the combo phy and then replaced
the old patch we had with your series.

Works for me with my TCPM set with zero changes - aside from slotting
the old PHY patch with your expanded series on SM8250

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-23-04-2=
8-pm8150b-tcpm-qcom-wrapper-typec-mux-bjorn
