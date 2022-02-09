Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F10C04AF0EE
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 13:08:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232386AbiBIMIO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 07:08:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233251AbiBIMGl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 07:06:41 -0500
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B1A3E016CC3
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 03:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644405172; x=1675941172;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=uZij4IDv+vUY5n09X0g+EIbDNmB2ib4d4JtdcfO9h7Q=;
  b=XfLkLFuxtGwfbai4ixhTJ1AueruBaet03kI4v8h9L1AHKwHZKfBjwlu3
   McKx/QDAtbzFVlp+BZM+7V7fWgwpmFGzEa+r4Xts7x9RnmnHu0SRFW/t7
   uy7StUBjKxg1pnINaqmxxZpzcpNGJ01EprLTATpX2riBiWHQvgsAuSCfN
   M4ctBNVNNs6UMcWOjEBHuQ2UH82Pr9TZ6BD0rR6KOGmxejZU36T1IqPrL
   WyvKMBpSC9M74y8OjuQbnO4p7rIWUL/6vpa4/Z/9y9egZsbKJnRw3mtMm
   MYue8vbND0l0ydyIhTYhvsYDwTdBDn6l+b0o7IX3DWmEkaVMesnQUsfWB
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249128121"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; 
   d="scan'208";a="249128121"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2022 03:12:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; 
   d="scan'208";a="541049566"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost) ([10.252.18.41])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2022 03:12:48 -0800
From:   Jani Nikula <jani.nikula@linux.intel.com>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        David Airlie <airlied@linux.ie>
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 01/23] drm/encoder: Add of_graph port to struct
 drm_encoder
In-Reply-To: <20220209100736.GV18637@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-2-s.hauer@pengutronix.de>
 <20220209100736.GV18637@pengutronix.de>
Date:   Wed, 09 Feb 2022 13:12:45 +0200
Message-ID: <87fsospa36.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 09 Feb 2022, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> David, Daniel,
>
> I'll need a word from you regarding this patch. It's needed in patch
> 22/23 in this series.
> vop2_crtc_atomic_enable() needs to control the mux which routes the
> display output to the different encoders. Which encoder is used is
> described in the of_graph port, so I need a way to identify the encoder
> in the device tree.

I think the question is how useful is this going to be in general. IMO
we should not be adding members that are useful in a single driver only.

For example i915 wraps encoders with:

	struct intel_encoder {
		struct drm_encoder base;

		/* i915 specific stuff here*/
	};

So that we can add stuff of our own there. Of course, it does mean a
bunch of overhead for the first time you need to do it. But adding
driver specific stuff to struct drm_encoder adds overhead for everyone.

All that said, *I* don't know how useful the port member would be in
drivers that use device tree. Maybe it's worth it.

BR,
Jani.

>
> Sascha
>
> On Wed, Feb 09, 2022 at 10:53:28AM +0100, Sascha Hauer wrote:
>> Add a device node to drm_encoder which corresponds with the port node
>> in the DT description of the encoder. This allows drivers to find the
>> of_graph link between a crtc and an encoder.
>> 
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
>>  include/drm/drm_encoder.h | 2 ++
>>  1 file changed, 2 insertions(+)
>> 
>> diff --git a/include/drm/drm_encoder.h b/include/drm/drm_encoder.h
>> index 6e91a0280f31..3acd054b1eb3 100644
>> --- a/include/drm/drm_encoder.h
>> +++ b/include/drm/drm_encoder.h
>> @@ -99,6 +99,8 @@ struct drm_encoder {
>>  	struct drm_device *dev;
>>  	struct list_head head;
>>  
>> +	struct device_node *port;
>> +
>>  	struct drm_mode_object base;
>>  	char *name;
>>  	/**
>> -- 
>> 2.30.2
>> 
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
