Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EC55746688
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 02:24:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229779AbjGDAYL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 20:24:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjGDAYK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 20:24:10 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84E9CE1
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 17:24:09 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-c50c797c31bso2260817276.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 17:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688430248; x=1691022248;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7ooo4dM5jALOtaXQ/scLIfMMHfxc7psGFc61PPL8SXI=;
        b=EC4ri2XnmUEcT5FMvk1S4XnLO2FYde1MbnG23B0qy9D1+GCfXYLTNHmwycc3q0wrcE
         9B37RTnYYPWSj1v9wdi5dXdv7P3/4Ac7BIxWQZolk/Kc2uYG5d5bT6Ki6Nj0BhODFQ0h
         CxVJ/BOxEsc/hM59vOeh63h5QiHPa3fXeXu6Uh69oNKD99VHeFA3UrkHyQUKk03TST/h
         2F6jT9YJ2CJA+LedHj1CNAOT2K44HTN0rTu5jxeb3qp8XEHkUzUOMXKsMhdQoj1Qvral
         WKGQBBPo37H8byJZb9Cl9z7NEo3oAA2bkSYT44mjeFFp0IrUud2RFaoXTSswBcziv0U3
         T/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688430248; x=1691022248;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ooo4dM5jALOtaXQ/scLIfMMHfxc7psGFc61PPL8SXI=;
        b=AD8OZVQkq35OXhipy3TLuVhyTiSp2l5Ctz13Hz8nHLEN9XpeJl5vXlQt1O/6lKCUE8
         JivVmGx2gFi4inL2rPddI33Uc+yS6TA9X53MeNzTxQKgA3wFLPwdDGhBN72bnbGOEYBa
         YembdM39YR/+INtclE7cEDhrHQCgPOoPYjLPv7G6dRnhipW7IBWZLBdO+80NQw0tNA2W
         4oWamBvjKHGinv0yzRrPkwrsuYu6RtZ9zbFecfvMaU0OwzISFH7L9dnaz1YmAAMWByqs
         hxjLctgTD5qsBkAwP3NOF7t3QqPvlQjxb8QF8w214KhcPe5SilCq08smCCSoGFn4/5Qd
         Dtzw==
X-Gm-Message-State: ABy/qLZOyFS63Zs1fAUuP/TQhRmM8v5KhEZFviLGWa9/pCMA/42INfGU
        lTeXQENGbNJzRRaKkuQWChfjGviwwxG6Zbzk/vQy7w==
X-Google-Smtp-Source: APBJJlGwBuEBQNkpWTGVzwAN8wHVIS3Z+h6RfADCfyBaNnBSNplPPR2iH9n5YEdPJApMCn3LPV+eq1ag4FSh0bWCATg=
X-Received: by 2002:a25:3ac5:0:b0:ba8:1aeb:2b68 with SMTP id
 h188-20020a253ac5000000b00ba81aeb2b68mr10197957yba.41.1688430248788; Mon, 03
 Jul 2023 17:24:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230628-topic-refgen-v3-0-9fbf0e605d23@linaro.org> <b93cb054-fd42-46e5-aef3-dc41b36a85f9@sirena.org.uk>
In-Reply-To: <b93cb054-fd42-46e5-aef3-dc41b36a85f9@sirena.org.uk>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 4 Jul 2023 03:23:57 +0300
Message-ID: <CAA8EJpqfF0aep1E26yWQRQT_xUVTQBBUtghGv=hq_2M0w05few@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Qualcomm REFGEN regulator
To:     Mark Brown <broonie@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 4 Jul 2023 at 01:59, Mark Brown <broonie@kernel.org> wrote:
>
> On Mon, Jul 03, 2023 at 08:15:53PM +0200, Konrad Dybcio wrote:
>
> > Recent Qualcomm SoCs have a REFGEN (reference voltage generator) regulator
> > responsible for providing a reference voltage to some on-SoC IPs (like DSI
> > or PHYs). It can be turned off when unused to save power.
> >
> > This series introduces the driver for it and lets the DSI driver
> > consume it.
>
> What's the expected plan for merging this - should I be applying the DRM
> patch?

I'd pick the least two patches into msm-next after -rc1.

-- 
With best wishes
Dmitry
