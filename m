Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D24404CC65C
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 20:43:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234335AbiCCTnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 14:43:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236385AbiCCTmu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 14:42:50 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACF7F1A6342
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 11:41:12 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id bg16-20020a05600c3c9000b00380f6f473b0so5954833wmb.1
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 11:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=2iz36OqO+jJdVuW+N+ZU8T8BnAKilg+w/Ds7DOBUBqc=;
        b=ue5oc5VPyETrPzFUI5tMGWXNiS185SPWKtF65IQwQ8xjOEJBTsqlkLW11dFs9AUawE
         /DqBBuqSIaymgZxjn4q4XebOpM61LpRpAasj3CBwMmaltTCAgz8RrZDoWQVARRBYOWLM
         ZATUI/FMIHvt/Oj55HEb5KU+vio6s5llgv1ytHRWDrpdhkBny//uqi426HgraMzr8bV/
         9DrLkA6uquYAc4QYPmNe39H/9Wg1OgFxUaJ7IV9FTiGv8nEHb8C+43FVJq1s151WMbKO
         B4SpRlna1oorMDGQ39I4TkITXj/lN3y/5QwDPJkvW7jgaE9N/PbCjYVIi3crn9Fc/GTk
         LHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=2iz36OqO+jJdVuW+N+ZU8T8BnAKilg+w/Ds7DOBUBqc=;
        b=qgOYOEaWf9YXbpPvS5hmNzUCeiYXDR6KrdOLl20Xbef4LusMwbD3pIlt64mDRzz6E0
         +oJ9QsOrLy53kdzF9/E+PNBn7tNsAARLwaBAdVhYF/0kE88Bk3s4D8NqMJjCchkxkPZi
         zG79+Yjz4hm1GvFKEUbP682yzyCpSea3PL9USLIdXk3+CY7mLCwCXz/T89ARi2tx09sw
         r8IUs0oMBLGTYRVP+fkuN2mGfg8TmVzTeIJB+C9Uy85SdVmOVyaWbaxi7ZajAowg2uM2
         iaBFHZ+/rHhkkt5CFsX6ESoSlYz9QB3gxe6pYruZc3Ikek75V3yXygZ6zBs055GUJiZu
         RA7A==
X-Gm-Message-State: AOAM5310pwvzoWdhj2erXTscFbyviGDwDnh5EcLU/CUrtzHhAZQtL+G6
        XnPiw48LQ26jssK2rPisjYlN9A==
X-Google-Smtp-Source: ABdhPJxeRW34laxVBvgaVBv3M2eH0QaO9wO8gWc12fv7n8JCsG+wcXFQzJGW9RUr1sYLQWexnzqMCw==
X-Received: by 2002:a7b:c382:0:b0:388:2e76:49ed with SMTP id s2-20020a7bc382000000b003882e7649edmr3351768wmj.195.1646336452447;
        Thu, 03 Mar 2022 11:40:52 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id e15-20020a5d6d0f000000b001ef7dca67fasm3255157wrq.114.2022.03.03.11.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 11:40:51 -0800 (PST)
Date:   Thu, 3 Mar 2022 20:40:49 +0100
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, heiko@sntech.de,
        linux-crypto@vger.kernel.org, herbert@gondor.apana.org.au,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        john@metanate.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 17/18] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Message-ID: <YiEZwetOpRhZ4iCa@Red>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
 <20220302211113.4003816-18-clabbe@baylibre.com>
 <1646315078.991896.1495435.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1646315078.991896.1495435.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Thu, Mar 03, 2022 at 07:44:38AM -0600, Rob Herring a écrit :
> On Wed, 02 Mar 2022 21:11:12 +0000, Corentin Labbe wrote:
> > convert rockchip-crypto to yaml
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../crypto/rockchip,rk3288-crypto.yaml        | 64 +++++++++++++++++++
> >  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
> >  2 files changed, 64 insertions(+), 28 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> > 
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1600075
> 
> 
> cypto-controller@ff8a0000: clock-names: ['aclk', 'hclk', 'sclk', 'apb_pclk'] is too long
> 	arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml
> 	arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml
> 	arch/arm/boot/dts/rk3288-firefly-beta.dt.yaml
> 	arch/arm/boot/dts/rk3288-firefly.dt.yaml
> 	arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml
> 	arch/arm/boot/dts/rk3288-miqi.dt.yaml
> 	arch/arm/boot/dts/rk3288-phycore-rdk.dt.yaml
> 	arch/arm/boot/dts/rk3288-popmetal.dt.yaml
> 	arch/arm/boot/dts/rk3288-r89.dt.yaml
> 	arch/arm/boot/dts/rk3288-rock2-square.dt.yaml
> 	arch/arm/boot/dts/rk3288-rock-pi-n8.dt.yaml
> 	arch/arm/boot/dts/rk3288-tinker.dt.yaml
> 	arch/arm/boot/dts/rk3288-tinker-s.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-brain.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-fievel.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-jaq.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-jerry.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-mickey.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-mighty.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-minnie.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-pinky.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-speedy.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-tiger.dt.yaml
> 	arch/arm/boot/dts/rk3288-vyasa.dt.yaml
> 
> cypto-controller@ff8a0000: clocks: [[7, 199], [7, 461], [7, 125], [7, 193]] is too long
> 	arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml
> 	arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml
> 	arch/arm/boot/dts/rk3288-firefly-beta.dt.yaml
> 	arch/arm/boot/dts/rk3288-firefly.dt.yaml
> 	arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml
> 	arch/arm/boot/dts/rk3288-miqi.dt.yaml
> 	arch/arm/boot/dts/rk3288-phycore-rdk.dt.yaml
> 	arch/arm/boot/dts/rk3288-popmetal.dt.yaml
> 	arch/arm/boot/dts/rk3288-r89.dt.yaml
> 	arch/arm/boot/dts/rk3288-rock2-square.dt.yaml
> 	arch/arm/boot/dts/rk3288-rock-pi-n8.dt.yaml
> 	arch/arm/boot/dts/rk3288-tinker.dt.yaml
> 	arch/arm/boot/dts/rk3288-tinker-s.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-brain.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-fievel.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-jaq.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-jerry.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-mickey.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-mighty.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-minnie.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-pinky.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-speedy.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-tiger.dt.yaml
> 	arch/arm/boot/dts/rk3288-vyasa.dt.yaml
> 

The patch fixing thoses warning is in the serie.

Regards
