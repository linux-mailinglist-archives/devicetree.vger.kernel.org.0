Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C3364902E4
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 08:24:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237349AbiAQHY3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 02:24:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237523AbiAQHY2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 02:24:28 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08760C061574
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 23:24:28 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id o15so54049165lfo.11
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 23:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=EKQKtl0HMrpVhiuwin/tzZY8SOxpyFb5Q17+Qj5KqcY=;
        b=viRDtpegzW5nXkSDQEsb2LFF906I4+LaV8BcpG+yhWa725oz2aFO0Yfjxl8GQ8cuiq
         de/Gu44z8OP8qLp8hnEPqo8UWhygdVP2oE2FYt1QDvo2DxoipYu4T6lWJE9us5+3fi1k
         5zXAj+eYACgGvSId1jOzED5zx686MrCJ07jm/gq7OkoEX17N4FlflKjqOChO9m7HnVy1
         MbyxvyeC2BxjUKj2ZBh80WljteA/ZxbEjaVojhtz2f2btHezvEYc95GRQq4wIHlKUX5V
         ddbIRPwSns32ofYzrcfdLiLtiFqa/Pr1fmvQ9HEEDmhNRV5S8tlVdxP28/WyDY5cLxPd
         gj4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=EKQKtl0HMrpVhiuwin/tzZY8SOxpyFb5Q17+Qj5KqcY=;
        b=u8yyjYvQWHhaNP46newTwq7sLAxrjCnNGBmpdp7Cyac+ZKBfluH+W0faoW/AeI9dMv
         XdaO74y4DeFOo5j7+XjW24Ujt/QxtzIH4+5nGq1Si1PTWh9JU60XR9whSviwAN+xxCKA
         OB0hQKcUqYyv8ifMlER+RFOSAgg+K90Hz902ZvGFKW5qW3vvOHt+8NfQ2vFq36cV27SS
         66MWwahcARZVvV0RHzFvlAc1iVZWLQwPt19r/WnViprycWsruys0BBcQTMT0/MFFs45I
         /P0bdkJKEDQV4avEiCh4VVY/Dyvc3srm7AhN263Z+4wOgHE3XtXjF73AKNGaFcxKJO6g
         +p/g==
X-Gm-Message-State: AOAM533jzDcP57PCr9+QqWTAgltdYmDh8HI9/HvOVxZpIFsJ3d7AHHEL
        UETUwAoMPiLgaCfYJugk7VNknvlqd1C1GA==
X-Google-Smtp-Source: ABdhPJydjGVwZwOYF3Sov6EeiRjKAo/leF5UAFrr0paBHQvdmk/Zax99dmMM9gu1iIGsj2j50Gdqfw==
X-Received: by 2002:a19:f616:: with SMTP id x22mr15969174lfe.618.1642404266369;
        Sun, 16 Jan 2022 23:24:26 -0800 (PST)
Received: from wkz-x280 (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id c5sm482267lfp.105.2022.01.16.23.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jan 2022 23:24:25 -0800 (PST)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     davem@davemloft.net, kuba@kernel.org, madalin.bucur@nxp.com,
        robh+dt@kernel.org, mpe@ellerman.id.au, benh@kernel.crashing.org,
        paulus@samba.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH net 1/4] net/fsl: xgmac_mdio: Add workaround for erratum
 A-009885
In-Reply-To: <YeSV67WeMTSDigUK@lunn.ch>
References: <20220116211529.25604-1-tobias@waldekranz.com>
 <20220116211529.25604-2-tobias@waldekranz.com> <YeSV67WeMTSDigUK@lunn.ch>
Date:   Mon, 17 Jan 2022 08:24:22 +0100
Message-ID: <87czkqdduh.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 16, 2022 at 23:02, Andrew Lunn <andrew@lunn.ch> wrote:
> On Sun, Jan 16, 2022 at 10:15:26PM +0100, Tobias Waldekranz wrote:
>> Once an MDIO read transaction is initiated, we must read back the data
>> register within 16 MDC cycles after the transaction completes. Outside
>> of this window, reads may return corrupt data.
>> 
>> Therefore, disable local interrupts in the critical section, to
>> maximize the probability that we can satisfy this requirement.
>
> Since this is for net, a Fixes: tag would be nice. Maybe that would be
> for the commit which added this driver, or maybe when the DTSI files
> for the SOCs which have this errata we added?

Alright, I wasn't sure how to tag WAs for errata since it is more about
the hardware than the driver. Should I send a v2 even if nothing else
pops up, or is this more of a if-you're-sending-a-v2-anyway type of
comment?
