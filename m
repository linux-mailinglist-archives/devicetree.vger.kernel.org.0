Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBC9F31391B
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 17:18:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232955AbhBHQRt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 11:17:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234335AbhBHQRp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 11:17:45 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8331CC06178A
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 08:17:05 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id r21so1624535wrr.9
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 08:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aaBKMnRXM76VUB0Qoag8JdTNr4XL1er0J91Eb9Bg540=;
        b=Q5o5BVqtOKxv7+VCMcZ+h49qvYsbkLeOdPqyKzh5GM6YlClJ8vu9nBRgsVjFH+4H4/
         taXKbqrMQeXZeT/dTOKtXZpmnkhXbdAuHDe9w+yyMIQrex0yXzC6asrXkQ6SjqD0Lcyp
         KOjhaxgALsRTgUQ4LXiHinQOIy8PjEBbz1mqvEoDHhxcanjVWNOPo36Bn3R1z+m2MkLT
         /HqwDeJyqgMsE31cTha3KDGuxjTjwohjmi/iQI0BSlsE/4lliOn9Vytbr5hyqb+4Qxb6
         ldcw+UtBoKgdj8VRbMpxhrYUqqHQ0CDQ8YYcGAo1zcVCgQgQiOQ1DAuta0JSXgCtB3P8
         VsUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aaBKMnRXM76VUB0Qoag8JdTNr4XL1er0J91Eb9Bg540=;
        b=XZZpyH1PzWFiOHfYHH0RtuLPQg9x78gKYlYeVBK1Ys/PcRbTzvGBS49cAosx1bHRlf
         nG45T4hal2KDdRTU3L3/QQpZ5Ix8DYWo8A+3jOJB1ww6p0U+ztppwPDbfHFt3iwxxLaB
         nJ2pYcLIBxRMilXGwCbDERIc2smFK+j2Tc1RDSMeFgiJn2UTWqTieyEDWC20E5gQaDdm
         l2bjA5FoxajbucTQT2+dgyrE1NwxRSMyFZIGcqAdY7VxPjS0dUjKZBmn0ZSQASqmuUfR
         Hu3GWPLhvsDeBFK68NouEGR7zazTO0M0kOrhbe2ovnPgH0kdrfv8FSyM6oZrI32gwhuX
         Fixg==
X-Gm-Message-State: AOAM530qT/GMiHhuTA3XnJ1/nRd7XmY8U4Hbu1x2mS4X6OHNZHtIOhbE
        mtHX3imL/Z4PB7AZ3Se3GE5+QQ==
X-Google-Smtp-Source: ABdhPJxnnCQSjQogvNvpcKbraMOutlLvkJdfzRF8nhXIrYaq59QP+GzyEZfiWFITnEnwC6L5Tnfxpg==
X-Received: by 2002:adf:fc8a:: with SMTP id g10mr21425065wrr.189.1612801024340;
        Mon, 08 Feb 2021 08:17:04 -0800 (PST)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id q24sm20742143wmq.24.2021.02.08.08.17.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 08:17:03 -0800 (PST)
Subject: Re: [PATCH v2 2/7] ASoC: codec: lpass-rx-macro: add support for lpass
 rx macro
To:     Mark Brown <broonie@kernel.org>
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org
References: <20210208141719.23305-1-srinivas.kandagatla@linaro.org>
 <20210208141719.23305-3-srinivas.kandagatla@linaro.org>
 <20210208160830.GI8645@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <1397a895-c205-ae1a-5319-28cfacaa4ecb@linaro.org>
Date:   Mon, 8 Feb 2021 16:17:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20210208160830.GI8645@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 08/02/2021 16:08, Mark Brown wrote:
>> +	SOC_SINGLE_EXT("RX_Softclip Enable", SND_SOC_NOPM, 0, 1, 0,
>> +		     rx_macro_soft_clip_enable_get,
>> +		     rx_macro_soft_clip_enable_put),
>> +	SOC_SINGLE_EXT("AUX_HPF Enable", SND_SOC_NOPM, 0, 1, 0,
>> +			rx_macro_aux_hpf_mode_get,
>> +			rx_macro_aux_hpf_mode_put),
> These are simple on/off controls so should end in Switch AFAICT.

Yes it makes sense!
> Otherwise this looks good.
Thanks, will fix this and send a new version!

--srini
