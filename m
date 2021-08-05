Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56C853E10FD
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:16:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232601AbhHEJQ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:16:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232258AbhHEJQ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 05:16:56 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8CE5C061765
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 02:16:41 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id c16so5543778wrp.13
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 02:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5jE1jJ3HRbslBVGRDPvT7b3oVRlZpjy3URhBkDAgyTc=;
        b=i16exZGMnMbr03+df9TQRG83WeyPHxUrZx8tZnpskwXFeJwe5UXTubo+cY/8Y4op7+
         dl828Q6+rpH/iAeJ8dBFAxACLadgaCFVS6RahKojIqkAOaMt9ukvWExMvu/RCtv4YgLj
         9wR867Gfpsf6r0ib+ffd/m+sImDQgYQhFPJT35/DxhCTbUlaA0vbrEHDXcsLrCejPYm6
         cTMLm5wof6LBPoC4SMkFAVCcVu6efc80xuAcK1T1EWEDAXZmlhuJtkbmjRgOlEAggpal
         88idRQq1Jy4XCNRrQUj3DOe6eyyn/KmgiHmWyX6r6C/OP5BTUBUo+pg14mG5u6CjYcHt
         8QAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5jE1jJ3HRbslBVGRDPvT7b3oVRlZpjy3URhBkDAgyTc=;
        b=s6fYDGwnOlO5iym8LYQlQSofbYt6bGxqHCjb1pWTlQv+hofBR0BWdJQ1T0+AmjD0Nt
         xuwcPzeXjJ8wzqflxUQKQ3NvPHta47Qb0Uh82baRYKd/k+gCZ6yjcJfeOZ/HgXa/jtTt
         l3FSNHxy5KmoUMGS/IMZkLS//IKyQit0L1I/JzJF4v3Z0w6k3Y1NteN5ATX0+leGFpzd
         oImyZwgpkTGMBJzST/WfV8eDQgXtfc6VTlr4xyVvirctoc99VlmTliFO6S1ZNAU1azUZ
         gW0GeEwPD5gXBRkkJqXUIWjM6wtZVbPfJXTOHzck6zt94VdMcsZzPq6DtlAZyh/LaYNk
         BhGg==
X-Gm-Message-State: AOAM533HJKIfp4KKKxII3fJ1ZAQhI2phsjQf4k3IksIAn1uGo2JSch5p
        L65h31/r7SbMoJEen5/5tlGOew==
X-Google-Smtp-Source: ABdhPJyyt86m5iDuECTUERkaKcwI75LLXlfz4bHoRCp83YyMjjT6bx74NweyNqXo9WxDp8Tz4tPxTQ==
X-Received: by 2002:a5d:44c9:: with SMTP id z9mr4066925wrr.302.1628155000516;
        Thu, 05 Aug 2021 02:16:40 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id o17sm5307958wrw.17.2021.08.05.02.16.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 02:16:40 -0700 (PDT)
Subject: Re: [PATCH v3 10/20] ASoC: dt-bindings: q6dsp: add q6apm-dai
 compatible
To:     Mark Brown <broonie@kernel.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-11-srinivas.kandagatla@linaro.org>
 <20210804180111.GF26252@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <c975b55e-7300-67b6-b91b-4783f129f1f3@linaro.org>
Date:   Thu, 5 Aug 2021 10:16:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210804180111.GF26252@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Mark for the review,

On 04/08/2021 19:01, Mark Brown wrote:
> On Tue, Aug 03, 2021 at 01:54:01PM +0100, Srinivas Kandagatla wrote:
> 
>>     compatible:
>> -    const: qcom,q6asm-dais
>> +    enum:
>> +      - qcom,q6asm-dais
>> +      - qcom,q6apm-dais
> 
> What do these two compatibles mean?
> 

Old Elite QDSP framework has service called "Audio Stream Manager" aka 
q6asm which is responsible for managing the PCM/Compressed streams and 
Pre Processing.

With New AudioReach framework this functionality is managed by "Audio 
Process Manager" aka q6apm.

As we are using rpmsg device model to link these audio service channels 
with linux devices so we endup with prefixing the compatibles with 
service names(like q6afe, q6asm, q6adm, q6apm, q6prm ...).


--srini
