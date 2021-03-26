Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDE9634A102
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 06:29:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229551AbhCZF2Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 01:28:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbhCZF2E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 01:28:04 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69FFDC0613B1
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 22:28:04 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id ay2so358341plb.3
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 22:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Wg6jUsg0M3YkhkdRzAVV3NbGB+vpbZqU99QuVAslRAA=;
        b=xvkqgsknbTJsMGYLWLXMOMuDyGiIL+HYSOxfmlrzC8pH9prf/c17KrqMLTezyaLY5z
         UFrUHgePtcdCwNfKI/L5B3dkzOP309lMmgBEaoDoimwnvAUvAVram5bw1b5c4IsOW36L
         glKK55/C9x9q+UH2sTromVPOCqZJW6gK1S5a/mg9hwfKvXSSDSO+D1rkgNDrtzKAXCCw
         4Zlnln6+vmLQC0vhK99ogtcJPKADJOaaTYCnJhUcHp97Qgr5m3+J/+bxPBLMgi/a9Tf5
         njtm414zYbzcDpKn+6GdLoMnWlIxYSvVVnNN6w+DU/bP/6re1n5CAFD4Cg0zDSf7em2Z
         sJ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Wg6jUsg0M3YkhkdRzAVV3NbGB+vpbZqU99QuVAslRAA=;
        b=iKQFCiJPq2SOhzDVRRx63CtCHObEq5iqQxDuGXC8MVkkAihcKq2Zyz7sQoV1KSenWV
         3eNl9GDYm2hsX/TTvRfl3AUaFvIKFW+lGnpMdBgKqIvBkbH+CQzHlcoi0lNs/eS+xIGb
         eHn5+QqWNCDDVB+WC3VDh5Kq7JVP9lj0LK7vsQhFQCrZrYIhLFGC9GKFdicFCSI8RILq
         45PZ1WHVr2hpJPaczVVyOBjnMyPyeUkmNz2M8EORAbdUBshBA2e3nLgmplbdsF638GTy
         wnkJEcp/4d+pVSELkL6YoeQ0ve2OChEzr1SK07t3tcg0VDamLurmlR+Io5/obguuxa9R
         RBDA==
X-Gm-Message-State: AOAM530sBUnAqpzrbjjNQmvWedzExEQ8mQZ5Mg2CBfuY1q7Lgs2E2TcV
        kZUejQtBir9KeRm6sFJnAfSgxA==
X-Google-Smtp-Source: ABdhPJwpBoVDsdAvwPB+8Iw81E4aSQxXUKlwva1pexONAu6KmF6kD8g/LRd8g3u/J3em4uVil+Wm7w==
X-Received: by 2002:a17:90b:358:: with SMTP id fh24mr12111965pjb.109.1616736483711;
        Thu, 25 Mar 2021 22:28:03 -0700 (PDT)
Received: from localhost ([136.185.154.93])
        by smtp.gmail.com with ESMTPSA id n38sm367408pgb.2.2021.03.25.22.27.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 22:27:58 -0700 (PDT)
Date:   Fri, 26 Mar 2021 10:57:56 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Seiya Wang <seiya.wang@mediatek.com>
Cc:     "Rafael J . Wysocki" <rjw@rjwysocki.net>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com
Subject: Re: [PATCH 2/2] dt-bindings: cpufreq: update cpu type and clock name
 for MT8173 SoC
Message-ID: <20210326052756.ozalnigxh7x3hvqr@vireshk-i7>
References: <20210326031227.2357-1-seiya.wang@mediatek.com>
 <20210326031227.2357-2-seiya.wang@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210326031227.2357-2-seiya.wang@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26-03-21, 11:12, Seiya Wang wrote:
> Update the cpu type of cpu2 and cpu3 since MT8173 used Cortex-a72.
> 
> Signed-off-by: Seiya Wang <seiya.wang@mediatek.com>
> ---
>  Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek.txt | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek.txt b/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek.txt
> index ea4994b35207..ef68711716fb 100644
> --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek.txt
> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek.txt
> @@ -202,11 +202,11 @@ Example 2 (MT8173 SoC):
>  
>  	cpu2: cpu@100 {
>  		device_type = "cpu";
> -		compatible = "arm,cortex-a57";
> +		compatible = "arm,cortex-a72";
>  		reg = <0x100>;
>  		enable-method = "psci";
>  		cpu-idle-states = <&CPU_SLEEP_0>;
> -		clocks = <&infracfg CLK_INFRA_CA57SEL>,
> +		clocks = <&infracfg CLK_INFRA_CA72SEL>,
>  			 <&apmixedsys CLK_APMIXED_MAINPLL>;
>  		clock-names = "cpu", "intermediate";
>  		operating-points-v2 = <&cpu_opp_table_b>;
> @@ -214,11 +214,11 @@ Example 2 (MT8173 SoC):
>  
>  	cpu3: cpu@101 {
>  		device_type = "cpu";
> -		compatible = "arm,cortex-a57";
> +		compatible = "arm,cortex-a72";
>  		reg = <0x101>;
>  		enable-method = "psci";
>  		cpu-idle-states = <&CPU_SLEEP_0>;
> -		clocks = <&infracfg CLK_INFRA_CA57SEL>,
> +		clocks = <&infracfg CLK_INFRA_CA72SEL>,
>  			 <&apmixedsys CLK_APMIXED_MAINPLL>;
>  		clock-names = "cpu", "intermediate";
>  		operating-points-v2 = <&cpu_opp_table_b>;

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
