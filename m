Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BEDD715F30
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 14:26:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230145AbjE3M0V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 08:26:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230095AbjE3M0F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 08:26:05 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AB7EB0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:26:04 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5149bdb59daso3569886a12.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685449562; x=1688041562;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m1A3pPtGHVixOn/xWWbPwneoP4l3d07yrVwIEB3j2rk=;
        b=Xdkg4/usmbvYcxt8xCQGz3dG0P5uYeBuumHZnNxaQBh3esi+RZsfsqUcpfsWf2lrhc
         f2rLijkCkVWVkv7k9q6cau7/2ShsA7mBTf5tAS9zKUK+HoqgBk8aTewncBLWr7Ib2/pd
         lyo9ssvigMPs/sjFcZhyM8ci3UOIzk9O8L18GMB6h3oNrDreKYuypqtdH3AOxNnu+eff
         c1lE5U5IRgyUJAaDQ0IXDo/FAMqXSIokYrxNUwHvc1AQCcqkvP+nkGrT69KyWSTI+z2i
         Dcbh8Z71fo788qtWRkYO1y1y4SQokQkToBMQ8PUIdmkUSKylnylDBOguEc/VKrV4iZa9
         W9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685449562; x=1688041562;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m1A3pPtGHVixOn/xWWbPwneoP4l3d07yrVwIEB3j2rk=;
        b=dr5VJyGdqY77XVEDY1EmawEbV22fMUJ+5wbJ98T93gcWdHREgO32Fa85LNR1hQHSVi
         fvnwtHpnJAMzZh2q5fGXOp/RRfa6iaYPbmK1pm0ydmM5k59L8m6O1WMazMqKoBKvWqYu
         tTiEPu5uRHlpgKvgYp42/gALf+g/UWHrxVxbYni4uSSStT2qfdogUyhFZzHwKmnLG/8H
         VSg07T8h68cd6HNQ/sszPHkh2i7+92XSZnGe0b02NhlyxHXDFN3R9zVmZKNmfRmUZAsR
         o0v/dB1OQQhNDlBa+gP5iU8VWhZgSRiR5Q1EnQ7Ws/ZFkLTJKB8BvEGDu9t3CKCKC8of
         wmpQ==
X-Gm-Message-State: AC+VfDxBgSQWQXO6InJES7EcikV69BZMEfP6tG2nwWvaUPAdFR22IBpV
        SM4yhQHHOQMjVS+DbV0i/+zCu5HUmkdhVt6sbdnPdQ==
X-Google-Smtp-Source: ACHHUZ6bIVwugA+CNFY/6v/wXqH4stb5Yy7HEPA+YAfR64MUIuKu4jkjDASrPecCuhgjeulD42qW7Q==
X-Received: by 2002:aa7:c301:0:b0:50c:4b9:1483 with SMTP id l1-20020aa7c301000000b0050c04b91483mr1423191edq.37.1685449562551;
        Tue, 30 May 2023 05:26:02 -0700 (PDT)
Received: from krzk-bin ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id p17-20020a056402075100b005149b6ec1bdsm2838504edy.29.2023.05.30.05.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 05:26:02 -0700 (PDT)
Date:   Tue, 30 May 2023 14:25:59 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Pranavi Somisetty <pranavi.somisetty@amd.com>
Cc:     pabeni@redhat.com, netdev@vger.kernel.org, edumazet@google.com,
        davem@davemloft.net, kuba@kernel.org, nicolas.ferre@microchip.com,
        michal.simek@amd.com, harini.katakam@amd.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, claudiu.beznea@microchip.com,
        radhey.shyam.pandey@amd.com, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, git@amd.com
Subject: Re: [PATCH net-next v3 1/2] dt-bindings: net: cdns,macb: Add
 rx-watermark property
Message-ID: <20230530122559.o2nvvtkf2gddvjkz@krzk-bin>
References: <20230530095138.1302-1-pranavi.somisetty@amd.com>
 <20230530095138.1302-2-pranavi.somisetty@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230530095138.1302-2-pranavi.somisetty@amd.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 30 May 2023 03:51:37 -0600, Pranavi Somisetty wrote:
