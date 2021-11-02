Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0580E443357
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 17:42:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234346AbhKBQpM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 12:45:12 -0400
Received: from mga12.intel.com ([192.55.52.136]:10921 "EHLO mga12.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230357AbhKBQpM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Nov 2021 12:45:12 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="211370574"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="211370574"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 09:36:41 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="583666959"
Received: from nlibermx-mobl.amr.corp.intel.com (HELO [10.209.55.177]) ([10.209.55.177])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 09:36:40 -0700
Message-ID: <a92a6ac8-dd10-0a21-ac7e-64b290e094dd@linux.intel.com>
Date:   Tue, 2 Nov 2021 09:36:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH -next 2/4] ipmi: bt: add clock control logic
Content-Language: en-US
To:     =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>,
        jae.hyun.yoo@intel.com, Rob Herring <robh+dt@kernel.org>,
        Corey Minyard <minyard@acm.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Haiyue Wang <haiyue.wang@linux.intel.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        openipmi-developer@lists.sourceforge.net
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-3-jae.hyun.yoo@intel.com>
 <194999c0-e9b3-1b0d-3739-faa2b7f72391@kaod.org>
From:   Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <194999c0-e9b3-1b0d-3739-faa2b7f72391@kaod.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Reviewed-by: Cédric Le Goater <clg@kaod.org>

Thanks a lot Cédric!
