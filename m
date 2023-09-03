Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2EA5790F37
	for <lists+devicetree@lfdr.de>; Mon,  4 Sep 2023 01:32:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346208AbjICXc2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Sep 2023 19:32:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235099AbjICXc2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Sep 2023 19:32:28 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0210FF7
        for <devicetree@vger.kernel.org>; Sun,  3 Sep 2023 16:32:24 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1c0ecb9a075so1996985ad.2
        for <devicetree@vger.kernel.org>; Sun, 03 Sep 2023 16:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1693783943; x=1694388743; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yuGz56kymTLrCoZI+ChWHqZyHL6B+1i+ekQoT2NPSZI=;
        b=A/ZFSFvLLXAYA3ISdazNsRyiV+HguSrbUzyeVQMt4znBLhpY0beVA6Lpw0KKbmIpa8
         Fj4IxPdoaw8En2EyJvi0uprRJoO7M3s9/fOBHRD1T/u/G3MSCpFOrgpDM7+MR7Djnn8h
         K+6yXnlNs8oCxczNrXxb/Ck7sTZzqPZO/9NMQ9wYmX3S30js1tOuoes4+4UFUsYiu8iT
         yaDINdVu07F3U4KDRhDZA69FHyvS91R6ELkI9IVS9j/W+AtQTQXU0iA80bjxbpFO/iGA
         FSL1zGEr7T7aQizBglpHWBTbABCOYcVzOg8j5csyrlTYynkqqfZZRoeLk4DuxXlp0/Ou
         EqHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693783943; x=1694388743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yuGz56kymTLrCoZI+ChWHqZyHL6B+1i+ekQoT2NPSZI=;
        b=g9JHDtny4csQZbu+4JgIP885A/ZpUJzcm5xlZXaD+oG45fJ0PYWlzczn/E1VUIsiZx
         se1ZQTCmfLstnW7FnsWlcQXmRM5LZU+TypzlFnjc99u6YTe2YjqhTn8ef06YExt3/KzZ
         FVA89SgeiKCIKWRCj9ANt1EvBbJIXmlldc1lCfzfMy+ue3AhXpnZIET2M9CM2/eI5XvQ
         8mc5epNjzj5+a879fkOPGfOO+Xew4xJbOF0Mt1lDlomu3yLtJT9DHHKVcLRwZpha8qHN
         /Dx6sUI397KloMziIj77w6v4Vy8SF57yT6HiSJ17OISs5cngaMnmSDFCU5Yy/BxDWD3X
         C0Jw==
X-Gm-Message-State: AOJu0YwJljch0gXn3z4IijaLe0t+Z1FW9zVY7jGlirarFP2G1KXw1rzA
        ocx9xALJuFF+yhybhVIUJTljuA==
X-Google-Smtp-Source: AGHT+IHye4zyPu83uTeq8XlE5MTwzOCK/ILEs0lYZqh7l5xWqogY5ttB7Jb1az5XsaQE6P8ttglDbg==
X-Received: by 2002:a17:902:c449:b0:1bf:34fb:3085 with SMTP id m9-20020a170902c44900b001bf34fb3085mr5814280plm.14.1693783943431;
        Sun, 03 Sep 2023 16:32:23 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:e0eb:2a3d:8122:b588])
        by smtp.gmail.com with ESMTPSA id x18-20020a17090300d200b001b2069072ccsm6408715plc.18.2023.09.03.16.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Sep 2023 16:32:23 -0700 (PDT)
Date:   Sun, 3 Sep 2023 16:32:21 -0700
From:   Drew Fustini <dfustini@baylibre.com>
To:     Jisheng Zhang <jszhang@kernel.org>
Cc:     Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
        Conor Dooley <conor@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        inux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: thead: set dma-noncoherent to soc bus
Message-ID: <ZPUXhe7ogxvaB6Eg@x1>
References: <20230820115353.1962-1-jszhang@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230820115353.1962-1-jszhang@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 20, 2023 at 07:53:53PM +0800, Jisheng Zhang wrote:
> riscv select ARCH_DMA_DEFAULT_COHERENT by default, and th1520 isn't
> dma coherent, so set dma-noncoherent to reflect this fact.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index 56a73134b49e..58108f0eb3fd 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -139,6 +139,7 @@ soc {
>  		interrupt-parent = <&plic>;
>  		#address-cells = <2>;
>  		#size-cells = <2>;
> +		dma-noncoherent;
>  		ranges;
>  
>  		plic: interrupt-controller@ffd8000000 {
> -- 
> 2.40.1
> 

Tested-by: Drew Fustini <dfustini@baylibre.com>

I tried this on the BeagleV Ahead. They system booted as expected and I
did not notice any problems in the boot log.

Are there other patches such as the dwmac series that I should test this
with?

Also, I think this might have missed patchwork since the original email
had a typo for the list, so it might be good to resend it?

Thanks,
Drew
