Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C1D281C3AD
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 09:13:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726542AbfENHN2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 03:13:28 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:44870 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725946AbfENHN2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 03:13:28 -0400
Received: by mail-pf1-f195.google.com with SMTP id g9so8602600pfo.11
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 00:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iQPLHP05DqTegTE4TUsSF3/FbmYhNyo/2jB+YqeEkrI=;
        b=a4hZDKAvf2U8Toua66nWLCC4rtqeiHw+52aauyS6hdU9pTo2sSelpzKs56LSDfezND
         X6Ev/N4UprzvoP9j+EhrsDOY/OvUj6nrV6mP+hU7L6d25vL7CQJvzjVsp8j128EGi73s
         9rRJuh5eBSkh6+DwcDEbbna13+qK9sXI3hIUj3J4i0ni7+zRnTpGo/nZgeBEIAbG5uFq
         7Y3qQvWMy284c2y/zasJqA+6IRjJnL6Wka8V94+U2JunJf9JHe55sXhBEUiGNVjGaV41
         eYjMM3rKCKPNAJACWSEgSArOToAjuFPBNhgaWUGjKb2qOYHm9PQKPNi1LXKJAnHnnMr+
         Negg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iQPLHP05DqTegTE4TUsSF3/FbmYhNyo/2jB+YqeEkrI=;
        b=epDIsjoW4LVzuNcNhJEEr9QBji5kj0KM51yRKVw6j5hP7dLb9nljUIDk0tT/JIVdYp
         gT62YF91dBJC7arcfQRuS5ik8FQFKCjzxffH1IKuOJQ0PCw+c1WV+xCwfGdmng5stVbT
         5UAMPWBmVempgrGUrGVv78IvENihzQ/Zbu/3s6Q8jW5ZF0ICNG/G+o/Ucod9rnaquErL
         PkEkFbv07MprjQPUAW32CJSW7Ny67Nmr+KCg0DbMuPS1dzsbecZoKHATEJiAwG3LnmEr
         GXNFAn7dNCcI8MPnOTMbg6KhItJA8/lKznDTs61GjbRJBxUGllGaqTksb1yESIRZLA3z
         OqnQ==
X-Gm-Message-State: APjAAAWLG3kk42h1FxHSK0qmk4hq2GWVNJUmMfu3IOnYABbU0pBFWL0p
        WtidZ7Ak4uiLs28xdLK5DF5C1g==
X-Google-Smtp-Source: APXvYqxlwCtWVIeqSWNPyeiO1Zvjxtcd6+21+Dr/KyIW9UCRHmAKi1NUfC5srjjkBFwN/NXsOhfJ6A==
X-Received: by 2002:a63:c64c:: with SMTP id x12mr36252780pgg.379.1557818007151;
        Tue, 14 May 2019 00:13:27 -0700 (PDT)
Received: from localhost ([122.172.118.99])
        by smtp.gmail.com with ESMTPSA id y14sm18254920pga.54.2019.05.14.00.13.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 May 2019 00:13:26 -0700 (PDT)
Date:   Tue, 14 May 2019 12:43:22 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Leonard Crestez <leonard.crestez@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Abel Vesa <abel.vesa@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
        Anson Huang <anson.huang@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 0/5] cpufreq: Add imx-cpufreq-dt driver for speed
 grading
Message-ID: <20190514071322.avosfk4fzz2hzzx6@vireshk-i7>
References: <cover.1557742902.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1557742902.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13-05-19, 11:01, Leonard Crestez wrote:
> Right now in upstream imx8m cpufreq support just lists a common subset
> of OPPs because the higher ones should only be attempted after checking
> speed grading in fuses.
> 
> Driver reads from nvmem and calls dev_pm_opp_set_supported_hw before
> registering cpufreq-dt.

Who will apply patches 3-5 ?

-- 
viresh
