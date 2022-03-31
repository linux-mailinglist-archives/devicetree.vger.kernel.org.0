Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 176D84ED382
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 07:52:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230126AbiCaFyi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 01:54:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230108AbiCaFyg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 01:54:36 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8CAAFD00
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 22:52:49 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id f3so19738863pfe.2
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 22:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=Q6clqOzL4awTIe/Myi39wRCRddQabktOnET1sZMtKgY=;
        b=B81P5y2U1gn7+cASnfMbrgp0W8zkDkgOFfGJOnrixf9+HQ9mHNd+lpoDfJpadxfarb
         f/XIU9dBB2mhfQK8VUUYpmZnGiGXL+m1JSmCC36GYEmT2072Dfz2tzGmKLcpdGjfDHcE
         h7mWnH+VChvFP3p5jfhUBgtALMdJKloZOi6N2T/OqkYVnTWg/xcL70bQ4eeqbj2te4n6
         zd6dPnPJPxfa5P+ZIEzloF3XO/mfkXhgRpKIdntrrHeIrh1ZYVfh4qeayfoIuEiHo6lF
         ctNPzE8cpkGN81UnozSGG1eXCrFRjnKeK2hQlvxCKfjsbnHrwcRV5DkR304bDGybzRfd
         U5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=Q6clqOzL4awTIe/Myi39wRCRddQabktOnET1sZMtKgY=;
        b=Ww1w5GnoRykCXN0Ga83AaFZofEpJjuDHLIgXGNVZUFzma5WLO2OsVMxO0gSSS/vCaI
         77WpxUE3mlhddUv5mol6iuWnoLscA+HXsQpjy1fU8vq5ntWWCPuALoALG6EEomk8khtd
         JZ6Cz8YHXIWm+DXsW/G+3jx0KgrTIPLD/PT6NIX7PS1Gj7qcB5P/sQR7Fzn7mfdiwZtY
         y7RaXT6A5fF6J2OZIX08BsFD2yCRNThnHtnIpMa5z8a7PSNqPesWR0qm03zYZj8/Lpo4
         6J4dCgSyOlXEs+0IDKeZhYK/g4tJV/+n98Nd9jZobfoSZFa+N9WrhybonPLYyZTq+JmC
         L83g==
X-Gm-Message-State: AOAM533zPl4KQTtLdKtzvDRouic4GyCt+BHkXRMkrEbimhU9Lt1m6pGA
        XBpkF3r2YuxuhCzzYbJMOzIEJW6cVhpxtg==
X-Google-Smtp-Source: ABdhPJyMgfjKLyPVJuHF/zy5zj4GaAkHDyEqrRhc7jRst1LQsQYTb/zhHY++XRzlA9cTzXGUOyuy7g==
X-Received: by 2002:a05:6a00:2182:b0:4f6:5051:61db with SMTP id h2-20020a056a00218200b004f6505161dbmr3612616pfi.40.1648705969331;
        Wed, 30 Mar 2022 22:52:49 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id bw17-20020a056a00409100b004fadad3b93esm25084515pfb.142.2022.03.30.22.52.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 22:52:48 -0700 (PDT)
Date:   Wed, 30 Mar 2022 22:52:48 -0700 (PDT)
X-Google-Original-Date: Wed, 30 Mar 2022 21:00:09 PDT (-0700)
Subject:     Re: [PATCH v2] riscv: dts: canaan: Fix SPI3 bus width
In-Reply-To: <20220308132806.96095-1-Niklas.Cassel@wdc.com>
CC:     robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, damien.lemoal@opensource.wdc.com,
        niklas.cassel@wdc.com, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Niklas.Cassel@wdc.com
Message-ID: <mhng-5c2b88e6-6ccd-4ff3-8ae4-5f2dabb1e75a@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 08 Mar 2022 05:28:05 PST (-0800), Niklas.Cassel@wdc.com wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
>
> According to the K210 Standalone SDK Programming guide:
> https://canaan-creative.com/wp-content/uploads/2020/03/kendryte_standalone_programming_guide_20190311144158_en.pdf
>
> Section 15.4.3.3:
> SPI0 and SPI1 supports: standard, dual, quad and octal transfers.
> SPI3 supports: standard, dual and quad transfers (octal is not supported).
>
> In order to support quad transfers (Quad SPI), SPI3 must have four IO wires
> connected to the SPI flash.
>
> Update the device tree to specify the correct bus width.
>
> Tested on maix bit, maix dock and maixduino, which all have the same
> SPI flash (gd25lq128d) connected to SPI3. maix go is untested, but it
> would not make sense for this k210 board to be designed differently.
>
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
> Changes since v1:
> -Add the new properties directly after spi-max-frequency for all DT board
>  files.
>
>  arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts  | 2 ++
>  arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts | 2 ++
>  arch/riscv/boot/dts/canaan/sipeed_maix_go.dts   | 2 ++
>  arch/riscv/boot/dts/canaan/sipeed_maixduino.dts | 2 ++
>  4 files changed, 8 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> index 984872f3d3a9..b9e30df127fe 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> @@ -203,6 +203,8 @@ flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
>  		m25p,fast-read;
>  		broken-flash-reset;
>  	};
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> index 7ba99b4da304..8d23401b0bbb 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> @@ -205,6 +205,8 @@ flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
>  		m25p,fast-read;
>  		broken-flash-reset;
>  	};
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> index be9b12c9b374..24fd83b43d9d 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> @@ -213,6 +213,8 @@ flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
>  		m25p,fast-read;
>  		broken-flash-reset;
>  	};
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> index 031c0c28f819..25341f38292a 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> @@ -178,6 +178,8 @@ flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
>  		m25p,fast-read;
>  		broken-flash-reset;
>  	};

Thanks, this is on for-next.
