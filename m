Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 14D6241F6D
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 10:40:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731305AbfFLIkV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 04:40:21 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:38465 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726001AbfFLIkU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 04:40:20 -0400
Received: by mail-wm1-f68.google.com with SMTP id s15so5595313wmj.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 01:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=mu+5A2Q5hvAzGMoz6pEfowPG8TlP0DjPAXbK4IMynfk=;
        b=LioNUztR4QpDQwziOI1zo4GmytCwWi28PaeavA8dL0aXOqPFgao4PBmOBreALrgjfK
         tjoyA/G4qktSmbFU2ntx5rMhesAkJcF8s6dhr1fO5dNbtKrOl26E3jY/pji+Ika6rqP3
         bNRf0tG5mRRRb+dfG7oEvtl4hYHJaWWaomDyPwcdt6ShLPCAi019jaOcoKQWGWujMpZL
         xteX4PxZluxD76b2G+xE15WHxdF1+tKJjbXIWG+Dqu2P6le+wGcjM/xNzbnI7J/MGuyz
         1E7HJmooz0XtNKcFsyOSp1MHBBgGt5+S+L9zVVVrH8YQZZ6oCLG8ovSrepAj6VHlYBXl
         +QFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=mu+5A2Q5hvAzGMoz6pEfowPG8TlP0DjPAXbK4IMynfk=;
        b=Hkng/JR2kk8l3TBvRkVSBY5gbUOD4WFh2YguNPjaUVCWdrscc4Yn3O9STYDt1dhC+B
         Py3A+eBLjnryQMmf4tIAxr9gHAyvntv8ZZjl8LyzuFDos43SFXeti6/91bpqfNRXrNUm
         tnsOsz894LNmxNp8ZJUZ7galKAbDLbKKOcJUfdfmNHhyTA+QOu79VE0DReGHZJEo6J6b
         u+P/eDDh+Dnf7ep99YiMRssaK5dUUA//d1kPGPXV2o6JJmmHT/6Zc81JRhb/eGFmxQoC
         LO2RriVd2kuha4fUg5zbJ1k15nCd9Jz12m3et6oNi2Om/SXpQ6puahpNSU6n4hDBqjs+
         cLEg==
X-Gm-Message-State: APjAAAVxj4M3aZwz52qZVgD1/RwAEk1IQG9DUYJxmGbbUfvNqM1nUgZ2
        8M/E/avHyQfgIydgdvyHqwcP7w==
X-Google-Smtp-Source: APXvYqzL4UDeJEl2i3CcLEi5RLobC2SOgsQ5h1ADxA9I14e914PlAJfyRM1ObHfTvvyg8QrnegS+7A==
X-Received: by 2002:a1c:7604:: with SMTP id r4mr21373042wmc.89.1560328818792;
        Wed, 12 Jun 2019 01:40:18 -0700 (PDT)
Received: from dell ([2a01:4c8:f:9687:619a:bb91:d243:fc8b])
        by smtp.gmail.com with ESMTPSA id l190sm3685652wml.25.2019.06.12.01.40.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 12 Jun 2019 01:40:18 -0700 (PDT)
Date:   Wed, 12 Jun 2019 09:40:14 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Pi-Hsun Shih <pihsun@chromium.org>
Cc:     Rob Herring <robh@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v10 5/7] dt-bindings: Add binding for cros-ec-rpmsg.
Message-ID: <20190612084014.GA4797@dell>
References: <20190603034529.154969-1-pihsun@chromium.org>
 <20190603034529.154969-6-pihsun@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190603034529.154969-6-pihsun@chromium.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 03 Jun 2019, Pi-Hsun Shih wrote:

> Add a DT binding documentation for ChromeOS EC driver over rpmsg.
> 
> Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
> Changes from v9, v8, v7, v6:
>  - No change.
> 
> Changes from v5:
>  - New patch.
> ---
>  Documentation/devicetree/bindings/mfd/cros-ec.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
