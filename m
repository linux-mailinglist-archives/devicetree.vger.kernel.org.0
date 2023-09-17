Return-Path: <devicetree+bounces-874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 263557A3679
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 17:57:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7CE228303A
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 15:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F0465381;
	Sun, 17 Sep 2023 15:57:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D2D4A39
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 15:57:28 +0000 (UTC)
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE9A6F7;
	Sun, 17 Sep 2023 08:57:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1694966243; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=rIk7TlBdMKfJNFT1jN4WPhHe0RFUXivMn4KvpcwQOxE8hoHxL+F4t6zBOCHOA7T+VX
    2eVh6CNjteWk6e/95iWcubVIbbTwBn3zrnfCz6AoQpezILRkoQZ3Q2YlE8YqgrDyme7u
    KPO4FrW0DNz/TgQ+zkcbaTNlUZ4BILIKL6BsHjr2prpN/c+flpZQnHKXqK/fp6vdRCGa
    gto6tgs1xXxg8GaZMveNHOj3w7P9qj8Q+uuIV/9Fob8XwZEcaSbBIBKfd+uxkz/1VMm2
    0h4SWUv6ra4pzyPR2V5LuoRbNFfy+uBIIvHzbznBcNIEm9HV3BPVP8EvFLF2SCuGuiyk
    LfNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1694966243;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=+hOahhg/bjQ7UgAZAUN277QqVVmNoL2fBRA59YmpkuE=;
    b=Qi+FuEQtetogax5r1GS5RZShT/bg2kKjsvjJxc7oJXDaH1N/CAXckZVfPjdO7nDQG1
    fAwRLHFt88mMlPLGcpkC9YN/eXyypeBQjboOAVHaZiDSMuYg5SuEhiPJeLoZ2k5mVezg
    odqiyi1kXyj8objwuh8dC56Oi36FNzr3O/goxVGuKdeEdEm7rVw23XVSABbUAVP6RUw+
    wFjSfdU6cwIKidZcRfal6MrhIphSjf4OXKOwdohwi2BYv9tzx1a38qZAZ6SWWkYVuI3M
    KFh6Lwbq4o+N5te8AnQ3ud5Pc79d6HdjxenbKj/G7mlQxPwNG/vkWW+PwWAhzP9TSNkJ
    OAzA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1694966243;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=+hOahhg/bjQ7UgAZAUN277QqVVmNoL2fBRA59YmpkuE=;
    b=RudQnShX4Aj2Dgk+lfP/qh4RucXUsPvHzOgerBCdP6wXch9WKI0Ooh7tptqrELXj82
    WerR3UuuYSwcv5crxrQYDoNGfLUSEU6ikPhnTiUUsmTWV9wMTJ0Wy8h55k9nznoMIEH8
    N+1MEjmhqvIs71WIHzh0hDhEIA5o2CousVQhI5hRn4JnWrlEY1M04L7fOyt3ZmAG/w5L
    kPUmYQeSdvXgTfpR3QCKwJjHMmRnfeBUwS2LzwYp6AAfOCFO0+gsUWtHaplbCzCmD0Pk
    y+ojhCupQqLhLH7dmnzY+jja3Mmu5P4mC7tOgdjfvJ99UxtA2qwDV0jhkCgKiMv2SwLH
    YPhA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1694966243;
    s=strato-dkim-0003; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=+hOahhg/bjQ7UgAZAUN277QqVVmNoL2fBRA59YmpkuE=;
    b=l43qDYia+6FHx/GkVmO9TEkw0ZngqSoUxiL1zMqEHDnaCkYivaM8DVcjuuS9lhRhLc
    8ct3o74XVhaO5zUtpVAw==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJD4paA8p+L1A=="
Received: from gerhold.net
    by smtp.strato.de (RZmta 49.8.2 DYNA|AUTH)
    with ESMTPSA id R04c57z8HFvNB54
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sun, 17 Sep 2023 17:57:23 +0200 (CEST)
Date: Sun, 17 Sep 2023 17:57:16 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: msm8939: Fix iommu local address range
Message-ID: <ZQch3NF2mXbuNq4v@gerhold.net>
References: <20230917140039.25283-1-quic_gkohli@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230917140039.25283-1-quic_gkohli@quicinc.com>
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Sep 17, 2023 at 07:30:39PM +0530, Gaurav Kohli wrote:
> Fix the apps iommu local address space range as per data sheet.
> 
> Fixes: 61550c6c156c ("arm64: dts: qcom: Add msm8939 SoC")
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>

Thanks!

Reviewed-by: Stephan Gerhold <stephan@gerhold.net>

> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
> index 6e24f0f2374f..5a6b1942cfaa 100644
> --- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
> @@ -1447,7 +1447,7 @@
>  		apps_iommu: iommu@1ef0000 {
>  			compatible = "qcom,msm8916-iommu", "qcom,msm-iommu-v1";
>  			reg = <0x01ef0000 0x3000>;
> -			ranges = <0 0x01e20000 0x40000>;
> +			ranges = <0 0x01e20000 0x20000>;
>  			clocks = <&gcc GCC_SMMU_CFG_CLK>,
>  				 <&gcc GCC_APSS_TCU_CLK>;
>  			clock-names = "iface", "bus";
> -- 
> 2.17.1
> 

