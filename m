Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CA717160CF
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 14:58:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232187AbjE3M6m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 08:58:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230405AbjE3M6i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 08:58:38 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ED811A8
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:58:05 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5147f7d045bso6208404a12.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685451482; x=1688043482;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3WEa1NfUcLSbrm3qJmO4CYPv5qLgIx952Ixu+3T4o80=;
        b=zK8MC87vEgSf6cjGhXVYjtFZDnuOnqD1OkpfYzUaArP/gHHF3rTSKIqpKs+ndh9pV3
         1vYgBvVZUEi56wtJhDmd/56he1uOnXNKWQukOICrxTluW7t141Md9LmQbDa0yKQvKKbA
         jwX8MIZ7FhRAfxNQTRQDi8opmQNwv4de8fN0oV0Oe9sOLDBFyxT7/KQE6XzsYPJGui6k
         uYxVv57ZUh7Iakwaywwav2t5GpsCTe0MQs340ODBIO22XiCf2UHPC3DGoKaweyQzl9rI
         N6jBhUspKwtGg4WdfC5IINExNy/woG7HTgVrutObrQ2/78J3mBTXFEUQNbTQPhnP/JJG
         Ot5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685451482; x=1688043482;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3WEa1NfUcLSbrm3qJmO4CYPv5qLgIx952Ixu+3T4o80=;
        b=CY+kZ3ROIEkS2p9V477/AqrPPqyhHp2Xlx8hxp97lvvOPJVyZeIj8syI+IddgVFxUI
         VfcXN8YxrdFcxOK/EzlsCFWGF2Gg3nZWeVKTKOtfjKO6h01UhucEoEhZuAouVaaxI1oL
         wS5bXFYm2gSYPHMr5WB+gAINEzdzhP0Fg92UtSsE+/YvCUk6kvvthoyd1ysfxHdahmZV
         tgkRrZOLIki2/Y22ui+1BgWKZg8EGDijSx5AJjBIJ5V+X7T7akPHtMBTe6M/oiNj1wpD
         g9N7ZBTIAYJ8sx328ka4k5fNHB27f6xMH4vgG5XWbMRJRQMcjPmbqeFTdgIceqezrCq9
         7eDQ==
X-Gm-Message-State: AC+VfDyHGNq0nSScdbRXKDAIs5OyxRoNE0v85uojrrNw5zLluHSFMXsU
        SRx/5RatV/MCbeA4gt9Xq4IfZw==
X-Google-Smtp-Source: ACHHUZ67gGKdJp+2VAcuCyA76sEzLH82aG9nPSurtK08XL5HU+kON7mUuBNSupwt6MBugo/ZoSx5bw==
X-Received: by 2002:a17:907:3f8d:b0:96f:57ba:4b56 with SMTP id hr13-20020a1709073f8d00b0096f57ba4b56mr2772934ejc.20.1685451481937;
        Tue, 30 May 2023 05:58:01 -0700 (PDT)
Received: from krzk-bin ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id os5-20020a170906af6500b0094e62aa8bcesm7271400ejb.29.2023.05.30.05.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 05:58:01 -0700 (PDT)
Date:   Tue, 30 May 2023 14:57:58 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, shawnguo@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: pfuze100.yaml: Add an entry for
 interrupts
Message-ID: <20230530125758.ke7isykxf3bg4efu@krzk-bin>
References: <20230527205048.418360-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230527205048.418360-1-festevam@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 27 May 2023 17:50:46 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The PFUZE100 PMIC has an interrupt pin that can be connected to
> the host SoC. Describe it in the dt-bindings to avoid warnings like:
> 
> imx6q-zii-rdu2.dtb: pmic@8: 'interrupt-parent', 'interrupts' do not match any of the regexes: 'pinctrl-[0-9]+'
> From schema: Documentation/devicetree/bindings/regulator/pfuze100.yaml
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Changes since v1:
> - None. Only collected Conor's Reviewed-by tag.
> 
>  Documentation/devicetree/bindings/regulator/pfuze100.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1786770


pf0100@8: $nodename:0: 'pf0100@8' does not match '^pmic@[0-9]$'
	arch/arm/boot/dts/imx6dl-riotboard.dtb

pfuze100@8: $nodename:0: 'pfuze100@8' does not match '^pmic@[0-9]$'
	arch/arm/boot/dts/imx6dl-gw54xx.dtb
	arch/arm/boot/dts/imx6dl-sabreauto.dtb
	arch/arm/boot/dts/imx6dl-sabresd.dtb
	arch/arm/boot/dts/imx6dl-wandboard-revd1.dtb
	arch/arm/boot/dts/imx6q-dmo-edmqmx6.dtb
	arch/arm/boot/dts/imx6q-gw5400-a.dtb
	arch/arm/boot/dts/imx6q-gw54xx.dtb
	arch/arm/boot/dts/imx6q-novena.dtb
	arch/arm/boot/dts/imx6q-pistachio.dtb
	arch/arm/boot/dts/imx6qp-sabreauto.dtb
	arch/arm/boot/dts/imx6qp-sabresd.dtb
	arch/arm/boot/dts/imx6qp-wandboard-revd1.dtb
	arch/arm/boot/dts/imx6q-sabreauto.dtb
	arch/arm/boot/dts/imx6q-sabresd.dtb
	arch/arm/boot/dts/imx6q-wandboard-revd1.dtb
	arch/arm/boot/dts/imx6sl-evk.dtb
	arch/arm/boot/dts/imx6sx-sdb.dtb
	arch/arm/boot/dts/imx6sx-sdb-mqs.dtb
	arch/arm/boot/dts/imx6sx-sdb-reva.dtb
	arch/arm/boot/dts/imx6sx-sdb-sai.dtb
	arch/arm/boot/dts/imx6sx-softing-vining-2000.dtb

pfuze3000@8: $nodename:0: 'pfuze3000@8' does not match '^pmic@[0-9]$'
	arch/arm/boot/dts/imx6ul-pico-dwarf.dtb
	arch/arm/boot/dts/imx6ul-pico-hobbit.dtb
	arch/arm/boot/dts/imx6ul-pico-pi.dtb
	arch/arm/boot/dts/imx7d-nitrogen7.dtb
	arch/arm/boot/dts/imx7d-pico-dwarf.dtb
	arch/arm/boot/dts/imx7d-pico-hobbit.dtb
	arch/arm/boot/dts/imx7d-pico-nymph.dtb
	arch/arm/boot/dts/imx7d-pico-pi.dtb
	arch/arm/boot/dts/imx7d-sdb.dtb
	arch/arm/boot/dts/imx7d-sdb-reva.dtb
	arch/arm/boot/dts/imx7d-sdb-sht11.dtb
	arch/arm/boot/dts/imx7s-warp.dtb

pmic@8: regulators: 'vcoin' does not match any of the regexes: '^(vsnvs|vref|vrefddr|swbst|coin|v33|vccsd)$', '^sw([1-4]|[1-4][a-c]|[1-4][a-c][a-c])$', '^vgen[1-6]$', '^vldo[1-4]$', 'pinctrl-[0-9]+'
	arch/arm/boot/dts/imx6ul-ccimx6ulsbcexpress.dtb
	arch/arm/boot/dts/imx6ul-ccimx6ulsbcpro.dtb
