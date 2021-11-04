Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A0A4444D17
	for <lists+devicetree@lfdr.de>; Thu,  4 Nov 2021 02:48:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232909AbhKDBvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 21:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232908AbhKDBvO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 21:51:14 -0400
Received: from thorn.bewilderbeest.net (thorn.bewilderbeest.net [IPv6:2605:2700:0:5::4713:9cab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8544FC061714
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 18:48:37 -0700 (PDT)
Received: from hatter.bewilderbeest.net (97-113-240-219.tukw.qwest.net [97.113.240.219])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: zev)
        by thorn.bewilderbeest.net (Postfix) with ESMTPSA id E1862373;
        Wed,  3 Nov 2021 18:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
        s=thorn; t=1635990517;
        bh=CkPGfIGdJl1Sm1jvL44ZO2+ID8zt4FiR+y+7s0H1yZI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MCLLMK1eNlLmUSFwuTCCKFYiMHqzqedGFHRwcU30yLMztv6y1e9AWemNn9ScMfmE0
         sMthE9AG3P7UW56IMhJPKMA2NpK6lPUQ78JvvrkDJJcI/6jZ6RDHTx15oQa78oVxTI
         VEzslz/RHf9aBc2RJ4oF7DDhvhy0bYOjGu1JkUGU=
Date:   Wed, 3 Nov 2021 18:48:32 -0700
From:   Zev Weiss <zev@bewilderbeest.net>
To:     Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     Joel Stanley <joel@jms.id.au>,
        Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Corey Minyard <minyard@acm.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        openipmi-developer@lists.sourceforge.net
Subject: Re: [PATCH -next 0/4] Add LCLK control into Aspeed LPC sub drivers
Message-ID: <YYM78OxYMYwiFzWD@hatter.bewilderbeest.net>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <YYHSHoELvKRI4Zh1@hatter.bewilderbeest.net>
 <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
 <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
 <63678f47-8b4a-1385-a755-bc7c2316ca0d@linux.intel.com>
 <YYHhMGm4C0srTW1x@hatter.bewilderbeest.net>
 <768252cc-2466-3b4b-9087-549b83e00a81@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <768252cc-2466-3b4b-9087-549b83e00a81@linux.intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 03, 2021 at 08:56:10AM PDT, Jae Hyun Yoo wrote:
>
>Hi Zev,
>
>Not sure but looks like one of LPC functions is enabled while kernel
>booting. 
>

Looks like that was exactly the clue I needed -- obvious in retrospect, 
but I realize now that I'm only seeing this happen when I bypass the 
normal shutdown sequence via 'reboot -f'; with a plain 'reboot' I don't 
hit any problems.  Can you reproduce it that way?


Zev

