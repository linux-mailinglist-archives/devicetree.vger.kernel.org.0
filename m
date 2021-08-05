Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 360D43E10FF
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:17:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236608AbhHEJRP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:17:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232258AbhHEJRO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 05:17:14 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8EA5C061765
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 02:17:00 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id k4so5618784wrc.0
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 02:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pv3tP3GZi/wce83FBWxIWUs/8RDEJ0SBulI8HwcDx/k=;
        b=xJYDjQds0fS7Wxs5/ZoAD2lw1YIxEFMBxc6tB9qIkFQboBSTXxlPlKcxmZdHCulE/P
         Zb0ltWJ5JXYPMfPRiJ2aZ3CUN+nlfEmJxLwJ6rc18OYO6hrmAp3gInmHvwOoeMgZa0gG
         QULrO0q7Jaos1otSft5JD1Mp76NBSOG/BFqclIzy8kp/nqonzNdAX4R01CW89xhZOiKn
         vJPwbHH+97OdbCFX+x2gjR8LoqpH2mveo7+3ifPG1kPEJG8uDq1aXPgvDpg0b+sH0XxH
         sJUUhC64UaTfkUlhESBfGvrKLIyq7sQuZyQEWcezrpH6ly6sb+ZulABoj89KYixA4AVC
         O8+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pv3tP3GZi/wce83FBWxIWUs/8RDEJ0SBulI8HwcDx/k=;
        b=hzSB0acFS/UlcuX+TfNApu8J8uWlT+SPP6e1svHm58Q+0+hr5WXO+WoKHNBZ0ro7gZ
         Em0xzFBNciiYDlN/0tS4JOZUnRBjVb1HSRqHE+fw+u9fM+lmoZj+q6IZ2Ub12xoI56aL
         DrgvlKPxPkqHafs6qawfsCQdSKc0TsGlm2G0MK/fXjyGwopZgL4WgG5MgvsKl88BW42C
         WtIHTm/SBDvwMOyh3W7TZeOC8N/BrdJIN3dRnFY9CFA9MRpbYMYxAO9ruyj7pW6v6ICC
         Ct30EBpeIiRWDEYkwNx9VJuBvpwI8sWpfuxoRLDPNDxC9+FstkXxGAmBO4So+u8GJfG6
         RvGg==
X-Gm-Message-State: AOAM533aWusdrIbqWFt+PeSM+bnui4o8omQbQZ0Sv0MvV4llo3PWi08g
        vxfm+xGaQF8PWFYFaj/74c9XNg==
X-Google-Smtp-Source: ABdhPJxOHpcM5gAkN/pr7OMfFGQah1QAAE+SrK8QzR5zZm3zZyOGo0WpoRvOdAuIdkD+cSaEjAZmlA==
X-Received: by 2002:adf:ee0c:: with SMTP id y12mr4020218wrn.394.1628155019503;
        Thu, 05 Aug 2021 02:16:59 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id l5sm6236728wrc.90.2021.08.05.02.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 02:16:59 -0700 (PDT)
Subject: Re: [PATCH v3 11/20] ASoC: dt-bindings: q6dsp: add q6apm-bedai
 compatible
To:     Mark Brown <broonie@kernel.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-12-srinivas.kandagatla@linaro.org>
 <20210804180143.GG26252@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <4f2fd6d8-1c42-1d41-733b-9b32b07d7d7d@linaro.org>
Date:   Thu, 5 Aug 2021 10:16:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210804180143.GG26252@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Mark for the review,

On 04/08/2021 19:01, Mark Brown wrote:
> On Tue, Aug 03, 2021 at 01:54:02PM +0100, Srinivas Kandagatla wrote:
> 
>> +    enum:
>> +      - qcom,q6afe-dais
>> +      - qcom,q6apm-bedais
> 
> What do these compatibles mean?  The bedais is sounding suspicously like
> putting DPCM into DT bindings...


Old Elite QDSP framework has service called "Audio Front Ends" aka q6afe 
which is responsible for managing the LPASS Audio Ports and Post 
Processing. We endup with "qcom,q6afe-dais" in the past to represent the 
LPASS audio ports.

With New AudioReach framework this functionality is managed by "Audio 
Process Manager" aka q6apm.

I will rename "qcom,q6apm-bedais" to "qcom,q6apm-lpaif"

to be more explicit about the hardware LPAIF(Low Power Audio Interface 
Modules) IP.

--srini


> 
