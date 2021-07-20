Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16DFC3CFEC1
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 18:08:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233147AbhGTP1w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 11:27:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239838AbhGTPSv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jul 2021 11:18:51 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52C8FC0613DB
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 08:59:28 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id c197so24960569oib.11
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 08:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3bYYSvolabqesH6HHzk8H0SMsuQoJjQhMgS236zxUEQ=;
        b=AvTz0BF73p7p7q+iRZ6q+1CbYpehl5FXWoRXcFlyd2NXzKLW8WWVq38f6M8n+E1bDW
         npnGidT02q0MPXKnbEfQgPd0dlOW3iuMFfVmYUuytTXxgKPaAIRvM48UkySf8ktoCTmS
         3B1AW8idb6ilSO3l1Vo1nAqKknvqmzWvyKBIR7HWr2xPL2QiIG+sJPwimq3GWj231k2f
         L7HdeSuE3uVdqTMCJtPCFLnL9TFUzVwlsAZhbcu+9tFV3tgt8TiZbC2gO9wUZuWh1xEu
         RFe/4UyJFpFnjcsJ/5ZdBdY2qjiZ2hDO2M/xFXKKYdVvE4uFwt3eHJ7cc4LheszoeMwh
         l5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3bYYSvolabqesH6HHzk8H0SMsuQoJjQhMgS236zxUEQ=;
        b=VUfuZ+MpQuYASD18SQsURrqSsPvVFoOhwkV66L+0O3skO1jzsqm72fo0AX4vEq0fCx
         6muDoPL0MRaVvFb2EqK/YFvEkDCbUAeD+01kaOGU8DzT+4Eq0J0ua0fPVsNWR8jS5lLO
         eoxqLpdRfsJI+v5Xe14gh83apoJCCvRNl/Z3slpgq06rhhz8gatlilZBtF2lxL41sY24
         DJHMg7Wz26gfbXexrJwVtnihGpvJDQetteVHPKHOaytr7yGn33wmvTr3wUTwG2zPxqbE
         6cP/XdpgrHhcRLEke3u0jnniv82A94Vk2ktBSDrTZIgc5vBbFssiNbKcg/4piWARCo5X
         kfnw==
X-Gm-Message-State: AOAM533y2ZWUzGkbbPFaZEkWemCtm8jrGZniShUqJhUpoJGgclgv1VEd
        BstygsfuTsa5VVXKMUuTsxnhAg==
X-Google-Smtp-Source: ABdhPJxDvfL0NyoM90fcGCn8H+ACZoTlz62ASCTNkVWnQ5pADpi8QHChB5kbAY5iOVJ8knWxzsbjYw==
X-Received: by 2002:aca:fdc1:: with SMTP id b184mr21581758oii.101.1626796767607;
        Tue, 20 Jul 2021 08:59:27 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o26sm4252216otk.77.2021.07.20.08.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 08:59:27 -0700 (PDT)
Date:   Tue, 20 Jul 2021 10:59:25 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     Alex Elder <elder@linaro.org>, agross@kernel.org,
        robh+dt@kernel.org, evgreen@chromium.org, cpratapa@codeaurora.org,
        subashab@codeaurora.org, elder@kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 0/3] arm64: dts: qcom: DTS updates
Message-ID: <YPby3eJmDmNlESC8@yoga>
References: <20210719212456.3176086-1-elder@linaro.org>
 <162679080524.18101.16626774349145809936.git-patchwork-notify@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <162679080524.18101.16626774349145809936.git-patchwork-notify@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 20 Jul 09:20 CDT 2021, patchwork-bot+netdevbpf@kernel.org wrote:

> Hello:
> 
> This series was applied to netdev/net-next.git (refs/heads/master):
> 

David, Jakub, can you please revert/drop the two "arm64: dts" patches
from the net-next tree?

DTS patches are generally merged through the qcom and ultimately soc
tree and I have a number of patches queued up in both sc7180 and sc7280
that will cause merge conflicts down the road, so I would prefer to pick
these up as well.

Regards,
Bjorn

> On Mon, 19 Jul 2021 16:24:53 -0500 you wrote:
> > This series updates some IPA-related DT nodes.
> > 
> > Newer versions of IPA do not require an interconnect between IPA
> > and SoC internal memory.  The first patch updates the DT binding
> > to reflect this.
> > 
> > The second patch adds IPA information to "sc7280.dtsi", using only
> > two interconnects.  It includes the definition of the reserved
> > memory area used to hold IPA firmware.
> > 
> > [...]
> 
> Here is the summary with links:
>   - [net-next,1/3] dt-bindings: net: qcom,ipa: make imem interconnect optional
>     https://git.kernel.org/netdev/net-next/c/6a0eb6c9d934
>   - [net-next,2/3] arm64: dts: qcom: sc7280: add IPA information
>     https://git.kernel.org/netdev/net-next/c/f8bd3c82bf7d
>   - [net-next,3/3] arm64: dts: qcom: sc7180: define ipa_fw_mem node
>     https://git.kernel.org/netdev/net-next/c/fd0f72c34bd9
> 
> You are awesome, thank you!
> --
> Deet-doot-dot, I am a bot.
> https://korg.docs.kernel.org/patchwork/pwbot.html
> 
> 
