Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D679B26F7BD
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 10:12:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbgIRIMJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 04:12:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726236AbgIRIMJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 04:12:09 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0F7DC061354
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 01:12:08 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id x14so4641114wrl.12
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 01:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jamieiles-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=w+duO7ag7Wo1FDAv0KdE+0dJbmttarxgE5AV6WREnJY=;
        b=JBzyTof205n9CrskwSX6h5Bsd/ce4bOhMLfdprN2vtBrAd1z5+/9ZhvRoaligoxanv
         smL52mWM1PO6qYEC8JWk7UVts5wnz6ckzZGbS47gg58IbWhgq/qapkjmvoMHMRg+AIgX
         lFspaU+cUnPO3ejGryBI8TfdIkBtRTpq+QgmN8mn75Il+6yfzrRFSTtzPVh4HXg0UMwv
         gc3Ycnm6bZ8qnt9xj91o1ODzqIQ05UVvmPTaCg925XoGV+e5F1n3yuxfIrG6mMvuqFys
         I3bNd72JRQeeS5cTnD/cAuM5NeNLNDvIwiZZZQA2OmsXC3rq/mSmkvKlwiCvjsd9fC4x
         pWHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=w+duO7ag7Wo1FDAv0KdE+0dJbmttarxgE5AV6WREnJY=;
        b=uY3nQvw0jqKMlUsseJUT8apxE/Af/Yj1JWQtC1HW3rG7XJ4YJ4dkf98M1DiPE4ZnSw
         BPQDU8QRcfalELUCmDyvNJMPBzwvs/+i4mEX7aRd1MTBcT7wtAeZYMmjfLkbmwW+wPjs
         LIhtV3yB+yqWjp6HqPV70Ov9ynGZZ0aMUvW1klYdr+Le0iNuQa8jA6a36ohAHxCv/31e
         QOABTK36SmrPJJ9NnM5xqsOunrDuTeKMdFho80poGrbMz0THjR8nYHqTz5B39RkhrLAv
         aGgOyGC0re3moeK8yHrGfzEHT5yTDSZ6ewKEBZETXw7QWHWrkx1ZetWld/kVtGYWd/+b
         ChRQ==
X-Gm-Message-State: AOAM5308gbYruNxBeW1X5CQo105xeVaRe81hHgUQgmVQkesUG4EJXmgb
        SD21YudR51Tt7W3l9JASFxha5g==
X-Google-Smtp-Source: ABdhPJyJr//yLNQwyzSFw6/KlL1AcjWCyiFqfcdL5xyJ6/pG3MRMA7PeXdNmhNmuPs4oRzTR2ORU+w==
X-Received: by 2002:adf:e3cf:: with SMTP id k15mr34340382wrm.291.1600416727526;
        Fri, 18 Sep 2020 01:12:07 -0700 (PDT)
Received: from localhost ([82.44.17.50])
        by smtp.gmail.com with ESMTPSA id t15sm3408203wmj.15.2020.09.18.01.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 01:12:06 -0700 (PDT)
Date:   Fri, 18 Sep 2020 09:12:05 +0100
From:   Jamie Iles <jamie@jamieiles.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Jamie Iles <jamie@jamieiles.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] ARM: dts: picoxcell: drop unused reg-io-width from DW
 APB GPIO controller
Message-ID: <20200918081205.GA27553@willow>
References: <20200917164909.22490-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200917164909.22490-1-krzk@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 17, 2020 at 06:49:09PM +0200, Krzysztof Kozlowski wrote:
> The Synopsys DesignWare APB GPIO controller driver does not parse
> reg-io-width and dtschema does not allow it so drop it to fix dtschema
> warnings like:
> 
>   arch/arm/boot/dts/picoxcell-pc7302-pc3x2.dt.yaml: gpio@20000:
>     'reg-io-width' does not match any of the regexes: '^gpio-(port|controller)@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Jamie Iles <jamie@jamieiles.com>

Thanks!
