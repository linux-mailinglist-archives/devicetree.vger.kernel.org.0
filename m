Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 188564A9FAC
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 20:03:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230233AbiBDTD0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 14:03:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232573AbiBDTBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 14:01:51 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4013C061401
        for <devicetree@vger.kernel.org>; Fri,  4 Feb 2022 11:01:51 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id u13so9595029oie.5
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 11:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=STmuphEeKV4glW0tR02UwdQ/ruA9FWAezAaaGoRUMrY=;
        b=M3Sxo5KlnwDXBniwpLFcbK0MSCv2KOPSv/wJ6QtvfGAPQgP+v8MXw2akdkS44GgJ6r
         yugppdVfaVGEeF7O7JN/purjrWmxbRp4nYVSKDI99Bj5OVOkdXQuBmGEza5Obz4MHXjr
         LlMfBQlDHegS7R8groObqIg2uy1AsBHTDEUNbOTL9Uxc2/Nrvd2M6CONfuwAL2/W0L77
         D3h71SSbA+UwnB0KvK+XkhV7bSLgzeQt+ovu006SPyttpQI2jX7P8WISOiMz/vbB8V3V
         HpiuEcGiYOqz0F7e9XwJiISc/ro5/nGfvo70PhlhlexPIwIFBVSkFoPGk4wJIt9LiRmI
         KvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=STmuphEeKV4glW0tR02UwdQ/ruA9FWAezAaaGoRUMrY=;
        b=4RILgUOE/lL+Zzv5mVy/V2bYLIUoAdueSsphR+Arl0K2UClhPwPPidkDN1FMbN+nyw
         6KwNYxwzHoVL2y8mJaR1nLnIVCnwGdKgqCvEvhUu16WBI0WvyhcXcH3uQtVEbDOAbBwe
         gwq8trCVPisZIzLBZ/+/0VfsL11urQoPa01jCWXcoyja41MLXAGz72F7cEg/HtysoI4t
         UoIufu7HLgswt7kNEfeehPM6NR3f/PIeHcgFt41qMOfbOfLMcX0DH8EC/coMdZMdyNpU
         NnlQ+WG8f+58gaZ3rV3VghN828zGtdy4Gardew/uAsH+au6X8vt0O7FwWqbZxE4A1Ytc
         O9og==
X-Gm-Message-State: AOAM532Ef2B4Co561+wODqfF1St5/Ai2j1VyyQkutCtLOorqj+cvXGAI
        YBBjbLR/9WqZjm9W0xefJClPyg==
X-Google-Smtp-Source: ABdhPJyahrucDHaS5EfWeDgdeVUUwg2cLUTwdBVarxOCy1XhXsmrz83trRzACc/B3MLTs8XrXKO0Rg==
X-Received: by 2002:a05:6808:1792:: with SMTP id bg18mr2083854oib.90.1644001310180;
        Fri, 04 Feb 2022 11:01:50 -0800 (PST)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id n12sm1055597oop.5.2022.02.04.11.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 11:01:49 -0800 (PST)
Date:   Fri, 4 Feb 2022 11:02:04 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linus.walleij@linaro.org, Loic Poulain <loic.poulain@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Wolfram Sang <wsa@kernel.org>, linux-i2c@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/9] dt-bindings: i2c: qcom-cci: add description of a
 vbus-supply property
Message-ID: <Yf14LADJ26G9ByZu@ripper>
References: <20220203164629.1711958-1-vladimir.zapolskiy@linaro.org>
 <20220203164629.1711958-3-vladimir.zapolskiy@linaro.org>
 <Yf1q+wlXo2LAeZX+@ripper>
 <Yf1zhojUSxlMNZgV@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yf1zhojUSxlMNZgV@sirena.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 04 Feb 10:42 PST 2022, Mark Brown wrote:

> On Fri, Feb 04, 2022 at 10:05:47AM -0800, Bjorn Andersson wrote:
> > On Thu 03 Feb 08:46 PST 2022, Vladimir Zapolskiy wrote:
> 
> > > +- vbus-supply:
> 
> > I don't think "vbus" is an appropriate name for his. Perhaps "vddio" or
> > something like that would be better.
> 
> > But there's a bigger question here, this is not a supply for the
> > i2c master, it's simply a supply for pulling up the bus. So it's not
> > entirely correct to specify it as a supply for the CCI node (which is
> > also the reason why the name isn't obvious).
> 
> Does the device (controller?) not have a supply that the I2C bus is
> referenced to?  If so that supply should be named.
> 

No, for some reason the regulator in question is not connected to either
the master or the client devices, it's only used for pull up of a few
of the i2c busses.

> > Typically we don't don't mention the bus-supply because it happens to be
> > pulled up either by io-supply for the block, or by some always-on
> > regulator in the system.
> 
> If the bus is being pulled up to some supply other than the supply that
> the bus is referenced to that doesn't sound like the greatest electrical
> engineering ever...  without any context it's hard to comment about this
> particular system.

That's what the schematics says...

Regards,
Bjorn
