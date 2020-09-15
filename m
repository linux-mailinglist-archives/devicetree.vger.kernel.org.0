Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B51D269D9B
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 06:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726089AbgIOE4M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 00:56:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726034AbgIOE4K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 00:56:10 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 556A6C06174A
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 21:56:10 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id g10so2009246otq.9
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 21:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ENz4xHvD9ug6YlxqNSoJaY/XQYN66A8D8foNqmGC5KA=;
        b=u93mVuya+d8x86g5PcEQ8jQDGeKy0pXToN3Gf38rOh9RxhkKtQWac/k7HyKfY0vOa7
         L5U4lhotYK8jBDqlyhP8gnLzLO1wZdC4Lh1PTeonw8rNpcbF6v0oDxW2svAvXpa3Ec9G
         TD1T1gHpwlsUCSv45z9Qu84lgenwESBMsOKcFL+SsIXmxRvHIcZtQ1zVoZa9kMnvgghZ
         u7Vlrgdp/vDe4fLoMXqKjMOQJ6ZX6n5IQSoowuHQ7N9vKXwCPb8v1fYNy9LcyColetHS
         ZEIREZ4n94ozxxnF60bdkdhRO3a+S1ykGDrI9dDB0ZdpNY//qse2cNBtO49wwrJUUUDm
         9cdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ENz4xHvD9ug6YlxqNSoJaY/XQYN66A8D8foNqmGC5KA=;
        b=rrZJtJj0NHK25eQh94N7vZLfIVbdIXPP/HmeURRzm/mAzkN1Gsl955X5fhwqVQAJJP
         Mcx0v07bk4zLtbF/LLbS4FzeEhDeKZ4wntbZ39Wip9OYtXeq4K28TJyVWKDGYsFiHUSn
         g8B8XT5MZbwTFyHV4RmkbAI7FLmdTNpF7nwIEHrpD4ExBEBzUScOrJ4YkXhrP61xpKbF
         rXeLC+8Ud3lSdZKqer5Cv5oVhPWam/BK4cfh6UL3taJVL043l7FvUJzkGL6BUOnrqTZU
         VB4DOfmQbeoRAY4iFrhVJFpfAQziqFjan29NctrZnb5ML4Cfleihjnmb9JZh8kqj0VG4
         YePw==
X-Gm-Message-State: AOAM530Sr8c/hPAPs79yRJlAMTxdjDLRnRmtQ5cezix0+asDAnsRSXZ9
        S2RY0JGl/0eDT54IU3MfzNoFcA==
X-Google-Smtp-Source: ABdhPJzYhhH+j8Sewu8WtxPCdtjCVNeqTeENaaRi2CfPfPAk3Mn7ak211THzf+2/wOvSNI1eTM5/EA==
X-Received: by 2002:a9d:6f85:: with SMTP id h5mr10512442otq.73.1600145769563;
        Mon, 14 Sep 2020 21:56:09 -0700 (PDT)
Received: from yoga ([2605:6000:e5cb:c100:8898:14ff:fe6d:34e])
        by smtp.gmail.com with ESMTPSA id y23sm6013545ooj.34.2020.09.14.21.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 21:56:08 -0700 (PDT)
Date:   Mon, 14 Sep 2020 23:56:05 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 00/10] Convert MSM8916 boards to use labels, reduce
 duplication
Message-ID: <20200915045605.GC670377@yoga>
References: <20200720085406.6716-1-stephan@gerhold.net>
 <20200914094341.GA1246@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200914094341.GA1246@gerhold.net>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 14 Sep 04:43 CDT 2020, Stephan Gerhold wrote:

> Hi Bjorn,
> 
> On Mon, Jul 20, 2020 at 10:53:56AM +0200, Stephan Gerhold wrote:
> > Board device trees for newer SoCs reference labels to override properties
> > for components of the SoC. This patch series converts all MSM8916 boards to
> > use the same style.
> > 
> > Additionally, in the second part of the series I attempt to reduce duplication
> > within the MSM8916 board device trees a bit. If we keep copying a large number
> > of properties to each and every board of a SoC then (in my opinion)
> > it makes sense to consider if those can be shared in some include.
> > 
> > This will make it easier to add new boards in the future.
> > 
> > Stephan Gerhold (10):
> >   arm64: dts: qcom: apq8016-sbc: Remove properties that are already
> >     default
> >   arm64: dts: qcom: msm8916: Declare sound node in msm8916.dtsi
> >   arm64: dts: qcom: apq8016-sbc: Define leds outside of soc node
> >   arm64: dts: qcom: msm8916: Add more labels
> >   arm64: dts: qcom: msm8916: Use labels in board device trees
> >   arm64: dts: qcom: pm8916: Add resin node
> >   arm64: dts: qcom: msm8916: Move PM8916-specific parts to
> >     msm8916-pm8916.dtsi
> >   arm64: dts: qcom: msm8916: Move more supplies to msm8916-pm8916.dtsi
> >   arm64: dts: qcom: msm8916: Set default pinctrl for blsp1_uart1/2
> >   arm64: dts: qcom: msm8916: Move common USB properties to msm8916.dtsi
> > 
> 
> It's been two months since I sent this series - are there any changes
> I should make? Maybe you just overlooked it :)
> 

It seems to have been overlooked as we approached the v5.9 merge window.
I don't have any complaints and have merge the series now.

Thanks,
Bjorn

> Would be great to make some progress since I have a few more patch
> series ready to send out that build on top of this one (some more
> cleanup for MSM8916, converting MSM8916 to use rpmpd power domains, ...)
> 
> Thanks!
> Stephan
