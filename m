Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82D8D6322E6
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:59:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229731AbiKUM7t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:59:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbiKUM7s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:59:48 -0500
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 774142936E
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1669035587; x=1700571587;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=si+DZodBVvJT8HkhhedPN4Wed1iZ0a5TOnfLApPF3VU=;
  b=LkBQ7p3LGNnm3kISEMw7CBHaXdpS3DwVXn5jY9zRBJQdWr9+BAJhR7iU
   ts2yjV7J2Nm8TazRylgKtc5vjroB0zhv/UwMJ4FGkr6RMwmRVMwqLWEpr
   3Gfhi86IHEE/w7NIFZ7DvpuhQ9TiaPwJpNHDlFp2I/t5i6ULGU/BBc38N
   Eu0w3PvN0s+Q/E7WlEO3aEsiU5sA0P45t7da2IAiMHCE1e7ObQk5ZrgA1
   RCyQI8xKdgVJ2RbUxYjuzK37e/LGOFJLt3aM8qf2gm8P4wiyRvDBiHpjW
   daA1gmNIVsvsQqN48dPJvZkRB6FBMgFtxea5s4N8eWh5QqiC13eQ9Ma9g
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="340408754"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; 
   d="scan'208";a="340408754"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Nov 2022 04:59:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="704551123"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; 
   d="scan'208";a="704551123"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga008.fm.intel.com with ESMTP; 21 Nov 2022 04:59:46 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
        (envelope-from <andriy.shevchenko@intel.com>)
        id 1ox6Om-00FHEL-2q;
        Mon, 21 Nov 2022 14:59:44 +0200
Date:   Mon, 21 Nov 2022 14:59:44 +0200
From:   Andy Shevchenko <andriy.shevchenko@intel.com>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Mixed types of values inside a single property
Message-ID: <Y3t2QLqXdomHkLTN@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi, Rob and Krzysztof!

Today on SO one question [1] was popped up, and I, remembering a bit of
the code of device properties in the Linux kernel, was a bit surprised of it
in a way that reading DT specification (0.4-rc1 as of today) doesn't clarify
that either.

Can the specification be a bit more clear about that? Or is it me and the OP of
that question who missed something in the DT spec?

[1]: https://stackoverflow.com/questions/74517569/reading-tuples-in-a-devicetree

-- 
With Best Regards,
Andy Shevchenko


