Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1FD152000D
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 16:39:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237455AbiEIOmj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 10:42:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237194AbiEIOmi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 10:42:38 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C51DF2ABBD1
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 07:38:43 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id k2so19749393wrd.5
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 07:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=PJxb32bRzXR/aRLBsR5ItCKULL5H2PbNvFFo631ZV10=;
        b=PvwMCQIuWgWkIhLrIhWXG1QTXvWF92KgQc1EI2AxsHyY2uMYrt1QArVf58cNX+rcAB
         cTk5RS+HwQB7V20jNfD2vYmF5aOssv2ddRyXUcVdVPp7edxRIwDC7WDQ2TM+DslRqfTN
         k19rt6a+fMjaYUGl8SARO3HYtvaK5xrKDGq5iT1RBPEoZMuNPlD66IGp7r6nkP//ZxUM
         pgSl26YFc0kmow6T7eJGC1qtamYmEt6pCNeaLCG+pUzQ/XmgZUD4Of1INA1D+A76mbvD
         bMK5Akoyl05V96zTPt4Oa8U9v+eoaFw0GJiXjgMU1oFCENqGfPxLuTz+Ops8hAbu4fb0
         Gmog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=PJxb32bRzXR/aRLBsR5ItCKULL5H2PbNvFFo631ZV10=;
        b=X0LTfeNuDSrZhtWbJXUPXlEx0rNrz+g5zSTvKHWazbrOzKhwukWzoKJgRwGIrajBLb
         DalXU4ibI/VLt/B3C/NW1+qfyjIXEDMllfw+wL+gJhLZqXNc6KPODehbf4ao6LNzXiO6
         BF9mNGCpBTkbRpDhur2Imwm0pnWymu1G0Do8PPLts4gRn9NMwU7JgyNhe4r3xgSNrN/r
         kCEOMWN0UOYwT6qUEPuexyZaXPd0bXaWfCD0Xy8alndUznfkXCwEeQD/byak4aETV+s7
         o0bfn9R15KLxGeqhEut7GOkTQeifqZIuuocg4ao/IEz9lQ7+0TGTJNRPh6lZS5mxSbIJ
         e0LQ==
X-Gm-Message-State: AOAM533fJJVuYPIqOp+1G4rJBjRHX9mlITURiyjHFjzLtq4r+LvTMG4f
        NpBaVDAJMZ2sh22NYeJZy6187Q==
X-Google-Smtp-Source: ABdhPJyLXHiIrMy3/wzvE/usa9gu2UG+1aeyzJbtytc5hHu8886sMKLghPjKsQvBsUd/mh/2HgtqKQ==
X-Received: by 2002:a5d:6452:0:b0:20c:999d:be77 with SMTP id d18-20020a5d6452000000b0020c999dbe77mr13675304wrw.52.1652107122355;
        Mon, 09 May 2022 07:38:42 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id m7-20020adffa07000000b0020cb42671aasm6829808wrr.105.2022.05.09.07.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 07:38:41 -0700 (PDT)
Date:   Mon, 9 May 2022 16:38:38 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     alexandre.torgue@foss.st.com, andrew@lunn.ch, broonie@kernel.org,
        calvin.johnson@oss.nxp.com, davem@davemloft.net,
        edumazet@google.com, hkallweit1@gmail.com,
        jernej.skrabec@gmail.com, joabreu@synopsys.com,
        krzysztof.kozlowski+dt@linaro.org, kuba@kernel.org,
        lgirdwood@gmail.com, linux@armlinux.org.uk, pabeni@redhat.com,
        peppe.cavallaro@st.com, robh+dt@kernel.org, samuel@sholland.org,
        wens@csie.org, netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 2/6] net: stmmac: dwmac-sun8i: remove regulator
Message-ID: <YnknbtzsBQrIV0hx@Red>
References: <20220509074857.195302-1-clabbe@baylibre.com>
 <20220509074857.195302-3-clabbe@baylibre.com>
 <20220509150907.6cf9c4d1@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220509150907.6cf9c4d1@donnerap.cambridge.arm.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Mon, May 09, 2022 at 03:09:07PM +0100, Andre Przywara a écrit :
> On Mon,  9 May 2022 07:48:53 +0000
> Corentin Labbe <clabbe@baylibre.com> wrote:
> 
> Hi,
> 
> > Now regulator is handled by phy core, there is no need to handle it in
> > stmmac driver.
> 
> I don't think you can do that, since we definitely need to maintain
> compatibility with *older* DTs.
> Is there a real need for this patch, or is it just a cleanup?
> I mean we should be able to keep both approaches in, and the respective
> board and DT version selects which it is using.
> 
> Cheers,
> Andre
> 

It is just a cleanup. But yes, probably keeping it will be necessary for easy compatibility.
