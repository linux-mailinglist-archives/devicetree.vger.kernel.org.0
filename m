Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 765DC51FE50
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 15:29:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235766AbiEINax (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 09:30:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235590AbiEINaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 09:30:52 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 040761A35AD
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 06:26:52 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id m2-20020a1ca302000000b003943bc63f98so8269760wme.4
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 06:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=dmJRRWnhcLRlkBeCf6ELmWo3mitMr5vF1s1MIEAWhkY=;
        b=FBEP0LRmMpH17N7Hbm10/SPehn12jstyd+SVGPW/nQaH/kNcc0UgxF/UxMSJSwNFKd
         0h8QK8B6X30Boig/cF/YFEX+fhrdVkzBqiHdg/puhONGuRYJmMCy5gKj9w2B4xs8+MdB
         +XHQRt0GSX29olfSiXYZ2ZfP3S6Nv053NPMiAggKDE4ZhLVhL0K89uBrXAG0u/mDaiNx
         xlrb0M47Nn5sSClSGIv6+VUuqKrNrfJq6OxmdbgRm30gDA/khTLNdTWJ7MNCL7jx3jNL
         nWuroYJZ1S4p4kdCT6n8CuKJGH7yLZly1nGI6AFJZTpS6mHnNCD9EpbxTMxbo5xOsQQl
         2O6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=dmJRRWnhcLRlkBeCf6ELmWo3mitMr5vF1s1MIEAWhkY=;
        b=c6D+FR6MN5d/6BDyJydEZfD2pjH/0mVMg6CZ5ry+1k4i1gDUGhvdL2IBw4Rh1jdavO
         XuHu0kru4b5zpzDqEa1VQsJcG4kcZ8ko6jvrWsQ5TIG9ST03f5Rmoaj744j1/JXVtVKu
         kxTCSMnllG7biomUjgZrvShSm9ePZw25uL1hPIUl7R3SeYagNVAs89R3FFh7SNz32mNs
         s1A2MyUeH+OBdV4E3VJhgV5tqfya/mM/vm1DXlOjn0Vzi3lpi6MlzG40P6ucBuctmTVM
         ouGR9Sc7pB/nu9pVZ8SLVtYI5t8BIBnZ9yK/+SAdc1TuPDKwYT4D+lrqZLcATdlDM6fS
         BIyw==
X-Gm-Message-State: AOAM530fBk7nYKzg9oL+Po1qjTLfYhd3auT3ioy8MIKOqeulRjypYbKr
        yb62auqBCSBVT3vwDrALQofKBw==
X-Google-Smtp-Source: ABdhPJxWE9LTJU3muMWgTGpDfT+XKa3yskyOpAPa0F0blBouUa/OJ2NmR4glOPu8x9cBP8Z/EgDiZQ==
X-Received: by 2002:a1c:770b:0:b0:394:3fae:ab79 with SMTP id t11-20020a1c770b000000b003943faeab79mr15885832wmi.200.1652102811399;
        Mon, 09 May 2022 06:26:51 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id n16-20020a05600c3b9000b00394699f803dsm13097894wms.46.2022.05.09.06.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 06:26:50 -0700 (PDT)
Date:   Mon, 9 May 2022 15:26:47 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     alexandre.torgue@foss.st.com, broonie@kernel.org,
        calvin.johnson@oss.nxp.com, davem@davemloft.net,
        edumazet@google.com, hkallweit1@gmail.com,
        jernej.skrabec@gmail.com, joabreu@synopsys.com,
        krzysztof.kozlowski+dt@linaro.org, kuba@kernel.org,
        lgirdwood@gmail.com, linux@armlinux.org.uk, pabeni@redhat.com,
        peppe.cavallaro@st.com, robh+dt@kernel.org, samuel@sholland.org,
        wens@csie.org, netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 3/6] dt-bindings: net: Add documentation for phy-supply
Message-ID: <YnkWl+xYCX8r9DE7@Red>
References: <20220509074857.195302-1-clabbe@baylibre.com>
 <20220509074857.195302-4-clabbe@baylibre.com>
 <YnkGV8DyTlCuT92R@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YnkGV8DyTlCuT92R@lunn.ch>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Mon, May 09, 2022 at 02:17:27PM +0200, Andrew Lunn a �crit :
> On Mon, May 09, 2022 at 07:48:54AM +0000, Corentin Labbe wrote:
> > Add entries for the 2 new phy-supply and phy-io-supply.
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../devicetree/bindings/net/ethernet-phy.yaml          | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> > index ed1415a4381f..2a6b45ddf010 100644
> > --- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> > +++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> > @@ -153,6 +153,16 @@ properties:
> >        used. The absence of this property indicates the muxers
> >        should be configured so that the external PHY is used.
> >  
> > +  phy-supply:
> > +    description:
> > +      Phandle to a regulator that provides power to the PHY. This
> > +      regulator will be managed during the PHY power on/off sequence.
> > +
> > +  phy-io-supply:
> > +    description:
> > +      Phandle to a regulator that provides power to the PHY. This
> > +      regulator will be managed during the PHY power on/off sequence.
> 
> If you need two differently named regulators, you need to make it clear
> how they differ. My _guess_ would be, you only need the io variant in
> order to talk to the PHY registers. However, to talk to a link
> partner, you need the other one enabled as well. Which means handling
> that regulator probably should be in the PHY driver, so it is enabled
> only when the interface is configured up.
> 

If I enable only the IO one, stmmac fail to reset, so both are needed to be up.
I tried also to keep the "phy" one handled by stmmac (by removing patch 2), this lead to the PHY to not be found by MDIO scan.
Proably because stmmac enable the "phy" before the "phy-io".

For the difference between the 2, according to my basic read (I am bad a it) of the shematic
https://linux-sunxi.org/images/5/50/OrangePi_3_Schematics_v1.5.pdf
phy-io(ephy-vdd25) seems to (at least) power MDIO bus.
