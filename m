Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EA2734E52C
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 12:14:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231725AbhC3KNg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 06:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231552AbhC3KN0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 06:13:26 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76841C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 03:13:26 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id v4so15628177wrp.13
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 03:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N3QQZsZflFucV4DURyJuTTDXCytw9UwZ9R/7WDERQAY=;
        b=VAu7ljFJ5YxUQYXvK3YApCUAZPjRwxWtlRxoyTcN+yu/AYrSiHKCeymNEtac1uQM50
         VxTpZQrTFhDsK9W4mMOXnxwikjDQf/Z4DONt4xjN4jEuvOPZprzh4VwDPHIh2ShDqp1K
         8IfGb+B8aj6iB18HmuGX4nZ7C53WZyJRKsr4EHYC2my/lM9mprVACqCUlbOPiPsk0/OK
         GK0uvxh98oaOoNjvTZn1MhCdpfJSuWH7MMp0YQpvZwwzAZg/GhMOH0oE/OCG36UqkWUy
         soMwodUUj3I704VdadpB+MCurfApd6ovcMATGx/0p8jcE9LlF1w35UytgyfF5y5ZtSVN
         rp2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N3QQZsZflFucV4DURyJuTTDXCytw9UwZ9R/7WDERQAY=;
        b=DqVXw3YhPBT0GEWoDeMtVWyy9XJuHeiLth229y+Be48GGTFWh2gTdWmE+0mBMBo190
         IpZHM26RRovSsCS8K2kGeHU24s33K26xH+5GX1VMCEX0cvAC7SsfrQNfmeyEGmJE8YAK
         Zk7q9YY2+P8W06RTFau9p0PXupuqQCg76C4kOaqXpJCCmn6o7sX9QNqGjw1Z7SSKL0oD
         mLT/gQBMAj3XaC2ZQQq42yKWe6+V6ygHbhAK9B3XEu4joqMYtEUPUkwfAQ3wtj5UzNt6
         BI/U2qelur8EtLnIxwj2D5DoXEuQ5/LqXuE/3XWtOSnDOhuaUwtW67dvQPI3dYT2TMzI
         rH3Q==
X-Gm-Message-State: AOAM532o21CLXq8HIZY1RZD+pMFQcih4wBq0oghgjuO6bzefoKka925b
        H5BkvB+7BhH0k84sXIbH3XE=
X-Google-Smtp-Source: ABdhPJz+5cJuChn/BuaV/VBt2uygsuyZTcVXyKjCMuPLplgYeO+RF82T/UyEaK7IKhMZoBkM1DzLew==
X-Received: by 2002:adf:f2c3:: with SMTP id d3mr33354355wrp.380.1617099205219;
        Tue, 30 Mar 2021 03:13:25 -0700 (PDT)
Received: from ziggy.stardust ([213.195.126.134])
        by smtp.gmail.com with ESMTPSA id c11sm33777920wrm.67.2021.03.30.03.13.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 03:13:24 -0700 (PDT)
Subject: Re: [PATCH] arm: mediatek: dts: activate SMP for mt6589
To:     Boris Lysov <arzamas-16@mail.ee>, Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20210314023735.052d2d35@pc>
From:   Matthias Brugger <matthias.bgg@gmail.com>
Message-ID: <cbd0a352-a78d-3cbc-ca1d-489206439ef9@gmail.com>
Date:   Tue, 30 Mar 2021 12:13:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210314023735.052d2d35@pc>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 14/03/2021 00:37, Boris Lysov wrote:
> This simple patch activates SMP for mt6589 by adding the missing
> "enable-method" property. After applying this patch kernel log
> indicates all cores are brought up:
> 
> [    0.070122] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> [    0.071652] Setting up static identity map for 0x80100000 - 0x80100054
> [    0.072711] rcu: Hierarchical SRCU implementation.
> [    0.073853] smp: Bringing up secondary CPUs ...
> [    0.133675] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
> [    0.193675] CPU2: thread -1, cpu 2, socket 0, mpidr 80000002
> [    0.253675] CPU3: thread -1, cpu 3, socket 0, mpidr 80000003
> [    0.253818] smp: Brought up 1 node, 4 CPUs
> [    0.256930] SMP: Total of 4 processors activated (7982.28 BogoMIPS).
> [    0.257855] CPU: All CPU(s) started in SVC mode.
> 
> Before this change CPU cores 1-3 didn't start and the following lines
> were in kernel log:
> 
> [    0.070126] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> [    0.071640] Setting up static identity map for 0x80100000 - 0x80100054
> [    0.072706] rcu: Hierarchical SRCU implementation.
> [    0.073850] smp: Bringing up secondary CPUs ...
> [    0.076052] smp: Brought up 1 node, 1 CPU
> [    0.076678] SMP: Total of 1 processors activated (2000.48 BogoMIPS).
> [    0.077603] CPU: All CPU(s) started in SVC mode.
> 
> Signed-off-by: Boris Lysov <arzamas-16@mail.ee>

Applied to v5.12-next/dts32

Thanks a lot, hope to see more contribution from you for this platform :)
Matthias

> ---
>  arch/arm/boot/dts/mt6589.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/mt6589.dtsi
> b/arch/arm/boot/dts/mt6589.dtsi index f3ccb70c0779..70df00a7bb26 100644
> --- a/arch/arm/boot/dts/mt6589.dtsi
> +++ b/arch/arm/boot/dts/mt6589.dtsi
> @@ -17,6 +17,7 @@
>  	cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> +		enable-method = "mediatek,mt6589-smp";
>  
>  		cpu@0 {
>  			device_type = "cpu";
> 
