Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94ADB53FE0C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 13:54:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234580AbiFGLyh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 07:54:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235404AbiFGLyg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 07:54:36 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84676E1F
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 04:54:34 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id j10so27893766lfe.12
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 04:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5ME10fIbmXdEFfUfbRX6sJYfra+AxLz+ca4bfa0pYus=;
        b=i4f/2pufUHufiv8y3/qTffQ5TzfJLHyQxKmmbVZhTx1J1+VmBTbNPyU+B+pLA/IJRq
         55Aha+yg1aSQ5+NeJSBLQPR63K/D9jAJnr9/0H43aD0WmfOd3p1xiJEhm+JnBBnL3z3r
         GWkeTyIGqHtkcYMwHWi0b0vUdhgaxddE8A2dc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5ME10fIbmXdEFfUfbRX6sJYfra+AxLz+ca4bfa0pYus=;
        b=PZx1TXAS4Oodm7haVaeJM5je2aqytHERtAVnyh8ru/WpV/BQvL2g2Y0UtiIkXY+V2E
         tAgxrD99n6jxqE42CRMnbU96S4/+/uTnoDdTwtYwodTjkbHpvR1ZgMTgzXJoiM7XwIyg
         ybavyZR3s1FlTjbT1uQv6PLNFhY0j76RkIBa8LwcjH9K3fkMIfbh8cU3cBJdLB/AZxFP
         cQRa7oM00Vp+ulYn/qTfzteNl4yTi4OiCCyjOR+jizBXN460b+FbxkK6HNzrIXmKj8Vj
         HGhFQxcR0xNF4Jok6WXVKMGJLbEYvzMzOIaKr5pZ95ShIGtXWvb6SaHszbELZtZc7WPJ
         kTyg==
X-Gm-Message-State: AOAM531rUaYJF0lpO7eN3cGGPF2FnKH0x68imJWLsD8NHwRu1BrN6yJU
        xDjHbpYsGtnqIFeC3qF4qtC+Jg==
X-Google-Smtp-Source: ABdhPJw8ydE1A1Y42rmMMJg4s0ZWu9AfQ0mqNbbG4ax1CX79el6PQVu/YFt9z7rf62Pl3ImxDJ+ngw==
X-Received: by 2002:a05:6512:401a:b0:479:2409:7b2a with SMTP id br26-20020a056512401a00b0047924097b2amr10620147lfb.34.1654602872844;
        Tue, 07 Jun 2022 04:54:32 -0700 (PDT)
Received: from [172.21.3.73] ([87.54.42.112])
        by smtp.gmail.com with ESMTPSA id k18-20020a192d12000000b0047920d89606sm1648636lfj.187.2022.06.07.04.54.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 04:54:32 -0700 (PDT)
Message-ID: <29ddcecb-18d3-b92e-10fb-d5ea278886d6@rasmusvillemoes.dk>
Date:   Tue, 7 Jun 2022 13:54:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH net-next 1/3] dt-bindings: dp83867: add binding for
 io_impedance_ctrl nvmem cell
Content-Language: en-US
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     netdev@vger.kernel.org, Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Jakub Kicinski <kuba@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Dan Murphy <dmurphy@ti.com>, linux-kernel@vger.kernel.org
References: <20220606202220.1670714-1-linux@rasmusvillemoes.dk>
 <20220606202220.1670714-2-linux@rasmusvillemoes.dk>
 <Yp54aOPqd5weWnFt@lunn.ch>
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
In-Reply-To: <Yp54aOPqd5weWnFt@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2022 23.58, Andrew Lunn wrote:
>> There is no documented mapping from the 32 possible values of the
>> IO_IMPEDANCE_CTRL field to values in the range 35-70 ohms
> 
> There have been a few active TI engineers submitting patches to TI PHY
> drivers. Please could you reach out to them and ask if they can
> provide documentation.
>
> Having magic values in DT is not the preferred why to use it. Ideally
> you should store Ohms in the cell and convert to the register value.

We've already asked TI for more detailed information, but apparently the
data sheet already says all there is to know. I should have worded the
commit message differently. Something like

  There is no fixed mapping from register values to values in the range
  35-70 ohms; it varies from chip to chip, and even that target range is
  approximate.

So AFAICS the only meaningful thing to store in an nvmem cell is an
appropriate (per-board) raw value of that field.

I would think this would be very similar to how various sensors have
nvmem cells defining calibration data.

Rasmus

