Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 390633DF104
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 17:03:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236631AbhHCPDv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 11:03:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236645AbhHCPDt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 11:03:49 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E288BC061799
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 08:03:37 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id p5so25679965wro.7
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 08:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MLcnQRQ3HG/oUU50Ea/zscPi9zN/+argRjQJApZeFtQ=;
        b=OulZ+skW/jbW+6RQJ4tiZbbdHB+a6JC9HT1Dty7Aq0iJERpp68bK8zfQ8uUrNPSrIR
         zEq5CkxWW/SRFREk9hBYcfR9GQ4XTIwSwDU3aS687qp62R6PIlZz7HgJ3D5Xl9aVsnMD
         95w6HXBPJLblvP+j19CD7hAb/MzI/9HTmhAyT1W/ILIk6ue4dhK6EQC9K5u5yhlejU5Q
         BgLWbVLoPhLrdXx+8xfyFvIPx8ZFazuGLubVv0/hhxoaUUt3dkIqiqXnK/Pkwuhe63Nf
         Ou2CUNkVE/uQs/WYBkFkc+gL6HGFybsdFCXpWBumX6BKkySYAaoqUi22lKiPonlYx5y0
         YJ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MLcnQRQ3HG/oUU50Ea/zscPi9zN/+argRjQJApZeFtQ=;
        b=tE6EchBxe6YoJhD9of4i4wkUzRjacI6uoaPbj5arpvRw2wGw0zHrBL5Z4arSZ/acxN
         mXj1Oh/HeJZHjO/+31edF9/bQ5fZ2ShD4RVMZfJsIiVm5lDBdD9UXHp2oMY5h/DDYFe4
         VG2SOl9x4Ti6NWhUndPbsH+i39gZECxmJdFdDvLNcD4a0QF+WrlkxApyZHBqkfjqU9GB
         Z9/6ki3j3oUG85GefE1vvUuma/nvw0fqOVkO0yBtpyTNGMZaErC4Ox/HNOLw0MMv08tD
         ehWFFZuY7HhgReWD5B4+fdg8NHPPHbSRnhjujql5HI97jyywDAj077af/VAQVFgpPLo0
         0LBA==
X-Gm-Message-State: AOAM533V/XxaNNpnuMleyrnEWxRs8YUijQyviESFyqqHNmQSxqyx0JXA
        ACLjAusbxMmLAz+JIqe5WHrgrA==
X-Google-Smtp-Source: ABdhPJzGIpULgTwFL85kuSrkEfqQCTjDhcOoK6n5pTb6hxtX6ju7JQSRL+UtHUEbRp4pSzcOb1GW4A==
X-Received: by 2002:a5d:488f:: with SMTP id g15mr24423704wrq.98.1628003016485;
        Tue, 03 Aug 2021 08:03:36 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id g11sm8272964wrd.97.2021.08.03.08.03.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 08:03:36 -0700 (PDT)
Subject: Re: [PATCH v3 00/20] ASoC: qcom: Add AudioReach support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <0e6e4e03-c92a-be27-ba9d-e0993ced1ba6@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <e55596cc-9e2b-109b-19de-3bb95b1157ce@linaro.org>
Date:   Tue, 3 Aug 2021 16:03:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <0e6e4e03-c92a-be27-ba9d-e0993ced1ba6@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Pierre,
Thanks,

I did run cppcheck --enable=all  before sending this out,


On 03/08/2021 16:00, Pierre-Louis Bossart wrote:
> There are quite a few cppcheck warnings due to unnecessary
> initializations for loop variables, see suggested patch below.
> 
> And a number of renames that were missed.
> 
> cppcheck --platform=unix64 --force --max-configs=1024 --inconclusive
> --enable=all --suppress=variableScope --suppress=shiftTooManyBitsSigned
> --suppress=arithOperationsOnVoidPointer --suppress=bitwiseOnBoolean
> sound/soc/qcom/qdsp6/

I will try these ones and fix all the warnings before next spin!

