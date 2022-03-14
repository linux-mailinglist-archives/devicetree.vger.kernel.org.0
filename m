Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09CCA4D79C9
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 04:51:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236085AbiCNDwb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Mar 2022 23:52:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235104AbiCNDwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Mar 2022 23:52:30 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 702AA201AA
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 20:51:21 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id mm23-20020a17090b359700b001bfceefd8c6so9955062pjb.3
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 20:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/Oqm6rMIEYZj78iej3CXr853eUOdIFYFax/LH5tNlQ4=;
        b=HT6ocqKuPFuAvF58pUg2kKkQKHEcOIlRgjO3OjMnA41k7rJvTugBLPWdbwSuGBrbm4
         hG8bU5/+Tu1cFFH1f2FY5KW8so58G5ibDdkgeGvmbU7IrG7m+zEc2Qb9KQjEb/gJhEIT
         aBkwd+ucbuLxui1U/Nj4IcMGywN++FYQg3HKrjR7+uWIC6csasTQROt8/LDExYa+b+/k
         r94RNe9ubcmA9iaq8GOsaFbhMLrBuxEOrBy8xAv+7B5i8Z/2IvGczVCTvZQKG12k7lFG
         x99atVsOaWmLwxUbSAmbva3PEDZ8OcxCQU3/IjX1YDj723fTn7pHr3E+3fi8T6Ow3LOx
         BPLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/Oqm6rMIEYZj78iej3CXr853eUOdIFYFax/LH5tNlQ4=;
        b=7BBzPeS0G3aERGMRlXodDd6PPSZa4e3u6Myq4SwXYOXN5/Wk8qd9eCa1qx08e5+15I
         i19yKDwnBSJOg8AQw1w9QfNd1h4u2bD9GNBs/JrW+VAwHHrlAz3GJrcrZ5vc4qx/Seys
         Z/0Vz7NyzHVV9nyEgWKHnqOEYzmC4EfEuMH/FbGr0MBdhd4POVDXqQVcxqPyYcZTS/Eu
         sqWhBCscK7RSM01eO3IAG9bJo2oYoVhWpw2fthx2SHSRaelmrTmtb6kwkartlZOCTrKs
         TnrNek5nEAVSQlvM7AG8NzQZwR+8ro6GlK37rW4KDPqOCJ7KSBI1UhzHVPpqcqid7G5f
         taiA==
X-Gm-Message-State: AOAM532zxm11bYkIGul02V805THg1gnZW5KRUpbnsc782U5LbfbmBqeN
        8bjOHGHTFk3yIZV3AExZYWVBBQ==
X-Google-Smtp-Source: ABdhPJzRDv5E6ORpbQOsmkNhWUYCtTFzJpR8SogiKKLlKw0MvmqA5q9cATA2IpIJX4OlGa3gdrfVgA==
X-Received: by 2002:a17:902:d284:b0:153:6463:253d with SMTP id t4-20020a170902d28400b001536463253dmr4632616plc.54.1647229880920;
        Sun, 13 Mar 2022 20:51:20 -0700 (PDT)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id t7-20020a056a0021c700b004f7916d44bcsm9179206pfj.220.2022.03.13.20.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Mar 2022 20:51:20 -0700 (PDT)
Date:   Mon, 14 Mar 2022 09:21:18 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>
Cc:     soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: spear13xx: Update SPI dma properties
Message-ID: <20220314035118.gbjbrwbsywxljjti@vireshk-i7>
References: <20220312180615.68929-1-singh.kuldeep87k@gmail.com>
 <20220312180615.68929-2-singh.kuldeep87k@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220312180615.68929-2-singh.kuldeep87k@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12-03-22, 23:36, Kuldeep Singh wrote:
> Reorder dmas and dma-names property for spi controller node to make it
> compliant with bindings.
> 
> Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>

What about a fixes tag ?

> ---
>  arch/arm/boot/dts/spear13xx.dtsi | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/spear13xx.dtsi b/arch/arm/boot/dts/spear13xx.dtsi
> index c87b881b2c8b..45f0b2a33e02 100644
> --- a/arch/arm/boot/dts/spear13xx.dtsi
> +++ b/arch/arm/boot/dts/spear13xx.dtsi
> @@ -284,9 +284,8 @@ spi0: spi@e0100000 {
>  				#size-cells = <0>;
>  				interrupts = <0 31 0x4>;
>  				status = "disabled";
> -				dmas = <&dwdma0 4 0 0>,
> -					<&dwdma0 5 0 0>;
> -				dma-names = "tx", "rx";
> +				dmas = <&dwdma0 5 0 0>, <&dwdma0 4 0 0>;
> +				dma-names = "rx", "tx";

Why does the order matter here since we have dma-names anyway, which
was correct earlier ?

>  			};
>  
>  			rtc@e0580000 {
> -- 
> 2.25.1

-- 
viresh
