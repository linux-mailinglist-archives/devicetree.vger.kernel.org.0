Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 118323E10FC
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:16:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232716AbhHEJQb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:16:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232666AbhHEJQb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 05:16:31 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D2ECC061765
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 02:16:17 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id c16so5542179wrp.13
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 02:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cVPGDe3gc+dI1+XOmxoTsyotwnBpNA+nPuGg+fvhZXU=;
        b=Po3+CQsZm3CjeNmFer/8eDr1YBaxp6FI3Vl+9D+mJ7OqfU6DSw5bA7aIdTOnVJ2/cU
         GgK788yPXj24ZQ/yh83bjxE98WzvNc0bkkPBO61A1FZDXfB/ECvRAxy5xMAj3JSPaA9T
         WtPvVUcczjlzvdTFMDzU+qCIB9QN0+QM+TqEODuKd7dhzeoNcFdGn1v/J9g67k3NKg7O
         hQ6YMMVYYQNcxOiMiV5ahUub8tdho7UkI9WGX8jJJJAmKzNIpywJfdjTE1pqVMeM1+aO
         675z+04Ll5bQw/nHjzuL8NMlcZAP0Y7mtnXmx5tRBtqhgaMWcgKyorsdPPJAiWLoT8Wz
         Pq4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cVPGDe3gc+dI1+XOmxoTsyotwnBpNA+nPuGg+fvhZXU=;
        b=spNHw0a0um2TSaHh+tVwvK0IYz52Goo0RBHneiRn1Zk1ogpl5teTAxq6XWsypFaKO7
         z1almo9D/Tbf8WdImyyJJsr6FiHVmPUZkX9OZWI8scKSugqrgqLuuymF4LMko7M1sPp+
         iUDQU6qN6FG4NUzH5lpVxadMhdhYvzD+UL3WiiSGGkWC913yc8wBW3yWnoUl0q/FjI/J
         PPxd/wjMpu6ukFwYthZvkbdanqAAXNO+84htALbbZt8wTKF7Uew4SZm/gCPwxYZudCAn
         9o6ucbs7PdQlCHk5zmuf9ptm3xbmsqSDjUUcP+8ADq0kTOLRLMxUCvwqJI5qlnFTY3K2
         2mtA==
X-Gm-Message-State: AOAM533GV7XnwgUdi9V2PzGQTQo3yJVMWXlhyoStyFJGg2DPP6cQCyRZ
        3uW8EGGSCzFwhqupoKia4jNR4g==
X-Google-Smtp-Source: ABdhPJzTVGNWaleTQSh+YFiBIjYiiP9jkSVe4o/dgjfeoHqArO18reePB839Dcw+cTEPcSVcVMp3AQ==
X-Received: by 2002:adf:e60c:: with SMTP id p12mr3991216wrm.285.1628154975964;
        Thu, 05 Aug 2021 02:16:15 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id y66sm4976594wmy.39.2021.08.05.02.16.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 02:16:15 -0700 (PDT)
Subject: Re: [PATCH v3 05/20] ASoC: dt-bindings: replace q6afe bindings with
 q6dsp-audio-ports
To:     Mark Brown <broonie@kernel.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-6-srinivas.kandagatla@linaro.org>
 <20210804175334.GE26252@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <225bc8df-0d78-09d6-4dc9-8cc2145f095f@linaro.org>
Date:   Thu, 5 Aug 2021 10:16:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210804175334.GE26252@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Mark for the review,

On 04/08/2021 18:53, Mark Brown wrote:
> On Tue, Aug 03, 2021 at 01:53:56PM +0100, Srinivas Kandagatla wrote:
>> DSP Audio Ports bindings have been documented with DSP services bindings
>> which makes it difficult to reuse them, so pull them out in to a dedicated
>> bindings.
>> Also as part of this change convert them into yaml format.
> 
>> This patch also removes q6afe bindings as dsp services are now documented in
>> apr bindings.
> 
> This feels like it's multiple changes stuffed into one commit which
> makes it difficult to review, especially since I'm having a hard time
> connecting the code changes with the description.  For example this says
> it removes the "q6afe bindings" but we seem to be adding some in the
> newly added YAML file.  At the very least the commit message needs to be
> improved but I think this probably needs to be split out into separate
> changes each doing one thing.
This patch is doing yaml conversion + removing the "qcom,q6afe" 
compatible from the existing bindings + header file renaming.

I agree, will split the header file renaming and yaml conversions as two 
  patches, that should probably help. I will also update the commit 
message with more details.


--srini
> 
