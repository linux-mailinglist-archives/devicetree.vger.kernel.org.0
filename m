Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68EED413A4E
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 20:49:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231171AbhIUSv1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 14:51:27 -0400
Received: from mga17.intel.com ([192.55.52.151]:28464 "EHLO mga17.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230521AbhIUSv0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Sep 2021 14:51:26 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="203597603"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; 
   d="scan'208";a="203597603"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 11:49:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; 
   d="scan'208";a="512431677"
Received: from rudymgal-mobl1.amr.corp.intel.com (HELO [10.212.82.111]) ([10.212.82.111])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 11:49:56 -0700
Subject: Re: [PATCH v7 09/22] ASoC: qdsp6: q6afe-dai: move lpass audio ports
 to common file
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, lgirdwood@gmail.com, tiwai@suse.de,
        plai@codeaurora.org
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
 <20210921133709.4973-10-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <767aebb5-9aa2-8d6c-2569-eaa03f47379f@linux.intel.com>
Date:   Tue, 21 Sep 2021 11:51:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210921133709.4973-10-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9/21/21 8:36 AM, Srinivas Kandagatla wrote:
> Various Q6DSP frameworks will use LPASS Audio IP, so move all the hardware
> specific details to a common file so that they could be reused across
> multiple Q6DSP frameworks.
> 
> In this case all the audio ports definations can be moved to a common file

definitions

> so that AudioReach and Elite Framework can reuse this.

What is 'Elite'? It's the only mention of this framework in this entire
series. It was present in previous versions, I just noticed this today.

