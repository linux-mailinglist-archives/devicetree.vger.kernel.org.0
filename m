Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 770F079CD2C
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 12:07:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234059AbjILKHR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 06:07:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234011AbjILKHA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 06:07:00 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72ED9173D
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 03:06:38 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-501bd164fbfso8827291e87.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 03:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694513197; x=1695117997; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B/cidZMzbR/pkG1JbPBqCELwIDk3zAzE05nHJDn/4Dc=;
        b=amOtGY5d69yajfgJQ1iZ8A+cQRLpIl6XOJqfLJMqJHSU08FUQ5RPGZEl6hVxak2G64
         A0sE6IZ0tVYvEGjFMfFArOzS16UBZWAPE+nbeglaBJiNwDP2UW/42DFSVNZCmCQ7xlpG
         5PlCgreq5M/q57D5E2n54P9teOpq86T3+r5JxDOFZeWNyrw3oY6wDjs/NPxlglDaR9VK
         NBsbBbzy7eYcGibbaEfSzg2vAcBfxLoMtF3XW8iiAF/RY4qhWf12oIxidqRE9r75kRyT
         LkEdwkaBGANFSTdLI6pp0Do7iW57n0K3i03Q5dXBl7hJt8lOJsH/HnklsRR31wAqyahC
         Idzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694513197; x=1695117997;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B/cidZMzbR/pkG1JbPBqCELwIDk3zAzE05nHJDn/4Dc=;
        b=JTolNyeyo9Hl2dHNHMPDRV1T/80sKSjky8lYluciGHzHCTIn1GeUR8oq9z4qy77CTd
         J4S6n1vy9ybZw7FXe1fkFWd5RrBz5bE2M76E6GnHl6cmJEq2AR/XeC4Ilxhb3RsMFp//
         h40rg8n+ZOex/JAhs9iT+dpIWwKWxhqxKZBd1lI/IdQ2b3e9GSJgozEeOC11pnpyVwys
         pLJS8FUL+U4zkR+OPA89bdos9tYTiPsn5ESpPJsHB3GZAn2W9fM14DnmQ1zz0iUyTrkM
         /wSaoZQvbeGSLHvyGGtsZqYoilIWhZj6loA+TBqZ4cHoa9GcDJhuYUStMUUWBR6llcVg
         0ywA==
X-Gm-Message-State: AOJu0Yyfefg0+UzSLyvoIHrChFTIbX1jLLXe7AEJ07r6KmNX7j+loXZH
        MMhQDlbTZv3kK4bVsKT+kMnRMQ==
X-Google-Smtp-Source: AGHT+IE1KkINg82xgXtgfFsAN+elTSLLEuf3n41go6FZvb5dTn5/GUITT7qn3k10AZmV41ZP5ezK6w==
X-Received: by 2002:a05:6512:20ca:b0:500:9619:d9c9 with SMTP id u10-20020a05651220ca00b005009619d9c9mr8100102lfr.61.1694513196688;
        Tue, 12 Sep 2023 03:06:36 -0700 (PDT)
Received: from [192.168.37.85] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id x16-20020a056402415000b0052f3051f7d2sm4056670eda.80.2023.09.12.03.06.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 03:06:36 -0700 (PDT)
Message-ID: <b49fe557-a601-4219-a365-afb50dddd64e@linaro.org>
Date:   Tue, 12 Sep 2023 12:06:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] interconnect: qcom: Add SDX75 interconnect
 provider driver
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, djakov@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@quicinc.com
References: <1694513046-24064-1-git-send-email-quic_rohiagar@quicinc.com>
 <1694513046-24064-3-git-send-email-quic_rohiagar@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <1694513046-24064-3-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12.09.2023 12:04, Rohit Agarwal wrote:
> Add driver for the Qualcomm interconnect buses found in SDX75.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
[...]

> +
> +static struct qcom_icc_bcm * const dc_noc_bcms[] = {
> +};
Surely this shouldn't be necessary?

Konrad