> watermark value is the minimum amount of packet data
> required to activate the forwarding process. The watermark
> implementation and maximum size is dependent on the device
> where Cadence MACB/GEM is used.
> 
> Signed-off-by: Pranavi Somisetty <pranavi.somisetty@amd.com>
> ---
> Changes v2:
> None (patch added in v2)
> 
> Changes v3:
> 1. Fixed DT schema error: "scalar properties shouldn't have array keywords".
> 2. Modified description of rx-watermark to include units of the watermark value.
> 3. Modified the DT property name corresponding to rx_watermark in
> pbuf_rxcutthru to "cdns,rx-watermark".
> 4. Modified commit description to remove references to Xilinx platforms,
> since the changes aren't platform specific.
> ---
>  Documentation/devicetree/bindings/net/cdns,macb.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1787378


ethernet@e000b000: ethernet-phy@0: Unevaluated properties are not allowed ('device_type', 'marvell,reg-init' were unexpected)
	arch/arm/boot/dts/zynq-parallella.dtb

ethernet@e000b000: ethernet-phy@0: Unevaluated properties are not allowed ('device_type' was unexpected)
	arch/arm/boot/dts/zynq-zed.dtb
	arch/arm/boot/dts/zynq-zybo.dtb
	arch/arm/boot/dts/zynq-zybo-z7.dtb

ethernet@e000b000: ethernet-phy@1: Unevaluated properties are not allowed ('device_type' was unexpected)
	arch/arm/boot/dts/zynq-cc108.dtb

ethernet@e000b000: ethernet-phy@7: Unevaluated properties are not allowed ('device_type' was unexpected)
	arch/arm/boot/dts/zynq-zc702.dtb
	arch/arm/boot/dts/zynq-zc706.dtb
	arch/arm/boot/dts/zynq-zc770-xm010.dtb

ethernet@e000c000: ethernet-phy@7: Unevaluated properties are not allowed ('device_type' was unexpected)
	arch/arm/boot/dts/zynq-zc770-xm013.dtb

ethernet@f0028000: ethernet-phy@1: Unevaluated properties are not allowed ('rxc-skew-ps', 'rxd0-skew-ps', 'rxd1-skew-ps', 'rxd2-skew-ps', 'rxd3-skew-ps', 'rxdv-skew-ps', 'txc-skew-ps', 'txen-skew-ps' were unexpected)
	arch/arm/boot/dts/sama5d33ek.dtb
	arch/arm/boot/dts/sama5d34ek.dtb
	arch/arm/boot/dts/sama5d35ek.dtb
	arch/arm/boot/dts/sama5d36ek_cmp.dtb
	arch/arm/boot/dts/sama5d36ek.dtb

ethernet@f0028000: ethernet-phy@7: Unevaluated properties are not allowed ('rxc-skew-ps', 'rxd0-skew-ps', 'rxd1-skew-ps', 'rxd2-skew-ps', 'rxd3-skew-ps', 'rxdv-skew-ps', 'txc-skew-ps', 'txen-skew-ps' were unexpected)
	arch/arm/boot/dts/at91-dvk_som60.dtb
	arch/arm/boot/dts/sama5d33ek.dtb
	arch/arm/boot/dts/sama5d34ek.dtb
	arch/arm/boot/dts/sama5d35ek.dtb
	arch/arm/boot/dts/sama5d36ek_cmp.dtb
	arch/arm/boot/dts/sama5d36ek.dtb

ethernet@ff0d0000: ethernet-phy@5: Unevaluated properties are not allowed ('ti,dp83867-rxctrl-strap-quirk', 'ti,fifo-depth', 'ti,rx-internal-delay', 'ti,tx-internal-delay' were unexpected)
	arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dtb

ethernet@ff0e0000: ethernet-phy@c: Unevaluated properties are not allowed ('ti,dp83867-rxctrl-strap-quirk', 'ti,fifo-depth', 'ti,rx-internal-delay', 'ti,tx-internal-delay' were unexpected)
	arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.0.dtb
	arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.1.dtb
	arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dtb
	arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dtb
	arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dtb
	arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dtb
	arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dtb

ethernet@ff0e0000: Unevaluated properties are not allowed ('ethernet-phy@21' was unexpected)
	arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dtb

ethernet@fffbc000: Unevaluated properties are not allowed ('ethernet-phy' was unexpected)
	arch/arm/boot/dts/at91rm9200ek.dtb
