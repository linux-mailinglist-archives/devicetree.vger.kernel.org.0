Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34B2E40DD75
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 17:02:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238208AbhIPPDh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 11:03:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235474AbhIPPDh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 11:03:37 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF131C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:02:16 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id l7-20020a1c2507000000b002e6be5d86b3so4729677wml.3
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4st4d0n/c6mOCznyfG1WKwjyR2c2WbGE6A+uf+Jpfts=;
        b=Z664gqGshV6QS/uZt8KAROXekXdyXiPwjqcEHXCgCcXK/U2baJVNkI+UlrvCSE88te
         2Tj9siVf8KKPpbIDzDPBk5XmlVg5TQo23PJ4RCr7LnAE9it21FyHrL/LwoIe1zyt4scJ
         k3yqMFXWLNiOVfc8QXZft82bWvrvsqBQEDXzSh/ujMwUrSL8l37uOEGv5cyEcYkwtN8t
         Tr2EhK8wrCmQ7EPyAy5mep10E6K0Z0cFUQJH31GqjJ/l+O1dCUN7ucKhWkrRjskM02r+
         m8Y94PihWPZBcACFBw7sDc/PN2TZeWnzJMFDmZsptqQmWCURFG+dDRNcpmbHvjWuKIc7
         brVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4st4d0n/c6mOCznyfG1WKwjyR2c2WbGE6A+uf+Jpfts=;
        b=XdLLQpN4/k4F2DZjiDJoWash+B6rL2ExK/gsohuwLUdkDzysuO/sF+aaUni/Fp/CYc
         jNNhWC7KsWBA89iIY6Oq/6/YAJ3TzXekxqj5dnoUvpN+F6KG56/8W+UGMDQXzqCRnLw1
         O4KLGtk5zoppyDuWs/RelTp6GlsifemfVscmco+DhrsPyNSvi7a7/X82LhjmOxx3tQOb
         C8rmHJHXjTXU5+0OU06mcDm4Quq4Q6Ulycl4IMCxQqQhQ5C14AcMpyZAeH+7mr+xGSGM
         quqg7kjuVo6jK1jr3D+sZO1qop0P8exLFYadKMhr8MHvfqddllRCXy2r0c1mCTAtXVtp
         JgoQ==
X-Gm-Message-State: AOAM530yrcheh79FKryDTPxbd2KZb8godNaX4SFl1WAokXOEALqENEyr
        7YOLgIDnLjio1YqJ/L70IUSEUg==
X-Google-Smtp-Source: ABdhPJxuGMPwZqNTuMGal9SnScfBsFWd/A9g+0vbtND8vr1Ldf8Z2LsCupcin5UZzRzQJfSn0eTeFA==
X-Received: by 2002:a05:600c:2057:: with SMTP id p23mr10498262wmg.25.1631804535434;
        Thu, 16 Sep 2021 08:02:15 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id o2sm4264200wrh.13.2021.09.16.08.02.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 08:02:14 -0700 (PDT)
Subject: Re: [PATCH v6 14/22] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-15-srinivas.kandagatla@linaro.org>
 <c6082189-5788-0973-2fba-699f1cc7e4ae@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <7132182e-32d3-5d60-6c56-a779f24a5c19@linaro.org>
Date:   Thu, 16 Sep 2021 16:02:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <c6082189-5788-0973-2fba-699f1cc7e4ae@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Pierre,

On 15/09/2021 16:54, Pierre-Louis Bossart wrote:
> 
> 
>> +#define APM_SHMEM_FMT_CFG_PSIZE(n) ALIGN( \
>> +				sizeof(struct apm_sh_module_media_fmt_cmd) + \
>> +				n * sizeof(uint8_t), 8)
>> +
>> +/* num of channels as argument */
>> +#define APM_PCM_MODULE_FMT_CMD_PSIZE(n) ALIGN( \
>> +				sizeof(struct apm_pcm_module_media_fmt_cmd) + \
>> +				n * sizeof(uint8_t), 8)
>> +
>> +#define APM_PCM_OUT_FMT_CFG_PSIZE(n) ALIGN((sizeof( \
>> +				struct payload_pcm_output_format_cfg) + \
>> +				n * sizeof(uint8_t)), 4)
> 
> nit-pick: sizeof on the same line for consistency/readability?
> 
Its fixed in next version.

--srini
