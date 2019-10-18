Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D2D5DDC1DD
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2019 11:53:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407778AbfJRJxE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Oct 2019 05:53:04 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:33510 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406962AbfJRJxE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Oct 2019 05:53:04 -0400
Received: by mail-pf1-f194.google.com with SMTP id q10so3569705pfl.0
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2019 02:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PGk9J+4Cve7nPzhB48lXZkSk8jD7RUn6XtFGq2ZdcE4=;
        b=n28OxGityoZDMnTZJXc8oRsZQcZHor+VKmgC6rBmcaS7on08zd2eWAFv06U/ZiSHk6
         9Lw8fUIWzMB6DMmUXmMNoKxdNKX0NF4jQCmhVVthlNpOhD2eKdor/MF6yaXkFzninruu
         cmzLJ2wHqbw1r9bS+WsEPgxmkgSt/E1yg7CKLON6iqE6joGCQR9KMjskL+l2KsIqdXmR
         F/VtfVlR4O0W1D9MWmMnF8DFcSRaOM+ZZvYUoJZsat8VUP/QR7rz1p4SE1GJkwYpTN+a
         X4hbuvWfGb1KTL73kiiUTCAn605J1ZE4Mz5ly7rR37WtyirV/Qs97aNCLdY3VnhQsu34
         NNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PGk9J+4Cve7nPzhB48lXZkSk8jD7RUn6XtFGq2ZdcE4=;
        b=me8DN5at9tmRfzSX3qgOdYOOLAzZj9jJWLZM5HnaNIJesU1puU6KcPc1Q1AAJ/RPQ1
         7NEo/Na3DWFxpU6yI2RHzOiIb2mDAW3TUqq+SgblpEoqzX8+Nlhd50Bm6lpwIfgDr9ra
         SHdPcebXXHui0vDkW+WDHyYKAveHS8ou/yyha6RVt8hdX86kfcYGp4arYBmS1b+tya01
         kTmJ2DgFyWJvZoM6ttvKHpym7z8YgTOxl8Z+Wf103mqOygaTCS45G/Uqs6+gER/8GBl5
         9ajsYQGGuYOmO7P5npXM4L8FvkG+tYKP24Bt1KuoRPBje9ewvf64pvJsShpvEA3ouw9b
         /MYQ==
X-Gm-Message-State: APjAAAXcR7uD3DMK/rJ1cmy67NrEWssSQEI9n35s9ZIVL+bIrqF+REub
        FgHfJgXTQEdWjyvOFdYR27qdJXJ1/AU=
X-Google-Smtp-Source: APXvYqxlPmABURKMNZR4TlIqRnlfd/HOkYCVCXPKQWozAwch1z3PnRODRY9cczTpXXYxPHhWt0UqUQ==
X-Received: by 2002:a63:ec4f:: with SMTP id r15mr9050130pgj.17.1571392383198;
        Fri, 18 Oct 2019 02:53:03 -0700 (PDT)
Received: from localhost ([122.172.151.112])
        by smtp.gmail.com with ESMTPSA id l62sm6471028pfl.167.2019.10.18.02.53.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 02:53:02 -0700 (PDT)
Date:   Fri, 18 Oct 2019 15:23:00 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Cc:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
        "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>
Subject: Re: [v4, 7/8] cpufreq: mediatek: add opp notification for SVS support
Message-ID: <20191018095300.mtygp2ej7rnz6uzn@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-8-git-send-email-andrew-sh.cheng@mediatek.com>
 <20190820033927.72muldasu4xd6wb7@vireshk-i7>
 <1571193828.22071.5.camel@mtksdaap41>
 <20191017063102.4jirlphdxdydl2bm@vireshk-i7>
 <1571389431.27207.4.camel@mtksdaap41>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1571389431.27207.4.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18-10-19, 17:03, andrew-sh.cheng wrote:
> On Thu, 2019-10-17 at 12:01 +0530, Viresh Kumar wrote:
> > On 16-10-19, 10:43, andrew-sh.cheng wrote:
> > > This is due to SVS feature need to fix Vproc for calibration.
> > > When SVS calibration, it want to disable all opp items, except one with
> > > voltae 1.0V. (SVS will change the voltage field of that opp item, if the
> > > corresponding voltage is not 1.0V)
> > > In this way, SVS can make sure there is no other module, include
> > > thermal, will change Vproc by DVFS driver.
> > > After SVS calibration done, SVS will enable those disabled opp items
> > > back.
> > 
> > But why is this required to be done this way ? Why can't we just update the
> > voltages without doing this disable/enable dance ?
> > 
> This is because some opp items need voltage larger than 1.0V.
> We cannot update the voltage to 1.0V.
> 
> If we don't disable these opp items, and DVFS policy want to set these
> high frequencies, dvfs driver will set higher voltage to Vproc and SVS
> calibration will be fail.

Okay.

-- 
viresh
