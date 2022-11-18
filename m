Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B0F262EE9F
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 08:48:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235263AbiKRHsi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 02:48:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230042AbiKRHsh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 02:48:37 -0500
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0402110B6B
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 23:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1668757717; x=1700293717;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=M/zLcaDz09KJlJ04sCWV1SRB27o9Dr21PYddp1qdmLc=;
  b=SalCJbqpSy3vsDeoU88E3aREuASLl4Gbk4bfCAPZ7RnjGLIbsNN8OSa9
   A7LsbpqEjh8klhbu804/bN/pKI1HGVq/O9Ghyv3iaykhMBl7B8kQL3nf+
   wdD+eN87xa/rFZ4zo5lAOuC0YxOOjeVk/+QdsQA4i7VvCXimkMl9l+G51
   JSpTVJr0YvJG9vaZq913gla7AY8oQJ3ZJzuIjx0RWDMdGLKwfdrQzNiWl
   uNWbizoTxJnCzHFLzRy7/A86I4FHxhdWR+ic0/LUmMkU/GzWaJPfq+HPE
   YjZFxkauXl6v5t9WXi9WCVFj/nP2dhhBsC1io+CQeq/PMC2DA0IJhYt1i
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="293470127"
X-IronPort-AV: E=Sophos;i="5.96,173,1665471600"; 
   d="scan'208";a="293470127"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2022 23:48:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="634346951"
X-IronPort-AV: E=Sophos;i="5.96,173,1665471600"; 
   d="scan'208";a="634346951"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com) ([10.237.72.43])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2022 23:48:35 -0800
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
        by paasikivi.fi.intel.com (Postfix) with SMTP id 9CFD82022B;
        Fri, 18 Nov 2022 09:48:32 +0200 (EET)
Date:   Fri, 18 Nov 2022 07:48:32 +0000
From:   Sakari Ailus <sakari.ailus@linux.intel.com>
To:     Yang Yingliang <yangyingliang@huawei.com>
Cc:     devicetree@vger.kernel.org, rafael.j.wysocki@intel.com,
        robh+dt@kernel.org, frowand.list@gmail.com
Subject: Re: [PATCH] of: property: fix unbalanced of node refcount in
 of_fwnode_get_reference_args()
Message-ID: <Y3c40MhBLZlENxQC@paasikivi.fi.intel.com>
References: <20221117145656.395056-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221117145656.395056-1-yangyingliang@huawei.com>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Yang,

On Thu, Nov 17, 2022 at 10:56:56PM +0800, Yang Yingliang wrote:
> I got the the following report:
> 
>   OF: ERROR: memory leak, expected refcount 1 instead of 4,
>   of_node_get()/of_node_put() unbalanced - destroy cset entry:
>   attach overlay node /i2c/pmic@34/adc
> 
> In of_fwnode_get_reference_args(), the 'of_args.np' returned
> from of_parse_phandle_with_args(), its refcount is increased
> in of_phandle_iterator_next(), if args is null, the refcount
> of 'of_args.np' need be put to avoid leak.
> 
> Fixes: 3e3119d3088f ("device property: Introduce fwnode_property_get_reference_args")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>

Thanks for the patch!

Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus
