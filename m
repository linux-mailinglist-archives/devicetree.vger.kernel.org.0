Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2065C1E124B
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2020 18:02:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388211AbgEYQB7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 May 2020 12:01:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391155AbgEYQB7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 May 2020 12:01:59 -0400
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com [IPv6:2607:f8b0:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0A80C05BD43
        for <devicetree@vger.kernel.org>; Mon, 25 May 2020 09:01:58 -0700 (PDT)
Received: by mail-il1-x144.google.com with SMTP id j3so17634064ilk.11
        for <devicetree@vger.kernel.org>; Mon, 25 May 2020 09:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ndTklb7/SAZk4bUIoOKID+ziy4QQzei1SxmS+QITaNQ=;
        b=Okfa0myw3gWvHcsvCG+LrNu8vo8bECwM1NcFblymMQAiGT7+y9eHEr8NC5z6+N8JzK
         mzlw3h7rltmPg5jkXMl04Me9kIbZlJYjsG8Urh65mRdyktu03LLIpv77czeeIpVw8Sru
         x6DqR6REiEic6JH/kXXTOsijnyICa34jR95UnPtu86+3N8w52mTLttUjUQRtPFCY/AZA
         vG6P/pea15LJdJxDU3EvCTPMiuu5DCbxndnPe4cnBnNZF2ZxKEZ4qbok33u/ix0NGgf/
         NluPSBy63jZnk1Nbp5nADhjP36FybTKqPGJNjjHqjN3ow+fOetbQDP+cAHrBoMqBGVCR
         wFmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ndTklb7/SAZk4bUIoOKID+ziy4QQzei1SxmS+QITaNQ=;
        b=FC0tyQANUlFdPbuSZAUwYyNTqRUiGAyIG8PvL133FXdTDRXac5Wno87B8WEW0P1f4d
         rBtkj1NrxnpmgEht0/pHv2uBWsZ3Szo0m8TFI9EObjmC3AxjQ1Nox+rfBCjPlyQyjtNq
         VSKOlNN5IXcxKywWQhGbNYi12wZtPLvzQXKy6PyZLIK4u6K25oI8FMuTaWqFO/e0vOas
         CworK8t3FNsaonr/Q2XMtOydr66WZd+V+MwOt0fX7mtv7AsI3sk/OQPPZG2ZtVnBwfyI
         soqC/ZLAkze0eeEouRsg+q3zXGzh28aGMYEYpVI/6blOD4EHQVIp0lFfxJNszrty8rPf
         o1pA==
X-Gm-Message-State: AOAM53092v2z+pOfmCpQRf7AIL5Ib4IqzfQW2Bk4BlGzt34EFoN0Z199
        bE5RpljXHYJrwH6Wdc4botsBzbhwrE8xp8EcUKH4cQ==
X-Google-Smtp-Source: ABdhPJzdCyCnVR8DkEpN7qEDDAtmWOw4EM3xPxchVD4sgi/TBYuoYYkIjzb27DvgzVuornpYLqRjO0idnxc4E75ZQnI=
X-Received: by 2002:a92:89cf:: with SMTP id w76mr24457702ilk.57.1590422517999;
 Mon, 25 May 2020 09:01:57 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590171891.git.saiprakash.ranjan@codeaurora.org> <ccfe8a5ede0523436508e31085322ccdab8f972a.1590171891.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <ccfe8a5ede0523436508e31085322ccdab8f972a.1590171891.git.saiprakash.ranjan@codeaurora.org>
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
Date:   Mon, 25 May 2020 10:01:47 -0600
Message-ID: <CANLsYkwhjbyspLjbnp4XYCcRNFUkBs46QjWYBTza1scGDtNSmQ@mail.gmail.com>
Subject: Re: [PATCHv3 2/2] dt-bindings: arm: coresight: Add optional property
 to replicators
To:     Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc:     Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 22 May 2020 at 12:37, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Add an optional boolean property "qcom,replicator-loses-context" to
> identify replicators which loses context when AMBA clocks are removed
> in certain configurable replicator designs.
>
> Reviewed-by: Mike Leach <mike.leach@linaro.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index 846f6daae71b..b598a5f0037d 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -121,6 +121,12 @@ its hardware characteristcs.
>         * interrupts : Exactly one SPI may be listed for reporting the address
>           error
>
> +* Optional property for configurable replicators:
> +
> +       * qcom,replicator-loses-context: boolean. Indicates that the replicator
> +         will lose register context when AMBA clock is removed which is observed
> +         in some replicator designs.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> +
>  Graph bindings for Coresight
>  -------------------------------
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>
