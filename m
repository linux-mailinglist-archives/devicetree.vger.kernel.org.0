Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 24E185EDC2
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 22:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727004AbfGCUnF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 16:43:05 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:38959 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726902AbfGCUnF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 16:43:05 -0400
Received: by mail-pl1-f196.google.com with SMTP id b7so1852102pls.6
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 13:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x4TV9OuGMH2IFAWRzYFxjVpyDgSmZpX4HKATzy9i5LE=;
        b=NqpSXt2ai4FWgYUhx9YUIQd8vWtb3B9ByuyfiMWY/XFkaiWfCj1FBGxkAwtk1xNHNN
         vgKEuCm1NC9cInuq+hL1kwDFHAL7pRfhG61zNFwnu36Z3oVL48mwQVXET+K0XU4M/2U4
         MxeCSPy7BE3iLKqtqYOwH2ulvCTGQgY8QrwSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x4TV9OuGMH2IFAWRzYFxjVpyDgSmZpX4HKATzy9i5LE=;
        b=g/Zhsean+8WlJK8dYkxfgv5xcvY7DUxiajwb424mPF57hDWa+4AYdFkg1slTqgzjaV
         Og1z/VihRCQme9hFhYkRebwsjopS4NUmsyFv9VH7cdm7ie7S82fLENS3F6qkKShWDc1Y
         OVGsZhr6+oldA9Hd4R7SkIdLiKNPPHeeHTJy/xcc9iHmNDIQzlW1wnGJuGr2uKZo5/MJ
         Nsg+4d2Jr9AA9HEKs4wsIX9b17DFJ04BkYFeyiXHYQfatiMNWOQ0udvAuvlKBRBJjwTw
         NKj+QxEspC5ShceFANOI9zCRt1WLeuAKGUqViaAh/qCg41jnfdF3g/jPkzjrrpwwJzAq
         FPEA==
X-Gm-Message-State: APjAAAVe0fyCkXlmN1WDot57yNbicMNQtTNf+6C6gj9kdQJKZGc/k/p0
        A+MEuSHgtB0+9n9IpxMslGO/Ew==
X-Google-Smtp-Source: APXvYqykgvMApITkPMMhHzregOurly8+6C4wq2UcUc1VFL1/AiRc7obmDF5E4wOp3JP2p5uh8rmkmw==
X-Received: by 2002:a17:902:9a06:: with SMTP id v6mr43660872plp.71.1562186584828;
        Wed, 03 Jul 2019 13:43:04 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id u7sm3086441pgr.94.2019.07.03.13.43.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 13:43:04 -0700 (PDT)
Date:   Wed, 3 Jul 2019 13:43:02 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 7/7] net: phy: realtek: configure RTL8211E LEDs
Message-ID: <20190703204302.GG250418@google.com>
References: <20190703193724.246854-1-mka@chromium.org>
 <20190703193724.246854-7-mka@chromium.org>
 <20190703201032.GG18473@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190703201032.GG18473@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 03, 2019 at 10:10:32PM +0200, Andrew Lunn wrote:
> > +	for (i = 0; i < count; i++) {
> > +		u32 val;
> > +
> > +		of_property_read_u32_index(dev->of_node,
> > +					   "realtek,led-modes", i, &val);
> 
> Please validate the value, 0 - 7.

ok, will be 0-7 and 0x10000 - 0x10007 (w/ RTL8211E_LINK_ACTIVITY) though.

This is the somewhat quirky part about the property, each value
translates to two registers. This seemed to be the cleanest solution
from the bindings perspective, but I'm open to other suggestions.
