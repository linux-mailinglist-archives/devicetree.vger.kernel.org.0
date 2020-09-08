Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E3F1261085
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 13:15:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729341AbgIHLOj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 07:14:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729843AbgIHLOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 07:14:31 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B92CBC061799
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 04:13:37 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id 67so9781520pgd.12
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 04:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WVsW5/h4oQT6F2Ccs9ZaXWGd8sXTP+0lzm/VdEkOoNU=;
        b=karhH+PgSODWREXm0p54GPAS5fuKpXKJt+8Af39CQ0dmYw1iBiarVafXJpzDWywJmJ
         DIKSvOLWtEqV5fTY4VG41E0KD8ebLBehgL3RGJ7bpbnAf3kVBO4L850CEl8A1aJapJd7
         JQ3QoaevsqfxrykTQpknub/IQdeBSPVV2v1liXvQT2jv+GzKuquHLazpZ/Ra8aAaE5di
         U3EAuJzzwcfDuAfXJ4PkAGDasgeNGCzwoNghhN0Z4N7KoQlb2nuph1iguJVETLTA6O1l
         eVacXWnmpIcXJtfgaNMO215NZqqgddBf552Xa7E+yvy/iBppLvv++FcgttQzzlql+Vxn
         GyEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WVsW5/h4oQT6F2Ccs9ZaXWGd8sXTP+0lzm/VdEkOoNU=;
        b=nYfbwQ/i7TnhPopNeYFhLBjw5VTk0PwiiSFoJjEbY3NequyuoBfZvjm+Ev4anZ1iWN
         6cuYthMXRk2ZAo5kDFcBKjpgwy9iDOXv1XU+oPyequf0jbAKP8/vOL2yczkVfunAzMC1
         EOtmb+y8wkygGzEeBcWb1nilsEWEDfiHvskjIMrS1f1xJ4pc/1ji4H+vzjvm1mRUvJIM
         HkFNGkqXzOldKqEY0yTetQLZ8+P3KwPcadcF326Vu0FZG5HCgEokCCWtZqMRNL4B8eKG
         9qKeEjc+5E+iuv3XdsmrIZGAWbFpfsNo32HtkRSw2gNjaowIh0pDAwqe7jsVtz1EOHxU
         MGuQ==
X-Gm-Message-State: AOAM530lk2sPYsD2ainSQqaFsAS2obXBewG+dpxakWRFAkQNUglvAQhV
        Kje0oDiCf7cvhe4VOE51ltHBmBC5app4+A==
X-Google-Smtp-Source: ABdhPJx8styTZ/vn74fTMnB2guiXpmFzAePJU+SGLWP0r0xJfiKvSMVi9vEJfHQyKmPs/jo/hm/Hnw==
X-Received: by 2002:a17:902:c3d3:: with SMTP id j19mr23528672plj.59.1599563615251;
        Tue, 08 Sep 2020 04:13:35 -0700 (PDT)
Received: from localhost ([122.181.54.133])
        by smtp.gmail.com with ESMTPSA id q18sm13906333pfg.158.2020.09.08.04.13.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 04:13:34 -0700 (PDT)
Date:   Tue, 8 Sep 2020 16:43:31 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Hector Yuan <hector.yuan@mediatek.com>
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        wsd_upstream@mediatek.com
Subject: Re: [PATCH v4 1/2] cpufreq: mediatek-hw: Add support for Mediatek
 cpufreq HW driver
Message-ID: <20200908111331.rdvtrvttoapqxaib@vireshk-i7>
References: <1599550547-27767-1-git-send-email-hector.yuan@mediatek.com>
 <1599550547-27767-2-git-send-email-hector.yuan@mediatek.com>
 <20200908102752.r2n6xvghl4fcdrcv@vireshk-i7>
 <1599563425.2621.5.camel@mtkswgap22>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1599563425.2621.5.camel@mtkswgap22>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08-09-20, 19:10, Hector Yuan wrote:
> OK, I will define the corresponding exit function. 

Also please add remove() corresponding to probe().

-- 
viresh
