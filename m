Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 322F0187A1
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 11:23:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725847AbfEIJXk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 05:23:40 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:34979 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725821AbfEIJXk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 05:23:40 -0400
Received: by mail-pg1-f196.google.com with SMTP id h1so914170pgs.2
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 02:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qMvKlIPlrNL8Lr3tsJwCK+5Y/oer0uCBV35dDO8Zkrk=;
        b=NIb2WRlPHYJaY9APSYPOmpC5vacCSIV3cMrBiWQ3B/dHkyFxJvA/UfHvbpyMUbKDCz
         gsufdXoTyBDhCnJyNmutfJSncarmM/zS6n0dbQA8l6odxlzRq6vvgDBAcaAz4Y3CprJ+
         TYr/norj9dDW0G+uGhWb6id+gMBiW4Yp7jk8QLbjv4shl0/JdOjGCOqDJNr8kIkjJeP1
         To4l6DWyIZpgoDAKXVGV5D4hssD0JJYO28tTGbBiN/ICU9cfY4dgv8JvNeoZ6fIExqES
         oR/gnsa/+UMi1JMtVbQ/VajewNslieyh6+0dGBjIeIsRQmQZfmJPyHm8JRhUAoudd9N1
         fwiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qMvKlIPlrNL8Lr3tsJwCK+5Y/oer0uCBV35dDO8Zkrk=;
        b=VWABKuiRJLGyOo1tUbNLkmV94kvc31MpV6dCS6BXXTaV8WP7CczHwKrw0JtSUqtfPw
         OxUmX24gN/JtAsIdtc0ZSYCbB5y/3mGLGgmEmM9BsiRC7mxtCPJELSN8tLZ1FeA5w34Z
         T6aeWNsVOcrzHMNpRNVhdctehO+z9IBb5HvdC0bzfKyprMnRXxzZOQfnPeJF3rPvzEXl
         q3J2ZcZHD9YApKSkiVDSrmYkA4o5cNZRts8zCj5TpHDYfzz89Z0KVjhc0Wcs91OgI3Nh
         FykYicHfXha2TCU9LAJFXuW0rJXg1CQAQi4qRJxKPnFRrTGGH36EfxwBH4G8HyQaqHTs
         VwQA==
X-Gm-Message-State: APjAAAX071q3xVwQYHILXOAgfAeLGsi+LyaDwjy20o6AgiR8squDPT8S
        XxAt6Z6VGHpW0iIF+OBcMz+eDA==
X-Google-Smtp-Source: APXvYqypzpGZwMmGq/H4pQzwC/KWTbyJwztPpSpuLhtDasGDGxwbvdZQyeDTYFPbKi+URMbMIDz2NA==
X-Received: by 2002:a63:5608:: with SMTP id k8mr3998732pgb.393.1557393819018;
        Thu, 09 May 2019 02:23:39 -0700 (PDT)
Received: from localhost ([122.172.118.99])
        by smtp.gmail.com with ESMTPSA id 124sm2897822pfe.124.2019.05.09.02.23.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 02:23:38 -0700 (PDT)
Date:   Thu, 9 May 2019 14:53:36 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Leonard Crestez <leonard.crestez@nxp.com>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Anson Huang <anson.huang@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Abel Vesa <abel.vesa@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 1/4] cpufreq: Add imx-cpufreq-dt driver
Message-ID: <20190509092336.jw54pzq7i7gzcuky@vireshk-i7>
References: <cover.1557236799.git.leonard.crestez@nxp.com>
 <607242a278a4532d0b4285e0fb56abfd5767fdd1.1557236799.git.leonard.crestez@nxp.com>
 <20190508035402.7pbikzpkzxxesmlw@vireshk-i7>
 <AM0PR04MB64349B11B2A914F705B6D302EE330@AM0PR04MB6434.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM0PR04MB64349B11B2A914F705B6D302EE330@AM0PR04MB6434.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09-05-19, 09:03, Leonard Crestez wrote:
> On 5/8/2019 6:54 AM, Viresh Kumar wrote:
> > On 07-05-19, 13:52, Leonard Crestez wrote:
> 
> >> +config ARM_IMX_CPUFREQ_DT
> >> +	tristate "Freescale i.MX8M cpufreq support"
> >> +	depends on ARCH_MXC && CPUFREQ_DT
> >> +	default m if ARCH_MXC && CPUFREQ_DT
> > 
> > As I said in the previous version, the if block above is redundant and
> > not required.
> 
> Sorry, I misread and thought you were referring to () rather than what's 
> inside.
> 
> Is "default m" otherwise OK? It's a reasonable implication of ARCH_MXC

I think it would be better to keep it disabled by default and so
removing the line all together would be a good option.

-- 
viresh
