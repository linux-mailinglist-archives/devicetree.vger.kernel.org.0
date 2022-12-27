Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B562465693D
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 10:55:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbiL0Jzi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 04:55:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231550AbiL0JzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 04:55:14 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A273B84F
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 01:54:07 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id x37so6389073ljq.1
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 01:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OaoIC/ryKnNhlBlNMTIYhMbHFPcEdt6jMuKU7tfaLLE=;
        b=XUyNmJsyyocqQxGCRroMHP34XB7Q6gX9hkseknbtDh7XdP20R4FY0EjHw0rOddhE//
         Xt+t1NUfHNpUUZzAc2iTI54u29TDcQ13Qqtsu/LYeeOKF90aj82cyRNXMx9RbEy7U8V4
         j+lWIYC2sKaSvJyRZ4B8qlJOCe8gx5AX/11joT/koX9Q6pcZzMotP5ArBUuGEvxEFx11
         dG6YbFQyVh4TsoBusAzkyVYRaB+TOfBVWGfxwCH4R0FAZkc58KiOI3MYKkOXfhxca++y
         NIbcRRYONTRmzF94M7Z96JP1HewgEvR0TVqzCCRDCZA9CTAh6vDRZESguzG3abptiN+1
         d3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OaoIC/ryKnNhlBlNMTIYhMbHFPcEdt6jMuKU7tfaLLE=;
        b=qehig3hZe2FYEudOHqPr13lU3MpTAoBYbBc+DFsQfTl+hGdSw5UN2DXUsEVUTB4NGK
         ob7JCimnJdZfTEE6ZjGhp/uZzQfy0HOXLM5Ru8Dve04/pOFmwrc7Qs45t25qwsGr1YxB
         uX0h5PJPWfVb+kXrXgykgtVCdS7/4cBVuIs+DP7DFVPgYSPaEkH1p+fDjsfMu76pNjLG
         y35rqkLhCTillb7+ja0EnbL2b/u1u4Fg71KDEdN34MrErbvSc2vsBFqe3y6E0ungbqOt
         b4l93lclHgJHh62PKRDm34psJRidAj9PeCl0m++GAfHyjx+U/pQSTdAh7S8FsMNobKxL
         8f9w==
X-Gm-Message-State: AFqh2ko+OiJV1ul/GHr6iJoakfvn2z6D2nT4spbJvgWlb8mbWIjf0l9p
        vBGHnR5eZRNW6mp8rZVzuH5rKQ==
X-Google-Smtp-Source: AMrXdXuUfwqspTZAKh4PXKGG3Ov5cC5AM7Of3uPBeAtf36WvsuT5WnASOwV+t6VY/6GUpmE/Q7w33A==
X-Received: by 2002:a2e:6e0b:0:b0:27f:bcdf:526d with SMTP id j11-20020a2e6e0b000000b0027fbcdf526dmr2110087ljc.31.1672134845785;
        Tue, 27 Dec 2022 01:54:05 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 20-20020a05651c00d400b0027a1ee0b8d4sm1565944ljr.130.2022.12.27.01.54.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 01:54:05 -0800 (PST)
Message-ID: <0a3ece05-c94f-3d7e-2f90-b72b777617e5@linaro.org>
Date:   Tue, 27 Dec 2022 10:54:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v10 2/7] media: dt-binding: nuvoton: Add NPCM VCD and ECE
 engine
Content-Language: en-US
To:     Marvin Lin <milkfafa@gmail.com>, mchehab@kernel.org,
        hverkuil-cisco@xs4all.nl, avifishman70@gmail.com,
        tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andrzej.p@collabora.com
Cc:     devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org,
        kwliu@nuvoton.com, kflin@nuvoton.com
References: <20221227095123.2447948-1-milkfafa@gmail.com>
 <20221227095123.2447948-3-milkfafa@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221227095123.2447948-3-milkfafa@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/12/2022 10:51, Marvin Lin wrote:
> Add dt-binding document for Video Capture/Differentiation Engine (VCD)
> and Encoding Compression Engine (ECE) present on Nuvoton NPCM SoCs.
> 
> Signed-off-by: Marvin Lin <milkfafa@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Subject - it is "dt-bindings", not "dt-bindings".

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).


Best regards,
Krzysztof

