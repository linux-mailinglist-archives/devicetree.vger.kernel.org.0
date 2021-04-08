Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DA3B357A75
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 04:37:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbhDHChL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 22:37:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229600AbhDHChK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 22:37:10 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F239EC061761
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 19:36:59 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id r17-20020a4acb110000b02901b657f28cdcso150323ooq.6
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 19:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sNt0N9k5A/iZhS6mLH3QqBzCSSb0518KO9+l8szb88c=;
        b=LUf8Eiojwyx3AkSHJqCIk3X+PIGMeWOQGjVQfUNYCrrKhnGPtxvNMeITP4theeZA4s
         TXvOTOWeYg9JjM4Q1J8GpAKIT9XqTZrCzvb7I5vwvfLR6j/RESBDguI0jSK1LEIuxZrf
         p6cSNv43h8Lp43xBgDvkuR1HanutyH1eCekF9EKytvEAkmjjUsyAPiG3NEZpk32F7UV/
         l3WRmf8e9Eb9ov6gjNMcAkuWOQjxZRR7O69/xXXVIV532y7tLSXjQtBn1XX4Z0GO3TZC
         HYCx0wNGD0llxL3YX20aku6rh3xYYZTPyRcpzkGPg2gPKaywceMWIxfh/53o77I7XJlU
         mCaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sNt0N9k5A/iZhS6mLH3QqBzCSSb0518KO9+l8szb88c=;
        b=MH1L5lnGjqeopxcWca4/Crws9qeNNNX6HAba3zfh/u+wJ+K/kuU5bQ8qpTQTteuMdr
         UCH7/0umv7HI0FYTxl1DprPOY6Mlxj+mSCgvY5Xk2+dsxr29Gi/PMVM6+5CxeZzDUwZ+
         sw54dC94E7CFXEDM9lgoq87o8rCy7sPenWdNd2vXpuMuZ/U9t7Zll4cYaiwMbE/C+76a
         y/FnDUHQG6QRtsXHfD4XEqvJkXNEueX18eWV8qtUXovSZ391LNbjYBvFgxmmZfmxYyV2
         qAYYl71JGyyNxexsXsnPq9DRndDaunypGbpQcI+gOobS4AThxxFU+92ZeLam1USknp4g
         XlSQ==
X-Gm-Message-State: AOAM531V3atExtLtjSaeIIYrCyVBo97yLa7k6PoLa4bAP/7FvgW+/L8K
        0yXmHAFKfwV6NsT5bEFnTO9aqg==
X-Google-Smtp-Source: ABdhPJxwHieceqi2i/XhpJhh/5S87/OOgtYfASCGY0aWMHBjw4edQyRluei4ZPIjwLYRu5LlhzIbpA==
X-Received: by 2002:a4a:d24c:: with SMTP id e12mr5522553oos.73.1617849419360;
        Wed, 07 Apr 2021 19:36:59 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 3sm4532103oti.30.2021.04.07.19.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 19:36:58 -0700 (PDT)
Date:   Wed, 7 Apr 2021 21:36:56 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     skakit@codeaurora.org, Rob Herring <robh+dt@kernel.org>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Andy Gross <agross@kernel.org>,
        Lee Jones <lee.jones@linaro.org>, linux-rtc@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [PATCH 2/3] dt-bindings: mfd: Convert pm8xxx bindings to yaml
Message-ID: <20210408023656.GM904837@yoga>
References: <1615447798-6959-1-git-send-email-skakit@codeaurora.org>
 <1615447798-6959-3-git-send-email-skakit@codeaurora.org>
 <YEpNV55KR2nlAXMP@builder.lan>
 <86f8d5dbdb8d5d6627b9deece1978d07@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86f8d5dbdb8d5d6627b9deece1978d07@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 07 Apr 10:37 CDT 2021, skakit@codeaurora.org wrote:

> Hi Bjorn,
> 
> On 2021-03-11 22:33, Bjorn Andersson wrote:
> > On Thu 11 Mar 01:29 CST 2021, satya priya wrote:
[..]
> > > +patternProperties:
> > > +  "rtc@[0-9a-f]+$":
> > 
> > Can we somehow link this to individual binding docs instead of listing
> > all the possible functions here?
> > 
> 
> you mean we should split this into two:
> qcom-pm8xxx.yaml and qcom-pm8xxx-rtc.yaml
> Please correct me if wrong.
> 

Right, I'm worried that it will be quite hard to maintain this document
once we start adding all the various pmic blocks to it. So if we somehow
can maintain a series of qcom-pm8xxx-<func>.yaml and just ref them into
the main PMIC definition.

@Rob, can you give us some guidance on how to structure this binding,
with the various PMICs described will have some defined subset of a
larger set of hardware blocks that's often shared between versions?

Regards,
Bjorn
