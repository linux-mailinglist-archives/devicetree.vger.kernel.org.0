Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C28F33AF50
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 10:55:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbhCOJyj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 05:54:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbhCOJy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 05:54:29 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 616ACC061574
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 02:54:29 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id j4-20020a05600c4104b029010c62bc1e20so19063142wmi.3
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 02:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Vb36aGZVBe1Zo7XeXtJbSBvtU1J1e9YMHXrwMcYQKHw=;
        b=t4jAD04P+X+KqvlgV5RmZT5sq+1TA30moVvwlcpgcbhxDOhvxgUM0e5UT4HBDCaqYI
         fMnaBBm2HpYbpKFAd8MipsDBrxVEP/pZ08k8oqpbIGPszA08IM8vcCo97OEVN9oeESRG
         dtpVRuPgHx/H5YhG2czwsE2Nqbw8cf2YotaaUCGxHEMRYiJjABSs3dEd0g1B0ynCKX7u
         fbXh6WMNnqR2yMzXYHhLt3Eg79GWug91FgiLXDSbdiKozAufDX1V1tgE7KL6IKo+SNfz
         j46JzZ0QpnIAuqpQ9iPyxXNvdOePr1sy2g/BS4xeterZH8Ev86+fjueu9YRdvke08FE2
         JyZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Vb36aGZVBe1Zo7XeXtJbSBvtU1J1e9YMHXrwMcYQKHw=;
        b=RPYNOf1gnrkt1Dhs7Y2sk27ApFtg6l6S5f5w2LxFVMpMY+nGJcf1uVRbOV3Vgpw220
         NNusCSSwH+/jt0E56st0bG7JBZ0P3q8u8eJMkmbxKdVGJ/onc4kiEvyYR0Tty69TnCZi
         me6GmTSwixnNXxyXkFjLp43MD5RTrRPNekhmP1YfKi4CGwoGJbwg/pDFUaeVWtZrE3fw
         7WLWZ7Pf9bAKq50BM+5mUpUScS5U2L+Jk0xAXbWWBRE9Y6y3YayK4nEWv96RX7ZiGCTc
         fTFqpUfyPPKpVJuU51+lAQUyI3QmHL1EYqTRdq+kgOBKQFVNE4JWS4qujc5UH5hP8e/w
         xAYQ==
X-Gm-Message-State: AOAM531igtvNIyFrJzL7YYs+eIa32ymjzNLgJ4s0HiZyiYEGAD6bIr8V
        CJi3aZQliC7vT41QhV0zRYlL1BVID8U34w==
X-Google-Smtp-Source: ABdhPJy5nWL1whb7b8NjkY0vJpYfi2s1EorStJdFT8jXTmDltnm9p2ZCDO+0+0Kor+kMwRubEdv8Tg==
X-Received: by 2002:a1c:2857:: with SMTP id o84mr25013407wmo.181.1615802068087;
        Mon, 15 Mar 2021 02:54:28 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id x11sm11765561wmi.3.2021.03.15.02.54.27
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 02:54:27 -0700 (PDT)
Subject: Re: [PATCH v3 1/5] soundwire: add static port mapping support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        broonie@kernel.org, vkoul@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org,
        yung-chuan.liao@linux.intel.com, sanyog.r.kale@intel.com,
        linux-kernel@vger.kernel.org
References: <20210312113929.17512-1-srinivas.kandagatla@linaro.org>
 <20210312113929.17512-2-srinivas.kandagatla@linaro.org>
 <5869594c-dfd6-c49d-0168-1993cdeb5a43@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <8dd60c9f-d5c6-04d6-996e-5833382571d1@linaro.org>
Date:   Mon, 15 Mar 2021 09:54:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5869594c-dfd6-c49d-0168-1993cdeb5a43@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/03/2021 16:56, Pierre-Louis Bossart wrote:
> 
> 
> On 3/12/21 5:39 AM, Srinivas Kandagatla wrote:
>> Some of the SoundWire device ports are statically mapped to Controller
>> ports during design, however there is no way to expose this information
>> to the controller. Controllers like Qualcomm ones use this info to setup
>> static bandwidth parameters for those ports.
>>
>> A generic port allocation is not possible in this cases!
>> So this patch adds a new member m_port_map to struct sdw_slave to expose
>> this static map.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   include/linux/soundwire/sdw.h | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/include/linux/soundwire/sdw.h 
>> b/include/linux/soundwire/sdw.h
>> index d08039d65825..b032d6ac0b39 100644
>> --- a/include/linux/soundwire/sdw.h
>> +++ b/include/linux/soundwire/sdw.h
>> @@ -614,6 +614,7 @@ struct sdw_slave_ops {
>>    * @debugfs: Slave debugfs
>>    * @node: node for bus list
>>    * @port_ready: Port ready completion flag for each Slave port
>> + * @m_port_map: static Master port map for each Slave port0 to port14
> 
> did you mean port1..port14?
> 
Yes I agree its port1..port14, will update this in next version.

--srini
> DP0 is a special case that's not supposed to be used for audio transport 
> but rather extended control and command? >
>>    * @dev_num: Current Device Number, values can be 0 or dev_num_sticky
>>    * @dev_num_sticky: one-time static Device Number assigned by Bus
>>    * @probed: boolean tracking driver state
>> @@ -645,6 +646,7 @@ struct sdw_slave {
>>   #endif
>>       struct list_head node;
>>       struct completion port_ready[SDW_MAX_PORTS];
>> +    unsigned int m_port_map[SDW_MAX_PORTS];
>>       enum sdw_clk_stop_mode curr_clk_stop_mode;
>>       u16 dev_num;
>>       u16 dev_num_sticky;
>>
