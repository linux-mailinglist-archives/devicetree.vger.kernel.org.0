Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B31B54456E5
	for <lists+devicetree@lfdr.de>; Thu,  4 Nov 2021 17:09:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231658AbhKDQMV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Nov 2021 12:12:21 -0400
Received: from mga03.intel.com ([134.134.136.65]:8892 "EHLO mga03.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231639AbhKDQMV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 4 Nov 2021 12:12:21 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231682658"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; 
   d="scan'208";a="231682658"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2021 09:09:42 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; 
   d="scan'208";a="468519314"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.209.121.122]) ([10.209.121.122])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2021 09:09:41 -0700
Message-ID: <f9203632-4730-dba6-49a7-240b45a00bed@linux.intel.com>
Date:   Thu, 4 Nov 2021 09:09:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH -next 0/4] Add LCLK control into Aspeed LPC sub drivers
Content-Language: en-US
To:     Zev Weiss <zev@bewilderbeest.net>
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
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <YYHSHoELvKRI4Zh1@hatter.bewilderbeest.net>
 <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
 <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
 <63678f47-8b4a-1385-a755-bc7c2316ca0d@linux.intel.com>
 <YYHhMGm4C0srTW1x@hatter.bewilderbeest.net>
 <768252cc-2466-3b4b-9087-549b83e00a81@linux.intel.com>
 <YYM78OxYMYwiFzWD@hatter.bewilderbeest.net>
From:   Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <YYM78OxYMYwiFzWD@hatter.bewilderbeest.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/3/2021 6:48 PM, Zev Weiss wrote:
> On Wed, Nov 03, 2021 at 08:56:10AM PDT, Jae Hyun Yoo wrote:
>>
>> Hi Zev,
>>
>> Not sure but looks like one of LPC functions is enabled while kernel
>> booting.
> 
> Looks like that was exactly the clue I needed -- obvious in retrospect, 
> but I realize now that I'm only seeing this happen when I bypass the 
> normal shutdown sequence via 'reboot -f'; with a plain 'reboot' I don't 
> hit any problems.  Can you reproduce it that way?

My system doesn't follow the reproduction pattern. What I usually do to
reproduce it is, making a host reset and followed by making a BMC reset
then host will try to send something through KCS channel and snoop-80
while BMC LPC drivers are being loaded. It's not easy to reproduce it
using my system and it's very timing sensitive.

As I suggested in previous email, disable all LPC sub functions and
enable back one by one. It could help for identifying which LPC sub
module causes the issue.

-Jae
