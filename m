Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC20666C378
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 16:20:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230297AbjAPPUn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 10:20:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230147AbjAPPUS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 10:20:18 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D9F522032
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 07:14:38 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id j17so1692285wms.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 07:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uZq7KZ5es/oVm07Mu/lqqsKw8XYpJdtTEoce2xEIrxo=;
        b=dIOeuulv+g0l0G+UNWjumOycCO6uwEpnPCGFt9OIFg2WEPVrIugyGOWgbYjZ1yoW/o
         DzYFob7z/jZaNY/JyJ0dVeaMjbwDGfEq+bqPEV72fc+Uxge9MaqFbTD8DfVdVIXs3Vrd
         BsggeADbJgJj4n9p4xwfwk40fsyWqvapc4Vs5EQp9jEYzeqsaxWlflUYXiFdz4LrCNf+
         vsFIO/5tDtPZbDUZituTFFk0JBeW4H2yYFHGJGcU1IjelcAivPMOcLQVk5Tolw9WGDPJ
         A33wsMM+ekC6wnIjz9miDjBKuRucGfkJnxNClGDZ4XIDc59vAbzf7YcJRCgzkv5Jk3nm
         XllA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uZq7KZ5es/oVm07Mu/lqqsKw8XYpJdtTEoce2xEIrxo=;
        b=du4rJ8ZwHA94Kd87v/m1bhJo2oBH9zAqwaqVxg3jZZhzmkXuV56gj70pc1uahciBbR
         nbgXlMU7iQyMO+03hR5wjpvOK2NqT8jlMxAuDdLpuGX1UetgXnMMCbc42kceCPLu9as/
         LsPi4KvXvYPAkga6lKfeZbdglwvo98KbRkqWwxE0FLrMwuULlYofISWKvyiuq0GlbxI2
         Y0obJ5HTBXZ4h5taa/2ejFrJMCn3rSk8/vcJLYQqOawR8d5asGXG4DtiP67rrTQuSAD9
         4NheLsRXmttQ31uxOPWcA8QPnh60ATeR6HN6XhmFYNN61xn4gpWbLW+9N2021YqZidQ3
         yVZg==
X-Gm-Message-State: AFqh2kpLmfhlsWC0HkRskMwkaoeHRHBY4eJUnzZWRf5ZNHJk+jGa6ggs
        vsMbrlOtHrZK1lzJ4mW6BB0=
X-Google-Smtp-Source: AMrXdXtupPOYy5yRRdXlMsUe8LgeR85RjB2tixi2DxqOhg5gOTkUx2jmGFM1uPIUJDNQB68i8wJC4A==
X-Received: by 2002:a05:600c:35d4:b0:3d2:2d2a:d581 with SMTP id r20-20020a05600c35d400b003d22d2ad581mr66489602wmq.30.1673882077019;
        Mon, 16 Jan 2023 07:14:37 -0800 (PST)
Received: from archbox.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id k9-20020a05600c1c8900b003dafbd859a6sm3857272wms.43.2023.01.16.07.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 07:14:36 -0800 (PST)
From:   Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To:     Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix probe of analog sound card on rock-3a
Date:   Mon, 16 Jan 2023 16:14:35 +0100
Message-ID: <4802111.31r3eYUQgx@archbox>
In-Reply-To: <7caeb07b-8465-6bdd-d90d-06a905b56f37@wolfvision.net>
References: <20230115211553.445007-1-jonas@kwiboo.se>
 <7caeb07b-8465-6bdd-d90d-06a905b56f37@wolfvision.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday, 16 January 2023 09:41:50 CET Michael Riesch wrote:
> Hi Jonas,
> 
> On 1/15/23 22:15, Jonas Karlman wrote:
> > The following was observed on my Radxa ROCK 3 Model A board:
> >   rockchip-pinctrl pinctrl: pin gpio1-9 already requested by
> >   vcc-cam-regulator; cannot claim for fe410000.i2s ...
> >   platform rk809-sound: deferred probe pending
> > 
> > Fix this by supplying a board specific pinctrl with the i2s1 pins used
> > by pmic codec according to the schematic [1].
> > 
> > [1] https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf
> > 
> > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> 
> Makes sense to me, but...
> 
> > ---
> > 
> >  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts index
> > 00d873a03cfe..a149c8b83f94 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > @@ -573,6 +573,8 @@ &i2s0_8ch {
> > 
> >  };
> >  
> >  &i2s1_8ch {
> > 
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 
&i2s1m0_sdo0>;
> 
> ... shouldn't this include i2s1m0_mclk as well?

You can totally use i2s without an mclk, but I don't have a specific
explanation as to why this is lacking in this particular pinctrl, as
I cargo-culted it from downstream.

> For some reason this has been omitted in the pinctrl defined in
> rk356x.dtsi. But then rk356x.dtsi also claims
>  - both i2s1m0_sdo1 and i2s1m0_sdi3
>  - both i2s1m0_sdo2 and i2s1m0_sdi2
>  - both i2s1m0_sdo3 and i2s1m0_sdi1
> which are mapped to the same respective pins. Therefore it seems that
> there might be something wrong with this pinctrl altogether.

This is actually correct, I believe. The driver has a feature called
"io multiplex" which fiddles with the GRF to dynamically set the pin
directions depending on the hardware parameters. As it happens, for
example sdo1 and sdi3 are on the same pin mux, and can be switched
between like this.

I don't know how well that meshes with upstream's understanding of
pinctrl but in this case the two functions really can use the same
pin.

> 
> Cc: Nicolas Frattaroli, maybe he can provide some clarification.
> 
> Best regards,
> Michael
> 
> >  	rockchip,trcm-sync-tx-only;
> >  	status = "okay";
> >  
> >  };

Cheers,
Nicolas Frattaroli




