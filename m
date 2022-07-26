Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD202581608
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 17:07:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239604AbiGZPGy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 11:06:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239556AbiGZPGn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 11:06:43 -0400
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D0882ED6B
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 08:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1658847998; x=1690383998;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=yok4uHt7PsQrOxWrRFJ3wPkzLA0NCV0ZHAExNDm1PFE=;
  b=nwW/OH/FMMlAodgOY5Lp+GeToZgxdeMCoX0b/Uj7FOqtuR2lADBd917b
   5Ig98KD/XCAuKA5GRwSUyZI2Okkrprgy6FZdk5F4ORkXflK7/U7DchSMT
   sNQNBSM0u8B45T7+vztppfH0RVex8BbzHrTOUNEE29MhzNunBJDCnmnVe
   qLVAS15HMIWluLJ9fFltNmjuGyXSq76WM/2G6czDImGkWLJZ8KmwBrlr7
   AqxYJEKemZuTg4AOXvHinENCAIteQt/qWrr7o1jRVQ+aINgMPLETr6z99
   gV93RcmhLmjpO37dycq1OAwamPMGOGa6FqcrkvarZZP4paTP1ROoYKobg
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="349677973"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; 
   d="scan'208";a="349677973"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2022 08:06:32 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; 
   d="scan'208";a="597054386"
Received: from adamreed-mobl.amr.corp.intel.com (HELO [10.212.70.145]) ([10.212.70.145])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2022 08:06:31 -0700
Message-ID: <372a1c8c-b70c-c5f9-3a0b-a4d554d5acf2@linux.intel.com>
Date:   Tue, 26 Jul 2022 10:06:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Subject: Re: [PATCH v3 1/2] ASoC: codecs: add support for ES8326
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     robh@kernel.org, alsa-devel@alsa-project.org,
        ckeepax@opensource.cirrus.com, Zhu Ning <zhuning0077@gmail.com>,
        devicetree@vger.kernel.org, tiwai@suse.com,
        Zhu Ning <zhuning@everest-semi.com>,
        David Yang <yangxiaohua@everest-semi.com>
References: <20220726131747.127992-1-zhuning0077@gmail.com>
 <2f031e44-4d8a-a69f-697f-1bb83ba1f9f9@linux.intel.com>
 <YuAApMG8XbxOoGIv@sirena.org.uk>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
In-Reply-To: <YuAApMG8XbxOoGIv@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7/26/22 09:56, Mark Brown wrote:
> On Tue, Jul 26, 2022 at 09:06:10AM -0500, Pierre-Louis Bossart wrote:
>> Much improved version, thank you. See additional comments/questions below.
> 
>>> +	regmap_write(es8326->regmap, ES8326_CLK_CTL_01, ES8326_CLK_OFF);
>>> +	regcache_cache_only(es8326->regmap, true);
>>> +	regcache_mark_dirty(es8326->regmap);
>>> +
>>> +	return 0;
>>> +}
> 
>> One question on the interrupt handling: should there be an interrupt
>> disable on suspend and conversely an interrupt enable on resume?
> 
> That shouldn't be needed (in general the interrupt enable/disable stuff
> shouldn't be needed at all).

isn't there a risk of an interrupt being triggered after all the jack
detection resources are disabled?

> 
>>> +	ret = clk_prepare_enable(es8326->mclk);
>>> +	if (ret) {
>>> +		dev_err(&i2c->dev, "unable to enable mclk\n");
>>> +		return ret;
>>> +	}
> 
>> I am not really following what happens if es8326->mclk is NULL. Why
>> would you call clk_prepare_enable() with a NULL pointer? If you look at
>> the code in es8326_set_bias_level(), you do test for that case, so why
>> not here? Something's not right here.
> 
>> Could it be that this is a scope issue? This block should be moved under
>> the scope of the if (!es8236->mclk) test, no?
> 
> The clock API will happily consume NULL clocks (it uses NULL as an
> equivalent to the regulator API's dummy regulator), there's no *need* to
> skip clock handling if you've got a NULL clock.

Right, so the code in es8326_set_bias_level() can remove the tests for a
NULL mclk.
