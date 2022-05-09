Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DFB3520117
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 17:24:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238310AbiEIP22 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 11:28:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238308AbiEIP2Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 11:28:25 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42F552C634D
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 08:24:30 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id j15so19996448wrb.2
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 08:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=rKwtLw3cM+95hvuJT1geCS3rHMfOzSi9KoR5XyQyqpA=;
        b=wvnRNI989Cr31sBb60Fzfp/CEVVtKm1DOJMlpdFbxF/KhSuxQmEPKGOgfCZv5fw6ii
         EArLsqX/FVAvXoqhQBSxfIvtiinaO2PlnwacCucDvSfvypoKh9gu6dxN1NK7Zz5SAeX2
         s+yhqYOKRoSnGJHQw61bcsdDsXGKAhnNDPPCoJzlLpwkKWk2kUplS64o/XGdwvupCzAq
         bN3RSr93opiPNtq5aWUqXeQ7BRH+dNtCNC4DWbSZHiXJQ7zkBy9PR1wNmt2nm34V7q3m
         nXHhXaPENXXjfrjmQrhqcv3LcIrXrWaBEPAuZEHX8npUfkjbDNl5mrMFKzfA5SHniLre
         BUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=rKwtLw3cM+95hvuJT1geCS3rHMfOzSi9KoR5XyQyqpA=;
        b=vnfGPNEJ1+JZjHQP4szVvn9Sisg5qw7trp7QwpEUe6BBZIEjL9el3x3VLu0OQpgBWn
         GCK+L95zHOaXf16Bn/BrW2si6VOokodqefuW6VZToc0hoqGN2cgfI2hLlVOOd/tHb7hy
         OrOqHTzT2okHJZwrluCaWmJwHOSsOrYL8MbusN73wNScIs8aqh7/ZZPoXpE9tuy9m1Z2
         LuJjfo/twF/k57MQStvwb84GKGyBrjUq4lfVwiM1b2RU2ffzX70Y9UptRJQ2fI865sI/
         bohwYciqF46J1RsYf04u5HvwgAsFLFLy7RKKFkK0Dnfdf9vTB9QYMe5pBmiYDc9kKxnc
         u22w==
X-Gm-Message-State: AOAM530bmrda7yF4bE+W+4PfyCgwiDRDEabfP+/jgLxlx7Wq9uIBDzc9
        F+BBru0Suj+3mTxIOZqWchHOng==
X-Google-Smtp-Source: ABdhPJzDsDDrTemBeI3M748nGEAOCxz5E616Xce7ZvQNu0rMeHzDwcyWVElFh6Ahp8pSR4VPlT/esQ==
X-Received: by 2002:adf:d1c7:0:b0:20c:4d5f:e57f with SMTP id b7-20020adfd1c7000000b0020c4d5fe57fmr14372719wrd.453.1652109868819;
        Mon, 09 May 2022 08:24:28 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id o9-20020a5d62c9000000b0020c5253d903sm11539796wrv.79.2022.05.09.08.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 08:24:28 -0700 (PDT)
Date:   Mon, 9 May 2022 17:24:26 +0200
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
Subject: Re: [PATCH 0/6] arm64: add ethernet to orange pi 3
Message-ID: <YnkyKiRmOEYEtO3z@Red>
References: <20220509074857.195302-1-clabbe@baylibre.com>
 <YnkG9yV+Fbf7WtCh@lunn.ch>
 <YnkWwrKk4zjPnZLg@Red>
 <Ynkw9EekNj5Ih5gc@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Ynkw9EekNj5Ih5gc@lunn.ch>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Mon, May 09, 2022 at 05:19:16PM +0200, Andrew Lunn a écrit :
> On Mon, May 09, 2022 at 03:27:30PM +0200, LABBE Corentin wrote:
> > Le Mon, May 09, 2022 at 02:20:07PM +0200, Andrew Lunn a écrit :
> > > On Mon, May 09, 2022 at 07:48:51AM +0000, Corentin Labbe wrote:
> > > > Hello
> > > > 
> > > > 2 sunxi board still does not have ethernet working, orangepi 1+ and
> > > > orangepi 3.
> > > > This is due to the fact thoses boards have a PHY which need 2 regulators.
> > > 
> > > Why PHY make/module is it which is causing problems?
> > > 
> > 
> > The problem was stmmac support only one regulator for PHY.
> 
> I'm trying to understand the differences between the two different
> regulators. If you tell me what the PHY is, i might be able to find
> the data sheet, and then understand why two regulators are needed and
> if one needs to be controlled by the PHY driver, not the MDIO bus
> driver.

The schematic for the board is https://linux-sunxi.org/images/5/50/OrangePi_3_Schematics_v1.5.pdf
Which show a RTL8211E.
