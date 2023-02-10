Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6C76691CC1
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 11:33:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232012AbjBJKc7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 05:32:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232009AbjBJKc6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 05:32:58 -0500
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 790416D609
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 02:32:57 -0800 (PST)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-52bfa3dfd95so61843637b3.9
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 02:32:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T1MawgD5LNBGzOmeVRwqtAYkl3sDhmQa4D6GTdWIOGM=;
        b=DG9/ACm943ayV14N7GO9Kglp2CJZguAFiwBJtEWgbvAIM94k8oD0hn3M/RYo+kEnFd
         VaHGe4PzJD08j1j6Mnjcce0iDAMZ+Hlf88WWeChh1GiBcXcRLaWgzAdxwuNHD6rGEg7a
         ck+6iCh/rO5qW8xJBYlO1wgJOx1a6q4ofawz53BTDZ6w6SoiH/BowN5OO0LDKKpqXtys
         TjMhQccSGSwS+XDNuQIpBU+yu5XX9C7HTtb5QTSNxOX4uwCkA7Th+LcNqUJrpTym4deR
         PRkHOsy761yd0Z9oELZwsetJX5ua/1PtEjqp84DY/jJBUjBvj4fZNWFMUS4wVGwgicsC
         mtZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T1MawgD5LNBGzOmeVRwqtAYkl3sDhmQa4D6GTdWIOGM=;
        b=xEH3V20lIBdu2s95J3TMrZ9PWxvfLFX+izQTWCywhMX2ilKxcmK4f0du695mW8hkrJ
         VQ7VN98fLqJ2lrbWG/58hU7nJQs0E9KD6rZp65gAj9x8nCxif9dJpycd5VLijmyHO7Rw
         blIIFAR32E4+hkiZQFrFikCszsIdVWqXIN8NFb+krAbXjrUKqJl6Epc4e9QXQYXoJeGU
         rP0lo5c3bKwpzq3sAuGWCftNrgVXsHbfGFWGusckwSlBBAEWtzY74uKZVuBSOhkJ/a/H
         ZHp4/i0WwSihsv5HilyfnfTaUny9mXZtsLS3nB/v2huDRxmFGzrntUl+oqR/LhSBPmt4
         Gl/Q==
X-Gm-Message-State: AO0yUKWawAdr3C+b1oGCO2xbZkCHhitWOkIEUezfVTUhGFJGRZmOT/j+
        LGHTLG/64D+axBUS+wAkosZVTkkyL4faY6kiLPL23A==
X-Google-Smtp-Source: AK7set+yHiwZIUkgKfyIp0RgEEYwOLV5C6zFmOqExHmj2S2WWZXngZCB6wlaPcHpfPh3Dytgvp9+GxR7KmPD3b+wz08=
X-Received: by 2002:a81:62c2:0:b0:506:79fc:3df6 with SMTP id
 w185-20020a8162c2000000b0050679fc3df6mr1413118ywb.127.1676025176713; Fri, 10
 Feb 2023 02:32:56 -0800 (PST)
MIME-Version: 1.0
References: <20230209133839.762631-1-dmitry.baryshkov@linaro.org> <3fe5605e-de5a-53dc-0bf0-c6aff81f2453@linaro.org>
In-Reply-To: <3fe5605e-de5a-53dc-0bf0-c6aff81f2453@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 10 Feb 2023 12:32:45 +0200
Message-ID: <CAA8EJpoj3xepq032n1q2UmKGAk5k0q5DJPe15UcJz+tkrwNWNg@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] arm64: dts: qcom: sm8350: enable GPU on the HDK board
To:     neil.armstrong@linaro.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Feb 2023 at 10:29, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 09/02/2023 14:38, Dmitry Baryshkov wrote:
> > Add A660 device to the Qualcomm SM8350 platform and enable it for the
> > sm8350-hdk board. Unfortunately while adding the GPU & related devices I
> > noticed that DT nodes on SM8350 are greatly out of the adress sorting
> > order, so patches 2-4 reorder DT nodes to follow the agreement.
> >
> > Changes since v1:
> > - Dropped merged patches
> > - Expanded commit messages to mention the sort order (by the node
> >    address)
> > - Rebased on top of latest Bjorn's tree
>
> Can you specify which tree and commit ?
>
> I tried next-20230207, next-20230208 & next-20230209 and patch 2 doesn't apply.

It was crafted on top of Bjorn's tree and as such it applies on top of
20230210 without any issues.

>
> On the 3 trees I have:
> d7133d6d25fb arm64: dts: qcom: sm8350: use qcom,sm8350-dsi-ctrl compatibles
> b904227a4b69 arm64: dts: qcom: sm8350: Hook up DSI1 to MDP
> 2a07efb8c086 arm64: dts: qcom: sm8350: Add mdss_ prefix to DSIn out labels
> e3e654ced376 arm64: dts: qcom: sm8350: Fix DSI PLL size
> 45cd807de143 arm64: dts: qcom: sm8350: Fix DSI PHY compatibles
> 0af6a4012b38 arm64: dts: qcom: sm8350: Feed DSI1 PHY clocks to DISPCC
> 1eed7995d9da arm64: dts: qcom: sm8350: Fix DSI1 interrupt
> 6636818ecf0f arm64: dts: qcom: sm8350: Add missing #address/size-cells to DSIn
> f3c08ae6fea7 arm64: dts: qcom: sm8350: Pad addresses to 8 hex digits
> 1ccad21aa996 Merge tag 'qcom-arm64-fixes-for-6.2' into arm64-for-6.3
> ...
>
> Can you use --base in format-patch (or use b4 prep !) ?
>
> Thanks,
> Neil
>
> >
> > Changes since v1:
> > - Fixed the subject and commit message for patch 1
> > - Fixed GMU's clocks to follow the vendor kernel
> > - Marked Adreno SMMU as dma-coherent
> > - Dropped comments targeting sm8350 v1, we do not support that chip
> >    revision.
> >
> > Dmitry Baryshkov (6):
> >    dt-bindings: display/msm/gmu: add Adreno 660 support
> >    arm64: dts: qcom: sm8350: reorder device nodes
> >    arm64: dts: qcom: sm8350: move more nodes to correct place
> >    arm64: dts: qcom: sm8350: finish reordering nodes
> >    arm64: dts: qcom: sm8350: add GPU, GMU, GPU CC and SMMU nodes
> >    arm64: dts: qcom: sm8350-hdk: enable GPU
> >
> >   .../devicetree/bindings/display/msm/gmu.yaml  |    1 +
> >   arch/arm64/boot/dts/qcom/sm8350-hdk.dts       |    8 +
> >   arch/arm64/boot/dts/qcom/sm8350.dtsi          | 2512 +++++++++--------
> >   3 files changed, 1354 insertions(+), 1167 deletions(-)
> >
>


-- 
With best wishes
Dmitry
