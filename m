Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63F801AB649
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2020 05:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390824AbgDPDjM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Apr 2020 23:39:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2390005AbgDPDjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Apr 2020 23:39:09 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EC39C061A41
        for <devicetree@vger.kernel.org>; Wed, 15 Apr 2020 20:39:09 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id ng8so773484pjb.2
        for <devicetree@vger.kernel.org>; Wed, 15 Apr 2020 20:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ikFwhPaP79T559zXpru/+/ouMSYVfHSoq/3hZixqzjk=;
        b=rELjr7hj8EKHQiYaYK1IU2P2BPiXRsZmHANqUmszzCENVJLrBS8ORau/NpfkGkRAYj
         0677MH8s7Ea5F1MZFTA7JxWxnYmVpaNqOO1YLJMPiDpVWLXhdL+axZUfwFwdZo89ORmL
         Qn7xyYDCigu/v+eigluK3Yjz1BsOPUQn1PPr1bXEPEOaQ4wfFol8oCs+WptIzXuWDWsI
         8y0i8v5Au8P29j+A93oa1g78Zk+vmrGU0MKaJCj+rpAxPKXNn9KoiaTVwGTsqv4wklNg
         56fX4J4UtZcjntrXM5I9u/t3dqMkspqOaGAC+X603Hlj96hdHOMOud3Und8pSqeYbJa9
         0HZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ikFwhPaP79T559zXpru/+/ouMSYVfHSoq/3hZixqzjk=;
        b=U7NwKtbq+6cNUhuRBYvPVMwuPBazVSlKe9Wck/P1L7H5qHsKEyYmcaMoqbWkWqyyrG
         xVsRerkPd+7xyETiNhoisWmKolsUVJ56Ebck9PIbuydEceCCD/pjhLGqxbaDeko0UVXM
         ksD6D2euDIYSB5cIMFV8zb5P0MQVAvY54vjadH0UsF0WDBvIkz/KZPk9C1FkuBlL+0L8
         DIuz5xO94MS2ksJCgsbbzI7l5fkUDtmzAaHNZYewY/X9s5aixpyX/g+4Z3dWAodSEc3E
         GDEReGAoYaCVoTAuKN1wiZ+eSZbyMWAU2hkMJyclIB9AHwXnwrEI85/pilU2Y0qxOzBv
         HIlg==
X-Gm-Message-State: AGi0PuZTUhsFVdhZDKWwHA5R4CJ9F/7KeqrVZH4cZooL37dgP5GXSOhX
        sA/AbJId9HdsthJSeafLx6Cgkw==
X-Google-Smtp-Source: APiQypLFQgaZGTgMw6vrQn+ueEyckHIfUhJ7MAN891TBxNssOn223MpKhK7aKqJdnTQzM8FZCBuvpg==
X-Received: by 2002:a17:90a:d14d:: with SMTP id t13mr2644607pjw.175.1587008348455;
        Wed, 15 Apr 2020 20:39:08 -0700 (PDT)
Received: from localhost ([122.171.118.46])
        by smtp.gmail.com with ESMTPSA id 135sm12813584pfx.58.2020.04.15.20.39.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 20:39:07 -0700 (PDT)
Date:   Thu, 16 Apr 2020 09:09:06 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Pradeep P V K <ppvk@codeaurora.org>,
        Veerabhadrarao Badiganti <vbadigan@codeaurora.org>,
        Subhash Jadavani <subhashj@codeaurora.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
Subject: Re: [PATCH 13/21] mmc: sdhci-msm: Use OPP API to set clk/perf state
Message-ID: <20200416033906.cl2v6wgbz3ch3clg@vireshk-i7>
References: <1586353607-32222-1-git-send-email-rnayak@codeaurora.org>
 <1586353607-32222-14-git-send-email-rnayak@codeaurora.org>
 <CAPDyKFrOFOLCWHu8nE4i5t=d+Ei-kcJ15_42Ft3ROSUDe5jkpw@mail.gmail.com>
 <3e5f8e78-7cd1-30fb-e005-78c1e7111794@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e5f8e78-7cd1-30fb-e005-78c1e7111794@codeaurora.org>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15-04-20, 22:13, Rajendra Nayak wrote:
> As for the dependencies, its only PATCH 01/21 in this series and that's
> already been queued by Viresh [2]

It must be part of v5.7-rc2

-- 
viresh
