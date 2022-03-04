Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5BBF4CCAA4
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 01:16:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236507AbiCDAQv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 19:16:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232004AbiCDAQv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 19:16:51 -0500
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A44391768EB
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 16:16:01 -0800 (PST)
Received: by mail-qv1-xf29.google.com with SMTP id jr3so5437126qvb.11
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 16:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eCjc4x4By6clCaeAiAFIhXtDZP9qpnoE7G+iXzZ8y04=;
        b=oP3Se4QqoP9oAlQ1HRVSjzyG5E2i34IxROypI6Bz8iIiSEekElY8/BTpuNTyk1HKwf
         G7LkEPxIO5SPYolkl29HrX0Ox50rktrbuHE/KZoQqyyZ1tJAlFmeVxoYHFGEQ363oRhz
         9tD+IEJaGkj6cadV74LDDg52Z4I4om+nAsNfXOsMY2idn/iul+VqA9UBWw28A6N4VLom
         +qwsMv4qn+Uo3rXGbQA0+czOGICIRcUvvdyT6zxOqZm73F6dk9FgBbqu6vVsKwjAeDiJ
         uzugSydM4U8v9MWShFmWMA1PVBrpWbLrdJ0eDQlRjim8O8Xfk69nxx3+yR3Us6QdFQYH
         uWsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eCjc4x4By6clCaeAiAFIhXtDZP9qpnoE7G+iXzZ8y04=;
        b=kTso/p0QRFzQzZFQlIW1M097npo1cF6af3HQGhIihFfNRmDp0q4Ewlx13sapD/OLoQ
         8ioPjQabmfzGnAL1DYEQyLTGWXLw9NawaYEGnsQGa6P6UC/3nszCTjKXpGRFjisuZ6Nc
         I4L0NA0vYxY8TpEzruKlHnqh9h8hAnd7mh5A7yeDaGAmF/FbcpOq/cb0U6SV/o7rhcgy
         YeOtSxztjTvyxHH1gojRC/oTkVluNrmJf4hRnHP/mDu9+tKgm9LKJmC3utzvcjQfONkD
         1YvVSXPUKhFOYqMOJzVH55UL59xIiwHmSr4cn+aQ5Q1InIMJcXHSOnpr1gvH9HtBNWFJ
         PCJA==
X-Gm-Message-State: AOAM533Z8NJGr0O4nGm0YnpZkhiiItDZnv20DqifVaVRO0rJ0SyBfqZ7
        nsxJFyvdWl+oH+NrYT1X6Wj9HYeEgKbgaWYXzVqQMQ==
X-Google-Smtp-Source: ABdhPJxum/m+TEt3e7BQD9vNYZDUIpyt+gK4TZ209Fwn4ctVQ9miyXr7mySaKYi3BuSGNSTDSVnqVqbdgDlUxVbPp/Q=
X-Received: by 2002:a0c:d807:0:b0:42c:1ff7:7242 with SMTP id
 h7-20020a0cd807000000b0042c1ff77242mr26194090qvj.119.1646352960853; Thu, 03
 Mar 2022 16:16:00 -0800 (PST)
MIME-Version: 1.0
References: <1646300401-9063-1-git-send-email-quic_vpolimer@quicinc.com>
 <1646300401-9063-5-git-send-email-quic_vpolimer@quicinc.com>
 <CAA8EJpqkK8q7g8q56rfiOO22ykxgycJTpSJKHuhcqGk05nsVzA@mail.gmail.com> <CAE-0n53jGQcn=NThrrW92NL-cry8yrFErdSYTHHEHWW48b3xbg@mail.gmail.com>
In-Reply-To: <CAE-0n53jGQcn=NThrrW92NL-cry8yrFErdSYTHHEHWW48b3xbg@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 4 Mar 2022 03:15:49 +0300
Message-ID: <CAA8EJpoEpn2RPByeDkaGPUX+OC7tvbEw4k78Gd+RKs02jpzG1w@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] arm64/dts/qcom/sm8250: remove assigned-clock-rate
 property for mdp clk
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Vinod Polimera <quic_vpolimer@quicinc.com>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com,
        dianders@chromium.org, quic_kalyant@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 4 Mar 2022 at 02:56, Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Dmitry Baryshkov (2022-03-03 15:50:50)
> > On Thu, 3 Mar 2022 at 12:40, Vinod Polimera <quic_vpolimer@quicinc.com> wrote:
> > >
> > > Kernel clock driver assumes that initial rate is the
> > > max rate for that clock and was not allowing it to scale
> > > beyond the assigned clock value.
> > >
> > > Drop the assigned clock rate property and vote on the mdp clock as per
> > > calculated value during the usecase.
> > >
> > > Fixes: 7c1dffd471("arm64: dts: qcom: sm8250.dtsi: add display system nodes")
> >
> > Please remove the Fixes tags from all commits. Otherwise the patches
> > might be picked up into earlier kernels, which do not have a patch
> > adding a vote on the MDP clock.
>
> What patch is that? The Fixes tag could point to that commit.

Please correct me if I'm wrong.
Currently the dtsi enforces bumping the MDP clock when the mdss device
is being probed and when the dpu device is being probed.
Later during the DPU lifetime the core_perf would change the clock's
rate as it sees fit according to the CRTC requirements.

However it would happen only when the during the
dpu_crtc_atomic_flush(), before we call this function, the MDP clock
is left in the undetermined state. The power rails controlled by the
opp table are left in the undetermined state.

I suppose that during the dpu_bind we should bump the clock to the max
possible freq and let dpu_core_perf handle it afterwards.


--
With best wishes
Dmitry
