Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9BC157018B
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 14:02:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231442AbiGKMCl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 08:02:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231154AbiGKMCg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 08:02:36 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4B3D3DF00
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 05:02:27 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id a9so8268468lfk.11
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 05:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/rappI+jRHTVuP1fFDqK1XDoQzLaLz1pV5QzHwd5BWU=;
        b=RFj91ySRbmVSTF+rJP3CRaDqrgp10TZHGcD/+qhSmHOUVcUanncoh2s4CcmS7bDH/z
         yP/3zeG9G4uCPEtTy+71krgWQZhpXOF779qcHGN05jac6oUtoZzDafh9KGd03IFn7pBv
         hng/gZIUQvVDmcEBj4FKIq1YXVJVx3G8+xNHcsTmeWnlfqH+EUDSHwDGJOUJme+tqmpn
         2XCT1gapQRhpyvn9pnPnxgiYGKeGQAoNF1bhLo4gdmQleJDD7JE7N/+o+9QPN+SXT0Ux
         DyFnV8IX5VkEw60oiKOnk0B3EhT+ny1lj0+fB1K/HgybLX1UswmF6fl3RPs73xpL5Qm0
         fLmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/rappI+jRHTVuP1fFDqK1XDoQzLaLz1pV5QzHwd5BWU=;
        b=q0PI+hpF4fIFkP3S+cAQHguEF9S/Pft02G+LbS6mvHCY1jyDipCoC+2bYHRXzwq26l
         3+BcWJ7EaPEJSbBXdMdWneL4Vidzdz16Dmaj1DVbt7VQ/QQfqZSCXMGKEQIBoMBs3RJF
         sN9ySJEfYD1QSSe9Nb8qnD/QTKfVmq3eF5WfNBr15EaS3nyyCbNmLhEKJXsGa93vsmR2
         3tkVBFmy64p3ZkZBRmgNADCEcMojjWIqj4TGRp9GCsPFj7VgmFpizAwVltyk++12Wtqn
         sy1xMwWpLLvGHuGSfru/Z9YxiEojku6yjAym+vYcfNulWqZ74uqOvpLsdGRfb1QMEKjA
         SaTA==
X-Gm-Message-State: AJIora81KlbPQoHr6nQT5xvMn8w9hu+MfHC9ZohQmwHHX2eDR+E/nItS
        7pR+DAXH5O02vixNM2D178c6Fg==
X-Google-Smtp-Source: AGRyM1tNgR5GmQvLjxWA47o0znprtxZrIDw74DDBkkFdC928TaPbMIJ9aiRutSUnODGG4SNWD8qxbw==
X-Received: by 2002:a05:6512:1082:b0:489:cdfa:1fae with SMTP id j2-20020a056512108200b00489cdfa1faemr6926204lfg.251.1657540946182;
        Mon, 11 Jul 2022 05:02:26 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id y16-20020a05651c107000b002554dce4048sm1729674ljm.53.2022.07.11.05.02.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 05:02:25 -0700 (PDT)
Message-ID: <3de9a73c-9dba-63d6-a890-64b861e2c6da@linaro.org>
Date:   Mon, 11 Jul 2022 14:02:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 4/6] media: dt-bindings: media: ov9282: Add power supply
 properties
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        "Paul J . Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20220711081639.150153-1-alexander.stein@ew.tq-group.com>
 <20220711081639.150153-5-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711081639.150153-5-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2022 10:16, Alexander Stein wrote:
> Add regulators for each power domain.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
