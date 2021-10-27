Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2208843D36D
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 23:02:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240887AbhJ0VEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Oct 2021 17:04:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240757AbhJ0VEa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Oct 2021 17:04:30 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A216CC061767
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 14:02:04 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id m11so493966oif.13
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 14:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=R/5mqaAD7u8YJi+R3Jae+PBQwDj790p4urFkBQ9hMFo=;
        b=S+UqJ+m8jTaSYhorC+Syd7X4CBX+ACkq0K53U150PJZr9KjKvCHPTNCgzhr2HXclZq
         L2h2Ls+caGi3aAV8Avz6WL4SMICh5WwVpLP96WAJSvzIl326jysPNqo4YR2HLn7O4B/O
         3+wAqkoyuqzdBmCRaWutqsf+NZkmadJiyYAKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=R/5mqaAD7u8YJi+R3Jae+PBQwDj790p4urFkBQ9hMFo=;
        b=q1hPvRjkQ2JyN+HBNGmzgYacFJOj2aL74PGiRfCPAMOSQuMUSgSHWn+k8Vtgm8EFDE
         /GWxlfdR6Xves2zuvU+fDMkunQUjLb9icyMCMBcOTQSJ1pFld7Vt6crATZJXDXdJh/0B
         f2Pq7Ki9CAIWom9aE5PLwvGClZTlATewrdF2iuLi273zEIIY4sy7Jz6vlzUN5Qk0cjJI
         iaV+8s1zatOZHfOyjxJejSOVl6DIobY4GqmpEBZgemixVcR3QmyXcfbPEM+VAxmtzY+K
         ypQw9KwKXmy7si/kUeJAZLi8EPep9+wL5uVwfF84+/Uwqp+M0bHcNPW7SR+/3uZGCdip
         Hnnw==
X-Gm-Message-State: AOAM533Po1xrSYQuUm3ESHPvcH5S8MOJMVD8gGfxG1e8od7wIctL3Iyo
        9G/M90lig574K45n8NJX1TXXlLJ0DVTUbXZK2rBwmw==
X-Google-Smtp-Source: ABdhPJzHgjm2QUB1Kb2T5goQlClqfwdgymvtu7rf5vHGAkVJ+BI2qr3BG5waUuMOpv+n1SBt2k7GstXBcM56lBVH6xk=
X-Received: by 2002:a05:6808:a1d:: with SMTP id n29mr5417189oij.164.1635368524003;
 Wed, 27 Oct 2021 14:02:04 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 Oct 2021 14:02:03 -0700
MIME-Version: 1.0
In-Reply-To: <1635250764-13994-3-git-send-email-srivasam@codeaurora.org>
References: <1635250764-13994-1-git-send-email-srivasam@codeaurora.org> <1635250764-13994-3-git-send-email-srivasam@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 27 Oct 2021 14:02:03 -0700
Message-ID: <CAE-0n521XmdKMcsf+jhjjoJuTo0C4JvZZ7dRqU3ZxkTU9hu+kg@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: soundwire: qcom: Add bindings for RX
 and TX cgcr register control
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        perex@perex.cz, plai@codeaurora.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org,
        tiwai@suse.com
Cc:     Venkata Prasad Potturu <potturu@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-10-26 05:19:23)
> Update description for RX and TX cgcr register control property required for
> soundwire version 1.6.0 and above.
>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> Co-developed-by: Venkata Prasad Potturu <potturu@codeaurora.org>
> Signed-off-by: Venkata Prasad Potturu <potturu@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/soundwire/qcom,sdw.txt | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
> index b93a2b3..91b9086 100644
> --- a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
> +++ b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
> @@ -150,6 +150,15 @@ board specific bus parameters.
>                     or applicable for the respective data port.
>                     More info in MIPI Alliance SoundWire 1.0 Specifications.
>
> +- qcom,swrm-hctl-reg:
> +       Usage: optional
> +       Value type: <prop-encoded-array>
> +       Definition: The base address of SoundWire RX and TX cgcr register
> +                   address space.

cgcr is "clock gate control register"?

> +                   This is to update soundwire master rxtx cgcr register field to
> +                   make clock gating control as software controllable for RX path and
> +                   TX path which is required for SoundWire version 1.6.0 and above.

Nak. Use clk APIs to control clks, not direct MMIO writes into a
different device.
