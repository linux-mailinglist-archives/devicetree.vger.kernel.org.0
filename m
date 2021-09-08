Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7252B4038BD
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 13:29:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235114AbhIHL3Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Sep 2021 07:29:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351501AbhIHL3Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Sep 2021 07:29:16 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AE43C061575
        for <devicetree@vger.kernel.org>; Wed,  8 Sep 2021 04:28:09 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id u9so2739512wrg.8
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 04:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pg66Yxo91om1NZRwVnciKYYajdbMErsJleQijC0sD+Y=;
        b=MmkKbYwnEtT3WSJ4kZXt7pb3++P//jjvY13u+WW1OU84iUU6rd9qBT9epKmwyn48mC
         Iz0IauHNVOMSZJuO/oaQ9B0cVPqEupA5t1r23/cxBenLoxW+V5BGgvUeN/cW/PF4nFUt
         KefnkXeZoNLvVWLZnFArfHEnBHQ8Cy0qQD3AuPUGAWx2a+E9MpYvl6rNEevqfgFnywAl
         Ke4OvXoKrkVAK0fjZHkIQvM5C39KNr9uF7eb4RHX86zy7Uy3DuxqSRYPUm8VCZmmvrRi
         82DWdiSDYhCsi+DzQaqaMBtuK9VstZMkcATxGhoa1xDcpur2xwM+3EgRtGAEUBns1H02
         bmvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pg66Yxo91om1NZRwVnciKYYajdbMErsJleQijC0sD+Y=;
        b=Stuyc0fgcJvZCs+QeSXtj7W5QHipnufSZdQkSvqScQdcDBSZlMS8YWdM7LXFSlS9av
         7SBfgYrTWAkbCuM9BPl/rdEYeNAKr7h3Xi8ASht+CvaE2J246EFPJ96X1nipbBUbbZI9
         ELh4rDcHyK0Trf3u+tgzP5uoOSTNl/sdvlhj49+F3sONhdoPOoWpq7Bcc7p4cT+ZixKM
         FIMogQkxuynJkKED5okxyUTUgOKJv0sbhXptOh3oOZ5zujWWV3sTFoM2+2EowmhCQZ1i
         AEHWr2VlzErQ7eWCioXvP3NPC5VnBuYHzpxKiYqMi4SN71MCIFZ8TpZ7orvRJ4zEEKEk
         spKA==
X-Gm-Message-State: AOAM5338ox283VbsEGFN8XPnJTlivgGbvo0QhMZYolTvr8My3EtA/YDk
        PJWzb+RFxvMDfsSOQyV3zHcV6g==
X-Google-Smtp-Source: ABdhPJzEkUTMbkWr1fV/ebaPj1K2OSgR3K0T2YrBI9bOIige02dw6GuELm44qoBD/F9EniXibH/WAA==
X-Received: by 2002:a5d:61c1:: with SMTP id q1mr3636173wrv.87.1631100487640;
        Wed, 08 Sep 2021 04:28:07 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id n13sm1586753wmq.3.2021.09.08.04.28.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 04:28:06 -0700 (PDT)
Subject: Re: [PATCH v5 15/21] ASoC: qdsp6: audioreach: add q6apm support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-16-srinivas.kandagatla@linaro.org>
 <081e6734-a258-6d21-cf66-f00bfeb38b04@linux.intel.com>
 <b1cfacb4-70b9-7146-00d5-9d680297d900@linaro.org>
 <f8bd8b94-528d-bf6f-9e84-0e41e4c56382@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <0840d2e3-c261-8d85-35ff-8388448ab7fc@linaro.org>
Date:   Wed, 8 Sep 2021 12:28:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <f8bd8b94-528d-bf6f-9e84-0e41e4c56382@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 07/09/2021 16:04, Pierre-Louis Bossart wrote:
> 
>>>> +    graph->graph = audioreach_alloc_graph_pkt(apm, &info->sg_list,
>>>> graph_id);
>>>> +    if (IS_ERR(graph->graph)) {
>>>> +        kfree(graph);
>>>> +        return ERR_PTR(-ENOMEM);
>>>> +    }
>>>> +
>>>> +    spin_lock(&apm->lock);
>>>> +    idr_alloc(&apm->graph_idr, graph, graph_id,
>>>> +          graph_id + 1, GFP_ATOMIC);
>>>
>>> does this need to be ATOMIC?
>>
>> We are inside spinlock.
> 
> but this is not used in an interrupt handler or anything that isn't in a
> process context, is it?
> 
No, it is in process context only.

--srini
