Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 080FC678CC7
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 01:25:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232045AbjAXAZf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 19:25:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjAXAZe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 19:25:34 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABF7322007
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 16:25:33 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id u19so34931418ejm.8
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 16:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G7azV8mbSSeyt8Js7wrZLKa1+/kmK6Rap/sxLxmd4/A=;
        b=MkWtqvokT3y3OxZ9xWiSo8e8CaMEpuWhKSd90x1uxrxsRVvM94Q13TudItsW9KIIKD
         ux+TC2QE18m0trIlAg1bKY6PpOfjcNM0sQ2Tv9z0iLHqHi9oR19N03Qvt0YYOccXWhch
         SAhlcUG5u6HH5z1rRB6JRUJTGjoFEOmCyzbevc1HkiEjwgt90V+qZs9rMsZnzZKFlkeC
         lGbltLg/da0WaEG3+pLENKKmy5/efw9YSZYkthfodPgAUC+0+cRBXhslzmW/2Ew4hbdn
         1u6Ez3ShB6LbwhA//ujfl7QNPInyyR27V5vbt02A7eOlzfD4cqbQ8E0FNUZ3yd00WeaQ
         vEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G7azV8mbSSeyt8Js7wrZLKa1+/kmK6Rap/sxLxmd4/A=;
        b=6FSNk0ro4U7O3YOSXApDCwQ0ek/EGgQ0bzTpvys1RUJVz0W6SlpjsRFMXp05CGLp35
         WDMF5xRBJuKyi2RiRT5wCFrmHIpWGN2n1mevCUFUKxxs1u3LHwz2p2K8ZJnc5/+mSv8Q
         x+9qkod02cJchNFHqRBih7/ljXuSO96CZ65X/yovJG5ssc1y3+1mnfBRg50XmMvd1Fk0
         pGzVMuzW0QJz1Rb2neN/y/f0QsuR+gNrZbYV1q+yjsd5fVlsf46nlhlfc6rkQuf4RdUk
         92B3ndgZG+Id0WpPuLaHhb1MHd+h7ihOiee7r8PS74gzAewpUH6LCbCVmlTfmM6LEdeJ
         YKUQ==
X-Gm-Message-State: AFqh2koLW8GAwHb7KGOxoxgh9eZZBmALs4v5fON4APDpfedIrmUxwzul
        OdIaK+r+fwVOz2KrT61ZxHjQGQ==
X-Google-Smtp-Source: AMrXdXvqd+Xz7JSf8QaqqzpNWgp9gXJU43HvNP7Q6yFBMUglk50HyFf5597Xw5m1Y/bsfj02MAn1Pw==
X-Received: by 2002:a17:906:804e:b0:86b:6a54:36e0 with SMTP id x14-20020a170906804e00b0086b6a5436e0mr25610962ejw.36.1674519932202;
        Mon, 23 Jan 2023 16:25:32 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id z16-20020a1709067e5000b007aee7ca1199sm142840ejr.10.2023.01.23.16.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 16:25:31 -0800 (PST)
Message-ID: <84079c60-984a-1939-850d-23869c9ce5df@linaro.org>
Date:   Tue, 24 Jan 2023 02:25:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH Resend v11 12/15] drm/msm/disp/dpu: wait for extra vsync
 till timing engine status is disabled
Content-Language: en-GB
To:     Vinod Polimera <quic_vpolimer@quicinc.com>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, robdclark@gmail.com,
        dianders@chromium.org, swboyd@chromium.org,
        quic_kalyant@quicinc.com, quic_khsieh@quicinc.com,
        quic_vproddut@quicinc.com, quic_bjorande@quicinc.com,
        quic_abhinavk@quicinc.com, quic_sbillaka@quicinc.com
References: <1674138393-475-1-git-send-email-quic_vpolimer@quicinc.com>
 <1674138393-475-13-git-send-email-quic_vpolimer@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1674138393-475-13-git-send-email-quic_vpolimer@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/01/2023 16:26, Vinod Polimera wrote:
> There can be a race between timing gen disable and vblank irq. The
> wait post timing gen disable may return early but intf disable sequence
> might not be completed. Ensure that, intf status is disabled before
> we retire the function.
> 
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   .../gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c    | 21 +++++++++++++++++++++
>   1 file changed, 21 insertions(+)

-- 
With best wishes
Dmitry

