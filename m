Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E84E318831
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 11:33:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230014AbhBKKbA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 05:31:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230111AbhBKK2t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 05:28:49 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFEA2C0613D6
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 02:28:08 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id v30so7013824lfq.6
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 02:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=NejqUWWPykk4TdZwl10ZMEDVjk+PJ3gF84rrbPz61dE=;
        b=uKDuBFvNOqEnjK3CCxfyyKE+NlOJKgeZCN9CU8fxDAZq/by8jVZybrXrU4+7z9E2SN
         No9l4XRrMgHdcm13491HTAXcw/YCb/OO9QBFDgnDwkRWiFYHSdMTRMYrWOFMyrK4kuev
         oqtVUvgFO4olLL95ac9PmUbxG79Vd2sv3zIGEJq0JiVBD2Yev/IoJglVXc99nCfLYyXi
         yozLfWwKrwsCsXuLjfyII5SLMHojUw99W6Kv5l3Bm9/ax+qPQ9O7V7qN8oD11WxQmW4Y
         oq4HSQWTOgGQaHJSilXM/ffv84ljwqBvQ+Eve/y3b07kKa8/9ovVVQyF9STiOFwRmVC/
         8fSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=NejqUWWPykk4TdZwl10ZMEDVjk+PJ3gF84rrbPz61dE=;
        b=H2mylkLHznTPvdLdf4Viwvgmtc2vEfJtrjO2EAKxX0Aj3bpg0cVU0hK2YP8Qcfy1Qx
         E/S0HNxFF1HnHkfR5npiKBd8t2G0LxpnNDQPkHT1l/tJRqqoyesPhDla4+pwucXwAIF1
         7pGE+g2tLrPzRk81C7dXxMEKW2G/1NSPJiuWtOAPJSs9Join9pwbqDZBrh7iiHVcc/KM
         5ydZTWoHaXpVm2Ptg6cb+Rgo5aI7NZVva9r/Sr3sFiDcS1ADKw4m2B/osBXbrb9PHWDN
         lBwwGOslGwxo8aqf7g40TeAyYRz8Gw1e1/4Lpx6PUkJ+6qrptLj2O3qpPqbpAVMZyzgu
         aVAQ==
X-Gm-Message-State: AOAM5306bPTMiVFSznPIi2eKVOwfZhj3wbQkhkJ3mFwQRQHsZhAGM8Et
        g/eEhYUjIuSFdKrTNdc6cfK71Q==
X-Google-Smtp-Source: ABdhPJwMxQMTOvKuVFnGx2jlLjLNlOdHexN0Ec7ndcAY4GqORL98DQwYs0BDDB88G/7GyBeaqi4qNw==
X-Received: by 2002:ac2:5b1e:: with SMTP id v30mr4290774lfn.230.1613039287156;
        Thu, 11 Feb 2021 02:28:07 -0800 (PST)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
        by smtp.gmail.com with ESMTPSA id a23sm119694lfl.6.2021.02.11.02.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 02:28:06 -0800 (PST)
Date:   Thu, 11 Feb 2021 11:28:05 +0100
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] dt-bindings: timer: renesas,cmt: Document R8A77961
Message-ID: <YCUGtbGl2ld0Tc5/@oden.dyn.berto.se>
References: <20201209195701.805254-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201209195701.805254-1-niklas.soderlund+renesas@ragnatech.se>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

I'm unsure if I should ping Daniel or Rob about picking up this patch as 
you both have picked patches for this in the past. Sorry for pinging 
both of you.

On 2020-12-09 20:57:01 +0100, Niklas Söderlund wrote:
> Add missing bindings for M3-W+.
> 
> Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> ---
>  Documentation/devicetree/bindings/timer/renesas,cmt.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
> index 428db3a21bb9c384..d16b5a243ed48eef 100644
> --- a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
> +++ b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
> @@ -74,6 +74,7 @@ properties:
>                - renesas,r8a774e1-cmt0     # 32-bit CMT0 on RZ/G2H
>                - renesas,r8a7795-cmt0      # 32-bit CMT0 on R-Car H3
>                - renesas,r8a7796-cmt0      # 32-bit CMT0 on R-Car M3-W
> +              - renesas,r8a77961-cmt0     # 32-bit CMT0 on R-Car M3-W+
>                - renesas,r8a77965-cmt0     # 32-bit CMT0 on R-Car M3-N
>                - renesas,r8a77970-cmt0     # 32-bit CMT0 on R-Car V3M
>                - renesas,r8a77980-cmt0     # 32-bit CMT0 on R-Car V3H
> @@ -89,6 +90,7 @@ properties:
>                - renesas,r8a774e1-cmt1     # 48-bit CMT on RZ/G2H
>                - renesas,r8a7795-cmt1      # 48-bit CMT on R-Car H3
>                - renesas,r8a7796-cmt1      # 48-bit CMT on R-Car M3-W
> +              - renesas,r8a77961-cmt1     # 48-bit CMT on R-Car M3-W+
>                - renesas,r8a77965-cmt1     # 48-bit CMT on R-Car M3-N
>                - renesas,r8a77970-cmt1     # 48-bit CMT on R-Car V3M
>                - renesas,r8a77980-cmt1     # 48-bit CMT on R-Car V3H
> -- 
> 2.29.2
> 

-- 
Regards,
Niklas Söderlund
