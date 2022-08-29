Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 236105A5702
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 00:21:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229711AbiH2WU7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 18:20:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbiH2WU6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 18:20:58 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF1B37A505
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 15:20:56 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id f12so9146398plb.11
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 15:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=GZQU1toz3ycN5Zt/1Eu0mxxDza6a6KDCxHuVJeEjjL8=;
        b=MSyeXDHLV3z2ql45vC6CoxQPhs2hxu5q3AA/iykDc9FHnhfpIO2pUKfJLYcHwqxwUi
         M9tVaeZaP4kNNHECZZ8wX6CmVRtYykgJFgD3SdUstjtKxomc1fNFfyRS9jcnZfxWYc9q
         v+JR6id643YDf34sJ1S+DjakhAxGq6L7VFA5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=GZQU1toz3ycN5Zt/1Eu0mxxDza6a6KDCxHuVJeEjjL8=;
        b=iozNvE9T038mUt/BTyW3gPoW7heVRtKH0+fU6vQDaftzF+ypq8Al+dvckSay79XOye
         Iv4n68kobeazw6IflUEEEORnIxlsmCZAxOvEvyGFSgKiCUyc8j9Vs5uf0fD+mQ+UpCPX
         pUiO30jWynWky8fi4LuGFkEzecCkW046ZiIX79qnv2M0ZNxtSj0qNWXvYJB96DLfMuSV
         jN994SFd8XYXoSANeBekdwcrY0UnHoCr/RM2cWnikmLhxWNoNIVEwWD2lWOMfLoJrl0Z
         bwaa+iVewxePR7iGc7Q4GAYq6lZ/kJtKrFZUj08BnFs/9iDug7pLSdumyB7hYQ0QmQc+
         5poA==
X-Gm-Message-State: ACgBeo00ogeL3fKO86mi7q+lKQuGy7NwEgs2cLZsjbHPfbc5pLhjDKAM
        99wQy7ryENqGExGIgKw/Uxi66A==
X-Google-Smtp-Source: AA6agR6c9g7Nyz6O6x1hoea9yovYOCtSBeyl9hnQDbWQrL3PikuXpJjslImkJiXbGqsIwuAcgPtbjw==
X-Received: by 2002:a17:90b:1d89:b0:1f5:a59:46b1 with SMTP id pf9-20020a17090b1d8900b001f50a5946b1mr20255688pjb.173.1661811656285;
        Mon, 29 Aug 2022 15:20:56 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:49ac:6e1:90a2:a0e0])
        by smtp.gmail.com with UTF8SMTPSA id q4-20020a170902dac400b00174d4fabe76sm2565764plx.214.2022.08.29.15.20.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 15:20:55 -0700 (PDT)
Date:   Mon, 29 Aug 2022 15:20:53 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Judy Hsiao <judyhsiao@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        Satya Priya <quic_c_skakit@quicinc.com>
Subject: Re: [PATCH v4] arm64: dts: qcom: sc7280: Fix Dmic no sound on
 villager-r1
Message-ID: <Yw07xSlVpQcXDqe7@google.com>
References: <20220826065621.2255795-1-judyhsiao@chromium.org>
 <CAD=FV=VrgrvJb_sJ8AO6pN8dRNXzzOJ9WvngeJrtVYw_wD1Akg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAD=FV=VrgrvJb_sJ8AO6pN8dRNXzzOJ9WvngeJrtVYw_wD1Akg@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 26, 2022 at 10:14:58AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Thu, Aug 25, 2022 at 11:56 PM Judy Hsiao <judyhsiao@chromium.org> wrote:
> >
> > Fix the DMIC no sound issue of villager-r1 by using "PP1800_L2C" as the
> > DMIC power source to match the hardware schematic.
> >
> > This patch:
> >    1. set vdd-micb-supply to PP1800_L2C as the MIC Bias voltage regulator.
> >    2. In audio-routing, set VA DMIC01~VA DMIC03 to use the vdd-micb-supply
> >       setting.
> >
> > Co-developed-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> > Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> > Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> > ---
> > Changes since V3:
> >   -- Update the commit message and fix extra blank line.
> > Changes since V2:
> >   -- Update the commit message.
> > Changes since V1:
> >   -- Update the commit message.
> >
> > This patch depends on:
> > arm64: dts: qcom: sc7280: Add herobrine-villager-r1. [1]
> >
> > [1] https://patchwork.kernel.org/patch/12929106
> 
> After applying your [1] then your patch applies without merge
> conflicts. However, it still doesn't compile. You also depend on
> whatever patch adds the nodes "lpass_va_macro" and "sound" since
> you're referencing them in your patch. I haven't been keeping track of
> the latest status of all the audio patches, so I myself can't point to
> exactly what patches you depend on and whether those patches are ready
> to land.
> 
> In any case, the contents of this patch seem OK assuming the dependent
> patches cause something that looks like the current (downstream)
> chromeos-5.15 tree.
> 
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

To my best knowledge the dependencies of the audio mess are (roughly in
order):

Add support for audio clock gating resets for SC7280 (v8)
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=671887
  ready to land? (patch 2 has a minor comment about SoB tag)

Add DT support for audio clock gating resets for SC7280 (v4)
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=666480
  ready to land after dependencies land

Add soundcard support for sc7280 based platforms (v14)
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=657417
  ready to land after dependencies land

Add dtsi for sc7280 herobrine boards that using rt5682 codec (v3)
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=644812
  ready to land after dependencies land

Add new board revision and LTE SKUs for sc7280-villager family (v8)
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=663014
  ready to land after dependencies land

arm64: dts: qcom: sc7280: Fix Dmic no sound on villager-r1 (v4)
https://patchwork.kernel.org/project/linux-arm-msm/patch/20220826065621.2255795-1-judyhsiao@chromium.org/
  ready to land after dependencies land

So it looks like things are generally ready to land, unless [1] needs a
re-spin to fix the SoB tag.

m.

[1] https://patchwork.kernel.org/project/linux-arm-msm/patch/1661754153-14813-3-git-send-email-quic_c_skakit@quicinc.com/