--srini
> 
> 
> Checking sound/soc/qcom/qdsp6/audioreach.c ...
> sound/soc/qcom/qdsp6/audioreach.c:248:32: style:inconclusive: Function
> 'audioreach_alloc_pkt' argument 1 names different: declaration
> 'pkt_size' definition 'payload_size'. [funcArgNamesDifferent]
> void *audioreach_alloc_pkt(int payload_size, uint32_t opcode,
>                                 ^
> sound/soc/qcom/qdsp6/audioreach.h:657:32: note: Function
> 'audioreach_alloc_pkt' argument 1 names different: declaration
> 'pkt_size' definition 'payload_size'.
> void *audioreach_alloc_pkt(int pkt_size, uint32_t opcode, uint32_t token,
>                                 ^
> sound/soc/qcom/qdsp6/audioreach.c:248:32: note: Function
> 'audioreach_alloc_pkt' argument 1 names different: declaration
> 'pkt_size' definition 'payload_size'.
> void *audioreach_alloc_pkt(int payload_size, uint32_t opcode,
>                                 ^
> sound/soc/qcom/qdsp6/audioreach.c:265:36: style:inconclusive: Function
> 'audioreach_alloc_cmd_pkt' argument 1 names different: declaration
> 'pkt_size' definition 'payload_size'. [funcArgNamesDifferent]
> void *audioreach_alloc_cmd_pkt(int payload_size, uint32_t opcode,
>                                     ^
> sound/soc/qcom/qdsp6/audioreach.h:653:36: note: Function
> 'audioreach_alloc_cmd_pkt' argument 1 names different: declaration
> 'pkt_size' definition 'payload_size'.
> void *audioreach_alloc_cmd_pkt(int pkt_size, uint32_t opcode, uint32_t
> token,
>                                     ^
> sound/soc/qcom/qdsp6/audioreach.c:265:36: note: Function
> 'audioreach_alloc_cmd_pkt' argument 1 names different: declaration
> 'pkt_size' definition 'payload_size'.
> void *audioreach_alloc_cmd_pkt(int payload_size, uint32_t opcode,
>                                     ^
> sound/soc/qcom/qdsp6/q6apm.c:326:16: style:inconclusive: Function
> 'q6apm_map_memory_regions' argument 4 names different: declaration
> 'bufsz' definition 'period_sz'. [funcArgNamesDifferent]
>          size_t period_sz, unsigned int periods)
>                 ^
> sound/soc/qcom/qdsp6/q6apm.h:137:16: note: Function
> 'q6apm_map_memory_regions' argument 4 names different: declaration
> 'bufsz' definition 'period_sz'.
>          size_t bufsz, unsigned int bufcnt);
>                 ^
> sound/soc/qcom/qdsp6/q6apm.c:326:16: note: Function
> 'q6apm_map_memory_regions' argument 4 names different: declaration
> 'bufsz' definition 'period_sz'.
>          size_t period_sz, unsigned int periods)
>                 ^
> sound/soc/qcom/qdsp6/q6apm.c:326:40: style:inconclusive: Function
> 'q6apm_map_memory_regions' argument 5 names different: declaration
> 'bufcnt' definition 'periods'. [funcArgNamesDifferent]
>          size_t period_sz, unsigned int periods)
>                                         ^
> sound/soc/qcom/qdsp6/q6apm.h:137:36: note: Function
> 'q6apm_map_memory_regions' argument 5 names different: declaration
> 'bufcnt' definition 'periods'.
>          size_t bufsz, unsigned int bufcnt);
>                                     ^
> sound/soc/qcom/qdsp6/q6apm.c:326:40: note: Function
> 'q6apm_map_memory_regions' argument 5 names different: declaration
> 'bufcnt' definition 'periods'.
>          size_t period_sz, unsigned int periods)
>                                         ^
> sound/soc/qcom/qdsp6/q6apm.c:471:35: style:inconclusive: Function
> 'q6apm_write_async' argument 5 names different: declaration 'flags'
> definition 'wflags'. [funcArgNamesDifferent]
>          uint32_t lsw_ts, uint32_t wflags)
>                                    ^
> sound/soc/qcom/qdsp6/q6apm.h:131:36: note: Function 'q6apm_write_async'
> argument 5 names different: declaration 'flags' definition 'wflags'.
>           uint32_t lsw_ts, uint32_t flags);
>                                     ^
> sound/soc/qcom/qdsp6/q6apm.c:471:35: note: Function 'q6apm_write_async'
> argument 5 names different: declaration 'flags' definition 'wflags'.
>          uint32_t lsw_ts, uint32_t wflags)
>                                    ^
> 
> Checking sound/soc/qcom/qdsp6/q6prm.c ...
> sound/soc/qcom/qdsp6/q6prm.c:158:63: style:inconclusive: Function
> 'q6prm_set_lpass_clock' argument 3 names different: declaration 'attri'
> definition 'clk_attr'. [funcArgNamesDifferent]
> int q6prm_set_lpass_clock(struct device *dev, int clk_id, int clk_attr,
>                                                                ^
> sound/soc/qcom/qdsp6/q6prm.h:72:63: note: Function
> 'q6prm_set_lpass_clock' argument 3 names different: declaration 'attri'
> definition 'clk_attr'.
> int q6prm_set_lpass_clock(struct device *dev, int clk_id, int attri,
>                                                                ^
> sound/soc/qcom/qdsp6/q6prm.c:158:63: note: Function
> 'q6prm_set_lpass_clock' argument 3 names different: declaration 'attri'
> definition 'clk_attr'.
> int q6prm_set_lpass_clock(struct device *dev, int clk_id, int clk_attr,
>                                                                ^
> 
