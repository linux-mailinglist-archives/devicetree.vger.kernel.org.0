Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37AB22A2ED2
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 16:58:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726611AbgKBP6O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 10:58:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726587AbgKBP6M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 10:58:12 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 175FBC061A04
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 07:58:10 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id w1so15235849wrm.4
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 07:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6WR8URTpPLXbEyZRR9vT8a6//7XUuWvtF++mZUJuUqQ=;
        b=qSaFEDwvD4lOnnkzIT4xlf4ITxzLXauLuuveTj5gw99Cv6ME75AI/l6aab+gpsWP+v
         QR/+gnScHrSMsn6cNOOCgi2T1G9PP+4ASV6fQRLnfhWcNOkgvBsXjaQFTbsV9pf0UR/T
         ghVo9+kHipaWBxtoLnuffP9HSvoG8CN9xEpmzIFZ1VnWivWoBgPLT6LTX68qDLZXU2ct
         X5yP1r912lCGH3yoPzQ8iNS3x8osZf36uLOPZ+cAAPPIkt4N4vZmylEJIQ/VmdfxIKAk
         wu4gJN9phO9pshPdltOc7m34JZJfYK+zocQcDoOv0E5fAbCiqhGo27v1Z+wfL0s7Xaev
         yDMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6WR8URTpPLXbEyZRR9vT8a6//7XUuWvtF++mZUJuUqQ=;
        b=n32+4PNhGQE4iixQurIGvoIK6k/adON2N0t+xPOttueMeP0M03y55DzZlsHQzBTo5c
         KA2enb6keNUhlbShLSyAJpAhn9eo+W1uM8CVtnb8Pz3/2Oa+W6+B5eXMBGjXrREnCZq6
         /0ugZ2aHeZ3PdHH5obpSLqW/fhQdZ5S9i6wNBZavu7Q5v5A2x1XCWljVoXiq1fyXQKwd
         a9z8/Q3QiNuxclVrOW+qf2zgXN9Wtuliar5/cJ4PDtuplJ9bSkPjcQa+QO1xRnUpP5ua
         ZnB5RomE6FwruxS5RwR81utPcReQbZ3L8QsbaQdDSecUPmTFi9ZrOoipRS4dld1xf1LV
         g5Xw==
X-Gm-Message-State: AOAM532+edfeR9GW5v71lth2nWeruSISs2ClFxnrY80dGNCUsudkc/2z
        5AItOIk2qlLDKeiys3jka7uDmA==
X-Google-Smtp-Source: ABdhPJyHmZ2FaZWAQo25mgGhVgX6xjocdW3tBWaR4FgbQaOFCkxeF8a931x11wRjL2NCgNjgMdz+Cw==
X-Received: by 2002:adf:dc85:: with SMTP id r5mr22225279wrj.66.1604332688624;
        Mon, 02 Nov 2020 07:58:08 -0800 (PST)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id 130sm16984539wmd.18.2020.11.02.07.58.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2020 07:58:07 -0800 (PST)
Subject: Re: [PATCH v3 0/4] nvmem: qfprom: Avoid untouchable regions
To:     Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20201029002827.1729915-1-evgreen@chromium.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <0a7d86ee-96b0-eff8-e315-ff65086661ee@linaro.org>
Date:   Mon, 2 Nov 2020 15:58:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20201029002827.1729915-1-evgreen@chromium.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 29/10/2020 00:28, Evan Green wrote:
> Certain fuses are protected by the XPU such that the AP cannot
> access them. Attempting to do so causes an SError. Introduce an
> SoC-specific compatible string, and introduce support into the
> nvmem core to avoid accessing specified regions. Then use those
> new elements in the qfprom driver to avoid SErrors when usermode
> accesses certain registers.
> 
> Changes in v3:
>   - Fixed example (Doug and rob-bot)
>   - Use min()/max() macros instead of defining my own (Doug)
>   - Comment changes to indicate sorting (Doug)
>   - Add function to validate keepouts are proper (Doug)
> 
> Changes in v2:
>   - Add other soc compatible strings (Doug)
>   - Fix compatible string definition (Doug)
>   - Introduced keepout regions into the core (Srini)
>   - Use new core support in qfprom (Srini)
> 
> Evan Green (4):
>    dt-bindings: nvmem: Add soc qfprom compatible strings
>    arm64: dts: qcom: sc7180: Add soc-specific qfprom compat string
>    nvmem: core: Add support for keepout regions
>    nvmem: qfprom: Don't touch certain fuses

Except dts patch, I have applied all the patches, dts patch should go 
via arm-soc tree!


--srini

> 
>   .../bindings/nvmem/qcom,qfprom.yaml           |  17 +-
>   arch/arm64/boot/dts/qcom/sc7180.dtsi          |   2 +-
>   drivers/nvmem/core.c                          | 153 +++++++++++++++++-
>   drivers/nvmem/qfprom.c                        |  30 ++++
>   include/linux/nvmem-provider.h                |  17 ++
>   5 files changed, 211 insertions(+), 8 deletions(-)
> 
