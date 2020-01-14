Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5089113B544
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2020 23:23:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728827AbgANWWZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 17:22:25 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:32838 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728650AbgANWWZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 17:22:25 -0500
Received: by mail-ot1-f66.google.com with SMTP id b18so14307579otp.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 14:22:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Yb6xHORuBeJhfPujkVSQ5MYYi1HxS0bOoVjowX+c/ks=;
        b=R5YEJfTVMRHyCcjpNmTrdSb/eINqr82yjwsGwyKpDonR/hlOq07nB4pQjs3hyJbASC
         UIezLVLtui9ZQ78Fg+XVA5qEr0r52pYAErD1eKcOl57ELrnDginGrLoNO2hlIStTk4+K
         0/klOTFUmCqkKAFgRZX7BbSK++3Lg3UwqY78j6qsiCawvUE1hHuOquRmLdgaVwnyT97Z
         rxAuzHwxYHLW4VEyq+0ICnfiGbrdKarsVInDdgzPUzzENSykTiHrLOzkQe3SXnY6AaxL
         r+1wvkQp05pg2earH2RgijFe1l+RFfPffi0+vO53y0IDkiIqeWK5n6gpGboAdNYn76W+
         pauQ==
X-Gm-Message-State: APjAAAWj08hK5UBaMx9IK3qgS+OVwCAJZ48Ajz3mpBaWhiaMZ7DXWsH+
        dj0j9XM93oiYQ9//pwKVi7Vo9ZQ=
X-Google-Smtp-Source: APXvYqwIAWWaXj5OLIOOTMbtFqhSN4gy3Ivuli655cAW/7wyC160vLbjeOZ4M88h4zplPPLTtgJ9+w==
X-Received: by 2002:a9d:748d:: with SMTP id t13mr453338otk.181.1579040544325;
        Tue, 14 Jan 2020 14:22:24 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p184sm5000548oic.40.2020.01.14.14.22.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 14:22:23 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 221a3a
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 16:22:22 -0600
Date:   Tue, 14 Jan 2020 16:22:22 -0600
From:   Rob Herring <robh@kernel.org>
To:     Xingyu Chen <xingyu.chen@amlogic.com>
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Xingyu Chen <xingyu.chen@amlogic.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Qianggui Song <qianggui.song@amlogic.com>,
        Jianxin Pan <jianxin.pan@amlogic.com>,
        Jian Hu <jian.hu@amlogic.com>, linux-watchdog@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v6 3/5] dt-bindings: watchdog: add new binding for meson
 secure watchdog
Message-ID: <20200114222222.GA21654@bogus>
References: <1578973527-4759-1-git-send-email-xingyu.chen@amlogic.com>
 <1578973527-4759-4-git-send-email-xingyu.chen@amlogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578973527-4759-4-git-send-email-xingyu.chen@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Jan 2020 11:45:25 +0800, Xingyu Chen wrote:
> The binding targets the Meson-A/C series compatible SoCs, in which the
> watchdog registers are in secure world.
> 
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
> ---
>  .../bindings/watchdog/amlogic,meson-sec-wdt.yaml   | 40 ++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/amlogic,meson-sec-wdt.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
