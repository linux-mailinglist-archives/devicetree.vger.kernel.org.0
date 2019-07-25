Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7615274342
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 04:26:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389094AbfGYC0O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 22:26:14 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:41627 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389090AbfGYC0O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 22:26:14 -0400
Received: by mail-pg1-f196.google.com with SMTP id x15so11827332pgg.8
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 19:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rDiLShrDC8kXE/WTfd9b1UXLyI+P3zktjRDiUd/p51s=;
        b=Lyp35NU9rgi/xE9LSFdJz8ucylAhLT0GpyLYrfePckLaatp+bs/dAIBPEUj3OcZBz5
         4Lx2lPghPYXcg2qAoaSI8p/zmdsv36ZFuYW9KVIXpY5Mjy6qunX58zXV6Vron6HH1fnm
         9ullmXGJogZxip19X+ahHyzSXz5X/RX5YF78PvSIDXZMb20m3R848GDk8EVXmFfrtg2C
         glLD7B33N9tArYgV4DdYtT2Pb7Xp7C4oBSj3Gn6yOOMC00Cs+FzPmaW8MecDwSOyex7j
         j+VM6enOhfpwoSFpnWzvNd75hAIU04SsgeRto5ZwSSSnbAeJE6Hkqi6ArIsYmXzG6Fo1
         lxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rDiLShrDC8kXE/WTfd9b1UXLyI+P3zktjRDiUd/p51s=;
        b=Hhxt9yd+hLIk0UkDvD5LzIqg7/8YzS7QuU38N35hEzAWymUQOyO2rB8iL818Z4GF8w
         1EuhmG6ZfNpaCrkZMONTZezACmwTydRoZzBbv/tRSWxRFT8s/T3YCKhuXdvI2OQdI9S0
         cqll++OA7PwZCvivlKwBu6SASxer8q8a94kpZGCHB36eU83O4aUl663C0UDDJyA01eTG
         xLFqLRoAort/AKXnVJLtUxSFf/Q15A8Gkqfm/wxLqgYwa5+fjNvVLT6fuiZ4iyPCwqC3
         leUP95U07ENZ3ZkduTL4/oBc4PK/9fHDz+/5ro+rYW0rdc8spKYvseIh6+bYEF7sd6GY
         DkyQ==
X-Gm-Message-State: APjAAAWxCfKFxsKWZuD9d9CeibbZoLqhcu24E+OjRYlet6DLGgcHAgWF
        8h3SF+mEM88ROAE4iLsK6072RA==
X-Google-Smtp-Source: APXvYqyG5lBxKIdnc+rgbPIFai7y5A3KdoVj2i2HUWnhYnSV0eT+/UbQI3E/MDXyuB7N3zQiw+L5Wg==
X-Received: by 2002:aa7:93a5:: with SMTP id x5mr14023218pff.87.1564021573878;
        Wed, 24 Jul 2019 19:26:13 -0700 (PDT)
Received: from localhost ([122.172.28.117])
        by smtp.gmail.com with ESMTPSA id 143sm70120417pgc.6.2019.07.24.19.26.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 19:26:13 -0700 (PDT)
Date:   Thu, 25 Jul 2019 07:56:11 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Anson.Huang@nxp.com
Cc:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org,
        robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        leonard.crestez@nxp.com, p.zabel@pengutronix.de, ping.bai@nxp.com,
        daniel.baluta@nxp.com, l.stach@pengutronix.de, abel.vesa@nxp.com,
        angus@akkea.ca, andrew.smirnov@gmail.com, ccaione@baylibre.com,
        agx@sigxcpu.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Linux-imx@nxp.com
Subject: Re: [PATCH V2 1/4] dt-bindings: opp: Support multiple opp-suspend
 properties
Message-ID: <20190725022611.f6dirdstu3yndcwy@vireshk-i7>
References: <20190709080015.43442-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190709080015.43442-1-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09-07-19, 16:00, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Update opp-suspend property's description to support multiple
> opp-suspend properties defined in DT, the OPP with highest opp-hz
> and with opp-suspend property present will be used as suspend opp.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch.
> ---
>  Documentation/devicetree/bindings/opp/opp.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied. Thanks.

-- 
viresh
